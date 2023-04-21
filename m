Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B706EA2CA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Apr 2023 06:27:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E15FA4282C;
	Fri, 21 Apr 2023 04:27:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E15FA4282C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682051252;
	bh=6AF2QEADnsR6wNsA1NL4HHsEd4kqMOpHmLXKy/Li0to=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=kLRg4JNpcyoqXScZ083ASHdY0oGar+IpGa1nlBoPsQvlmtO31OqalLC+kq/vMa1VH
	 6rM3goSmhtsgEkd1evyiP7Oukom8qRH+lQePe47h2ZZlvB0+Q0MLIRyX25WygbzlC1
	 SwyUyq2Z/VPe3tug2aCES2lbw+Ol0t63WnRqwItyz3Tfr1lO92YQ0z3Ncq8YRqwFiu
	 jQOuXdH4sGZrNrPKqEl3EJUU4/mwwIDz3aBgWnxDo8+vW1pmKZQw2kPVvjZj9Vz1qp
	 xw2oMvLxEtdqiqa1AZoJ0kBCcX0noILxXKP+vnpWtt0defOuJ9RAsOKqizOz1qCbwJ
	 RuxQWT42RhtzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Oyc99FQisc-Y; Fri, 21 Apr 2023 04:27:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4264942826;
	Fri, 21 Apr 2023 04:27:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4264942826
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 72EC51BF33E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 04:27:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5719E6136B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 04:27:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5719E6136B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mNYKzVmtbefZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Apr 2023 04:27:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6DAAB61382
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6DAAB61382
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 04:27:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="345929898"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="345929898"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 21:27:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="866571111"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="866571111"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 20 Apr 2023 21:27:03 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ppiMQ-000gJI-22;
 Fri, 21 Apr 2023 04:27:02 +0000
Date: Fri, 21 Apr 2023 12:26:47 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <64421087.S7/ymv68k+Rvt9GT%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682051241; x=1713587241;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=47nBGzFtDbQ1Uvi2KBFBe1oZc10vvwWXJy0PSaKwFqE=;
 b=DBxYDvXavaFDWfRIyB/JDteAts5volrXLXqPQLKUXFFLlbxj5Pi1b5JA
 tGde/w76bUfQ8JjHBIrMnhHvxwMmPi9nNBKTySJkv/cW0attDDFulnU62
 X1P/ydcJW2nOFfLIQjojYcxOBNQ4avtTOFv2avH2pvu25bc23yoiaZQ5p
 /X0iKNQCYCsDX1+JGX/Ch0AfgqFrPFSQVaLdkxAfaEJjC88FdVPRbUydg
 1k85ZnEJWpp2CxIJlZDOpJwZvktty3McFnoWNMf9MvlUJXOzNMPO6YZm+
 vKmOaahAMbKL7ngLL8qVq3bTgBA9FoUMmq2kKyxngsEkJSR24rckKzqh2
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DBxYDvXa
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 294873cffc5e53ed7ae650621d921095bb71db86
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
branch HEAD: 294873cffc5e53ed7ae650621d921095bb71db86  iavf: Fix out-of-bounds when setting channels on remove

elapsed time: 724m

configs tested: 126
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r005-20230417   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r011-20230418   gcc  
alpha                randconfig-r013-20230416   gcc  
alpha                randconfig-r026-20230417   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r006-20230416   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r024-20230420   gcc  
arc                  randconfig-r043-20230419   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230419   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r011-20230417   clang
arm64                randconfig-r023-20230416   gcc  
arm64                randconfig-r025-20230416   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r012-20230417   gcc  
csky                 randconfig-r022-20230418   gcc  
csky                 randconfig-r023-20230418   gcc  
hexagon      buildonly-randconfig-r003-20230417   clang
hexagon              randconfig-r041-20230419   clang
hexagon              randconfig-r045-20230419   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230417   gcc  
i386                 randconfig-a002-20230417   gcc  
i386                 randconfig-a003-20230417   gcc  
i386                 randconfig-a004-20230417   gcc  
i386                 randconfig-a005-20230417   gcc  
i386                 randconfig-a006-20230417   gcc  
i386                 randconfig-a011-20230417   clang
i386                 randconfig-a012-20230417   clang
i386                 randconfig-a013-20230417   clang
i386                 randconfig-a014-20230417   clang
i386                 randconfig-a015-20230417   clang
i386                 randconfig-a016-20230417   clang
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r002-20230417   gcc  
ia64         buildonly-randconfig-r005-20230416   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r006-20230418   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r015-20230417   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r005-20230418   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r012-20230418   gcc  
m68k                 randconfig-r021-20230418   gcc  
microblaze   buildonly-randconfig-r003-20230418   gcc  
microblaze           randconfig-r011-20230416   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r021-20230416   clang
mips                 randconfig-r025-20230418   clang
nios2                               defconfig   gcc  
nios2                randconfig-r025-20230417   gcc  
nios2                randconfig-r026-20230418   gcc  
openrisc     buildonly-randconfig-r006-20230417   gcc  
parisc       buildonly-randconfig-r004-20230416   gcc  
parisc       buildonly-randconfig-r004-20230417   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r012-20230416   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r001-20230417   clang
powerpc              randconfig-r013-20230418   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r016-20230417   clang
riscv                randconfig-r022-20230417   clang
riscv                randconfig-r042-20230419   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r016-20230416   gcc  
s390                 randconfig-r024-20230416   gcc  
s390                 randconfig-r024-20230417   clang
s390                 randconfig-r025-20230420   gcc  
s390                 randconfig-r044-20230419   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r003-20230416   gcc  
sh                   randconfig-r013-20230417   gcc  
sh                   randconfig-r026-20230416   gcc  
sparc        buildonly-randconfig-r001-20230416   gcc  
sparc        buildonly-randconfig-r002-20230418   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r014-20230416   gcc  
sparc                randconfig-r021-20230420   gcc  
sparc                randconfig-r024-20230418   gcc  
sparc64      buildonly-randconfig-r002-20230416   gcc  
sparc64              randconfig-r014-20230418   gcc  
sparc64              randconfig-r022-20230416   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230417   gcc  
x86_64               randconfig-a002-20230417   gcc  
x86_64               randconfig-a003-20230417   gcc  
x86_64               randconfig-a004-20230417   gcc  
x86_64               randconfig-a005-20230417   gcc  
x86_64               randconfig-a006-20230417   gcc  
x86_64               randconfig-a011-20230417   clang
x86_64               randconfig-a012-20230417   clang
x86_64               randconfig-a013-20230417   clang
x86_64               randconfig-a014-20230417   clang
x86_64               randconfig-a015-20230417   clang
x86_64               randconfig-a016-20230417   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r001-20230418   gcc  
xtensa               randconfig-r015-20230416   gcc  
xtensa               randconfig-r016-20230418   gcc  
xtensa               randconfig-r021-20230417   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
