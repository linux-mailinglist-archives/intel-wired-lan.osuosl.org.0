Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B395457E678
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Jul 2022 20:26:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85B2F84AE2;
	Fri, 22 Jul 2022 18:25:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85B2F84AE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658514358;
	bh=bDlFaYmmCgPqBvo6yIlGt0lRbPjoC6F0UYHvwIZm2nA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=56xhgaT/Exqh8O0twm0lTih1TV9RIbILeb60KUteEdHRi7+2Hintd9N6Ea9bxfndc
	 i2I2TEvpXxEHZjzuRW1++2NhhdPZjws3Km0lBWqzXrNl+C/LqxsdbivPIHEdJSTJVI
	 TdfrCJ5a+bmQxQphFFdOnjX/kDYTogjzjuHRgGP+v/Vh5lMWRioG1LZEFpecfe8G14
	 q0zXooT1os7ncvCyEctZ/yo7jTZce4LGkHFnta13sWR+vXstCOFbkJQ5FOn34XJEm6
	 X4+Gkred91NzqnLiPiivAIKkycTCiNOzqoSTY8JEgwB1Bq/hK0FUHwiHw0pYnGWwOo
	 TREVKq1mM5PXg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o803_D8sKFZJ; Fri, 22 Jul 2022 18:25:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6769284ADB;
	Fri, 22 Jul 2022 18:25:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6769284ADB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3DBB01BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 18:25:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 13FFE423BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 18:25:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 13FFE423BD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8GF6cywb7ku8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Jul 2022 18:25:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9C3C4237B
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B9C3C4237B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 18:25:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10416"; a="274236557"
X-IronPort-AV: E=Sophos;i="5.93,186,1654585200"; d="scan'208";a="274236557"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2022 11:25:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,186,1654585200"; d="scan'208";a="657318378"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 22 Jul 2022 11:25:33 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oExLA-0001iL-2O;
 Fri, 22 Jul 2022 18:25:32 +0000
Date: Sat, 23 Jul 2022 02:24:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62daeb76.6qJYAt3H83karHag%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658514350; x=1690050350;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=mN/F9xt8L13AQMIKIXQdgt03Lo9VCPC8YiPo1b3dNbk=;
 b=MTAh7/XrmUdC82Vk6hSE69Ca5IUULPHpRhPuk3fJT5zoaMmgdnM/IgPl
 bVlmSQ/fm+oF866SBlZ/O5s22gy47f5jFQOwmbMRwBdTgXl+VnzMEwNTd
 tPU3d63BQ+EM7tqxMuI060EsCsFaK9LxUlIrCIpuEpRZhpFjuV1FTBNxh
 sBPlZtm4qqegbSlefzPNZfqC6AoPcz3DbKKmiIm2bbsKWPDM5/Ex9Gu8j
 XjB/83oOkAjvOiKN2X1G9BNwHY6Nie6ZfeyOOSAFKTDvOUx+hMpwkaRMX
 TKrDkJU5Ks9kI3pDrYxgu30S59kvOrl1QWppiOFTgrC5wfp4l4etyC62B
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MTAh7/Xr
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 7c1ddcee5311f3315096217881d2dbe47cc683f9
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 1GbE
branch HEAD: 7c1ddcee5311f3315096217881d2dbe47cc683f9  igc: Reinstate IGC_REMOVED logic and implement it properly

elapsed time: 11529m

configs tested: 114
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
powerpc              randconfig-c003-20220722
sh                   sh7724_generic_defconfig
csky                                defconfig
powerpc                 mpc85xx_cds_defconfig
mips                     loongson1b_defconfig
sh                               j2_defconfig
arc                          axs101_defconfig
alpha                               defconfig
mips                         cobalt_defconfig
arm                      jornada720_defconfig
m68k                             allyesconfig
arm                        realview_defconfig
sh                              ul2_defconfig
powerpc                        cell_defconfig
riscv             nommu_k210_sdcard_defconfig
mips                           xway_defconfig
mips                          rb532_defconfig
powerpc                 mpc834x_mds_defconfig
powerpc                      makalu_defconfig
m68k                          atari_defconfig
parisc                              defconfig
arc                      axs103_smp_defconfig
sh                        apsh4ad0a_defconfig
csky                             alldefconfig
mips                           ip32_defconfig
arm                            xcep_defconfig
arm                           h5000_defconfig
mips                         db1xxx_defconfig
mips                            ar7_defconfig
loongarch                           defconfig
m68k                            mac_defconfig
nios2                         10m50_defconfig
sh                               alldefconfig
powerpc                     tqm8555_defconfig
powerpc                    amigaone_defconfig
arm                     eseries_pxa_defconfig
sh                        edosk7760_defconfig
sh                          rsk7203_defconfig
arc                        vdk_hs38_defconfig
powerpc                   currituck_defconfig
mips                      maltasmvp_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
loongarch                         allnoconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220721
arm                  randconfig-c002-20220722
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                             allyesconfig
i386                                defconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
i386                          randconfig-a012
i386                          randconfig-a016
i386                          randconfig-a014
arc                  randconfig-r043-20220721
x86_64                    rhel-8.3-kselftests
x86_64                           allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
arm                         s3c2410_defconfig
arm                          ixp4xx_defconfig
powerpc                  mpc866_ads_defconfig
powerpc                          allyesconfig
powerpc                     akebono_defconfig
powerpc                    mvme5100_defconfig
mips                      malta_kvm_defconfig
arm                                 defconfig
arm                           spitz_defconfig
arm                          pxa168_defconfig
i386                             allyesconfig
x86_64                           allyesconfig
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
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220721
s390                 randconfig-r044-20220721
hexagon              randconfig-r045-20220721
riscv                randconfig-r042-20220721
hexagon              randconfig-r041-20220722
hexagon              randconfig-r045-20220722

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
