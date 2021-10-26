import django_filters
from .models import CriminalRecord
class criminal_filter(django_filters.FilterSet):
    class Meta:
        model = CriminalRecord
        fields=['c_name','c_aliases','c_height','c_weight','c_hair_color','c_eye_color','c_scars','c_arrested_by','c_arrestdate','c_nationality','c_city']