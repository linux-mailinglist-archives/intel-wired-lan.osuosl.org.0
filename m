Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C84E76EB842
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Apr 2023 11:41:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1DEC241DBF;
	Sat, 22 Apr 2023 09:41:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1DEC241DBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682156512;
	bh=hStb/nPjf13Ec8ZSxmZ6IlUt64RLI2uyPfDUMkOk2O4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=sqT3xtuXINDZe01tg6Wk9y6XyYJiGFXbr45v+a6vjJBFgqL5dniJoQjUxvfbLjDgw
	 mBo8ohi7rgCV4KfplmlwzrPdiVjyhXV7jAZE6UDYKkk3knaLcaZM6eCVzccPLxZHFQ
	 lE4LklBDRNHMckVV331S7yPbOdVaus9uBxjIbo7pYyAGDFFT1UW9ngmLHR0buJFrgc
	 obH8ytMfX6AxIS9tedAscwj2B7MNWUzMHf9jqh1aKnoJBJkxtnYFqUXE5cahIVJxXc
	 xYU0OZbXO14btk1OPHYhYA5LGf/zrsKNqrpHB5GJlVkolOymrEAHN2tF0BodI1tsJv
	 IohF/QcQ6TU5g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PtNe2xZHVq7l; Sat, 22 Apr 2023 09:41:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 884C341933;
	Sat, 22 Apr 2023 09:41:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 884C341933
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 443D01C29B8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Apr 2023 09:41:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1BD8960BA1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Apr 2023 09:41:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BD8960BA1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oKr-79Df-x5J for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Apr 2023 09:41:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A28060B0E
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0A28060B0E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Apr 2023 09:41:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="343627794"
X-IronPort-AV: E=Sophos;i="5.99,218,1677571200"; d="scan'208";a="343627794"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2023 02:41:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="816686721"
X-IronPort-AV: E=Sophos;i="5.99,218,1677571200"; d="scan'208";a="816686721"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 22 Apr 2023 02:41:41 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pq9kS-000hDs-2C;
 Sat, 22 Apr 2023 09:41:40 +0000
Date: Sat, 22 Apr 2023 17:41:07 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6443abb3.mYkGlwYZGkCNmNc/%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682156504; x=1713692504;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=j/5Ylve6SfZDhzWImWTyZ4O471DEKYKrV+llxW3aDz4=;
 b=MIrggTfxsnE8wbfQk/6pkB6aaLrSUE3eTf7VxTCv+aR1awySqfxaxsVt
 DNQPEQWhf+T/fWmPG3bNlDzQhjx7kkp8JNrFzBOxU8gV/d1mLNoWtGOAk
 YVeX5R8ky8rstvYc8eCZjA6nsIDBMwhNOx5WHgRppVqFeQTQw2F7AGj4b
 ZE1UAbDZ4UZknD9bAUcbGVzD09FD8n+v0RS0pGOX8c9+KN7+Q6npZ/RiK
 1Yvfs8Ltd0c0qIAeGQoeiROcWU12M1Axr+18dLXRpRSd2mZcYBU1xwwZ2
 tVHCYGf2h08EBMSqT7N6rBawTBimzuvPl0+jmNWQHbLx5j+UWq4TMdYWE
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MIrggTfx
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 a72471ae9ed5b8cbcc25dd9a9880470e4fef5133
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
branch HEAD: a72471ae9ed5b8cbcc25dd9a9880470e4fef5133  iavf: Fix out-of-bounds when setting channels on remove

elapsed time: 903m

configs tested: 169
configs skipped: 14

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r002-20230421   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r002-20230421   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r022-20230421   gcc  
arc                  randconfig-r043-20230421   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r001-20230421   gcc  
arm                                 defconfig   gcc  
arm                          exynos_defconfig   gcc  
arm                         nhk8815_defconfig   gcc  
arm                  randconfig-r005-20230421   clang
arm                  randconfig-r026-20230421   gcc  
arm                  randconfig-r046-20230421   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r015-20230421   clang
arm64                randconfig-r031-20230421   gcc  
arm64                randconfig-r033-20230421   gcc  
csky         buildonly-randconfig-r004-20230421   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r012-20230421   gcc  
csky                 randconfig-r022-20230421   gcc  
csky                 randconfig-r024-20230421   gcc  
csky                 randconfig-r032-20230421   gcc  
csky                 randconfig-r036-20230421   gcc  
hexagon      buildonly-randconfig-r002-20230421   clang
hexagon      buildonly-randconfig-r003-20230421   clang
hexagon              randconfig-r001-20230421   clang
hexagon              randconfig-r004-20230421   clang
hexagon              randconfig-r022-20230421   clang
hexagon              randconfig-r041-20230421   clang
hexagon              randconfig-r045-20230421   clang
i386                             allyesconfig   gcc  
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
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r003-20230421   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r014-20230421   gcc  
ia64                 randconfig-r023-20230421   gcc  
ia64                 randconfig-r024-20230421   gcc  
loongarch                        alldefconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r003-20230421   gcc  
loongarch            randconfig-r011-20230421   gcc  
loongarch            randconfig-r015-20230421   gcc  
loongarch            randconfig-r024-20230421   gcc  
loongarch            randconfig-r035-20230421   gcc  
loongarch            randconfig-r036-20230421   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r002-20230421   gcc  
m68k                                defconfig   gcc  
m68k                            mac_defconfig   gcc  
m68k                 randconfig-r001-20230421   gcc  
m68k                 randconfig-r003-20230421   gcc  
m68k                 randconfig-r014-20230421   gcc  
m68k                 randconfig-r021-20230421   gcc  
m68k                 randconfig-r023-20230421   gcc  
m68k                 randconfig-r024-20230421   gcc  
microblaze           randconfig-r006-20230421   gcc  
microblaze           randconfig-r012-20230421   gcc  
microblaze           randconfig-r013-20230421   gcc  
microblaze           randconfig-r021-20230421   gcc  
microblaze           randconfig-r022-20230421   gcc  
microblaze           randconfig-r023-20230421   gcc  
microblaze           randconfig-r026-20230421   gcc  
microblaze           randconfig-r034-20230421   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r013-20230421   gcc  
mips                 randconfig-r032-20230421   clang
nios2        buildonly-randconfig-r005-20230421   gcc  
nios2        buildonly-randconfig-r006-20230421   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r026-20230421   gcc  
nios2                randconfig-r035-20230421   gcc  
openrisc     buildonly-randconfig-r002-20230421   gcc  
openrisc     buildonly-randconfig-r003-20230421   gcc  
openrisc     buildonly-randconfig-r006-20230421   gcc  
openrisc             randconfig-r032-20230421   gcc  
parisc       buildonly-randconfig-r001-20230421   gcc  
parisc       buildonly-randconfig-r002-20230421   gcc  
parisc       buildonly-randconfig-r004-20230421   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r003-20230421   gcc  
parisc               randconfig-r006-20230421   gcc  
parisc               randconfig-r011-20230421   gcc  
parisc               randconfig-r031-20230421   gcc  
parisc               randconfig-r036-20230421   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r001-20230421   gcc  
powerpc              randconfig-r014-20230421   clang
powerpc              randconfig-r032-20230421   gcc  
powerpc              randconfig-r033-20230421   gcc  
powerpc              randconfig-r034-20230421   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r004-20230421   gcc  
riscv                randconfig-r006-20230421   gcc  
riscv                randconfig-r042-20230421   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230421   clang
s390         buildonly-randconfig-r003-20230421   clang
s390                                defconfig   gcc  
s390                 randconfig-r005-20230421   gcc  
s390                 randconfig-r011-20230421   clang
s390                 randconfig-r012-20230421   clang
s390                 randconfig-r016-20230421   clang
s390                 randconfig-r025-20230421   clang
s390                 randconfig-r044-20230421   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r005-20230421   gcc  
sh                   randconfig-r016-20230421   gcc  
sh                   randconfig-r032-20230421   gcc  
sh                           se7712_defconfig   gcc  
sparc        buildonly-randconfig-r005-20230421   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r002-20230421   gcc  
sparc                randconfig-r004-20230421   gcc  
sparc                randconfig-r005-20230421   gcc  
sparc                randconfig-r021-20230421   gcc  
sparc                randconfig-r023-20230421   gcc  
sparc64      buildonly-randconfig-r006-20230421   gcc  
sparc64              randconfig-r034-20230421   gcc  
sparc64              randconfig-r035-20230421   gcc  
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
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r021-20230421   gcc  
xtensa               randconfig-r034-20230421   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
