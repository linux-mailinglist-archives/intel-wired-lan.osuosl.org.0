Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F01E926C5F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jul 2024 01:19:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D43FC6106E;
	Wed,  3 Jul 2024 23:19:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 94NCnNHeQefg; Wed,  3 Jul 2024 23:19:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9017161070
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720048757;
	bh=xABngwYiJHpzjxKe8Z3ML3DBbMxIF0ygbAwdbat9nrQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2KUxZBrez7uhVKhlSq8dPXOtm8PX7PQOwnY1tOh7qYYzPLp5xKSlNxtLEjEUXaykO
	 fZIQ7mn7RF44CoHh4bDg35C07gfdU9y6mbTieVhnEeYa9CEah4nd9up3OlJtvAu5uC
	 /ERaK+I2b/nuwFkguxI6M5xvnNcKiKWBoTBSYKchejmUL0bLgYDUD9Tg7hXioHi4Kr
	 ZRabhjkLsNqhb3Z8wdMlCABqPmPh6oo1Z3gE0X6wvDupC9tIcLzZw2en0zeNZz374b
	 gyvLUNFfP/I0KGdPq1ZkQ8lSSYmnJsk2JXICp9ZsCt7W47zKTnxTg8Ju4awAxQpqTB
	 aZQQgZgujV1TA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9017161070;
	Wed,  3 Jul 2024 23:19:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 49C271BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 23:19:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 35EA180CC0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 23:19:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wcfK4YuXj96R for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2024 23:19:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0341880CBE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0341880CBE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0341880CBE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 23:19:13 +0000 (UTC)
X-CSE-ConnectionGUID: 1CKEUoTxRGSt6R42mr7HTg==
X-CSE-MsgGUID: zAdJFtEYQVWCPwTJ3RlJ/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11122"; a="27909040"
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="27909040"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 16:19:13 -0700
X-CSE-ConnectionGUID: 9t/a09bAQ5qbwUsli6uqJw==
X-CSE-MsgGUID: MkoIQtleTPSHcarR1n/JGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="46833586"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 03 Jul 2024 16:19:12 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sP9Fm-000QK9-05
 for intel-wired-lan@lists.osuosl.org; Wed, 03 Jul 2024 23:19:10 +0000
Date: Thu, 04 Jul 2024 07:18:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407040727.zsAcJbR8-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720048754; x=1751584754;
 h=date:from:to:subject:message-id;
 bh=2exJsgNJvC85C1rdCuVoHUvOOVI2acDNfz4fzPDbaS4=;
 b=AKQ86kr0UV4Brj7/dbwNkUN9ftnQ9jNJDvQaaGeXWilcwhNtIKl3s7LN
 CgyVuKkpxiPe4hls4LgOBxLlJ9QH0wZ5yI+Jixnslw5VDqGEgd6FhuimN
 njWYyPZSkNzJuBccrkuZNgbvF7O7l3rv8U38sxOvN2uLi7vPcFof8Ivxb
 LVeyKMlXyOH6FQY9uDE1aV3Ru+OmYqy/gx1QXH+rRuPGCJclYPr6IwoUP
 3FCYZv7ZAMluN+tM8OXeDOesmpPk4Y7OTkFqRrLn6R24ePBcPOGd5PoZN
 BjFO3P6Y3hdmHGTErnMPDrHxVQocH/GoKrquretY1sZ/0rOp+6e4wBLvk
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AKQ86kr0
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 5197ce65a60ab0fa778afbd8af193977c907960e
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 5197ce65a60ab0fa778afbd8af193977c907960e  ice: Implement driver functionality to dump serdes equalizer values

elapsed time: 1776m

configs tested: 127
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                          axs101_defconfig   gcc-13.2.0
arc                   randconfig-001-20240703   gcc-13.2.0
arc                   randconfig-002-20240703   gcc-13.2.0
arm                               allnoconfig   clang-19
arm                               allnoconfig   gcc-13.2.0
arm                           h3600_defconfig   gcc-13.2.0
arm                   randconfig-001-20240703   clang-19
arm                   randconfig-002-20240703   gcc-13.2.0
arm                   randconfig-003-20240703   clang-19
arm                   randconfig-004-20240703   clang-19
arm64                             allnoconfig   gcc-13.2.0
arm64                 randconfig-001-20240703   clang-19
arm64                 randconfig-002-20240703   gcc-13.2.0
arm64                 randconfig-003-20240703   gcc-13.2.0
arm64                 randconfig-004-20240703   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                  randconfig-001-20240703   gcc-13.2.0
csky                  randconfig-002-20240703   gcc-13.2.0
hexagon                           allnoconfig   clang-19
hexagon               randconfig-001-20240703   clang-16
hexagon               randconfig-002-20240703   clang-19
i386                             allmodconfig   gcc-13
i386                              allnoconfig   gcc-13
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240703   clang-18
i386         buildonly-randconfig-002-20240703   gcc-13
i386         buildonly-randconfig-003-20240703   gcc-13
i386         buildonly-randconfig-004-20240703   gcc-13
i386         buildonly-randconfig-005-20240703   clang-18
i386         buildonly-randconfig-006-20240703   gcc-13
i386                                defconfig   clang-18
i386                  randconfig-001-20240703   gcc-13
i386                  randconfig-002-20240703   clang-18
i386                  randconfig-003-20240703   gcc-13
i386                  randconfig-004-20240703   gcc-11
i386                  randconfig-005-20240703   clang-18
i386                  randconfig-006-20240703   gcc-7
i386                  randconfig-011-20240703   gcc-13
i386                  randconfig-012-20240703   gcc-13
i386                  randconfig-013-20240703   gcc-13
i386                  randconfig-014-20240703   gcc-13
i386                  randconfig-015-20240703   gcc-13
i386                  randconfig-016-20240703   clang-18
loongarch                        allmodconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch             randconfig-001-20240703   gcc-13.2.0
loongarch             randconfig-002-20240703   gcc-13.2.0
m68k                             allmodconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-13.2.0
m68k                          atari_defconfig   gcc-13.2.0
m68k                        stmark2_defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                           mtx1_defconfig   gcc-13.2.0
mips                          rm200_defconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                 randconfig-001-20240703   gcc-13.2.0
nios2                 randconfig-002-20240703   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                            defconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                              defconfig   gcc-13.2.0
parisc                randconfig-001-20240703   gcc-13.2.0
parisc                randconfig-002-20240703   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
powerpc                     asp8347_defconfig   gcc-13.2.0
powerpc                     ep8248e_defconfig   gcc-13.2.0
powerpc               mpc834x_itxgp_defconfig   gcc-13.2.0
powerpc                      ppc40x_defconfig   gcc-13.2.0
powerpc               randconfig-001-20240703   clang-19
powerpc               randconfig-002-20240703   gcc-13.2.0
powerpc               randconfig-003-20240703   clang-15
powerpc64             randconfig-001-20240703   gcc-13.2.0
powerpc64             randconfig-002-20240703   gcc-13.2.0
powerpc64             randconfig-003-20240703   clang-19
riscv                             allnoconfig   gcc-13.2.0
riscv                               defconfig   gcc-13.2.0
riscv                 randconfig-001-20240703   clang-19
riscv                 randconfig-002-20240703   gcc-13.2.0
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                              allnoconfig   gcc-13.2.0
s390                             allyesconfig   clang-19
s390                                defconfig   gcc-13.2.0
s390                  randconfig-001-20240703   clang-15
s390                  randconfig-002-20240703   clang-19
sh                                allnoconfig   gcc-13.2.0
sh                                  defconfig   gcc-13.2.0
sh                        edosk7760_defconfig   gcc-13.2.0
sh                    randconfig-001-20240703   gcc-13.2.0
sh                    randconfig-002-20240703   gcc-13.2.0
sh                          rsk7264_defconfig   gcc-13.2.0
sh                          rsk7269_defconfig   gcc-13.2.0
sh                        sh7757lcr_defconfig   gcc-13.2.0
sparc64                             defconfig   gcc-13.2.0
sparc64               randconfig-001-20240703   gcc-13.2.0
sparc64               randconfig-002-20240703   gcc-13.2.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-13.2.0
um                                  defconfig   gcc-13.2.0
um                             i386_defconfig   gcc-13.2.0
um                    randconfig-001-20240703   clang-19
um                    randconfig-002-20240703   clang-19
um                           x86_64_defconfig   gcc-13.2.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240704   clang-18
x86_64       buildonly-randconfig-002-20240704   gcc-12
x86_64       buildonly-randconfig-003-20240704   clang-18
x86_64       buildonly-randconfig-004-20240704   gcc-13
x86_64       buildonly-randconfig-005-20240704   gcc-12
x86_64       buildonly-randconfig-006-20240704   gcc-13
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240704   clang-18
x86_64                randconfig-002-20240704   gcc-11
x86_64                randconfig-003-20240704   clang-18
x86_64                randconfig-004-20240704   clang-18
x86_64                randconfig-005-20240704   gcc-13
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240703   gcc-13.2.0
xtensa                randconfig-002-20240703   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
