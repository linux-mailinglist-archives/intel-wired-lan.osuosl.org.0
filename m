Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDA7790768
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Sep 2023 12:47:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97F1260E2E;
	Sat,  2 Sep 2023 10:47:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97F1260E2E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693651648;
	bh=dkKYrt6gT5dTnMOIN76NaJsmTkUD8pIrpmgcVu6ugr0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Zo9xZV7i/r2H26dYp9vK9BGQDW3h6tXLXgG9aOyh4O6d9tKc33E07cJP/sQZGu5He
	 9+XvaU4HrtzOSwZxAPw5UpkeBjh3sKdKMLvUdpExp9cDFGw2ieKAQVUbHaua57Nbok
	 XfwapJFk/hih1os3FH+Ek7oHd6GwjJIPm/XHpaNc4uBuSHJd+DXoklmzv1TsAkcn8w
	 /evi5fPIEVy4QD4oExZiiZ7qjmUdv7yqNEC7oJ+TMtscxlJQmDMhhPLqaPD9dd8fz+
	 UiRB9tuYGEp6kTwwJhjIrlrdh5wkfG8duQzjHSRZMBx3bAUq08ShFzYyhZers1vSSb
	 pWqGOuEl/DS2g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1qYY_XN5ETXg; Sat,  2 Sep 2023 10:47:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BB7860BAA;
	Sat,  2 Sep 2023 10:47:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BB7860BAA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7FFDB1BF40A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Sep 2023 10:47:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 63F0A41E24
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Sep 2023 10:47:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63F0A41E24
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j7Kiwvx5W3vB for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Sep 2023 10:47:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1F56241DFD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Sep 2023 10:47:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F56241DFD
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="373759535"
X-IronPort-AV: E=Sophos;i="6.02,222,1688454000"; d="scan'208";a="373759535"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2023 03:47:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="733773163"
X-IronPort-AV: E=Sophos;i="6.02,222,1688454000"; d="scan'208";a="733773163"
Received: from lkp-server01.sh.intel.com (HELO 5d8055a4f6aa) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 02 Sep 2023 03:47:19 -0700
Received: from kbuild by 5d8055a4f6aa with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qcO9s-0002HV-1R
 for intel-wired-lan@lists.osuosl.org; Sat, 02 Sep 2023 10:47:16 +0000
Date: Sat, 02 Sep 2023 18:47:03 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202309021801.kNKYO5JG-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693651641; x=1725187641;
 h=date:from:to:subject:message-id;
 bh=KCgaZBBaBxGVIQIyUpVf3SlTZosw2oL/pS3RF9YYiHU=;
 b=fNqgksJpWkIolc3Lj8nqi6a94qAjpGpNu1rbpBJPhrSx1oM8xDPA6C4f
 8xmuS1QQEv9ZaRNhzXB+ldlt8kSswRVVG1qcCqLO2b5npvAcVGOPg9Ovs
 t+TrYwhJlgsIqpac4x6NaW6iyxJ9LiJDLkHWB7xHw4/T5CKkKmANg/nLB
 1AlE75yEg7TctTuVwoAczgvsxgbVZv94MfeKGaRPybXhyaICKODS4B/rY
 6ggUR79I1+wUuLo3mOQxiFtz2Q2xaUPxJ5yxsi10QtR31JWyyzMQta1tZ
 8d6eWD6otc9IycqNVhPIxmZlErVzqWbwYexjbcaBGItfK+jTP/nWl5E6A
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fNqgksJp
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 4002a4638440782f13f3abff126c8762ab92d495
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 4002a4638440782f13f3abff126c8762ab92d495  igb: disable virtualization features on 82580

elapsed time: 902m

configs tested: 161
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230902   gcc  
alpha                randconfig-r026-20230902   gcc  
alpha                randconfig-r034-20230902   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20230902   gcc  
arc                  randconfig-r014-20230902   gcc  
arc                  randconfig-r015-20230902   gcc  
arc                  randconfig-r025-20230902   gcc  
arc                  randconfig-r032-20230902   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20230902   gcc  
arm                  randconfig-r004-20230902   clang
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r023-20230902   clang
arm64                randconfig-r031-20230902   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r035-20230902   gcc  
csky                 randconfig-r036-20230902   gcc  
hexagon               randconfig-001-20230902   clang
hexagon               randconfig-002-20230902   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230902   gcc  
i386         buildonly-randconfig-002-20230902   gcc  
i386         buildonly-randconfig-003-20230902   gcc  
i386         buildonly-randconfig-004-20230902   gcc  
i386         buildonly-randconfig-005-20230902   gcc  
i386         buildonly-randconfig-006-20230902   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230902   gcc  
i386                  randconfig-002-20230902   gcc  
i386                  randconfig-003-20230902   gcc  
i386                  randconfig-004-20230902   gcc  
i386                  randconfig-005-20230902   gcc  
i386                  randconfig-006-20230902   gcc  
i386                  randconfig-011-20230902   clang
i386                  randconfig-012-20230902   clang
i386                  randconfig-013-20230902   clang
i386                  randconfig-014-20230902   clang
i386                  randconfig-015-20230902   clang
i386                  randconfig-016-20230902   clang
i386                 randconfig-r001-20230902   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230902   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze           randconfig-r011-20230902   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r006-20230902   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r024-20230902   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc64            randconfig-r022-20230902   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230902   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230902   clang
s390                 randconfig-r021-20230902   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                   randconfig-r016-20230902   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64              randconfig-r013-20230902   gcc  
sparc64              randconfig-r033-20230902   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r012-20230902   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230902   gcc  
x86_64       buildonly-randconfig-002-20230902   gcc  
x86_64       buildonly-randconfig-003-20230902   gcc  
x86_64       buildonly-randconfig-004-20230902   gcc  
x86_64       buildonly-randconfig-005-20230902   gcc  
x86_64       buildonly-randconfig-006-20230902   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20230902   clang
x86_64                randconfig-002-20230902   clang
x86_64                randconfig-003-20230902   clang
x86_64                randconfig-004-20230902   clang
x86_64                randconfig-005-20230902   clang
x86_64                randconfig-006-20230902   clang
x86_64                randconfig-011-20230902   gcc  
x86_64                randconfig-012-20230902   gcc  
x86_64                randconfig-013-20230902   gcc  
x86_64                randconfig-014-20230902   gcc  
x86_64                randconfig-015-20230902   gcc  
x86_64                randconfig-016-20230902   gcc  
x86_64                randconfig-071-20230902   gcc  
x86_64                randconfig-072-20230902   gcc  
x86_64                randconfig-073-20230902   gcc  
x86_64                randconfig-074-20230902   gcc  
x86_64                randconfig-075-20230902   gcc  
x86_64                randconfig-076-20230902   gcc  
x86_64               randconfig-r005-20230902   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa               randconfig-r002-20230902   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
