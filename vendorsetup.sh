echo 'Starting to clone stuffs needed for our device'

# Device tree
rm -rf device/xiaomi/fog
git clone https://github.com/ProjectElixir-Devices/device_xiaomi_fog device/xiaomi/fog -b 13

# Vendor tree
rm -rf vendor/xiaomi/fog
git clone https://github.com/ProjectElixir-Devices/vendor_xiaomi_fog vendor/xiaomi/fog -b 13

# Kernel tree
rm -rf kernel/xiaomi/sm6225 device/xiaomi/fog-kernel
git clone https://github.com/ProjectElixir-Devices/kernel_xiaomi_sm6225 --depth=1 kernel/xiaomi/fog
git clone https://github.com/ProjectElixir-Devices/device_xiaomi_fog-kernel --depth=1 device/xiaomi/fog-kernel

# Hardware stuff
rm -rf hardware/xiaomi hardware/qcom-caf/bootctrl hardware/lineage/compat
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-20 hardware/xiaomi
git clone https://github.com/ProjectElixir-Devices/hardware_qcom-caf_bootctrl -b Tiramisu hardware/qcom-caf/bootctrl
git clone https://github.com/Eagle-Projekt/hardware_lineage_compat.git hardware/lineage/compat

echo 'done.'
