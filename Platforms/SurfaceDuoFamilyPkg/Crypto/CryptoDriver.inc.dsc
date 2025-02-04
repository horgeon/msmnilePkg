# ****************************************************************************
# AUTOGENERATED BY CryptoPkg\Driver\Packaging\generate_cryptodriver.py
# AUTOGENED AS CryptoDriver.inc.dsc
# DO NOT MODIFY
# GENERATED ON: 2023-05-31 12:30:02.282366

# this is to be included by a platform :)
[Defines]
!ifndef DXE_CRYPTO_SERVICES
 !error Please define DXE_CRYPTO_SERVICES
!endif
!if $(DXE_CRYPTO_SERVICES) IN "ALL TINY_SHA MINIMAL_SHA_SM3 SMALL_SHA_RSA STANDARD"
 # we don't have a problem
!else
 !error CRYPTO_SERVICES must be set to one of ALL TINY_SHA MINIMAL_SHA_SM3 SMALL_SHA_RSA STANDARD.
!endif
!ifndef DXE_CRYPTO_ARCH
 !error Please define DXE_CRYPTO_ARCH for your platform
!endif

!if $(DXE_CRYPTO_SERVICES) == TINY_SHA
 !if $(DXE_CRYPTO_ARCH) == AARCH64
  [Components.AARCH64]
    CryptoPkg/Driver/Bin/CryptoDriverBin_TINY_SHA_Dxe_$(TARGET)_AARCH64.inf 
 !endif

 [Components]
   CryptoPkg/Library/BaseCryptLibOnProtocolPpi/DxeCryptLib.inf {
     <PcdsFixedAtBuild>
      !include CryptoPkg/Driver/Bin/Crypto.pcd.TINY_SHA.inc.dsc
    }
!endif

!if $(DXE_CRYPTO_SERVICES) == MINIMAL_SHA_SM3
 !if $(DXE_CRYPTO_ARCH) == AARCH64
  [Components.AARCH64]
    CryptoPkg/Driver/Bin/CryptoDriverBin_MINIMAL_SHA_SM3_Dxe_$(TARGET)_AARCH64.inf 
 !endif

 [Components]
   CryptoPkg/Library/BaseCryptLibOnProtocolPpi/DxeCryptLib.inf {
     <PcdsFixedAtBuild>
      !include CryptoPkg/Driver/Bin/Crypto.pcd.MINIMAL_SHA_SM3.inc.dsc
    }
!endif

!if $(DXE_CRYPTO_SERVICES) == SMALL_SHA_RSA
 !if $(DXE_CRYPTO_ARCH) == AARCH64
  [Components.AARCH64]
    CryptoPkg/Driver/Bin/CryptoDriverBin_SMALL_SHA_RSA_Dxe_$(TARGET)_AARCH64.inf 
 !endif

 [Components]
   CryptoPkg/Library/BaseCryptLibOnProtocolPpi/DxeCryptLib.inf {
     <PcdsFixedAtBuild>
      !include CryptoPkg/Driver/Bin/Crypto.pcd.SMALL_SHA_RSA.inc.dsc
    }
!endif

!if $(DXE_CRYPTO_SERVICES) == STANDARD
 !if $(DXE_CRYPTO_ARCH) == AARCH64
  [Components.AARCH64]
    CryptoPkg/Driver/Bin/CryptoDriverBin_STANDARD_Dxe_$(TARGET)_AARCH64.inf 
 !endif

 [Components]
   CryptoPkg/Library/BaseCryptLibOnProtocolPpi/DxeCryptLib.inf {
     <PcdsFixedAtBuild>
      !include CryptoPkg/Driver/Bin/Crypto.pcd.STANDARD.inc.dsc
    }
!endif


# LibraryClasses for 

!if $(DXE_CRYPTO_ARCH) == AARCH64
  [LibraryClasses.AARCH64.DXE_DRIVER, LibraryClasses.AARCH64.UEFI_DRIVER, LibraryClasses.AARCH64.UEFI_APPLICATION, LibraryClasses.AARCH64.DXE_CORE]
    BaseCryptLib|CryptoPkg/Library/BaseCryptLibOnProtocolPpi/DxeCryptLib.inf
    TlsLib|CryptoPkg/Library/BaseCryptLibOnProtocolPpi/DxeCryptLib.inf
!endif

# AUTOGEN ENDS
# ****************************************************************************
