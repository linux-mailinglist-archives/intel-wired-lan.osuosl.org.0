Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DEC5F2287
	for <lists+intel-wired-lan@lfdr.de>; Sun,  2 Oct 2022 12:24:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 55CEF410E9;
	Sun,  2 Oct 2022 10:24:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55CEF410E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664706275;
	bh=mlVhWbbhQcq85I2b3Xmqjqom/3unYQ150bTK4Ljalr4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BOxzggWBEDCp0+samG0Xxx6q/3b+QAjcO1jBGTmaPPSbUI6PYXn7T9voext4SiSCJ
	 +wDU//YcaQ/Bo88vYIdDREeFNzkFPs2dpfcpOUP40eXGJOtl/YE6hrP/Nq8oB3SyWZ
	 3TnOD/vrBF7/YceZYq3Iz9fVz5Ctb/SQ1GmHxhpGlxVE4PibrtQU5T95g5HW4qjnzI
	 BL+1QZdV766vDCKYEqynRB0w85p21LqcdNt4OXDmgkjd7N3IJ53NdHwI3MFVY2yHxE
	 jeUr7vqJr0AmUdng0g5mEBK3NayIF2XXe/Eax66dPOpM0i5o5MlMiiEqytyi/IRO4z
	 Gt0HJlz4HTOPQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mRAxPBFLMiwn; Sun,  2 Oct 2022 10:24:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F48F410B2;
	Sun,  2 Oct 2022 10:24:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F48F410B2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 348771BF3FD
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Oct 2022 10:24:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 06AB9410B2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Oct 2022 10:24:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 06AB9410B2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2cyPLGjIfYrq for <intel-wired-lan@lists.osuosl.org>;
 Sun,  2 Oct 2022 10:24:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8575840929
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8575840929
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Oct 2022 10:24:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10487"; a="282835437"
X-IronPort-AV: E=Sophos;i="5.93,361,1654585200"; d="scan'208";a="282835437"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2022 03:24:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10487"; a="712295102"
X-IronPort-AV: E=Sophos;i="5.93,361,1654585200"; d="scan'208";a="712295102"
Received: from lkp-server01.sh.intel.com (HELO 14cc182da2d0) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Oct 2022 03:24:24 -0700
Received: from kbuild by 14cc182da2d0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oew92-0003S9-0P;
 Sun, 02 Oct 2022 10:24:24 +0000
Date: Sun, 02 Oct 2022 18:23:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <633966a3.URjp8Wvq4rpj08SI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664706266; x=1696242266;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=qQDGKKgBivBLfQRlRNxmUZpya82eOx3K+9C2J/gX6WM=;
 b=Ofn7IXJyZ09JhsQ3UtadD40aIoHKKhOuCTVcnGJt3SC5325RQ4TLFjeY
 IJHXzBfRZJBXyXRYccJMHHwwMVKJGUWA8ugK44wJ4pj9ugO1PFpIeNcHU
 HpNNmmE+MO7cMqbT6ttCE1cAxqnb2pfaMEIPUqikabMCISNYtxHTdBaUJ
 UeSaO7Ee5zeiJnKwvdoua/xZtj0NnKQs+7IizYbGrKjW2x5u3O2Plifnc
 YVzG/aoN+K5VwO80rPqGUi7HdBXNtBuomK2Ug63Bm4/JKpy2VKW7fCxx1
 vjtaSSTSnLVQO/mbliSecX+HdJYiLVoOE9V6lB2wVMoFT2RK4vgKspPUp
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ofn7IXJy
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 0fae2f87432cd99f524f6fa5464cf66ede890e76
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 0fae2f87432cd99f524f6fa5464cf66ede890e76  i40e: Fix DMA mappings leak

elapsed time: 2548m

configs tested: 172
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
s390                                defconfig
s390                             allmodconfig
x86_64                          rhel-8.3-func
s390                             allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                                defconfig
arc                  randconfig-r043-20220925
riscv                randconfig-r042-20220925
arc                  randconfig-r043-20220926
s390                 randconfig-r044-20220925
i386                             allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
x86_64               randconfig-a002-20220926
x86_64               randconfig-a004-20220926
x86_64               randconfig-a001-20220926
x86_64               randconfig-a003-20220926
x86_64               randconfig-a005-20220926
x86_64               randconfig-a006-20220926
i386                 randconfig-a001-20220926
i386                 randconfig-a002-20220926
x86_64                        randconfig-a013
i386                 randconfig-a003-20220926
x86_64                        randconfig-a011
i386                 randconfig-a006-20220926
i386                 randconfig-a004-20220926
i386                 randconfig-a005-20220926
x86_64                        randconfig-a015
alpha                            allyesconfig
arc                              allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
i386                          randconfig-c001
arm                         lpc18xx_defconfig
arm                       aspeed_g5_defconfig
mips                  maltasmvp_eva_defconfig
arm                           h5000_defconfig
m68k                          atari_defconfig
powerpc                      chrp32_defconfig
sh                        edosk7705_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
riscv                randconfig-r042-20220927
arc                  randconfig-r043-20220927
s390                 randconfig-r044-20220927
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
powerpc                       ppc64_defconfig
arm                           sunxi_defconfig
powerpc                     rainier_defconfig
sh                 kfr2r09-romimage_defconfig
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
powerpc                        warp_defconfig
arc                      axs103_smp_defconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220925
riscv                randconfig-r042-20221001
arc                  randconfig-r043-20221001
s390                 randconfig-r044-20221001
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
nios2                            allyesconfig
parisc                           allyesconfig
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
mips                           gcw0_defconfig
arm                           stm32_defconfig
powerpc                mpc7448_hpc2_defconfig
arc                    vdk_hs38_smp_defconfig
arm                            xcep_defconfig
arm                          simpad_defconfig
m68k                           sun3_defconfig
sh                      rts7751r2d1_defconfig
alpha                            alldefconfig
m68k                        m5307c3_defconfig
m68k                       m5475evb_defconfig
mips                           ip32_defconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
arm                  randconfig-c002-20221002
mips                 randconfig-c004-20221002
arm                             pxa_defconfig
xtensa                         virt_defconfig
powerpc                     asp8347_defconfig
arm                            lart_defconfig
powerpc                  storcenter_defconfig
openrisc                       virt_defconfig
powerpc                        cell_defconfig
nios2                         3c120_defconfig
m68k                           virt_defconfig
powerpc                 mpc834x_mds_defconfig
m68k                        m5407c3_defconfig
ia64                            zx1_defconfig
arm                      jornada720_defconfig
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r045-20220925
hexagon              randconfig-r041-20220926
hexagon              randconfig-r045-20220926
hexagon              randconfig-r041-20220925
riscv                randconfig-r042-20220926
s390                 randconfig-r044-20220926
i386                 randconfig-a011-20220926
i386                 randconfig-a013-20220926
i386                 randconfig-a012-20220926
i386                 randconfig-a015-20220926
i386                 randconfig-a014-20220926
i386                 randconfig-a016-20220926
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-k001
riscv                    nommu_virt_defconfig
powerpc                        icon_defconfig
arm                          pxa168_defconfig
powerpc                 mpc832x_mds_defconfig
x86_64               randconfig-a016-20220926
x86_64               randconfig-a012-20220926
x86_64               randconfig-a014-20220926
x86_64               randconfig-a013-20220926
x86_64               randconfig-a011-20220926
x86_64               randconfig-a015-20220926
arm                          moxart_defconfig
arm                         mv78xx0_defconfig
powerpc                          allyesconfig
mips                     loongson1c_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
riscv                randconfig-r042-20221002
hexagon              randconfig-r041-20221002
s390                 randconfig-r044-20221002
hexagon              randconfig-r045-20221002
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
powerpc                      walnut_defconfig
powerpc                     mpc512x_defconfig
arm                         bcm2835_defconfig
powerpc                 mpc832x_rdb_defconfig
powerpc                     skiroot_defconfig
x86_64                           allyesconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
