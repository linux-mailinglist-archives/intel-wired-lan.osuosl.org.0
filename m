Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F3277E12C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 14:10:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1C0A9416AE;
	Wed, 16 Aug 2023 12:10:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C0A9416AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692187856;
	bh=8t9eer9swJZ14L00DP0E6nwFFXjbP+4GtB/L3QUKYfY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=By4U1Zp34bZ0Hz4wJ1WLDawd/PNMNM7mkdJnzNdh5/ETNPVe6y9wHWBsmJ8mA1Wf4
	 Msa7YP5IxpAxPb9vHOdWRX/k/mOg+6g97O0GevA2FPi4x2vYpKjrgObQvUe1XGbsEY
	 DkEQad1vykMAYg6bLu2RJMNu8xUo/HOV8Bg53vo5X4aCOqsV0bS+yHPN36XeeQApLa
	 CnbE5m/wqrb22Swo245oZzr7zTMQ6WWZgv2xHqldm5mng/Q6Fzfsy8BzZuhmJyfQet
	 Duk3bh5qZNPPH5JDJBJobzY7jkxuI1aDNZWKPom3kmfOjY5osXHDmMOdI1EiWtlI/K
	 blEZIO49sN2qA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J50BlO8pTcAE; Wed, 16 Aug 2023 12:10:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C97FD41699;
	Wed, 16 Aug 2023 12:10:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C97FD41699
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B18B81BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 12:10:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 97AA6416A2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 12:10:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97AA6416A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FUIKBxSIeQ8S for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 12:10:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7BA15416A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 12:10:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BA15416A0
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="403492488"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="403492488"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 05:10:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="1064809139"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="1064809139"
Received: from lkp-server02.sh.intel.com (HELO a9caf1a0cf30) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 16 Aug 2023 05:10:47 -0700
Received: from kbuild by a9caf1a0cf30 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qWFMM-0000IY-1b
 for intel-wired-lan@lists.osuosl.org; Wed, 16 Aug 2023 12:10:46 +0000
Date: Wed, 16 Aug 2023 20:10:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308162036.3TPSTbdE-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692187848; x=1723723848;
 h=date:from:to:subject:message-id;
 bh=uNYPd2pcaSo7vksMuW3IZdyFE5mMVFTSebByVOMjWuQ=;
 b=INRkBbOb6hqYzAlNulRLBRK+DvBEfTDI86cZrKh1bjiP7s7Bk8FhXTig
 8ScG/G9C47hkQIDfHLbprZmqC+MC5O/2M+i9KdIrBskSW3cNBJXFlDci+
 Tl2kJh6JhpdgQuQ3dAyjbIiACV2CNgmTxdnCKE1J8RJdDAW/M65p0rEA+
 f4SoNNKHIO/nspuBvGi2wFsu0i02VEAqKqmDmW+WPV7TcNrMXIusNeFDs
 5T4S/GrDL50p+K+Zm7Rik2KMZ1D3SvbuVOfag2m98A0OVPOQXtnptoDtL
 oRfQrhUH0YJWRMbYv9Yq+VCuN1Pg99N0VAti1z9Q1SSKpFBLv2fTYu3Sn
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=INRkBbOb
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 72cbb172f200edc94e6cffa4ed7f2e4c85f8ea61
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 200GbE
branch HEAD: 72cbb172f200edc94e6cffa4ed7f2e4c85f8ea61  idpf: configure SRIOV and add other ndo_ops

elapsed time: 725m

configs tested: 129
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r002-20230816   gcc  
arc                  randconfig-r022-20230816   gcc  
arc                  randconfig-r043-20230816   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                          gemini_defconfig   gcc  
arm                       imx_v4_v5_defconfig   gcc  
arm                           omap1_defconfig   clang
arm                  randconfig-r003-20230816   clang
arm                  randconfig-r046-20230816   gcc  
arm                           stm32_defconfig   gcc  
arm                        vexpress_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r033-20230816   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r041-20230816   clang
hexagon              randconfig-r045-20230816   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230816   gcc  
i386         buildonly-randconfig-r005-20230816   gcc  
i386         buildonly-randconfig-r006-20230816   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230816   gcc  
i386                 randconfig-i002-20230816   gcc  
i386                 randconfig-i003-20230816   gcc  
i386                 randconfig-i004-20230816   gcc  
i386                 randconfig-i005-20230816   gcc  
i386                 randconfig-i006-20230816   gcc  
i386                 randconfig-i011-20230816   clang
i386                 randconfig-i012-20230816   clang
i386                 randconfig-i013-20230816   clang
i386                 randconfig-i014-20230816   clang
i386                 randconfig-i015-20230816   clang
i386                 randconfig-i016-20230816   clang
i386                 randconfig-r001-20230816   gcc  
i386                 randconfig-r032-20230816   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                         amcore_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5307c3_defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                        bcm63xx_defconfig   clang
mips                        qi_lb60_defconfig   clang
mips                           rs90_defconfig   clang
mips                         rt305x_defconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r024-20230816   gcc  
openrisc             randconfig-r011-20230816   gcc  
openrisc             randconfig-r021-20230816   gcc  
openrisc             randconfig-r025-20230816   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r016-20230816   gcc  
parisc               randconfig-r031-20230816   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      cm5200_defconfig   gcc  
powerpc                       maple_defconfig   gcc  
powerpc                      pmac32_defconfig   clang
powerpc              randconfig-r014-20230816   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230816   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r015-20230816   clang
s390                 randconfig-r026-20230816   clang
s390                 randconfig-r044-20230816   clang
sh                               allmodconfig   gcc  
sh                         ap325rxa_defconfig   gcc  
sh                               j2_defconfig   gcc  
sh                          polaris_defconfig   gcc  
sh                   randconfig-r004-20230816   gcc  
sh                   rts7751r2dplus_defconfig   gcc  
sh                           sh2007_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r006-20230816   gcc  
sparc64              randconfig-r023-20230816   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230816   gcc  
x86_64       buildonly-randconfig-r002-20230816   gcc  
x86_64       buildonly-randconfig-r003-20230816   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r012-20230816   clang
x86_64               randconfig-x001-20230816   clang
x86_64               randconfig-x002-20230816   clang
x86_64               randconfig-x003-20230816   clang
x86_64               randconfig-x004-20230816   clang
x86_64               randconfig-x005-20230816   clang
x86_64               randconfig-x006-20230816   clang
x86_64               randconfig-x011-20230816   gcc  
x86_64               randconfig-x012-20230816   gcc  
x86_64               randconfig-x013-20230816   gcc  
x86_64               randconfig-x014-20230816   gcc  
x86_64               randconfig-x015-20230816   gcc  
x86_64               randconfig-x016-20230816   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                       common_defconfig   gcc  
xtensa               randconfig-r005-20230816   gcc  
xtensa               randconfig-r013-20230816   gcc  
xtensa               randconfig-r035-20230816   gcc  
xtensa                    smp_lx200_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
