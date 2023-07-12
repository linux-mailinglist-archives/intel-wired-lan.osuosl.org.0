Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2EE74FFC3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 08:56:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A77CB8230F;
	Wed, 12 Jul 2023 06:55:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A77CB8230F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689144958;
	bh=qFsotrkjrF7DZYxSfkedPLKwZsdrlbBYC9p3GAxhQB4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fvA4B4s8OMhU/w2A4eGP8/9Ha5WSD8ul6GC6KJz1bejpJs7iU02sQ5J2IRNs4CLIO
	 OXkkM4I3txT+HplUuowP9qAvLVkAyO/1UBow4qtoGmvuk7xAicQFxwgvz6/mgqq9pR
	 AeO9xLrYIyjgnEroMLZT0QoisMuO5lWZBvosI57ckBU1pOnIovfNbQ2Ue840k8bAOy
	 rp8TeHhAfgFUnyhqip4NBzAs7hGcVdGcMqqTa5dIY5dPhSaz2FR2bBluBYvkNh9HrD
	 UD7BlHwqYrRBZXGcviZ0Zkvy4OAWIlrMtrbDIJK4PH4HnTs5gbCP0PhYkavptUqCi/
	 erPFblNv8+2jA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id szKhwxHLcgaK; Wed, 12 Jul 2023 06:55:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 00D00822DD;
	Wed, 12 Jul 2023 06:55:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 00D00822DD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A4A9C1BF47D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 06:55:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7A5614183B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 06:55:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A5614183B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U0nr1Ev7KMcc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jul 2023 06:55:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD6F2418C3
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DD6F2418C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 06:55:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="344419339"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="344419339"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 23:55:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="791502445"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="791502445"
Received: from lkp-server01.sh.intel.com (HELO c544d7fc5005) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 11 Jul 2023 23:55:44 -0700
Received: from kbuild by c544d7fc5005 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qJTlH-0005UH-2K
 for intel-wired-lan@lists.osuosl.org; Wed, 12 Jul 2023 06:55:43 +0000
Date: Wed, 12 Jul 2023 14:54:49 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307121448.v0klEp6q-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689144946; x=1720680946;
 h=date:from:to:subject:message-id;
 bh=VV18U2mtGrCtTv+sIQG91BcWWnrt1fNRMDXiSvXgxCk=;
 b=HN7XAvyKCWOlw9J+pfmUULqoZ7L4IUWGVPQF24KNGmMAEeNb4nxhlA4q
 piyzEPlEE+QyEcYH/fKM6wSXOOikz4k5Ww972dS6IvRazu5GWLB9GyRtA
 ue+xp98lOfzzHPlzmMsKYYWc00SDianjJDArfjSR4RXmnYgOQvrtTdewT
 h+udAbcQeJXzhVg7fFIPoR58wzFivGxaIm/CdOBbF3JLcPqWjWGNhtX+G
 bjG4Z9hK7sy2+ATo/n8VIjBxuKK0tTTtg2QwTuvpesyWjRdQxLyuzIIw8
 H+b7EYcn0Ee3mdSai9irTOcXdemPbcxhxTo0iepODqB4zdpRipOQwp9R8
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HN7XAvyK
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 b8e39b38487e68c6503419db6e4a851a0ef56de7
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: b8e39b38487e68c6503419db6e4a851a0ef56de7  netlink: Make use of __assign_bit() API

elapsed time: 1174m

configs tested: 235
configs skipped: 18

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230711   gcc  
alpha                randconfig-r022-20230712   gcc  
alpha                randconfig-r025-20230710   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r001-20230710   gcc  
arc                  randconfig-r012-20230711   gcc  
arc                  randconfig-r024-20230710   gcc  
arc                  randconfig-r031-20230710   gcc  
arc                  randconfig-r034-20230712   gcc  
arc                  randconfig-r043-20230710   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r012-20230712   gcc  
arm                  randconfig-r015-20230712   gcc  
arm                  randconfig-r046-20230710   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230712   gcc  
arm64                randconfig-r006-20230711   clang
arm64                randconfig-r034-20230711   clang
csky                                defconfig   gcc  
csky                 randconfig-r004-20230712   gcc  
csky                 randconfig-r006-20230712   gcc  
csky                 randconfig-r015-20230712   gcc  
csky                 randconfig-r034-20230712   gcc  
csky                 randconfig-r036-20230711   gcc  
hexagon              randconfig-r012-20230711   clang
hexagon              randconfig-r035-20230712   clang
hexagon              randconfig-r036-20230710   clang
hexagon              randconfig-r041-20230710   clang
hexagon              randconfig-r041-20230712   clang
hexagon              randconfig-r045-20230710   clang
hexagon              randconfig-r045-20230712   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230710   gcc  
i386         buildonly-randconfig-r004-20230711   clang
i386         buildonly-randconfig-r004-20230712   gcc  
i386         buildonly-randconfig-r005-20230710   gcc  
i386         buildonly-randconfig-r005-20230711   clang
i386         buildonly-randconfig-r005-20230712   gcc  
i386         buildonly-randconfig-r006-20230710   gcc  
i386         buildonly-randconfig-r006-20230711   clang
i386         buildonly-randconfig-r006-20230712   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230710   gcc  
i386                 randconfig-i001-20230711   clang
i386                 randconfig-i001-20230712   gcc  
i386                 randconfig-i002-20230710   gcc  
i386                 randconfig-i002-20230711   clang
i386                 randconfig-i002-20230712   gcc  
i386                 randconfig-i003-20230710   gcc  
i386                 randconfig-i003-20230711   clang
i386                 randconfig-i003-20230712   gcc  
i386                 randconfig-i004-20230710   gcc  
i386                 randconfig-i004-20230711   clang
i386                 randconfig-i004-20230712   gcc  
i386                 randconfig-i005-20230710   gcc  
i386                 randconfig-i005-20230711   clang
i386                 randconfig-i005-20230712   gcc  
i386                 randconfig-i006-20230710   gcc  
i386                 randconfig-i006-20230711   clang
i386                 randconfig-i006-20230712   gcc  
i386                 randconfig-i011-20230711   gcc  
i386                 randconfig-i011-20230712   clang
i386                 randconfig-i012-20230711   gcc  
i386                 randconfig-i012-20230712   clang
i386                 randconfig-i013-20230711   gcc  
i386                 randconfig-i013-20230712   clang
i386                 randconfig-i014-20230711   gcc  
i386                 randconfig-i014-20230712   clang
i386                 randconfig-i015-20230711   gcc  
i386                 randconfig-i015-20230712   clang
i386                 randconfig-i016-20230711   gcc  
i386                 randconfig-i016-20230712   clang
i386                 randconfig-r013-20230712   clang
i386                 randconfig-r021-20230712   clang
i386                 randconfig-r032-20230710   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230710   gcc  
loongarch            randconfig-r002-20230711   gcc  
loongarch            randconfig-r026-20230712   gcc  
loongarch            randconfig-r035-20230710   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r003-20230710   gcc  
m68k                 randconfig-r006-20230710   gcc  
m68k                 randconfig-r011-20230711   gcc  
m68k                 randconfig-r011-20230712   gcc  
m68k                 randconfig-r013-20230711   gcc  
m68k                 randconfig-r013-20230712   gcc  
m68k                 randconfig-r023-20230710   gcc  
m68k                 randconfig-r035-20230712   gcc  
microblaze           randconfig-r003-20230710   gcc  
microblaze           randconfig-r005-20230712   gcc  
microblaze           randconfig-r016-20230711   gcc  
microblaze           randconfig-r025-20230710   gcc  
microblaze           randconfig-r033-20230711   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r002-20230710   clang
mips                 randconfig-r011-20230711   clang
mips                 randconfig-r014-20230711   clang
mips                 randconfig-r031-20230712   clang
mips                 randconfig-r032-20230712   clang
nios2                               defconfig   gcc  
nios2                randconfig-r001-20230711   gcc  
nios2                randconfig-r012-20230712   gcc  
nios2                randconfig-r022-20230710   gcc  
nios2                randconfig-r026-20230710   gcc  
openrisc             randconfig-r006-20230710   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r011-20230712   gcc  
parisc               randconfig-r014-20230712   gcc  
parisc               randconfig-r016-20230712   gcc  
parisc               randconfig-r021-20230712   gcc  
parisc               randconfig-r026-20230710   gcc  
parisc               randconfig-r033-20230712   gcc  
parisc               randconfig-r034-20230710   gcc  
parisc               randconfig-r036-20230712   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r016-20230711   gcc  
powerpc              randconfig-r023-20230710   clang
powerpc              randconfig-r024-20230710   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r013-20230711   gcc  
riscv                randconfig-r021-20230710   clang
riscv                randconfig-r024-20230710   clang
riscv                randconfig-r042-20230710   clang
riscv                randconfig-r042-20230712   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r003-20230712   gcc  
s390                 randconfig-r004-20230710   gcc  
s390                 randconfig-r022-20230710   clang
s390                 randconfig-r023-20230710   clang
s390                 randconfig-r025-20230710   clang
s390                 randconfig-r033-20230710   gcc  
s390                 randconfig-r044-20230710   clang
s390                 randconfig-r044-20230712   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r004-20230711   gcc  
sh                   randconfig-r033-20230712   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r005-20230710   gcc  
sparc                randconfig-r014-20230712   gcc  
sparc                randconfig-r015-20230711   gcc  
sparc                randconfig-r021-20230710   gcc  
sparc                randconfig-r024-20230710   gcc  
sparc64              randconfig-r014-20230712   gcc  
sparc64              randconfig-r031-20230711   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r016-20230712   gcc  
um                   randconfig-r022-20230710   gcc  
um                   randconfig-r036-20230712   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230710   gcc  
x86_64       buildonly-randconfig-r001-20230711   clang
x86_64       buildonly-randconfig-r001-20230712   gcc  
x86_64       buildonly-randconfig-r002-20230710   gcc  
x86_64       buildonly-randconfig-r002-20230711   clang
x86_64       buildonly-randconfig-r002-20230712   gcc  
x86_64       buildonly-randconfig-r003-20230710   gcc  
x86_64       buildonly-randconfig-r003-20230711   clang
x86_64       buildonly-randconfig-r003-20230712   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r015-20230712   clang
x86_64               randconfig-r016-20230712   clang
x86_64               randconfig-r024-20230712   clang
x86_64               randconfig-x001-20230710   clang
x86_64               randconfig-x001-20230711   gcc  
x86_64               randconfig-x001-20230712   clang
x86_64               randconfig-x002-20230710   clang
x86_64               randconfig-x002-20230711   gcc  
x86_64               randconfig-x002-20230712   clang
x86_64               randconfig-x003-20230710   clang
x86_64               randconfig-x003-20230711   gcc  
x86_64               randconfig-x003-20230712   clang
x86_64               randconfig-x004-20230710   clang
x86_64               randconfig-x004-20230711   gcc  
x86_64               randconfig-x004-20230712   clang
x86_64               randconfig-x005-20230710   clang
x86_64               randconfig-x005-20230711   gcc  
x86_64               randconfig-x005-20230712   clang
x86_64               randconfig-x006-20230710   clang
x86_64               randconfig-x006-20230711   gcc  
x86_64               randconfig-x006-20230712   clang
x86_64               randconfig-x011-20230710   gcc  
x86_64               randconfig-x011-20230711   clang
x86_64               randconfig-x011-20230712   gcc  
x86_64               randconfig-x012-20230710   gcc  
x86_64               randconfig-x012-20230711   clang
x86_64               randconfig-x012-20230712   gcc  
x86_64               randconfig-x013-20230710   gcc  
x86_64               randconfig-x013-20230711   clang
x86_64               randconfig-x013-20230712   gcc  
x86_64               randconfig-x014-20230710   gcc  
x86_64               randconfig-x014-20230711   clang
x86_64               randconfig-x014-20230712   gcc  
x86_64               randconfig-x015-20230710   gcc  
x86_64               randconfig-x015-20230711   clang
x86_64               randconfig-x015-20230712   gcc  
x86_64               randconfig-x016-20230710   gcc  
x86_64               randconfig-x016-20230711   clang
x86_64               randconfig-x016-20230712   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r004-20230710   gcc  
xtensa               randconfig-r013-20230712   gcc  
xtensa               randconfig-r016-20230712   gcc  
xtensa               randconfig-r021-20230710   gcc  
xtensa               randconfig-r024-20230712   gcc  
xtensa               randconfig-r032-20230711   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
