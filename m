Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E31646DB909
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Apr 2023 07:13:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A9B740463;
	Sat,  8 Apr 2023 05:13:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A9B740463
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680930793;
	bh=+HZ3tZ6uzRtBDHX5LxvIReBjFnruVrsUBwN/M2a2nAA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=s0n+fS7M4fl0Y6jB7cKSrWzUqnfkRlsPvvHBtSzaCthT22H7G5q5OGN9xZrDNWlFJ
	 6sHQ7FV6HsrWEO20NH6ahttgeGSVYMc7J9LE82phZ8uwuEV/SPKPtiEmH6Ow4aWkWV
	 KGaDaJrqM9iphuweXuBh0UUgRsCmlPF7YkiwG5aGXQnlgoIodzpyOtIVge5LDqkJ64
	 /iKrj4prPC+czrFLUpYxG4W4EgRzklCT34shr7cmCD8t1yFUWKTAIiIvvcDK1Sfg9W
	 QLa6XB+kHokmWKREnldGUJlUYuGnlD6+wipN37Mc5bG5NhpwQMJschRb89BZVSBYDU
	 WYGsiSDwXyK3w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WW8yxDKYf_hj; Sat,  8 Apr 2023 05:13:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ED779400EC;
	Sat,  8 Apr 2023 05:13:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED779400EC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A16F51BF846
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Apr 2023 05:13:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 791B6400EC
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Apr 2023 05:13:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 791B6400EC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z1HcZ_kIAs0k for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Apr 2023 05:13:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 338D7400A4
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 338D7400A4
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Apr 2023 05:13:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10673"; a="341865252"
X-IronPort-AV: E=Sophos;i="5.98,328,1673942400"; d="scan'208";a="341865252"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2023 22:12:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10673"; a="831376441"
X-IronPort-AV: E=Sophos;i="5.98,328,1673942400"; d="scan'208";a="831376441"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 07 Apr 2023 22:12:31 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pl0sJ-000TMD-0K;
 Sat, 08 Apr 2023 05:12:31 +0000
Date: Sat, 08 Apr 2023 13:12:19 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6430f7b3.+VXAFRkhGsq5gfGJ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680930785; x=1712466785;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=QDfpwT7yQE3uHCrtRQW4LbBkYXTnkPAnh1dd4+jjQwM=;
 b=M7jjTsI0J0jq6jX1RkGhqknzUveHUBOHltH9fsaUZQG93Vi1Hq6rCfHz
 S3KT5lGoY2av4L8vudDnsSPyyYNcCUi0t66fBSymIDeh4V3MHjDKNoCCR
 FGEcpoOdlVCxd7hZI4SVNq4RYiMVYf11qzOB/QuWOvsvCFmKopGcxWeUf
 FCgYv+ZNqny5q83gk0IiiAohQmsnoUbpzzBU7q+FPuOs796h8SAPjySZS
 NOTB3R9W06gQZ+t/HNQXh8A+GrIJSZjk6h2m1E0BJbH0uoxyRRhx8a2kq
 g5K6YMnrTo+A5G3A1lQ111qVnymCg0VwieBVSsE0W55ipxH53a99KCP3M
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M7jjTsI0
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 9c85b7fa12ef2e4fc11a4e31ac595fb5f9d0ddf9
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
branch HEAD: 9c85b7fa12ef2e4fc11a4e31ac595fb5f9d0ddf9  iavf: remove active_cvlans and active_svlans bitmaps

elapsed time: 721m

configs tested: 185
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230403   gcc  
alpha        buildonly-randconfig-r003-20230405   gcc  
alpha        buildonly-randconfig-r005-20230403   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r021-20230403   gcc  
alpha                randconfig-r023-20230403   gcc  
alpha                randconfig-r024-20230403   gcc  
alpha                randconfig-r026-20230403   gcc  
alpha                randconfig-r036-20230403   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r004-20230403   gcc  
arc          buildonly-randconfig-r005-20230405   gcc  
arc          buildonly-randconfig-r006-20230403   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r016-20230403   gcc  
arc                  randconfig-r031-20230403   gcc  
arc                  randconfig-r033-20230403   gcc  
arc                  randconfig-r043-20230403   gcc  
arc                  randconfig-r043-20230408   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r034-20230403   gcc  
arm                  randconfig-r046-20230408   gcc  
arm                         vf610m4_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230403   clang
arm64                randconfig-r004-20230403   clang
arm64                randconfig-r015-20230403   gcc  
arm64                randconfig-r015-20230406   clang
arm64                randconfig-r016-20230406   clang
arm64                randconfig-r035-20230403   clang
csky                                defconfig   gcc  
csky                 randconfig-r011-20230403   gcc  
csky                 randconfig-r013-20230403   gcc  
csky                 randconfig-r032-20230405   gcc  
csky                 randconfig-r035-20230405   gcc  
hexagon              randconfig-r001-20230403   clang
hexagon              randconfig-r004-20230403   clang
hexagon              randconfig-r012-20230403   clang
hexagon              randconfig-r041-20230404   clang
hexagon              randconfig-r041-20230408   clang
hexagon              randconfig-r045-20230404   clang
hexagon              randconfig-r045-20230408   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230403   clang
i386                 randconfig-a002-20230403   clang
i386                 randconfig-a003-20230403   clang
i386                 randconfig-a004-20230403   clang
i386                 randconfig-a005-20230403   clang
i386                 randconfig-a006-20230403   clang
i386                 randconfig-a011-20230403   gcc  
i386                 randconfig-a012-20230403   gcc  
i386                          randconfig-a012   gcc  
i386                 randconfig-a013-20230403   gcc  
i386                 randconfig-a014-20230403   gcc  
i386                          randconfig-a014   gcc  
i386                 randconfig-a015-20230403   gcc  
i386                 randconfig-a016-20230403   gcc  
i386                          randconfig-a016   gcc  
i386                 randconfig-r022-20230403   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r002-20230403   gcc  
ia64         buildonly-randconfig-r004-20230403   gcc  
ia64         buildonly-randconfig-r004-20230404   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r006-20230403   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r032-20230403   gcc  
loongarch            randconfig-r036-20230403   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r013-20230408   gcc  
m68k                 randconfig-r014-20230403   gcc  
m68k                 randconfig-r031-20230405   gcc  
microblaze           randconfig-r023-20230403   gcc  
microblaze           randconfig-r024-20230403   gcc  
microblaze           randconfig-r031-20230403   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r004-20230405   gcc  
mips                 randconfig-r033-20230405   gcc  
nios2        buildonly-randconfig-r003-20230403   gcc  
nios2        buildonly-randconfig-r006-20230403   gcc  
nios2        buildonly-randconfig-r006-20230405   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r014-20230403   gcc  
nios2                randconfig-r023-20230403   gcc  
nios2                randconfig-r032-20230403   gcc  
openrisc     buildonly-randconfig-r003-20230403   gcc  
openrisc     buildonly-randconfig-r005-20230404   gcc  
openrisc     buildonly-randconfig-r006-20230403   gcc  
openrisc             randconfig-r012-20230408   gcc  
openrisc             randconfig-r025-20230403   gcc  
openrisc             randconfig-r034-20230405   gcc  
openrisc             randconfig-r035-20230403   gcc  
parisc       buildonly-randconfig-r003-20230403   gcc  
parisc       buildonly-randconfig-r005-20230403   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r003-20230403   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r013-20230403   gcc  
powerpc              randconfig-r015-20230408   clang
powerpc              randconfig-r025-20230403   gcc  
powerpc              randconfig-r036-20230403   clang
powerpc                      walnut_defconfig   clang
powerpc                        warp_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r002-20230405   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r012-20230403   gcc  
riscv                randconfig-r012-20230406   clang
riscv                randconfig-r016-20230403   gcc  
riscv                randconfig-r021-20230403   gcc  
riscv                randconfig-r042-20230403   gcc  
riscv                randconfig-r042-20230404   clang
riscv                randconfig-r042-20230408   clang
riscv                          rv32_defconfig   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                          debug_defconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r003-20230403   clang
s390                 randconfig-r004-20230403   clang
s390                 randconfig-r044-20230403   gcc  
s390                 randconfig-r044-20230404   clang
s390                 randconfig-r044-20230408   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r001-20230403   gcc  
sh           buildonly-randconfig-r005-20230403   gcc  
sh                   randconfig-r002-20230403   gcc  
sh                   randconfig-r034-20230403   gcc  
sh                   secureedge5410_defconfig   gcc  
sparc        buildonly-randconfig-r001-20230404   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r016-20230408   gcc  
sparc                randconfig-r032-20230403   gcc  
sparc64      buildonly-randconfig-r001-20230405   gcc  
sparc64      buildonly-randconfig-r002-20230403   gcc  
sparc64              randconfig-r005-20230403   gcc  
sparc64              randconfig-r014-20230408   gcc  
sparc64              randconfig-r024-20230403   gcc  
sparc64              randconfig-r026-20230403   gcc  
sparc64              randconfig-r031-20230403   gcc  
sparc64              randconfig-r033-20230403   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r002-20230403   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230403   clang
x86_64                        randconfig-a001   clang
x86_64               randconfig-a002-20230403   clang
x86_64               randconfig-a003-20230403   clang
x86_64                        randconfig-a003   clang
x86_64               randconfig-a004-20230403   clang
x86_64               randconfig-a005-20230403   clang
x86_64                        randconfig-a005   clang
x86_64               randconfig-a006-20230403   clang
x86_64               randconfig-a011-20230403   gcc  
x86_64               randconfig-a012-20230403   gcc  
x86_64                        randconfig-a012   clang
x86_64               randconfig-a013-20230403   gcc  
x86_64               randconfig-a014-20230403   gcc  
x86_64                        randconfig-a014   clang
x86_64               randconfig-a015-20230403   gcc  
x86_64               randconfig-a016-20230403   gcc  
x86_64                        randconfig-a016   clang
x86_64               randconfig-k001-20230403   gcc  
x86_64               randconfig-r001-20230403   clang
x86_64               randconfig-r026-20230403   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r004-20230403   gcc  
xtensa               randconfig-r021-20230403   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
