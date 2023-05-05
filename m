Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C43536F7C1C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 May 2023 06:56:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C57560EFE;
	Fri,  5 May 2023 04:56:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C57560EFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683262573;
	bh=7ODJI3F9nTJ8ZcLPYLJOi5UyeYnsPby+bxrvSnulrow=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gtTIqP5P1eitOpXBGQMNcA2IFH9fIkgRqAfIfqTzEMmUcTTxPUMFHdNGGCVD5AsNG
	 8ZfD2nNDIYpu+CjsnpTuz/TwHa9+JQaO2B92G2A5P+XEuwRgQDQaG0Bedw5fodzdib
	 imVDVE4hOLnx530xpWHjmkeCJQgeVrkWO2YMMceahq+iI2VMtmnPIF5nqZzEWRILtt
	 usk1ptIAWST3A6YDNKW+jJIsr1gOGXj9g9Um7MRuwatvyhVvmLRna8UHcG2yBaz92T
	 rfq+81IRHcxDHSvxpTb16igE3nJOuqwg1WmxnDt0Rs/+Rk43qhMkXa38KVpfxn3x5V
	 6GvwWJ69AYIuQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PFtVDgINggxH; Fri,  5 May 2023 04:56:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92BFF60D65;
	Fri,  5 May 2023 04:56:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92BFF60D65
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8674C1BF39F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 04:56:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 629FE8405B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 04:56:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 629FE8405B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Iso20sNQdPTt for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 May 2023 04:56:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4064384169
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4064384169
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 04:56:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="349165217"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="349165217"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 21:55:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="821502443"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="821502443"
Received: from lkp-server01.sh.intel.com (HELO fe5d646e317d) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 04 May 2023 21:55:55 -0700
Received: from kbuild by fe5d646e317d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1punU2-000097-1U
 for intel-wired-lan@lists.osuosl.org; Fri, 05 May 2023 04:55:54 +0000
Date: Fri, 05 May 2023 12:55:47 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230505045547.MvMv3%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683262565; x=1714798565;
 h=date:from:to:subject:message-id;
 bh=BOKz0m8P+leTC4WAWhrQwdd/KvoKyYiYSSH7zP7cy9E=;
 b=jLTBHDZpUlo9FExNTMtIxTLbgVXTv/u71AdUYqNPuYQrRV4El2Gx9vUP
 uDxVAhqrYvqe/OwwjHcx1kgdaoX4VM7KQv9+HLeQXTF4BmMDCgiDpCKHA
 mVpes/1f0dyHhuIVMzwdteyKSCV8yqsQH+0D9RKOA6UqlxOnAsxn3UUfe
 CVXKOV2urF1tlMcQ+Q24qg32P8TH6u9pmUrqF7Oo67wtBF2JQ21E4946h
 XBwOfA2iYDyjWOiqS8HQZy6pQ9qgKo6WJfVOEusOFL/1joFfhRPzAngRQ
 mzJJ/YhekLr9YqOse4siEwb+AXjvP74C08O5wtb6z+7x5Q7wdLKAwy9b+
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jLTBHDZp
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 b9850ec0027ca7639141706101bce09b8e3224e6
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: b9850ec0027ca7639141706101bce09b8e3224e6  Merge tag 'nf-23-05-03' of git://git.kernel.org/pub/scm/linux/kernel/git/netfilter/nf

elapsed time: 1180m

configs tested: 136
configs skipped: 14

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r002-20230430   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230501   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r001-20230430   gcc  
arc          buildonly-randconfig-r002-20230502   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r006-20230501   gcc  
arc                  randconfig-r014-20230501   gcc  
arc                  randconfig-r015-20230502   gcc  
arc                  randconfig-r036-20230504   gcc  
arc                  randconfig-r043-20230430   gcc  
arc                  randconfig-r043-20230501   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r003-20230430   clang
arm                  randconfig-r011-20230501   gcc  
arm                  randconfig-r046-20230430   gcc  
arm                  randconfig-r046-20230501   gcc  
arm                        realview_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r003-20230502   clang
arm64                randconfig-r006-20230430   gcc  
arm64                randconfig-r012-20230430   clang
arm64                randconfig-r015-20230501   clang
csky                                defconfig   gcc  
csky                 randconfig-r001-20230430   gcc  
csky                 randconfig-r023-20230501   gcc  
csky                 randconfig-r032-20230504   gcc  
hexagon              randconfig-r012-20230501   clang
hexagon              randconfig-r013-20230501   clang
hexagon              randconfig-r041-20230430   clang
hexagon              randconfig-r041-20230501   clang
hexagon              randconfig-r045-20230430   clang
hexagon              randconfig-r045-20230501   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r003-20230501   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r001-20230502   gcc  
ia64         buildonly-randconfig-r004-20230502   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r024-20230501   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r005-20230501   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230502   gcc  
loongarch            randconfig-r005-20230430   gcc  
loongarch            randconfig-r025-20230501   gcc  
loongarch            randconfig-r036-20230502   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r001-20230501   gcc  
m68k         buildonly-randconfig-r006-20230501   gcc  
m68k                                defconfig   gcc  
m68k                       m5208evb_defconfig   gcc  
m68k                 randconfig-r011-20230502   gcc  
m68k                 randconfig-r012-20230502   gcc  
microblaze           randconfig-r001-20230501   gcc  
microblaze           randconfig-r002-20230430   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                            ar7_defconfig   gcc  
mips         buildonly-randconfig-r003-20230502   gcc  
mips                          malta_defconfig   clang
mips                      malta_kvm_defconfig   clang
mips                      maltaaprp_defconfig   clang
mips                        vocore2_defconfig   gcc  
nios2        buildonly-randconfig-r004-20230501   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r002-20230502   gcc  
nios2                randconfig-r013-20230502   gcc  
nios2                randconfig-r016-20230502   gcc  
nios2                randconfig-r023-20230430   gcc  
nios2                randconfig-r034-20230502   gcc  
nios2                randconfig-r035-20230502   gcc  
openrisc     buildonly-randconfig-r004-20230430   gcc  
openrisc                    or1ksim_defconfig   gcc  
openrisc             randconfig-r004-20230501   gcc  
openrisc             randconfig-r026-20230430   gcc  
parisc       buildonly-randconfig-r006-20230502   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r021-20230430   gcc  
parisc               randconfig-r021-20230501   gcc  
parisc               randconfig-r022-20230501   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          g5_defconfig   clang
powerpc                      pasemi_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r022-20230430   clang
riscv                randconfig-r031-20230502   clang
riscv                randconfig-r033-20230504   clang
riscv                randconfig-r042-20230430   clang
riscv                randconfig-r042-20230501   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                          debug_defconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r011-20230430   clang
s390                 randconfig-r032-20230502   clang
s390                 randconfig-r044-20230430   clang
s390                 randconfig-r044-20230501   clang
sh                               allmodconfig   gcc  
sh                          r7780mp_defconfig   gcc  
sh                   randconfig-r004-20230502   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r002-20230501   gcc  
sparc                randconfig-r025-20230430   gcc  
sparc                randconfig-r035-20230504   gcc  
sparc64              randconfig-r016-20230430   gcc  
sparc64              randconfig-r031-20230504   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-k001   clang
x86_64                               rhel-8.3   gcc  
xtensa                           allyesconfig   gcc  
xtensa       buildonly-randconfig-r005-20230430   gcc  
xtensa       buildonly-randconfig-r006-20230430   gcc  
xtensa               randconfig-r005-20230502   gcc  
xtensa               randconfig-r013-20230430   gcc  
xtensa               randconfig-r015-20230430   gcc  
xtensa               randconfig-r024-20230430   gcc  
xtensa               randconfig-r033-20230502   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
