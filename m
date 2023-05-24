Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B0B70EC90
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 May 2023 06:31:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 312884211D;
	Wed, 24 May 2023 04:31:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 312884211D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684902669;
	bh=plsH7H2nGUtxEEpkypoljy+na/GxPLndQbqyRexJyL0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=H3w7wrzLSlk61uxH5jH03+iEly/0nW+G2cOPnJ8UsPKorJswCNmqWCH6DFpLqZ9fF
	 Y6Q0tnNpCXi7LdaXWfI7bmQAamU8CqHGdI8iUIg5bU0+PtSkMzk4ijm2z5cDVvz4r4
	 6kcxdY+F11H6I0Qz+JFOZ14ph0ZB0PhMbIOuQIi90Uun5qT9vIFu4JsCVSXswIAG8l
	 glwzGve5T0+ywEu+eRafKpxBhCTxXhhMnzS40HY+NPJ3L3O8IyjHDh4/v0j3jt+jif
	 eVi6dGyD2G4d1+XFEGWwDkuKFecLMpnzfGjEXR69LYbGbAwQMRP4JMANmD5cZTzXY3
	 JyxJMprXwRdsA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s5fxTmosdAkh; Wed, 24 May 2023 04:31:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D3E2424CD;
	Wed, 24 May 2023 04:31:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D3E2424CD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 05A7E1BF355
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 04:31:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E04AC40223
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 04:31:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E04AC40223
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YcD5eZDC8lG4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 May 2023 04:31:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 82D144000B
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 82D144000B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 04:31:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="416913377"
X-IronPort-AV: E=Sophos;i="6.00,188,1681196400"; d="scan'208";a="416913377"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 21:30:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="681696620"
X-IronPort-AV: E=Sophos;i="6.00,188,1681196400"; d="scan'208";a="681696620"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 23 May 2023 21:30:46 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q1g97-000EOT-1j
 for intel-wired-lan@lists.osuosl.org; Wed, 24 May 2023 04:30:45 +0000
Date: Wed, 24 May 2023 12:29:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230524042958.FACj3%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684902660; x=1716438660;
 h=date:from:to:subject:message-id;
 bh=3+zLTJUPefe1BX9kJZFUOlh7G8Gq0l5cZxbQlHs2Bvw=;
 b=mhz9OlBzV3rAbMRqjamz61LzMmwxedVGa0kXTiVDJ+UugtVDHRUTZiCZ
 K3L6BjNsXrGo79S0RB3sKdi3T9sndI6ITUYa1S5n3qxq1ikVuzLSwrZP3
 lTx0bObMU2xwe0qaUy0S+1ul/8dB3FjeYFB6Cp8D64Kg4lC2kx67oPhS/
 Va2RiCUeqlxA6oXgZhoNf4Lq8QUrI2tF0pPw+JnMzF7MzvZf7jy3dH+h5
 thB4Jl5/ZWGSC+jq7ru08jr/KV+CvbWE8IBtf6fQMAnpwtRYNH5QxjRN8
 0mSKxnMNEAJtn+DgKAjfBspWX0zRFOPDrVZIZU06ZFeef+BqVzd0aWJ5J
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mhz9OlBz
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 b2e3406a38f0f48b1dfb81e5bb73d243ff6af179
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

tree/branch: INFO setup_repo_specs: /db/releases/20230524121217/lkp-src/repo/*/tnguy-next-queue
https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: b2e3406a38f0f48b1dfb81e5bb73d243ff6af179  octeontx2-pf: Add support for page pool

elapsed time: 1108m

configs tested: 242
configs skipped: 19

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230523   gcc  
alpha        buildonly-randconfig-r006-20230521   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r013-20230521   gcc  
alpha                randconfig-r013-20230523   gcc  
alpha                randconfig-r014-20230523   gcc  
alpha                randconfig-r022-20230522   gcc  
alpha                randconfig-r026-20230522   gcc  
alpha                randconfig-r036-20230522   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r001-20230522   gcc  
arc          buildonly-randconfig-r002-20230521   gcc  
arc          buildonly-randconfig-r004-20230522   gcc  
arc          buildonly-randconfig-r005-20230521   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r006-20230523   gcc  
arc                  randconfig-r014-20230521   gcc  
arc                  randconfig-r015-20230521   gcc  
arc                  randconfig-r024-20230521   gcc  
arc                  randconfig-r025-20230522   gcc  
arc                  randconfig-r043-20230521   gcc  
arc                  randconfig-r043-20230522   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r001-20230521   clang
arm                                 defconfig   gcc  
arm                      jornada720_defconfig   gcc  
arm                  randconfig-r046-20230521   clang
arm                  randconfig-r046-20230522   gcc  
arm                           tegra_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r002-20230522   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r011-20230523   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r012-20230521   gcc  
csky                 randconfig-r025-20230521   gcc  
csky                 randconfig-r035-20230521   gcc  
hexagon              randconfig-r003-20230521   clang
hexagon              randconfig-r014-20230522   clang
hexagon              randconfig-r021-20230522   clang
hexagon              randconfig-r041-20230521   clang
hexagon              randconfig-r041-20230522   clang
hexagon              randconfig-r045-20230521   clang
hexagon              randconfig-r045-20230522   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230522   gcc  
i386                 randconfig-a002-20230522   gcc  
i386                 randconfig-a003-20230522   gcc  
i386                 randconfig-a004-20230522   gcc  
i386                 randconfig-a005-20230522   gcc  
i386                 randconfig-a006-20230522   gcc  
i386                 randconfig-i051-20230523   clang
i386                 randconfig-i052-20230523   clang
i386                 randconfig-i053-20230523   clang
i386                 randconfig-i054-20230523   clang
i386                 randconfig-i055-20230523   clang
i386                 randconfig-i056-20230523   clang
i386                 randconfig-i061-20230523   clang
i386                 randconfig-i062-20230523   clang
i386                 randconfig-i063-20230523   clang
i386                 randconfig-i064-20230523   clang
i386                 randconfig-i065-20230523   clang
i386                 randconfig-i066-20230523   clang
i386                 randconfig-r011-20230522   clang
i386                 randconfig-r036-20230522   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r006-20230521   gcc  
ia64                 randconfig-r013-20230522   gcc  
ia64                 randconfig-r015-20230523   gcc  
ia64                 randconfig-r016-20230521   gcc  
ia64                 randconfig-r021-20230522   gcc  
ia64                 randconfig-r023-20230521   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r004-20230521   gcc  
loongarch    buildonly-randconfig-r006-20230523   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r002-20230521   gcc  
loongarch            randconfig-r004-20230522   gcc  
loongarch            randconfig-r012-20230522   gcc  
loongarch            randconfig-r012-20230523   gcc  
loongarch            randconfig-r021-20230521   gcc  
loongarch            randconfig-r025-20230521   gcc  
loongarch            randconfig-r034-20230521   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                          hp300_defconfig   gcc  
m68k                        m5272c3_defconfig   gcc  
m68k                            mac_defconfig   gcc  
m68k                 randconfig-r022-20230521   gcc  
microblaze   buildonly-randconfig-r003-20230522   gcc  
microblaze   buildonly-randconfig-r006-20230522   gcc  
microblaze           randconfig-r006-20230521   gcc  
microblaze           randconfig-r016-20230521   gcc  
microblaze           randconfig-r022-20230521   gcc  
microblaze           randconfig-r034-20230521   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r004-20230523   gcc  
mips         buildonly-randconfig-r006-20230521   gcc  
mips                           jazz_defconfig   gcc  
mips                 randconfig-r004-20230521   gcc  
mips                 randconfig-r016-20230523   clang
mips                 randconfig-r022-20230522   gcc  
mips                 randconfig-r031-20230521   gcc  
mips                 randconfig-r032-20230521   gcc  
mips                 randconfig-r036-20230521   gcc  
nios2        buildonly-randconfig-r006-20230522   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r004-20230523   gcc  
nios2                randconfig-r005-20230521   gcc  
nios2                randconfig-r032-20230522   gcc  
openrisc             randconfig-r002-20230522   gcc  
openrisc             randconfig-r014-20230522   gcc  
openrisc             randconfig-r015-20230522   gcc  
openrisc             randconfig-r026-20230521   gcc  
openrisc             randconfig-r026-20230522   gcc  
openrisc             randconfig-r032-20230521   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230522   gcc  
parisc               randconfig-r036-20230521   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r002-20230521   gcc  
powerpc      buildonly-randconfig-r004-20230522   clang
powerpc      buildonly-randconfig-r005-20230523   gcc  
powerpc                      mgcoge_defconfig   gcc  
powerpc              randconfig-r001-20230522   gcc  
powerpc              randconfig-r013-20230522   clang
powerpc              randconfig-r021-20230521   gcc  
powerpc              randconfig-r032-20230522   gcc  
powerpc                     tqm8541_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r002-20230523   clang
riscv                randconfig-r035-20230521   clang
riscv                randconfig-r042-20230521   gcc  
riscv                randconfig-r042-20230522   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230521   gcc  
s390         buildonly-randconfig-r003-20230521   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r006-20230522   gcc  
s390                 randconfig-r011-20230521   gcc  
s390                 randconfig-r033-20230522   gcc  
s390                 randconfig-r035-20230522   gcc  
s390                 randconfig-r044-20230521   gcc  
s390                 randconfig-r044-20230522   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r002-20230523   gcc  
sh                            hp6xx_defconfig   gcc  
sh                          kfr2r09_defconfig   gcc  
sh                          r7785rp_defconfig   gcc  
sh                   randconfig-r002-20230522   gcc  
sh                   randconfig-r024-20230522   gcc  
sh                   randconfig-r034-20230522   gcc  
sh                           se7705_defconfig   gcc  
sh                           se7722_defconfig   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sh                  sh7785lcr_32bit_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r005-20230522   gcc  
sparc                randconfig-r012-20230521   gcc  
sparc                randconfig-r023-20230522   gcc  
sparc                randconfig-r033-20230521   gcc  
sparc                randconfig-r034-20230522   gcc  
sparc                randconfig-r035-20230522   gcc  
sparc64      buildonly-randconfig-r003-20230522   gcc  
sparc64      buildonly-randconfig-r005-20230521   gcc  
sparc64              randconfig-r003-20230521   gcc  
sparc64              randconfig-r005-20230522   gcc  
sparc64              randconfig-r006-20230522   gcc  
sparc64              randconfig-r015-20230522   gcc  
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230522   gcc  
x86_64       buildonly-randconfig-r005-20230522   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230522   gcc  
x86_64               randconfig-a002-20230522   gcc  
x86_64               randconfig-a003-20230522   gcc  
x86_64               randconfig-a004-20230522   gcc  
x86_64               randconfig-a005-20230522   gcc  
x86_64               randconfig-a006-20230522   gcc  
x86_64               randconfig-a011-20230522   clang
x86_64               randconfig-a012-20230522   clang
x86_64               randconfig-a013-20230522   clang
x86_64               randconfig-a014-20230522   clang
x86_64               randconfig-a015-20230522   clang
x86_64               randconfig-a016-20230522   clang
x86_64                        randconfig-k001   clang
x86_64               randconfig-x051-20230522   clang
x86_64               randconfig-x052-20230522   clang
x86_64               randconfig-x053-20230522   clang
x86_64               randconfig-x054-20230522   clang
x86_64               randconfig-x055-20230522   clang
x86_64               randconfig-x056-20230522   clang
x86_64               randconfig-x061-20230522   clang
x86_64               randconfig-x062-20230522   clang
x86_64               randconfig-x063-20230522   clang
x86_64               randconfig-x064-20230522   clang
x86_64               randconfig-x065-20230522   clang
x86_64               randconfig-x066-20230522   clang
x86_64               randconfig-x071-20230522   gcc  
x86_64               randconfig-x072-20230522   gcc  
x86_64               randconfig-x073-20230522   gcc  
x86_64               randconfig-x074-20230522   gcc  
x86_64               randconfig-x075-20230522   gcc  
x86_64               randconfig-x076-20230522   gcc  
x86_64               randconfig-x081-20230522   gcc  
x86_64               randconfig-x082-20230522   gcc  
x86_64               randconfig-x083-20230522   gcc  
x86_64               randconfig-x084-20230522   gcc  
x86_64               randconfig-x085-20230522   gcc  
x86_64               randconfig-x086-20230522   gcc  
x86_64               randconfig-x091-20230523   gcc  
x86_64               randconfig-x092-20230523   gcc  
x86_64               randconfig-x093-20230523   gcc  
x86_64               randconfig-x094-20230523   gcc  
x86_64               randconfig-x095-20230523   gcc  
x86_64               randconfig-x096-20230523   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r005-20230522   gcc  
xtensa               randconfig-r003-20230522   gcc  
xtensa               randconfig-r004-20230521   gcc  
xtensa               randconfig-r004-20230522   gcc  
xtensa               randconfig-r013-20230521   gcc  
xtensa               randconfig-r031-20230522   gcc  
xtensa               randconfig-r033-20230521   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
