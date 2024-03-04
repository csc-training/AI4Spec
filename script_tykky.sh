# remove all installations from home: rm -fr ~/.local/*
module load purge
module load tykky
# mkdir /projappl/project_xxx/user_name
mkdir /projappl/project_2001659/$USER/AI4Spec
conda-containerize new --prefix  /projappl/project_2001659/$USER/AI4Spec AI4Spec_python3.7.yml
export PATH="/projappl/project_2001659/$USER/AI4Spec/bin:$PATH"
conda-containerize update /projappl/project_2001659/$USER/AI4Spec/  --post-install requirements_AI4Spec.txt
