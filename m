Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 256107935B7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Sep 2023 08:54:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D18304088B;
	Wed,  6 Sep 2023 06:54:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D18304088B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693983242;
	bh=qHnWUrEOwL6QS07qMmi8MAz4Jm92r5TphGsngoKHy54=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=STipAjobEpOx5CYxO3Q6XsIyYVkqNTj7qnC85hwApqYXd6OaSgxRANrYnJ/ZQ0Yhf
	 c4Tb1y9KZqc7yVA99m9+GQPfVEM65V1ihph9rPA8ywFyVQJmTwPk9BnqWUBjbLBczz
	 pEwA1pe6NsKpsl3JOXqUXBS9Chy5Q5ewTWyDauJ9a6+68Zv0z3lays55t/S6m+7DZs
	 AsaO9W2eLgK8v91NYIeD63V2S19qLQM1qK6rRLVK9WZV9fb380kBejqXxNXQ7rm9mb
	 kl4jpehQ/ZM5n6HB7UJqGXzGciPMGdnIV+hHFED7z5sli/OuzuH1uuO7jvl/Vkix7t
	 HQPydZ5cL0iog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uuWkyJgXyiSl; Wed,  6 Sep 2023 06:54:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 622FB4010D;
	Wed,  6 Sep 2023 06:54:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 622FB4010D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 16A1B1BF389
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 06:53:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DADB040289
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 06:53:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DADB040289
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xCeIeZC1LIwH for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Sep 2023 06:53:53 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7BE874010D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 06:53:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7BE874010D
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="407987261"
X-IronPort-AV: E=Sophos;i="6.02,231,1688454000"; d="scan'208";a="407987261"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 23:53:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="806894261"
X-IronPort-AV: E=Sophos;i="6.02,231,1688454000"; d="scan'208";a="806894261"
Received: from lkp-server02.sh.intel.com (HELO e0b2ea88afd5) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 05 Sep 2023 23:53:50 -0700
Received: from kbuild by e0b2ea88afd5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qdmQ8-0002XZ-2L
 for intel-wired-lan@lists.osuosl.org; Wed, 06 Sep 2023 06:53:48 +0000
Date: Wed, 06 Sep 2023 14:53:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202309061402.C4IbLpZ3-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693983233; x=1725519233;
 h=date:from:to:subject:message-id;
 bh=kSvW6J4goKhzrc3iVu7F1Woy+28SOtJpsjYtgsmxBVI=;
 b=grXdFruo31PTkbaSPlBmclzXRNJtTuReou35VpA35uTiSQFdY9f2p9FJ
 27SkaGt7ZyizS7vNE52VyvvhX+OyixOd1UUETLQ65Q7NVV7gEpQ03t4fO
 xWrmgRb+Y31Ip2LHLU2ZvRUZmJf7f6cmHPchJ12ZPYDmGywYLZDgx9P5z
 3SxZXlc9k+zPlXc3NYEDWT5P33aWUJq1d3KDxt6YOy0cx9Qpgnd64PXh2
 7i4c8/OaMqwA6SRYIL+pdTqO4Dd+Nik8VbCjcEev6Unib4cQYuuJrFJK1
 YX7yfD6b/AQdxexzukzKANpWENDAeQnbRYBNqXJ3FdR6WNAbiuRIvXiX4
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=grXdFruo
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 f244d4a9f393fa24f5771080804ca16fd8cca492
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: f244d4a9f393fa24f5771080804ca16fd8cca492  iavf: Fix promiscuous mode configuration flow messages

elapsed time: 730m

configs tested: 166
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20230906   gcc  
arc                  randconfig-r035-20230906   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20230906   gcc  
arm                  randconfig-r011-20230906   gcc  
arm                  randconfig-r016-20230906   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230906   gcc  
hexagon               randconfig-001-20230906   clang
hexagon               randconfig-002-20230906   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230906   gcc  
i386         buildonly-randconfig-002-20230906   gcc  
i386         buildonly-randconfig-003-20230906   gcc  
i386         buildonly-randconfig-004-20230906   gcc  
i386         buildonly-randconfig-005-20230906   gcc  
i386         buildonly-randconfig-006-20230906   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230906   gcc  
i386                  randconfig-002-20230906   gcc  
i386                  randconfig-003-20230906   gcc  
i386                  randconfig-004-20230906   gcc  
i386                  randconfig-005-20230906   gcc  
i386                  randconfig-006-20230906   gcc  
i386                  randconfig-011-20230906   clang
i386                  randconfig-012-20230906   clang
i386                  randconfig-013-20230906   clang
i386                  randconfig-014-20230906   clang
i386                  randconfig-015-20230906   clang
i386                  randconfig-016-20230906   clang
i386                 randconfig-r002-20230906   gcc  
i386                 randconfig-r004-20230906   gcc  
i386                 randconfig-r012-20230906   clang
i386                 randconfig-r036-20230906   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230906   gcc  
loongarch            randconfig-r032-20230906   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5475evb_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze           randconfig-r034-20230906   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                           ip32_defconfig   gcc  
mips                 randconfig-r005-20230906   clang
mips                 randconfig-r013-20230906   gcc  
mips                 randconfig-r015-20230906   gcc  
mips                 randconfig-r024-20230906   gcc  
mips                 randconfig-r026-20230906   gcc  
mips                 randconfig-r033-20230906   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r022-20230906   gcc  
nios2                randconfig-r031-20230906   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-32bit_defconfig   gcc  
parisc               randconfig-r003-20230906   gcc  
parisc               randconfig-r023-20230906   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc64            randconfig-r021-20230906   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230906   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230906   clang
sh                               alldefconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                   randconfig-r014-20230906   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230906   gcc  
x86_64       buildonly-randconfig-002-20230906   gcc  
x86_64       buildonly-randconfig-003-20230906   gcc  
x86_64       buildonly-randconfig-004-20230906   gcc  
x86_64       buildonly-randconfig-005-20230906   gcc  
x86_64       buildonly-randconfig-006-20230906   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20230906   clang
x86_64                randconfig-002-20230906   clang
x86_64                randconfig-003-20230906   clang
x86_64                randconfig-004-20230906   clang
x86_64                randconfig-005-20230906   clang
x86_64                randconfig-006-20230906   clang
x86_64                randconfig-011-20230906   gcc  
x86_64                randconfig-012-20230906   gcc  
x86_64                randconfig-013-20230906   gcc  
x86_64                randconfig-014-20230906   gcc  
x86_64                randconfig-015-20230906   gcc  
x86_64                randconfig-016-20230906   gcc  
x86_64                randconfig-071-20230906   gcc  
x86_64                randconfig-072-20230906   gcc  
x86_64                randconfig-073-20230906   gcc  
x86_64                randconfig-074-20230906   gcc  
x86_64                randconfig-075-20230906   gcc  
x86_64                randconfig-076-20230906   gcc  
x86_64               randconfig-r006-20230906   gcc  
x86_64               randconfig-r025-20230906   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                    smp_lx200_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
