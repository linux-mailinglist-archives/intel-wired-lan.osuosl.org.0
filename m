Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 067286CD0DC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 05:50:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F24D44086E;
	Wed, 29 Mar 2023 03:50:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F24D44086E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680061848;
	bh=TnK/Gq/8tDCQcDNoYfy3FeBfUUiRuO84ORWwHdUcZVY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=yrQT68fuTmXb6DJefLrjF+mXPkgQx5vAdnWB18hZhpL8LTk+n/5ob+RCHgCHhbRDu
	 uj6IB+bNqsS4E5y8RIM+rPKkf3gsnhiJy32kl3suB1JjW3yTfl4OJ0YwNAYgJ2UZFz
	 1C6EvrwGB70P9vaVbNmcGwV8N2BnhzcdHaH9c5XaJzvINZuPotPsF7SMcC50RyovNl
	 NOAMFPBKRFAEbUB6MkTagrR4PZWuvhH5BvVFRFtuyNyduln+8kX9xDX8i2R1Jj3crK
	 OouyRdErvD2FwkhqBG8ISkIB3ULgQRlrrJRYsy+MbeCKe9U5a9fQGcExnb2Vw2vGt9
	 UKNnZFGWbaXmw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YdcrMx8CzbE4; Wed, 29 Mar 2023 03:50:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9116340135;
	Wed, 29 Mar 2023 03:50:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9116340135
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE2F01BF3A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 03:50:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 87A58417C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 03:50:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87A58417C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AbAyz346CJgF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 03:50:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 25F134177E
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 25F134177E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 03:50:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="343181278"
X-IronPort-AV: E=Sophos;i="5.98,299,1673942400"; d="scan'208";a="343181278"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 20:50:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="677619468"
X-IronPort-AV: E=Sophos;i="5.98,299,1673942400"; d="scan'208";a="677619468"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 28 Mar 2023 20:50:36 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1phMpX-000JCd-2x;
 Wed, 29 Mar 2023 03:50:35 +0000
Date: Wed, 29 Mar 2023 11:50:34 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6423b58a.RsO4+Ljrd8kFu2qR%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680061839; x=1711597839;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=xnOC08T0lf6t7Hlnu04WqcLFiuill5zxF58QR+c/3zE=;
 b=OXLaovb5rt96BcOA59aTZhRSUr7j4Xuqp5Unt8AQenn3d74qL6rYs6n+
 v6ONdAFh6T4S9wofetkZXbJI284+7QMUX8gX18nfV6ij637yu65VsSFfY
 3p+zw9EXyS5XlKDQTly8ukyVnWBPyZYf62J5wAYTHfvvZP7bfaZdlenXj
 mMowD2CAWUwg7zOerzJPGhtSyOgqdat4dus4jseGP25hLVmpCKxy0uRLi
 VkipJxwzOq1+ZgNeN/yzs13WRsEEbHIOSW7URCsF5MNktueM36eEZ/8+a
 BM1jeGdZwiOzjO+Db1dmuPlqgs80MHiqIzHTHJfToNJpDBEARiHdyHyj8
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OXLaovb5
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 917fd7d6cdda179fdced2ebb060a9cda517d76e0
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
branch HEAD: 917fd7d6cdda179fdced2ebb060a9cda517d76e0  Merge branch 'xen-netback-fix-issue-introduced-recently'

elapsed time: 813m

configs tested: 253
configs skipped: 17

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r004-20230327   gcc  
alpha                randconfig-r012-20230326   gcc  
alpha                randconfig-r016-20230328   gcc  
alpha                randconfig-r025-20230326   gcc  
alpha                randconfig-r032-20230326   gcc  
alpha                randconfig-r035-20230327   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r004-20230326   gcc  
arc          buildonly-randconfig-r004-20230327   gcc  
arc                                 defconfig   gcc  
arc                            hsdk_defconfig   gcc  
arc                  randconfig-r001-20230326   gcc  
arc                  randconfig-r011-20230327   gcc  
arc                  randconfig-r014-20230327   gcc  
arc                  randconfig-r016-20230327   gcc  
arc                  randconfig-r022-20230327   gcc  
arc                  randconfig-r024-20230326   gcc  
arc                  randconfig-r031-20230326   gcc  
arc                  randconfig-r034-20230326   gcc  
arc                  randconfig-r043-20230326   gcc  
arc                  randconfig-r043-20230327   gcc  
arc                  randconfig-r043-20230328   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r003-20230326   clang
arm                                 defconfig   gcc  
arm                      footbridge_defconfig   gcc  
arm                         nhk8815_defconfig   gcc  
arm                  randconfig-r002-20230326   gcc  
arm                  randconfig-r005-20230327   clang
arm                  randconfig-r011-20230328   clang
arm                  randconfig-r016-20230327   gcc  
arm                  randconfig-r022-20230326   clang
arm                  randconfig-r025-20230326   clang
arm                  randconfig-r033-20230327   clang
arm                  randconfig-r036-20230327   clang
arm                  randconfig-r046-20230326   clang
arm                  randconfig-r046-20230327   gcc  
arm                  randconfig-r046-20230328   clang
arm                           sama7_defconfig   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r005-20230326   clang
arm64                               defconfig   gcc  
arm64                randconfig-r012-20230326   gcc  
arm64                randconfig-r013-20230327   clang
arm64                randconfig-r015-20230328   gcc  
arm64                randconfig-r021-20230326   gcc  
arm64                randconfig-r031-20230326   clang
csky         buildonly-randconfig-r002-20230327   gcc  
csky         buildonly-randconfig-r003-20230326   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230327   gcc  
csky                 randconfig-r003-20230327   gcc  
csky                 randconfig-r012-20230326   gcc  
csky                 randconfig-r013-20230326   gcc  
csky                 randconfig-r023-20230326   gcc  
csky                 randconfig-r024-20230326   gcc  
csky                 randconfig-r026-20230326   gcc  
hexagon              randconfig-r006-20230327   clang
hexagon              randconfig-r022-20230327   clang
hexagon              randconfig-r031-20230327   clang
hexagon              randconfig-r036-20230326   clang
hexagon              randconfig-r041-20230326   clang
hexagon              randconfig-r041-20230327   clang
hexagon              randconfig-r041-20230328   clang
hexagon              randconfig-r045-20230326   clang
hexagon              randconfig-r045-20230327   clang
hexagon              randconfig-r045-20230328   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230327   gcc  
i386                 randconfig-a002-20230327   gcc  
i386                 randconfig-a003-20230327   gcc  
i386                 randconfig-a004-20230327   gcc  
i386                 randconfig-a005-20230327   gcc  
i386                 randconfig-a006-20230327   gcc  
i386                 randconfig-a011-20230327   clang
i386                 randconfig-a012-20230327   clang
i386                 randconfig-a013-20230327   clang
i386                 randconfig-a014-20230327   clang
i386                 randconfig-a015-20230327   clang
i386                 randconfig-a016-20230327   clang
i386                          randconfig-c001   gcc  
i386                 randconfig-r022-20230327   clang
i386                 randconfig-r031-20230327   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r003-20230326   gcc  
ia64         buildonly-randconfig-r004-20230326   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r015-20230327   gcc  
ia64                 randconfig-r016-20230326   gcc  
ia64                 randconfig-r025-20230327   gcc  
ia64                 randconfig-r033-20230326   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230326   gcc  
loongarch            randconfig-r005-20230326   gcc  
loongarch            randconfig-r014-20230328   gcc  
loongarch            randconfig-r015-20230328   gcc  
loongarch            randconfig-r024-20230327   gcc  
loongarch            randconfig-r025-20230326   gcc  
loongarch            randconfig-r033-20230327   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r003-20230327   gcc  
m68k         buildonly-randconfig-r006-20230326   gcc  
m68k                                defconfig   gcc  
m68k                       m5208evb_defconfig   gcc  
m68k                            mac_defconfig   gcc  
m68k                 randconfig-r023-20230326   gcc  
m68k                 randconfig-r036-20230327   gcc  
microblaze           randconfig-r014-20230326   gcc  
microblaze           randconfig-r034-20230326   gcc  
microblaze           randconfig-r036-20230326   gcc  
microblaze           randconfig-r036-20230327   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                        bcm47xx_defconfig   gcc  
mips                       bmips_be_defconfig   gcc  
mips         buildonly-randconfig-r001-20230326   gcc  
mips         buildonly-randconfig-r003-20230327   clang
mips         buildonly-randconfig-r006-20230327   clang
mips                 randconfig-r002-20230327   clang
mips                 randconfig-r004-20230327   clang
mips                 randconfig-r014-20230327   gcc  
mips                 randconfig-r033-20230326   gcc  
nios2        buildonly-randconfig-r001-20230326   gcc  
nios2        buildonly-randconfig-r002-20230326   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r006-20230326   gcc  
nios2                randconfig-r013-20230326   gcc  
nios2                randconfig-r034-20230327   gcc  
openrisc     buildonly-randconfig-r001-20230327   gcc  
openrisc     buildonly-randconfig-r005-20230327   gcc  
openrisc             randconfig-r002-20230326   gcc  
openrisc             randconfig-r003-20230326   gcc  
openrisc             randconfig-r004-20230326   gcc  
openrisc             randconfig-r021-20230327   gcc  
openrisc             randconfig-r025-20230327   gcc  
openrisc             randconfig-r035-20230326   gcc  
parisc       buildonly-randconfig-r002-20230326   gcc  
parisc       buildonly-randconfig-r002-20230327   gcc  
parisc       buildonly-randconfig-r004-20230327   gcc  
parisc       buildonly-randconfig-r005-20230327   gcc  
parisc       buildonly-randconfig-r006-20230326   gcc  
parisc       buildonly-randconfig-r006-20230327   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230327   gcc  
parisc               randconfig-r005-20230326   gcc  
parisc               randconfig-r006-20230326   gcc  
parisc               randconfig-r012-20230327   gcc  
parisc               randconfig-r012-20230328   gcc  
parisc               randconfig-r013-20230326   gcc  
parisc               randconfig-r016-20230327   gcc  
parisc               randconfig-r026-20230326   gcc  
parisc               randconfig-r032-20230327   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r001-20230326   gcc  
powerpc                     kilauea_defconfig   clang
powerpc              randconfig-c003-20230326   gcc  
powerpc              randconfig-r012-20230327   clang
powerpc              randconfig-r013-20230328   gcc  
powerpc              randconfig-r015-20230326   gcc  
powerpc              randconfig-r024-20230326   gcc  
powerpc              randconfig-r031-20230327   gcc  
powerpc              randconfig-r032-20230327   gcc  
powerpc                    sam440ep_defconfig   gcc  
powerpc                      walnut_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r006-20230327   clang
riscv                               defconfig   gcc  
riscv                randconfig-r011-20230326   gcc  
riscv                randconfig-r011-20230328   gcc  
riscv                randconfig-r013-20230328   gcc  
riscv                randconfig-r014-20230328   gcc  
riscv                randconfig-r024-20230327   clang
riscv                randconfig-r026-20230327   clang
riscv                randconfig-r032-20230326   clang
riscv                randconfig-r034-20230327   gcc  
riscv                randconfig-r035-20230327   gcc  
riscv                randconfig-r042-20230326   gcc  
riscv                randconfig-r042-20230327   clang
riscv                randconfig-r042-20230328   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r006-20230326   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r012-20230328   gcc  
s390                 randconfig-r014-20230326   gcc  
s390                 randconfig-r014-20230327   clang
s390                 randconfig-r022-20230326   gcc  
s390                 randconfig-r024-20230327   clang
s390                 randconfig-r032-20230327   gcc  
s390                 randconfig-r044-20230326   gcc  
s390                 randconfig-r044-20230327   clang
s390                 randconfig-r044-20230328   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r016-20230326   gcc  
sh                   randconfig-r035-20230326   gcc  
sparc                            alldefconfig   gcc  
sparc        buildonly-randconfig-r001-20230327   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230326   gcc  
sparc                randconfig-r021-20230326   gcc  
sparc                randconfig-r025-20230327   gcc  
sparc                randconfig-r033-20230326   gcc  
sparc64      buildonly-randconfig-r004-20230326   gcc  
sparc64                             defconfig   gcc  
sparc64              randconfig-r003-20230327   gcc  
sparc64              randconfig-r004-20230326   gcc  
sparc64              randconfig-r005-20230327   gcc  
sparc64              randconfig-r022-20230326   gcc  
sparc64              randconfig-r026-20230326   gcc  
sparc64              randconfig-r026-20230327   gcc  
sparc64              randconfig-r034-20230326   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r002-20230327   gcc  
x86_64       buildonly-randconfig-r003-20230327   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230327   gcc  
x86_64               randconfig-a002-20230327   gcc  
x86_64               randconfig-a003-20230327   gcc  
x86_64               randconfig-a004-20230327   gcc  
x86_64               randconfig-a005-20230327   gcc  
x86_64               randconfig-a006-20230327   gcc  
x86_64               randconfig-a011-20230327   clang
x86_64               randconfig-a012-20230327   clang
x86_64               randconfig-a013-20230327   clang
x86_64               randconfig-a014-20230327   clang
x86_64               randconfig-a015-20230327   clang
x86_64               randconfig-a016-20230327   clang
x86_64                        randconfig-k001   clang
x86_64               randconfig-r021-20230327   clang
x86_64               randconfig-r033-20230327   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r002-20230327   gcc  
xtensa               randconfig-r011-20230326   gcc  
xtensa               randconfig-r011-20230327   gcc  
xtensa               randconfig-r015-20230327   gcc  
xtensa               randconfig-r035-20230326   gcc  
xtensa               randconfig-r035-20230327   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
