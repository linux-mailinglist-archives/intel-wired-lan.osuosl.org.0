Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E62386B8A2C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Mar 2023 06:16:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA8A241853;
	Tue, 14 Mar 2023 05:16:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA8A241853
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678770985;
	bh=40wZCKVlrHxC2qr9joKQdu1Nz8QsWaEoIYeJDReoj6E=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wkikq0helRTLAd2LSMVVPtEZVU6olesX9jxIYLjP5xoo9eFQm38djwfe+v2U4WMjP
	 ItuFndhDxr6jvyzEludNah9PJUiMi1qqpmTMs+qqP8RHNgwE3fEuV14ppDSwD3kQWp
	 LpBkw6XonavJFsXAmb4BQ6KIHnJM5eNBDCiyxUtyg8LhtjHMBQdCkRZFC3ONsUCV55
	 Typo52WjK7OIQ+XsWMgqLnplVRS8Q0gdliNM+WiVxco/thXu0+NxoTWkV8cEeRbhrR
	 GTsHn4VqgiAQ7GlRTd6NMfCRXz04oPnEMMDV0EhkPrGviSNMB3hVfQehwugmE3K5VK
	 xqrFvZeVfcbew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2E5sEAGy-rp8; Tue, 14 Mar 2023 05:16:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26B4641769;
	Tue, 14 Mar 2023 05:16:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26B4641769
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 023711BF283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 05:16:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CDF9381432
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 05:16:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CDF9381432
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FLPQR45NDpZT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Mar 2023 05:16:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 97B3B81415
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 97B3B81415
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 05:16:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="337359509"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="337359509"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 22:16:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="1008258947"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="1008258947"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 13 Mar 2023 22:16:15 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pbx1D-0006YW-0m;
 Tue, 14 Mar 2023 05:16:15 +0000
Date: Tue, 14 Mar 2023 13:15:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6410030a.ATUJ6Pvt2WAFGwg6%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678770977; x=1710306977;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=h4bfT1WKCvGqp5ajrsT/uziqsEvR7jqBHUcnJLz2IBo=;
 b=h8LQPL+ig3mmgMKqxCkjrJMCeIY1iqMib1E9rUNQ00UToyL/cGlgTB9i
 qpKciVtHl2yVPrapDt2TCB/xbvnu7YpFQIzPfr0DkBo+CenTy21gYgKJ/
 pn1bMivpM5jHCtJK1IDiS/wenahnmZQpZ76HhwCm1sR5dNA0gHVOkl9Q3
 VHy7MiNnDJt0i98q2E27TNJ/QG8mn4vuMBz5XNhMc9UQscLo0q9hziUe4
 5vs5sW8W1W/LinbrfcgFynXmupYJ6KNuVe7Ltz2/ZjxBKCerh3039EEW+
 LY8hmZ9HFNeNv/XQrQa/eq+1x/5pxBn8hKEdPZaUHF+2fTpluQlCrm6i4
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h8LQPL+i
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 064d70527aaab23ef46c2481df706451f6814106
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
branch HEAD: 064d70527aaab23ef46c2481df706451f6814106  Merge git://git.kernel.org/pub/scm/linux/kernel/git/netfilter/nf

elapsed time: 4254m

configs tested: 249
configs skipped: 23

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r005-20230310   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r004-20230310   gcc  
alpha                randconfig-r004-20230312   gcc  
alpha                randconfig-r006-20230313   gcc  
alpha                randconfig-r013-20230312   gcc  
alpha                randconfig-r021-20230312   gcc  
alpha                randconfig-r021-20230313   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r004-20230312   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r001-20230313   gcc  
arc                  randconfig-r031-20230312   gcc  
arc                  randconfig-r031-20230313   gcc  
arc                  randconfig-r034-20230312   gcc  
arc                  randconfig-r043-20230312   gcc  
arc                  randconfig-r043-20230313   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r001-20230313   gcc  
arm          buildonly-randconfig-r002-20230312   clang
arm          buildonly-randconfig-r003-20230310   clang
arm          buildonly-randconfig-r003-20230313   gcc  
arm          buildonly-randconfig-r005-20230313   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r002-20230310   gcc  
arm                  randconfig-r004-20230310   gcc  
arm                  randconfig-r014-20230312   clang
arm                  randconfig-r014-20230313   gcc  
arm                  randconfig-r025-20230313   gcc  
arm                  randconfig-r026-20230313   gcc  
arm                  randconfig-r034-20230313   clang
arm                  randconfig-r046-20230312   clang
arm                  randconfig-r046-20230313   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230310   clang
arm64                randconfig-r003-20230312   clang
arm64                randconfig-r016-20230312   gcc  
arm64                randconfig-r016-20230313   clang
arm64                randconfig-r032-20230313   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230310   gcc  
csky                 randconfig-r004-20230313   gcc  
csky                 randconfig-r015-20230312   gcc  
csky                 randconfig-r024-20230311   gcc  
csky                 randconfig-r026-20230312   gcc  
csky                 randconfig-r035-20230312   gcc  
csky                 randconfig-r036-20230312   gcc  
csky                 randconfig-r036-20230313   gcc  
hexagon      buildonly-randconfig-r004-20230312   clang
hexagon      buildonly-randconfig-r005-20230313   clang
hexagon              randconfig-r002-20230312   clang
hexagon              randconfig-r012-20230313   clang
hexagon              randconfig-r013-20230313   clang
hexagon              randconfig-r015-20230312   clang
hexagon              randconfig-r022-20230313   clang
hexagon              randconfig-r023-20230312   clang
hexagon              randconfig-r024-20230310   clang
hexagon              randconfig-r026-20230311   clang
hexagon              randconfig-r033-20230312   clang
hexagon              randconfig-r033-20230313   clang
hexagon              randconfig-r041-20230312   clang
hexagon              randconfig-r041-20230313   clang
hexagon              randconfig-r045-20230312   clang
hexagon              randconfig-r045-20230313   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r002-20230313   gcc  
i386         buildonly-randconfig-r003-20230313   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
i386                 randconfig-r003-20230313   gcc  
i386                 randconfig-r011-20230313   clang
i386                 randconfig-r021-20230313   clang
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r001-20230310   gcc  
ia64         buildonly-randconfig-r005-20230310   gcc  
ia64         buildonly-randconfig-r005-20230312   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r022-20230312   gcc  
ia64                 randconfig-r023-20230310   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r013-20230310   gcc  
loongarch            randconfig-r015-20230310   gcc  
loongarch            randconfig-r021-20230310   gcc  
loongarch            randconfig-r024-20230312   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r004-20230310   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230310   gcc  
m68k                 randconfig-r004-20230312   gcc  
m68k                 randconfig-r005-20230310   gcc  
m68k                 randconfig-r006-20230312   gcc  
m68k                 randconfig-r016-20230310   gcc  
m68k                 randconfig-r021-20230311   gcc  
m68k                 randconfig-r023-20230311   gcc  
m68k                 randconfig-r024-20230310   gcc  
m68k                 randconfig-r031-20230312   gcc  
m68k                 randconfig-r032-20230312   gcc  
microblaze   buildonly-randconfig-r003-20230312   gcc  
microblaze           randconfig-r012-20230312   gcc  
microblaze           randconfig-r013-20230313   gcc  
microblaze           randconfig-r022-20230310   gcc  
microblaze           randconfig-r025-20230312   gcc  
microblaze           randconfig-r032-20230312   gcc  
microblaze           randconfig-r034-20230312   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r002-20230313   clang
mips                 randconfig-r005-20230310   gcc  
mips                 randconfig-r006-20230312   gcc  
mips                 randconfig-r006-20230313   clang
mips                 randconfig-r011-20230312   clang
mips                 randconfig-r011-20230313   gcc  
mips                 randconfig-r012-20230310   clang
mips                 randconfig-r013-20230312   clang
mips                 randconfig-r016-20230310   clang
mips                 randconfig-r023-20230313   gcc  
mips                 randconfig-r033-20230312   gcc  
mips                 randconfig-r035-20230312   gcc  
nios2        buildonly-randconfig-r003-20230310   gcc  
nios2        buildonly-randconfig-r003-20230312   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230310   gcc  
nios2                randconfig-r003-20230312   gcc  
nios2                randconfig-r003-20230313   gcc  
nios2                randconfig-r006-20230310   gcc  
nios2                randconfig-r022-20230310   gcc  
nios2                randconfig-r025-20230310   gcc  
nios2                randconfig-r026-20230310   gcc  
nios2                randconfig-r026-20230312   gcc  
nios2                randconfig-r036-20230312   gcc  
nios2                randconfig-r036-20230313   gcc  
openrisc     buildonly-randconfig-r001-20230312   gcc  
openrisc     buildonly-randconfig-r006-20230310   gcc  
openrisc     buildonly-randconfig-r006-20230312   gcc  
openrisc             randconfig-r002-20230310   gcc  
openrisc             randconfig-r005-20230312   gcc  
openrisc             randconfig-r015-20230310   gcc  
openrisc             randconfig-r026-20230310   gcc  
openrisc             randconfig-r031-20230312   gcc  
openrisc             randconfig-r032-20230312   gcc  
openrisc             randconfig-r036-20230312   gcc  
parisc       buildonly-randconfig-r006-20230312   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r003-20230310   gcc  
parisc               randconfig-r005-20230312   gcc  
parisc               randconfig-r011-20230310   gcc  
parisc               randconfig-r012-20230313   gcc  
parisc               randconfig-r015-20230313   gcc  
parisc               randconfig-r021-20230312   gcc  
parisc               randconfig-r025-20230311   gcc  
parisc               randconfig-r034-20230312   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r001-20230310   gcc  
powerpc      buildonly-randconfig-r001-20230313   clang
powerpc      buildonly-randconfig-r002-20230310   gcc  
powerpc      buildonly-randconfig-r004-20230313   clang
powerpc              randconfig-r004-20230313   gcc  
powerpc              randconfig-r011-20230310   gcc  
powerpc              randconfig-r012-20230310   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r004-20230313   clang
riscv                               defconfig   gcc  
riscv                randconfig-r001-20230312   clang
riscv                randconfig-r002-20230310   clang
riscv                randconfig-r003-20230310   clang
riscv                randconfig-r023-20230310   gcc  
riscv                randconfig-r032-20230313   gcc  
riscv                randconfig-r033-20230312   clang
riscv                randconfig-r042-20230312   gcc  
riscv                randconfig-r042-20230313   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230310   gcc  
s390         buildonly-randconfig-r006-20230310   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r014-20230310   gcc  
s390                 randconfig-r022-20230311   clang
s390                 randconfig-r024-20230313   clang
s390                 randconfig-r025-20230310   gcc  
s390                 randconfig-r032-20230312   clang
s390                 randconfig-r044-20230312   gcc  
s390                 randconfig-r044-20230313   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r006-20230313   gcc  
sh                   randconfig-r004-20230310   gcc  
sh                   randconfig-r013-20230310   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r002-20230312   gcc  
sparc                randconfig-r005-20230310   gcc  
sparc                randconfig-r005-20230313   gcc  
sparc                randconfig-r025-20230313   gcc  
sparc                randconfig-r034-20230312   gcc  
sparc64      buildonly-randconfig-r004-20230310   gcc  
sparc64      buildonly-randconfig-r006-20230310   gcc  
sparc64              randconfig-r001-20230312   gcc  
sparc64              randconfig-r012-20230312   gcc  
sparc64              randconfig-r021-20230310   gcc  
sparc64              randconfig-r024-20230312   gcc  
sparc64              randconfig-r033-20230313   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64               randconfig-r022-20230313   clang
x86_64               randconfig-r023-20230313   clang
x86_64               randconfig-r024-20230313   clang
x86_64               randconfig-r026-20230313   clang
x86_64               randconfig-r035-20230313   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r005-20230313   gcc  
xtensa               randconfig-r006-20230310   gcc  
xtensa               randconfig-r014-20230313   gcc  
xtensa               randconfig-r035-20230312   gcc  
xtensa               randconfig-r036-20230312   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
