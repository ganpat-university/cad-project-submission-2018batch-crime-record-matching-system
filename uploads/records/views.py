from django.shortcuts import render
from django.http import HttpResponse,HttpResponseRedirect
from django.template import loader
from .models import CriminalRecord
from .forms import CriminalForm,TestimgForm,FIR
from .filters import criminal_filter
import boto3
import pickle
# Create your views here.
def home(request):
    template=loader.get_template('records/Home.html')
    context={
    }
    return HttpResponse(template.render(context,request))
def criminal(request):
    records=CriminalRecord.objects.order_by('c_id')
    template=loader.get_template('records/criminal_list.html')
    myFilter=criminal_filter(request.GET,queryset=records)
    records=myFilter.qs

    context={
        'records':records,
        'myFilter':myFilter,
    }
    return HttpResponse(template.render(context,request))
def crime(request):
    return HttpResponse("crime page")
def ind_criminal(request,id):
    return HttpResponse("one criminal"+str(id))
#Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#PDX-License-Identifier: MIT-0 (For details, see https://github.com/awsdocs/amazon-rekognition-developer-guide/blob/master/LICENSE-SAMPLECODE.)
file_name_to_compare=""

def compare_faces(request):
    similarity=0
    global file_name_to_compare
    sourceFile=request.POST['source_file']
    #targetFile=request.POST['target_file']
    targetFile = file_name_to_compare
    print("targetfile :",targetFile)
    print("source file",sourceFile)
    print("by session",request.session['file_name'])
    
    s3=boto3.client('s3')
    obj1 = s3.get_object(Bucket='crmsfc1',Key = str(sourceFile))
    obj2 = s3.get_object(Bucket='crmsfc1',Key = 'testimg/'+str(targetFile))
    #object1 = s3.download_file(Bucket='crmsfc1',Key=targetFile,Filename=targetFile)
    client=boto3.client('rekognition')

    try:
        response=client.compare_faces(SimilarityThreshold=80,SourceImage={'Bytes': obj1['Body'].read()},TargetImage={'Bytes': obj2['Body'].read()})
    except:
        print("error occured")
    for faceMatch in response['FaceMatches']:
        position = faceMatch['Face']['BoundingBox']
        similarity = str(faceMatch['Similarity'])
    template=loader.get_template('records/comparefaces.html')
    context={
        'similarity':similarity,
    }
    return HttpResponse(template.render(context,request))

def testimg_form(request):
    global file_name_to_compare
    
    if request.method == 'POST':
        form = TestimgForm(request.POST,request.FILES)
        print("in testing ",request.FILES['t_img'])
        file_name_to_compare=request.FILES['t_img']
        request.session['file_name']=str(file_name_to_compare)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect('criminal')
    else:
        print("GET")
        form = TestimgForm()
    return render(request, 'records/criminal_form.html', {'form': form})

def criminal_form(request):
    # if this is a POST request we need to process the form data
    if request.method == 'POST':
        # create a form instance and populate it with data from the request:
        form = CriminalForm(request.POST,request.FILES)
        # check whether it's valid:
        upload_file=request.FILES['c_photo']
        print(upload_file.name)
        print(upload_file.size)
        if form.is_valid():
            # process the data in form.cleaned_data as required
            # ...
            # redirect to a new URL:
            form.save()
            return HttpResponseRedirect('/thanks/')

    # if a GET (or any other method) we'll create a blank form
    else:
        form = CriminalForm()

    return render(request, 'records/criminal_form.html', {'form': form})

def FIR_form(request):
    # if this is a POST request we need to process the form data
    if request.method == 'POST':
        # create a form instance and populate it with data from the request:
        form = FIR(request.POST,request.FILES)
        # check whether it's valid:
        if form.is_valid():
            # process the data in form.cleaned_data as required
            # ...
            # redirect to a new URL:
            form.save()
            return HttpResponseRedirect('/records/')

    # if a GET (or any other method) we'll create a blank form
    else:
        form = FIR()

    return render(request, 'records/criminal_form.html', {'form': form})