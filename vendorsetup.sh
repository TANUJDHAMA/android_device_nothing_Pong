echo 'Starting to clone stuffs needed for your device'
echo 'Cloning Vendor'
# Common Tree
git clone https://github.com/Nothing-phone-2-Development/android_vendor_nothing_Pong.git vendor/nothing/Pong
echo 'Cloning Kernel Tree'
#Kernel Tree
git clone https://github.com/ProjectPixefy/kernel_nothing_sm8475.git kernel/nothing/sm8475
#Hardware Repos
rm -rf hardware/qcom-caf/common
echo 'Cloning common qcom-caf Repo'
git clone https://github.com/ProjectPixefy/android_hardware_qcom-caf_common.git hardware/qcom-caf/common
rm -rf hardware/qcom-caf/sm8450/display
echo 'Cloning Display Repo'
git clone https://github.com/ProjectPixefy/android_hardware_qcom_display.git hardware/qcom-caf/sm8450/display
rm -rf frameworks/opt/telephony
echo 'Cloning telephony'
git clone https://github.com/ProjectPixefy/android_frameworks_opt_telephony.git frameworks/opt/telephony
rm -rf device/qcom/sepolicy_vndr/sm8450
echo 'Cloning Sepolicy'
git clone https://github.com/ProjectPixefy/android_device_qcom_sepolicy_vndr.git device/qcom/sepolicy_vndr/sm8450
echo 'Importing KernelSU'
cd kernel/nothing/sm8475 && curl -LSs "https://raw.githubusercontent.com/tiann/KernelSU/main/kernel/setup.sh" | bash - && cd ../../..

echo 'Completed, Now proceeding to lunch'
