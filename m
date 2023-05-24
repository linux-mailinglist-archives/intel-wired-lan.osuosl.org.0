Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B1070F179
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 May 2023 10:52:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0279761594;
	Wed, 24 May 2023 08:52:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0279761594
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684918348;
	bh=WubbkXArWbw1PG6L8bO+/c1nF1Db3jEt45/h9abXFrw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Z84rga9TeMnT3yCtt4hm5aCjqz5rQgBEgW0ownlaVZRrK//0q4B3KmUjxOIsWu5eh
	 Ix4NZnfaO0bdV9DKteJWkxuarQ0Rb0EeD3AN1/7bbQ+iDKzMA6gpzJFMfgaVY8zn0/
	 vIA3eIrhzLU0uzZC4ptVdMOGZN1HgXdoW0ftJK0IJhhlQBEDRwI/Ojm3tiC8l35NJY
	 c3XaI7XyuX7xU8PI3/Yrk/vP3134hO7A42e+VJap+3fsrD/Jdl2kNHi48bAtJq/HEj
	 02vdSxAkkcX8ceEyqpbabDKdLBJG4o1UcZSjs4WM95tYp9VQe3/fjcltRPHtDSK0Np
	 /E+AAq1PtHtjg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8QdYRJQBOIXS; Wed, 24 May 2023 08:52:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8ECAA61181;
	Wed, 24 May 2023 08:52:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8ECAA61181
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7C0511BF33F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 08:52:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4DA31402E8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 08:52:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4DA31402E8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SL7LHdlmSOxr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 May 2023 08:52:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 089CB401A3
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 089CB401A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 08:52:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="333124547"
X-IronPort-AV: E=Sophos;i="6.00,188,1681196400"; d="scan'208";a="333124547"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 01:51:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="704254674"
X-IronPort-AV: E=Sophos;i="6.00,188,1681196400"; d="scan'208";a="704254674"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 24 May 2023 01:51:56 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q1kDr-000EcN-2M
 for intel-wired-lan@lists.osuosl.org; Wed, 24 May 2023 08:51:55 +0000
Date: Wed, 24 May 2023 16:51:12 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230524085112.Glt7a%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684918340; x=1716454340;
 h=date:from:to:subject:message-id;
 bh=vmxz4Hh724xMudYEV4T2Hlcq1MvMi+WoqQAGKiuj9F0=;
 b=KGxl/1OsB4l4uriISgy5POsacN6ENZnafhvJ08D6zmHaqqOU4sc/8cqA
 sOztvqoiNww0gD6LgPwHtWGwOlctMxSda8bL2lgn+stMR2FUXN98o7+Z0
 H9PoAaa77Q42RKdfBAGL9hnfwm6w+pRU2siPvphmWqgz/N3k3DaPRT4f3
 vlGRn+Gz4n5+TK+7IbTNRaJ4SEqIP8q6CJA0R7hLrwQnHW9owA3WYI2Ya
 QztGUQOF87VfdJcLrqOTtDTF7bOBaaE+hVlQu7BkaiF8fI3tLP/HO8QLu
 FeVEf57N6E22nnHi0oCPJ+Y6Bp0YMCV141z2bHAdxQPcjLaLab3BNnNGr
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KGxl/1Os
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 5e9eec56736a45c0278d778f119225b413bec18b
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

tree/branch: INFO setup_repo_specs: /db/releases/20230524154417/lkp-src/repo/*/tnguy-next-queue
https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 5e9eec56736a45c0278d778f119225b413bec18b  idpf: configure SRIOV and add other ndo_ops

elapsed time: 842m

configs tested: 169
configs skipped: 15

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230523   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r001-20230522   gcc  
alpha                randconfig-r005-20230524   gcc  
alpha                randconfig-r006-20230522   gcc  
alpha                randconfig-r035-20230522   gcc  
alpha                randconfig-r036-20230522   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r002-20230521   gcc  
arc          buildonly-randconfig-r005-20230521   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230521   gcc  
arc                  randconfig-r043-20230522   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r001-20230521   clang
arm                                 defconfig   gcc  
arm                  randconfig-r004-20230521   gcc  
arm                  randconfig-r005-20230521   gcc  
arm                  randconfig-r046-20230521   clang
arm                  randconfig-r046-20230522   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r002-20230522   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r011-20230522   clang
csky                                defconfig   gcc  
csky                 randconfig-r022-20230522   gcc  
csky                 randconfig-r026-20230521   gcc  
csky                 randconfig-r035-20230521   gcc  
hexagon              randconfig-r004-20230522   clang
hexagon              randconfig-r014-20230521   clang
hexagon              randconfig-r015-20230521   clang
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
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r023-20230521   gcc  
ia64                 randconfig-r033-20230521   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r004-20230521   gcc  
loongarch    buildonly-randconfig-r006-20230523   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r003-20230521   gcc  
loongarch            randconfig-r005-20230522   gcc  
loongarch            randconfig-r022-20230521   gcc  
loongarch            randconfig-r034-20230521   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r006-20230524   gcc  
m68k                 randconfig-r024-20230522   gcc  
microblaze   buildonly-randconfig-r003-20230522   gcc  
microblaze           randconfig-r002-20230522   gcc  
microblaze           randconfig-r034-20230522   gcc  
microblaze           randconfig-r036-20230521   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r002-20230522   clang
mips         buildonly-randconfig-r004-20230523   gcc  
mips         buildonly-randconfig-r006-20230521   gcc  
mips                 randconfig-r016-20230521   clang
mips                 randconfig-r036-20230521   gcc  
nios2        buildonly-randconfig-r006-20230522   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230522   gcc  
nios2                randconfig-r025-20230521   gcc  
openrisc             randconfig-r002-20230524   gcc  
openrisc             randconfig-r003-20230524   gcc  
openrisc             randconfig-r032-20230521   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r031-20230522   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r004-20230522   clang
powerpc      buildonly-randconfig-r005-20230523   gcc  
powerpc              randconfig-r012-20230522   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r001-20230522   clang
riscv        buildonly-randconfig-r005-20230522   clang
riscv                               defconfig   gcc  
riscv                randconfig-r001-20230524   gcc  
riscv                randconfig-r013-20230521   gcc  
riscv                randconfig-r013-20230522   clang
riscv                randconfig-r015-20230522   clang
riscv                randconfig-r042-20230521   gcc  
riscv                randconfig-r042-20230522   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r003-20230521   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r011-20230521   gcc  
s390                 randconfig-r032-20230522   gcc  
s390                 randconfig-r044-20230521   gcc  
s390                 randconfig-r044-20230522   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r002-20230523   gcc  
sh                   randconfig-r001-20230521   gcc  
sh                   randconfig-r014-20230522   gcc  
sh                   randconfig-r034-20230522   gcc  
sh                   randconfig-r036-20230522   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r004-20230524   gcc  
sparc                randconfig-r023-20230522   gcc  
sparc                randconfig-r033-20230521   gcc  
sparc                randconfig-r035-20230522   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230522   gcc  
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
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r005-20230522   gcc  
xtensa               randconfig-r002-20230521   gcc  
xtensa               randconfig-r031-20230521   gcc  
xtensa               randconfig-r031-20230522   gcc  
xtensa               randconfig-r035-20230521   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
