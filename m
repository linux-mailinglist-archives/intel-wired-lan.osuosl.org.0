Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F106574186
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Jul 2022 04:47:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 99AAB84722;
	Thu, 14 Jul 2022 02:47:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99AAB84722
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657766824;
	bh=oFH5EZd84vHXGaU1an2khB2HZrW3iV/OyldJiop5qCk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UFyDKcsD3zllDiHsomUYULUpca8aVlupxa8gkLNzntxwNo/kq8+vPtqEf3qOXkSMR
	 MxCh9yxzTmWxuz6Ipny0JQLyyT7uJ//TdD9zz8Apo0V3EOexJQ3piA0/j/uYw8xHUD
	 6tqzjnPDiEYN3o1hjoUZC+6hLlX9uJc4UsImF2JaN7CBEhwKFxzqNS/hEMjyGUTwhP
	 CzxAYewRiZ1M4yI4WHQ/U133set20lnPcv6S8xVx5LF+o57bd1Rza/uzAVCCF3SU92
	 a6NUexd99PAReAg6WhGQo7WT98N1b3JpuU4auG9nljN7LtcSb/kK7ZvqXPZTqQzaxS
	 TDmIi8ZFzAzuA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DyTdGSEDkVlX; Thu, 14 Jul 2022 02:47:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A990845C9;
	Thu, 14 Jul 2022 02:47:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A990845C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A8561BF30A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 02:46:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DE78542521
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 02:46:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE78542521
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 93cpMF8ANhYE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jul 2022 02:46:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 421C34251B
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 421C34251B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 02:46:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10407"; a="311045979"
X-IronPort-AV: E=Sophos;i="5.92,269,1650956400"; d="scan'208";a="311045979"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2022 19:46:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,269,1650956400"; d="scan'208";a="546092277"
Received: from lkp-server01.sh.intel.com (HELO fd2c14d642b4) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 13 Jul 2022 19:46:54 -0700
Received: from kbuild by fd2c14d642b4 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1oBosQ-00005G-54;
 Thu, 14 Jul 2022 02:46:54 +0000
Date: Thu, 14 Jul 2022 10:46:47 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62cf8397.MnNtUmuMUQaCqupO%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657766817; x=1689302817;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=6ifjznphqHprco6odytml26xDbTwb7lKT0edrVAeoiM=;
 b=iB9rRtE8J8ZYI6JTNcDUf4aAwGM8YiDu84RdHtIaHo5Xi0A5JSD58T8c
 PUrlyJAUMVF3Y1czh8TADeLakW9B997cP0aMYv4A5a259W3D/N3geL0Yy
 6j4CvOY6P8KHmvb/sHKgFsOdcFsbsgPuymL60COuASjhTzXypOG53YnNH
 JZAh1O4yvy3vwRVHonzsPmRZCdSS48bhLrwn38FxtPGb+xUFSxVpwBf37
 T2HCS8kw2XaJ3TjrZH1EbGUT4ugbSMBJr49VmV/PO7TDW7Q9nMySUd6XA
 kJRTk9ktsakG2iCOznYMmYd9tlurknKQ3rViG1e1kiPL2xmIV9vuHNuM7
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iB9rRtE8
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 fed0d9f13266a22ce1fc9a97521ef9cdc6271a23
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: fed0d9f13266a22ce1fc9a97521ef9cdc6271a23  i40e: Fix VF's MAC Address change on VM

elapsed time: 18959m

configs tested: 281
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
arm                             ezx_defconfig
mips                       bmips_be_defconfig
powerpc                  storcenter_defconfig
arm                         nhk8815_defconfig
powerpc                      makalu_defconfig
mips                  decstation_64_defconfig
powerpc                      ppc40x_defconfig
arm                            xcep_defconfig
powerpc                     asp8347_defconfig
ia64                            zx1_defconfig
sh                                  defconfig
sh                          rsk7269_defconfig
alpha                            alldefconfig
openrisc                            defconfig
arm                          badge4_defconfig
arc                         haps_hs_defconfig
mips                             allmodconfig
arm                        trizeps4_defconfig
arm                           sunxi_defconfig
sh                 kfr2r09-romimage_defconfig
riscv             nommu_k210_sdcard_defconfig
mips                           gcw0_defconfig
arc                            hsdk_defconfig
m68k                         apollo_defconfig
arm                      footbridge_defconfig
microblaze                      mmu_defconfig
sh                          rsk7264_defconfig
arc                 nsimosci_hs_smp_defconfig
sh                          polaris_defconfig
i386                                defconfig
arm                          pxa3xx_defconfig
openrisc                 simple_smp_defconfig
sh                              ul2_defconfig
arm                       aspeed_g5_defconfig
arm                        spear6xx_defconfig
powerpc                      mgcoge_defconfig
sh                             shx3_defconfig
mips                           xway_defconfig
microblaze                          defconfig
m68k                       bvme6000_defconfig
mips                        bcm47xx_defconfig
csky                                defconfig
powerpc                 linkstation_defconfig
x86_64                           alldefconfig
powerpc                 mpc8540_ads_defconfig
nios2                            allyesconfig
sh                           se7705_defconfig
powerpc                     tqm8548_defconfig
ia64                          tiger_defconfig
sh                        edosk7705_defconfig
powerpc                         ps3_defconfig
ia64                             alldefconfig
m68k                       m5249evb_defconfig
arc                        nsimosci_defconfig
powerpc                mpc7448_hpc2_defconfig
arm                           corgi_defconfig
xtensa                  audio_kc705_defconfig
mips                  maltasmvp_eva_defconfig
arm                           imxrt_defconfig
arm                          exynos_defconfig
sh                          urquell_defconfig
xtensa                           allyesconfig
arm                        realview_defconfig
sh                           se7343_defconfig
xtensa                    xip_kc705_defconfig
arm                           stm32_defconfig
sh                   sh7770_generic_defconfig
mips                         tb0226_defconfig
powerpc                     ep8248e_defconfig
arm                         vf610m4_defconfig
sh                           se7619_defconfig
sh                           se7712_defconfig
powerpc                 mpc85xx_cds_defconfig
arm                          iop32x_defconfig
sh                               alldefconfig
powerpc                     tqm8555_defconfig
arm                        mvebu_v7_defconfig
sh                         ap325rxa_defconfig
sh                      rts7751r2d1_defconfig
sh                           se7721_defconfig
sh                           se7750_defconfig
mips                         rt305x_defconfig
riscv                               defconfig
sh                           se7722_defconfig
xtensa                              defconfig
arc                                 defconfig
nios2                               defconfig
s390                          debug_defconfig
arm                          simpad_defconfig
sparc64                             defconfig
arm                         assabet_defconfig
mips                        vocore2_defconfig
s390                       zfcpdump_defconfig
powerpc                 mpc837x_mds_defconfig
mips                 decstation_r4k_defconfig
xtensa                         virt_defconfig
m68k                         amcore_defconfig
arm                      integrator_defconfig
arm                            lart_defconfig
um                                  defconfig
ia64                         bigsur_defconfig
ia64                      gensparse_defconfig
powerpc                    adder875_defconfig
arm                        keystone_defconfig
sh                        apsh4ad0a_defconfig
sh                          r7785rp_defconfig
parisc                generic-32bit_defconfig
mips                          rb532_defconfig
xtensa                       common_defconfig
sh                        sh7763rdp_defconfig
arc                          axs103_defconfig
arm                       imx_v6_v7_defconfig
sparc                       sparc32_defconfig
sh                   secureedge5410_defconfig
arm                           u8500_defconfig
arc                     nsimosci_hs_defconfig
parisc64                         alldefconfig
mips                         mpc30x_defconfig
arm                         lpc18xx_defconfig
m68k                            q40_defconfig
powerpc                      ppc6xx_defconfig
arm                      jornada720_defconfig
arm                        clps711x_defconfig
arm                        oxnas_v6_defconfig
powerpc                        warp_defconfig
powerpc                      pcm030_defconfig
parisc                           alldefconfig
sh                          rsk7201_defconfig
m68k                           sun3_defconfig
sh                          r7780mp_defconfig
xtensa                generic_kc705_defconfig
arc                      axs103_smp_defconfig
arm64                               defconfig
powerpc                       ppc64_defconfig
m68k                             allyesconfig
mips                     decstation_defconfig
um                             i386_defconfig
sh                   sh7724_generic_defconfig
sh                           se7724_defconfig
arc                     haps_hs_smp_defconfig
arm                         cm_x300_defconfig
sh                     magicpanelr2_defconfig
arm                            qcom_defconfig
sparc                               defconfig
powerpc                     mpc83xx_defconfig
sh                            migor_defconfig
mips                             allyesconfig
sh                               j2_defconfig
m68k                       m5475evb_defconfig
arm                           h3600_defconfig
sh                         microdev_defconfig
arm                          gemini_defconfig
um                           x86_64_defconfig
mips                    maltaup_xpa_defconfig
sh                        sh7757lcr_defconfig
parisc                generic-64bit_defconfig
sh                           sh2007_defconfig
sh                         ecovec24_defconfig
arm                            hisi_defconfig
powerpc                     taishan_defconfig
parisc64                            defconfig
nios2                            alldefconfig
mips                      maltasmvp_defconfig
powerpc                 canyonlands_defconfig
m68k                          amiga_defconfig
m68k                        m5307c3_defconfig
sparc                            allyesconfig
x86_64                                  kexec
powerpc                          allyesconfig
riscv                            allmodconfig
riscv                            allyesconfig
s390                                defconfig
s390                             allmodconfig
alpha                               defconfig
s390                             allyesconfig
parisc                              defconfig
parisc                           allyesconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
x86_64                        randconfig-c001
arm                  randconfig-c002-20220707
arm                  randconfig-c002-20220710
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                             allyesconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220707
arc                  randconfig-r043-20220707
s390                 randconfig-r044-20220707
s390                 randconfig-r044-20220710
riscv                randconfig-r042-20220710
arc                  randconfig-r043-20220710
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
powerpc              randconfig-c003-20220707
x86_64                        randconfig-c007
riscv                randconfig-c006-20220707
i386                          randconfig-c001
arm                  randconfig-c002-20220707
mips                 randconfig-c004-20220707
s390                 randconfig-c005-20220707
powerpc                  mpc885_ads_defconfig
powerpc                    mvme5100_defconfig
powerpc                          allmodconfig
powerpc                   microwatt_defconfig
powerpc                     mpc512x_defconfig
powerpc                      obs600_defconfig
mips                      bmips_stb_defconfig
mips                     loongson1c_defconfig
mips                   sb1250_swarm_defconfig
powerpc                   bluestone_defconfig
mips                      pic32mzda_defconfig
powerpc                  mpc866_ads_defconfig
arm                         orion5x_defconfig
arm                           spitz_defconfig
mips                      maltaaprp_defconfig
mips                         tb0287_defconfig
powerpc                 xes_mpc85xx_defconfig
riscv                             allnoconfig
arm                      tct_hammer_defconfig
arm                       spear13xx_defconfig
arm                       aspeed_g4_defconfig
mips                      malta_kvm_defconfig
mips                        maltaup_defconfig
arm                    vt8500_v6_v7_defconfig
arm                        mvebu_v5_defconfig
i386                             allyesconfig
powerpc                     kmeter1_defconfig
hexagon                          alldefconfig
arm                   milbeaut_m10v_defconfig
powerpc                     tqm5200_defconfig
powerpc                     ppa8548_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                    gamecube_defconfig
arm                            dove_defconfig
mips                         tb0219_defconfig
mips                malta_qemu_32r6_defconfig
powerpc                      walnut_defconfig
powerpc                          g5_defconfig
mips                       rbtx49xx_defconfig
arm                         palmz72_defconfig
arm                        multi_v5_defconfig
powerpc                 mpc8315_rdb_defconfig
x86_64                        randconfig-k001
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220707
hexagon              randconfig-r041-20220707

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
