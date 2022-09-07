Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C6C5B0FE0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Sep 2022 00:37:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D53BC83EEF;
	Wed,  7 Sep 2022 22:37:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D53BC83EEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662590263;
	bh=YfuinRMbUzHWO/h9XqqiMIkRLr3b15zM6wQq/rsEUuc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=G7OnYadGi0F58vwRpVqngrs3KDBpb/mLYP9QUbjrOurPJYKZwb6qL2687e+Vmj7jP
	 Y0uSqRZSph0zq2PLlhR2HuNuwOBaRBD1eArNKrG7FtOvV44janPANzvLZGSlXLJsSF
	 phycpYLIp3LjkFfJPWDoZsKVRKV9Q22IXrOvLq4JblhWoflfKqKmhpi41Wqthj6F8g
	 bhS4yZ7O3OGQ5CqUeZMCDqx7I0t+XdMDEkHzUQCRhWl+/5Fei1Q4FG9x+ldIUTQHuA
	 vhv0MGlPMElXx29q6AHnC6Bm/Sf8bxJGVcHcA7pwFFEXEZle4AYlQELPzGzN+w85b8
	 XaIJi/Iz4EbKQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i-RbxSRSfn34; Wed,  7 Sep 2022 22:37:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 81CD8833B7;
	Wed,  7 Sep 2022 22:37:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81CD8833B7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7BF6D1BF255
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Sep 2022 22:37:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5607360F33
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Sep 2022 22:37:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5607360F33
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VlQ2VUTQXUGL for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Sep 2022 22:37:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A45B60E07
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2A45B60E07
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Sep 2022 22:37:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="358747066"
X-IronPort-AV: E=Sophos;i="5.93,298,1654585200"; d="scan'208";a="358747066"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 15:37:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,298,1654585200"; d="scan'208";a="682995179"
Received: from lkp-server02.sh.intel.com (HELO 95dfd251caa2) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 07 Sep 2022 15:37:33 -0700
Received: from kbuild by 95dfd251caa2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oW3fp-00071p-18;
 Wed, 07 Sep 2022 22:37:33 +0000
Date: Thu, 08 Sep 2022 06:36:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63191d0b.uN8vy3Mcf7f0Shy6%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662590256; x=1694126256;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=oVoVUMbVKtL8tuaQ8chTvtcDM4Wn4N7ylgK4mVgMOgk=;
 b=n3O0WrcFEeECr9UOg8DvhqjCRFu5tMpU+RivmevqrrV1l1NFmzHFlrxE
 3VHUHXSH9ZaOVxcErmwV73oJL96WB8cR8VlBZCyNI2CRroejh2gp7cZTU
 nFl3dT3s2sYwt3y9vyYC16R+ySKG7EXXs8v2mbZikGkUTP+xzhEYGnMZ+
 vIBq9V2+2d7bHh/tSlgmeBWIpNvwEPk8eZpwolvmWNlSLkuJeQApvfP+E
 pfx0+F5utCO3mqZ0SYMCS3Jdsj7zNdqx1z8W0CbdagrbTBR5ih01T8wtJ
 rEC5QzVH5GMPB+IdaRW3N7Tp0j41IWkmbcMGkxGVFGB7++V5ntWXMaxk4
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n3O0WrcF
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 e1091e226a2bab4ded1fe26efba2aee1aab06450
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: e1091e226a2bab4ded1fe26efba2aee1aab06450  net: usb: qmi_wwan: add Quectel RM520N

elapsed time: 2152m

configs tested: 213
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
i386                             allyesconfig
i386                                defconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
sh                           se7780_defconfig
mips                           xway_defconfig
powerpc                       holly_defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220906
arc                  randconfig-r043-20220906
s390                 randconfig-r044-20220906
sh                               j2_defconfig
arm                       aspeed_g5_defconfig
m68k                          multi_defconfig
sparc64                             defconfig
parisc                generic-32bit_defconfig
arc                         haps_hs_defconfig
arc                        nsim_700_defconfig
powerpc                        warp_defconfig
arm                      footbridge_defconfig
mips                     loongson1b_defconfig
i386                          randconfig-c001
arm                           tegra_defconfig
arm                          gemini_defconfig
sh                         ecovec24_defconfig
xtensa                generic_kc705_defconfig
sh                          polaris_defconfig
sh                   sh7770_generic_defconfig
ia64                                defconfig
powerpc                    klondike_defconfig
ia64                            zx1_defconfig
sh                          r7780mp_defconfig
sparc                       sparc64_defconfig
parisc64                            defconfig
powerpc                 canyonlands_defconfig
arm                           viper_defconfig
powerpc                    adder875_defconfig
sh                        dreamcast_defconfig
sh                          lboxre2_defconfig
powerpc                      bamboo_defconfig
powerpc                      makalu_defconfig
csky                             alldefconfig
m68k                                defconfig
powerpc                     pq2fads_defconfig
xtensa                          iss_defconfig
powerpc                    amigaone_defconfig
arm                        cerfcube_defconfig
sparc                            allyesconfig
sh                           se7705_defconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc                           allyesconfig
sh                           se7750_defconfig
sparc64                          alldefconfig
arm                             ezx_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220906
arm                          iop32x_defconfig
mips                           ip32_defconfig
nios2                         10m50_defconfig
arc                          axs103_defconfig
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
x86_64                                  kexec
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sh                            titan_defconfig
sh                     sh7710voipgw_defconfig
ia64                          tiger_defconfig
sh                         ap325rxa_defconfig
m68k                        mvme16x_defconfig
powerpc                 mpc837x_mds_defconfig
alpha                               defconfig
sh                          rsk7264_defconfig
sh                 kfr2r09-romimage_defconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
s390                             allyesconfig
powerpc                mpc7448_hpc2_defconfig
arm                           sama5_defconfig
powerpc                     tqm8548_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
riscv             nommu_k210_sdcard_defconfig
xtensa                              defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
xtensa                  nommu_kc705_defconfig
m68k                          hp300_defconfig
sh                   sh7724_generic_defconfig
powerpc                  storcenter_defconfig
powerpc                      tqm8xx_defconfig
sh                  sh7785lcr_32bit_defconfig
openrisc                            defconfig
arm                            mps2_defconfig
m68k                          atari_defconfig
powerpc                 mpc85xx_cds_defconfig
sh                      rts7751r2d1_defconfig
sh                          landisk_defconfig
arm                           u8500_defconfig
ia64                             alldefconfig
powerpc                    sam440ep_defconfig
m68k                          amiga_defconfig
m68k                        stmark2_defconfig
sh                                  defconfig
xtensa                         virt_defconfig
ia64                         bigsur_defconfig
arm                        keystone_defconfig
arm                             pxa_defconfig
mips                           gcw0_defconfig
parisc64                         alldefconfig
i386                             alldefconfig
powerpc                     ep8248e_defconfig
m68k                        m5272c3_defconfig
arm                          exynos_defconfig
sparc                             allnoconfig
powerpc                      arches_defconfig
openrisc                 simple_smp_defconfig
powerpc                     asp8347_defconfig
sparc                            alldefconfig
arm                          pxa3xx_defconfig
arm                         s3c6400_defconfig
powerpc                     stx_gp3_defconfig
arm64                            alldefconfig
sh                           se7722_defconfig
sh                             sh03_defconfig
xtensa                       common_defconfig
sh                          r7785rp_defconfig
powerpc                     mpc83xx_defconfig
um                                  defconfig
arm                            qcom_defconfig
arc                              alldefconfig
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r041-20220906
hexagon              randconfig-r045-20220906
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
powerpc                    mvme5100_defconfig
arm                             mxs_defconfig
powerpc                 mpc8313_rdb_defconfig
arm                            mmp2_defconfig
powerpc                      acadia_defconfig
powerpc                     pseries_defconfig
arm                        neponset_defconfig
powerpc                     kilauea_defconfig
powerpc                     akebono_defconfig
powerpc                   lite5200b_defconfig
powerpc                     tqm5200_defconfig
powerpc                     mpc512x_defconfig
arm                           spitz_defconfig
arm                       spear13xx_defconfig
mips                      malta_kvm_defconfig
arm                    vt8500_v6_v7_defconfig
arm                     davinci_all_defconfig
arm                              alldefconfig
powerpc                        icon_defconfig
powerpc                      obs600_defconfig
riscv                randconfig-r042-20220907
hexagon              randconfig-r041-20220907
hexagon              randconfig-r045-20220907
s390                 randconfig-r044-20220907
x86_64                        randconfig-k001
powerpc                     tqm8540_defconfig
powerpc                 mpc8315_rdb_defconfig
mips                           ip22_defconfig
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
