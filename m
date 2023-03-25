Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D186C8AD6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Mar 2023 05:31:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5F538421F;
	Sat, 25 Mar 2023 04:31:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B5F538421F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679718664;
	bh=NtKoCkzFQyMw+t72XUNJ2UCDgeToHjcUbHA3B5NlnmY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xM4Ou5AwuSSBKaFS4xtvYzA337KaeeU88ibm6P3W5acFTzmU7PeES6FtEHK0vMuaG
	 5h2P4xHjFPRux84r2dHUqQvwEoyD3xmFcb2R72YZjJX0D/Q4ou3XA1AgEuj5SP+Pk+
	 Vvacvek8ir6Qa5MKiCfnUEVy/uY1Icjk/aunxYiY/pjJKEBXVxWKl83nTgYDn9SQpP
	 kRL1gK3Ooq7qgbIDK/l0ARAMdyUymSfK1Bt7imgGH9dtrzFWmDqMLZUgd9eAXqGhhu
	 PpSnMIxqH14i1yFynii83oOOe3DDbCzXji1NuKL3MdQNrl9JB9t5qPjKXp3/P9RrzT
	 we9SbN7COWuiA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UpGOiSUySYMc; Sat, 25 Mar 2023 04:31:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C5C982139;
	Sat, 25 Mar 2023 04:31:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C5C982139
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 48D0D1BF30F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Mar 2023 04:30:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1E8EB41FCD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Mar 2023 04:30:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E8EB41FCD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iDfDVUNsynXs for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Mar 2023 04:30:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ABCA741FC1
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ABCA741FC1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Mar 2023 04:30:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="339957916"
X-IronPort-AV: E=Sophos;i="5.98,289,1673942400"; d="scan'208";a="339957916"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 21:30:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="685416207"
X-IronPort-AV: E=Sophos;i="5.98,289,1673942400"; d="scan'208";a="685416207"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 24 Mar 2023 21:30:46 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pfvYE-000Fwj-11;
 Sat, 25 Mar 2023 04:30:46 +0000
Date: Sat, 25 Mar 2023 12:30:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <641e78e0.ryxfM0yyoLChEwcx%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679718656; x=1711254656;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=M8DC9PSdn9Xg9cBy100vT2mXf95u7IBOUvojCZ8dVgU=;
 b=b5b4ftja78BjEqA7CsetwTDDA1q0wYzvjcsLyLdboKDAblqt4+GvFHRV
 gDHUis37bCrp8/kDiOfs+QoNcxJBDnrhdNxSf6rt97ouBPqcyuRvdrcN8
 Qpb4Z7k0hdvudDFt95KLQl2HZTYE9/XCWFY28kSJSpYwkooqn1jwc/9Tn
 sAIbvKmpL9dlS6J/WI0RipA3lE26LZGapAIilBJbixnxrG3QZ7d+IlF8h
 xECAXa+O0Wo0U+kE3GwW66z9K8pY/enE+9M+DMTq3J0hXLgWu53EWpiRu
 5mjPhMMeFG2VRGQKWjlyigqwOT7oo7DzVTU/mtTgOoHr8d2j5EgoHYNe3
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b5b4ftja
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 26618eea70453e2d7f30ba4c1080c9e66e927c2f
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
branch HEAD: 26618eea70453e2d7f30ba4c1080c9e66e927c2f  i40e: fix registers dump after run ethtool adapter self test

elapsed time: 732m

configs tested: 190
configs skipped: 14

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r006-20230322   gcc  
alpha                randconfig-r025-20230322   gcc  
alpha                randconfig-r026-20230322   gcc  
alpha                randconfig-r035-20230322   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r023-20230322   gcc  
arc                  randconfig-r024-20230322   gcc  
arc                  randconfig-r034-20230322   gcc  
arc                  randconfig-r036-20230322   gcc  
arc                  randconfig-r043-20230322   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                       aspeed_g5_defconfig   gcc  
arm                        clps711x_defconfig   gcc  
arm                                 defconfig   gcc  
arm                          moxart_defconfig   clang
arm                  randconfig-r003-20230322   gcc  
arm                  randconfig-r014-20230323   gcc  
arm                  randconfig-r023-20230322   clang
arm                  randconfig-r025-20230322   clang
arm                  randconfig-r035-20230322   gcc  
arm                  randconfig-r046-20230322   clang
arm                  randconfig-r046-20230324   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r034-20230322   gcc  
hexagon                          alldefconfig   clang
hexagon              randconfig-r012-20230322   clang
hexagon              randconfig-r013-20230322   clang
hexagon              randconfig-r033-20230322   clang
hexagon              randconfig-r041-20230322   clang
hexagon              randconfig-r041-20230324   clang
hexagon              randconfig-r045-20230322   clang
hexagon              randconfig-r045-20230324   clang
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
i386                          randconfig-c001   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r005-20230322   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r001-20230324   gcc  
ia64                 randconfig-r005-20230322   gcc  
ia64                 randconfig-r011-20230322   gcc  
ia64                 randconfig-r015-20230322   gcc  
ia64                 randconfig-r024-20230322   gcc  
ia64                 randconfig-r031-20230322   gcc  
ia64                 randconfig-r033-20230322   gcc  
ia64                 randconfig-r034-20230322   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r002-20230322   gcc  
loongarch            randconfig-r032-20230322   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r001-20230322   gcc  
m68k         buildonly-randconfig-r002-20230322   gcc  
m68k                                defconfig   gcc  
m68k                            q40_defconfig   gcc  
m68k                 randconfig-r012-20230322   gcc  
microblaze   buildonly-randconfig-r004-20230322   gcc  
microblaze   buildonly-randconfig-r006-20230322   gcc  
microblaze           randconfig-r015-20230322   gcc  
microblaze           randconfig-r021-20230322   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r004-20230322   gcc  
mips                      loongson3_defconfig   gcc  
mips                        omega2p_defconfig   clang
mips                 randconfig-r012-20230323   gcc  
mips                 randconfig-r015-20230322   clang
mips                 randconfig-r021-20230322   clang
mips                 randconfig-r034-20230322   gcc  
mips                 randconfig-r036-20230322   gcc  
nios2        buildonly-randconfig-r004-20230322   gcc  
nios2        buildonly-randconfig-r005-20230322   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230322   gcc  
nios2                randconfig-r003-20230324   gcc  
nios2                randconfig-r004-20230322   gcc  
nios2                randconfig-r016-20230322   gcc  
nios2                randconfig-r016-20230323   gcc  
nios2                randconfig-r035-20230322   gcc  
openrisc     buildonly-randconfig-r002-20230322   gcc  
openrisc             randconfig-r001-20230322   gcc  
openrisc             randconfig-r005-20230322   gcc  
openrisc             randconfig-r012-20230322   gcc  
openrisc             randconfig-r014-20230322   gcc  
openrisc             randconfig-r016-20230322   gcc  
openrisc             randconfig-r024-20230322   gcc  
openrisc             randconfig-r032-20230322   gcc  
openrisc             randconfig-r036-20230322   gcc  
parisc       buildonly-randconfig-r003-20230322   gcc  
parisc       buildonly-randconfig-r005-20230322   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230324   gcc  
parisc               randconfig-r004-20230322   gcc  
parisc               randconfig-r013-20230323   gcc  
parisc               randconfig-r031-20230322   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r003-20230322   gcc  
powerpc                        fsp2_defconfig   clang
powerpc              randconfig-r001-20230322   clang
powerpc              randconfig-r013-20230322   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r022-20230322   gcc  
riscv                randconfig-r042-20230322   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r004-20230322   clang
s390                 randconfig-r011-20230322   gcc  
s390                 randconfig-r014-20230322   gcc  
s390                 randconfig-r016-20230322   gcc  
s390                 randconfig-r044-20230322   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r001-20230322   gcc  
sh                            migor_defconfig   gcc  
sh                   randconfig-r011-20230322   gcc  
sh                   randconfig-r013-20230322   gcc  
sh                   randconfig-r014-20230322   gcc  
sh                   randconfig-r026-20230322   gcc  
sh                   secureedge5410_defconfig   gcc  
sparc        buildonly-randconfig-r005-20230322   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r006-20230322   gcc  
sparc                randconfig-r011-20230322   gcc  
sparc                randconfig-r016-20230322   gcc  
sparc                randconfig-r031-20230322   gcc  
sparc64      buildonly-randconfig-r002-20230322   gcc  
sparc64              randconfig-r022-20230322   gcc  
sparc64              randconfig-r032-20230322   gcc  
sparc64              randconfig-r035-20230322   gcc  
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
x86_64                        randconfig-k001   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                           rhel-8.3-syz   gcc  
x86_64                               rhel-8.3   gcc  
xtensa                           alldefconfig   gcc  
xtensa       buildonly-randconfig-r001-20230322   gcc  
xtensa       buildonly-randconfig-r006-20230322   gcc  
xtensa                          iss_defconfig   gcc  
xtensa               randconfig-r001-20230322   gcc  
xtensa               randconfig-r002-20230322   gcc  
xtensa               randconfig-r012-20230322   gcc  
xtensa               randconfig-r013-20230322   gcc  
xtensa               randconfig-r014-20230322   gcc  
xtensa               randconfig-r025-20230322   gcc  
xtensa               randconfig-r031-20230322   gcc  
xtensa               randconfig-r033-20230322   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
