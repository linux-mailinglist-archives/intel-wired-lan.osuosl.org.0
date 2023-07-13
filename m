Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A65EB752062
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jul 2023 13:50:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BD3261364;
	Thu, 13 Jul 2023 11:50:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BD3261364
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689249007;
	bh=lsNtrLnnmP5pfj/dzUG1+nXaD3P3k+aNyTxkMzS2xb8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3k6QqPTqLXup9hMP5bpdv4X2bJSdKuNAZSyysanKPgbKCWo6aWlZ0LO8QbGXllE+G
	 5dqxL7PnnrCYWe9YuQNeyZhktbkcP6p9fBfUqrG85K2xahJxQghki4mENVu7IqTGIA
	 X1PQnXsS53QLxf7aSZTZo3br32s9w7VOfpBhC118e6RrYrAK/GD/CvYJG4fPPMTAdl
	 I95k4h5SYhafQDrz9wf5pY6C3Iaddw8beyeMHd4d42b4TCDDbAAbiLOJKLv4/yrFJi
	 wqLlgBEec9Ext4OePgtHhGF8ti640V53j48dyT9lFNz2iCdGQcQ+um7ajAUmwylHT6
	 Opn36pZnUiR1g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RoI414-ILn20; Thu, 13 Jul 2023 11:50:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4A546135C;
	Thu, 13 Jul 2023 11:50:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4A546135C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 44DEF1BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 11:49:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1B8BF6134B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 11:49:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B8BF6134B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9zo69mN96kSY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jul 2023 11:49:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2140F6135C
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2140F6135C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 11:49:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="365196824"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="365196824"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 04:49:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="866520505"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="866520505"
Received: from lkp-server01.sh.intel.com (HELO c544d7fc5005) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 13 Jul 2023 04:49:53 -0700
Received: from kbuild by c544d7fc5005 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qJupU-0006b0-1L
 for intel-wired-lan@lists.osuosl.org; Thu, 13 Jul 2023 11:49:52 +0000
Date: Thu, 13 Jul 2023 19:49:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307131923.wajSp57p-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689248995; x=1720784995;
 h=date:from:to:subject:message-id;
 bh=BvMwCpbZHSWdH7nGQoo1biN7IC565ANsefHHSZM4Xok=;
 b=WV5EN7LzbuAumqH9Jq90/j39NlfWeH+t1qfk7AV53dyJ4rK3/HOgiRpL
 pRjGiSjytOurp6gNMnhD/s7X5Ei4iYpUWR1gTmGsD7R8lMz32SCr3SECk
 NNkN+XW+HtOqgPIqvbzDzEm137X07elkTVpl9OJ4NO+AXovIMlaFZoq1M
 ErH9Ck5wjqTmhcoIjifwNiQ/3DyhohaOI7fvfBxaL3eWSLEalU2U71kOg
 AvC5KbsUOcmviG6ya1DchE05n4i2E6dmcciIs3xC+3KE1QZT+QX9iVl7k
 wJdfICYDXKst9/x4vT3Km7WM17vRKWERpg3DCMg+In0PrNe5anoI1QEPp
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WV5EN7Lz
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 9f4a7c930284bf2b5b84d3636a8e88857149328f
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
branch HEAD: 9f4a7c930284bf2b5b84d3636a8e88857149328f  tcp: add a scheduling point in established_get_first()

elapsed time: 797m

configs tested: 178
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r032-20230713   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r002-20230713   gcc  
arc                  randconfig-r005-20230713   gcc  
arc                  randconfig-r024-20230712   gcc  
arc                  randconfig-r036-20230712   gcc  
arc                  randconfig-r043-20230712   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r001-20230713   gcc  
arm                  randconfig-r004-20230713   gcc  
arm                  randconfig-r022-20230712   gcc  
arm                  randconfig-r046-20230712   gcc  
arm                             rpc_defconfig   gcc  
arm                           sama5_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r005-20230712   gcc  
arm64                randconfig-r033-20230713   clang
arm64                randconfig-r034-20230712   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230712   gcc  
csky                 randconfig-r013-20230713   gcc  
csky                 randconfig-r026-20230712   gcc  
csky                 randconfig-r036-20230712   gcc  
hexagon              randconfig-r004-20230712   clang
hexagon              randconfig-r016-20230713   clang
hexagon              randconfig-r041-20230712   clang
hexagon              randconfig-r045-20230712   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230712   gcc  
i386         buildonly-randconfig-r004-20230713   clang
i386         buildonly-randconfig-r005-20230712   gcc  
i386         buildonly-randconfig-r005-20230713   clang
i386         buildonly-randconfig-r006-20230712   gcc  
i386         buildonly-randconfig-r006-20230713   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230712   gcc  
i386                 randconfig-i002-20230712   gcc  
i386                 randconfig-i003-20230712   gcc  
i386                 randconfig-i004-20230712   gcc  
i386                 randconfig-i005-20230712   gcc  
i386                 randconfig-i006-20230712   gcc  
i386                 randconfig-i011-20230712   clang
i386                 randconfig-i011-20230713   gcc  
i386                 randconfig-i012-20230712   clang
i386                 randconfig-i012-20230713   gcc  
i386                 randconfig-i013-20230712   clang
i386                 randconfig-i013-20230713   gcc  
i386                 randconfig-i014-20230712   clang
i386                 randconfig-i014-20230713   gcc  
i386                 randconfig-i015-20230712   clang
i386                 randconfig-i015-20230713   gcc  
i386                 randconfig-i016-20230712   clang
i386                 randconfig-i016-20230713   gcc  
i386                 randconfig-r016-20230712   clang
i386                 randconfig-r021-20230712   clang
i386                 randconfig-r022-20230712   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r035-20230713   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        mvme147_defconfig   gcc  
m68k                 randconfig-r012-20230712   gcc  
m68k                 randconfig-r012-20230713   gcc  
m68k                 randconfig-r013-20230713   gcc  
m68k                 randconfig-r022-20230712   gcc  
m68k                 randconfig-r023-20230712   gcc  
m68k                 randconfig-r031-20230712   gcc  
m68k                 randconfig-r036-20230713   gcc  
microblaze           randconfig-r002-20230713   gcc  
microblaze           randconfig-r012-20230713   gcc  
microblaze           randconfig-r014-20230712   gcc  
microblaze           randconfig-r015-20230713   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                          ath25_defconfig   clang
mips                     loongson1c_defconfig   clang
mips                 randconfig-r026-20230712   gcc  
mips                 randconfig-r033-20230712   clang
mips                 randconfig-r034-20230712   clang
nios2                               defconfig   gcc  
openrisc             randconfig-r006-20230713   gcc  
openrisc             randconfig-r025-20230712   gcc  
openrisc                 simple_smp_defconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230712   gcc  
parisc               randconfig-r006-20230712   gcc  
parisc               randconfig-r011-20230713   gcc  
parisc               randconfig-r021-20230712   gcc  
parisc               randconfig-r035-20230712   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r003-20230713   clang
powerpc              randconfig-r024-20230712   clang
powerpc                    sam440ep_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r006-20230713   clang
riscv                randconfig-r015-20230713   gcc  
riscv                randconfig-r024-20230712   clang
riscv                randconfig-r031-20230713   clang
riscv                randconfig-r042-20230712   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r011-20230712   clang
s390                 randconfig-r014-20230713   gcc  
s390                 randconfig-r025-20230712   clang
s390                 randconfig-r026-20230712   clang
s390                 randconfig-r044-20230712   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r014-20230713   gcc  
sh                          rsk7203_defconfig   gcc  
sh                           se7206_defconfig   gcc  
sh                   secureedge5410_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r001-20230712   gcc  
sparc                randconfig-r013-20230712   gcc  
sparc                randconfig-r021-20230712   gcc  
sparc                randconfig-r023-20230712   gcc  
sparc                randconfig-r033-20230712   gcc  
sparc                randconfig-r034-20230713   gcc  
sparc                       sparc32_defconfig   gcc  
sparc64              randconfig-r023-20230712   gcc  
um                               alldefconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r003-20230713   gcc  
um                   randconfig-r004-20230713   gcc  
um                   randconfig-r005-20230713   gcc  
um                   randconfig-r032-20230712   clang
um                   randconfig-r035-20230712   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230712   gcc  
x86_64       buildonly-randconfig-r001-20230713   clang
x86_64       buildonly-randconfig-r002-20230712   gcc  
x86_64       buildonly-randconfig-r002-20230713   clang
x86_64       buildonly-randconfig-r003-20230712   gcc  
x86_64       buildonly-randconfig-r003-20230713   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r025-20230712   clang
x86_64               randconfig-r031-20230712   gcc  
x86_64               randconfig-x001-20230712   clang
x86_64               randconfig-x002-20230712   clang
x86_64               randconfig-x003-20230712   clang
x86_64               randconfig-x004-20230712   clang
x86_64               randconfig-x005-20230712   clang
x86_64               randconfig-x006-20230712   clang
x86_64               randconfig-x011-20230712   gcc  
x86_64               randconfig-x012-20230712   gcc  
x86_64               randconfig-x013-20230712   gcc  
x86_64               randconfig-x014-20230712   gcc  
x86_64               randconfig-x015-20230712   gcc  
x86_64               randconfig-x016-20230712   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                              defconfig   gcc  
xtensa               randconfig-r016-20230713   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
