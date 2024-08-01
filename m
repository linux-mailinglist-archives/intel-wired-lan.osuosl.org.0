Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39BBD944FFA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Aug 2024 18:05:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7E3B40F32;
	Thu,  1 Aug 2024 16:05:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HPHB1ws1mCAN; Thu,  1 Aug 2024 16:05:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1EB7040F0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722528304;
	bh=uxbYnXyhRelnY7dGQOgowEArgIglLZEpJmzN3cGexrs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2Q2V+3xlvrW86VqY2hbtKVQA7MCg6lBOKutjT4oe+Et7lqUEXx5aZ6OSYFnhD+fQi
	 hlDKUL/4kNNh85g/22ZnhLLELL9TmU+M1SgJdFoAykyONz7heMJP7QNtJUdblrz38z
	 oQBpLRScBKY6JRaYj9oezoMNQYuZgcIV97I1H6PpE1NiT/QorSDOtq1ztEPP+WpACC
	 szTEJrynWV043M5CO/0fqgHF0TpPNDd62mNSBsVY4E0dzHsx8Q4A6GfbxH6sbIC9YY
	 rkDHgCxrZ4hEonb0ans7zyknWdXcUzwTLo6bDkdIqhTql4JbwiRf+ZiuQOcXJ0DVBn
	 7UajKxixYVFTg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1EB7040F0E;
	Thu,  1 Aug 2024 16:05:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A12721BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 16:05:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8B4E4605CE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 16:05:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pVnk4fjgWHhi for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Aug 2024 16:04:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 43626605E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 43626605E0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 43626605E0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 16:04:59 +0000 (UTC)
X-CSE-ConnectionGUID: J9r+v6E0S7+lUd/jJN5Vkw==
X-CSE-MsgGUID: KsgfQ7EbTfqf6LimL4zM0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11151"; a="20631803"
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="20631803"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 09:03:39 -0700
X-CSE-ConnectionGUID: cEKwJ1qCS9K95Xtse+/pog==
X-CSE-MsgGUID: mdTJhfEQT/+h8px495yzOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="55023324"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 01 Aug 2024 09:03:38 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sZYH9-000vjs-1N
 for intel-wired-lan@lists.osuosl.org; Thu, 01 Aug 2024 16:03:35 +0000
Date: Fri, 02 Aug 2024 00:02:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408020034.78n6FRef-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722528300; x=1754064300;
 h=date:from:to:subject:message-id;
 bh=YFLad6NsHScA4Gy4AjLZZ6LeGPA3MeHCtzWNZyeOg9c=;
 b=IXDPTawVda/fIzsKYJjj8uIfUJPjhURRqqNRGmWwCnl3QPI7Vl+70YW6
 h8lEsq/vmNleXwL5DPIm5ICdTEclBfE7BYgbcThxr2ovqGXbxUWLusR3Y
 jo5vDDA0TwRUuTghnq6T8EyS5hxVbA1/kE2pDDFYy67nTjo11ftJVTjvo
 T6NNghgf5FzDOUPmOO+U4AHesO4dOznrWgPp1ZuwxvOdE9fG+Sw4R4NC8
 OKqkCK95Lwtx12PKsu6SPh9drixpD9IfW5bOXqhCiVUQlIWYmb95JBnM2
 Genypffrsi6ffozmKH9HnNiou74Dm1G27foHcLU5tGHDqgcZldcUwXr89
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IXDPTawV
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 d613b574bdf782ad9d8211cb8b6d8ff6881e891b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: d613b574bdf782ad9d8211cb8b6d8ff6881e891b  ice: Fix incorrect assigns of FEC counts

elapsed time: 1455m

configs tested: 133
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                   randconfig-001-20240801   gcc-13.2.0
arc                   randconfig-002-20240801   gcc-13.2.0
arm                               allnoconfig   clang-20
arm                              allyesconfig   gcc-14.1.0
arm                   randconfig-001-20240801   gcc-14.1.0
arm                   randconfig-002-20240801   gcc-14.1.0
arm                   randconfig-003-20240801   clang-20
arm                   randconfig-004-20240801   clang-15
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240801   clang-20
arm64                 randconfig-002-20240801   clang-20
arm64                 randconfig-003-20240801   gcc-14.1.0
arm64                 randconfig-004-20240801   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
csky                  randconfig-001-20240801   gcc-14.1.0
csky                  randconfig-002-20240801   gcc-14.1.0
hexagon                           allnoconfig   clang-20
hexagon               randconfig-001-20240801   clang-20
hexagon               randconfig-002-20240801   clang-20
i386                             allmodconfig   gcc-13
i386                              allnoconfig   gcc-13
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240801   gcc-9
i386         buildonly-randconfig-002-20240801   clang-18
i386         buildonly-randconfig-003-20240801   gcc-7
i386         buildonly-randconfig-004-20240801   clang-18
i386         buildonly-randconfig-005-20240801   clang-18
i386         buildonly-randconfig-006-20240801   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240801   gcc-13
i386                  randconfig-002-20240801   clang-18
i386                  randconfig-003-20240801   clang-18
i386                  randconfig-004-20240801   clang-18
i386                  randconfig-005-20240801   gcc-13
i386                  randconfig-006-20240801   gcc-13
i386                  randconfig-011-20240801   gcc-13
i386                  randconfig-012-20240801   clang-18
i386                  randconfig-013-20240801   gcc-13
i386                  randconfig-014-20240801   gcc-13
i386                  randconfig-015-20240801   gcc-12
i386                  randconfig-016-20240801   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch             randconfig-001-20240801   gcc-14.1.0
loongarch             randconfig-002-20240801   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                 randconfig-001-20240801   gcc-14.1.0
nios2                 randconfig-002-20240801   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240801   gcc-14.1.0
parisc                randconfig-002-20240801   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc               randconfig-001-20240801   gcc-14.1.0
powerpc               randconfig-002-20240801   clang-20
powerpc               randconfig-003-20240801   gcc-14.1.0
powerpc64             randconfig-001-20240801   clang-20
powerpc64             randconfig-002-20240801   gcc-14.1.0
powerpc64             randconfig-003-20240801   clang-15
riscv                             allnoconfig   gcc-14.1.0
riscv                               defconfig   clang-20
riscv                 randconfig-001-20240801   clang-20
riscv                 randconfig-002-20240801   clang-20
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-20
s390                  randconfig-001-20240801   clang-15
s390                  randconfig-002-20240801   clang-20
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240801   gcc-14.1.0
sh                    randconfig-002-20240801   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240801   gcc-14.1.0
sparc64               randconfig-002-20240801   gcc-14.1.0
um                                allnoconfig   clang-17
um                                  defconfig   clang-20
um                             i386_defconfig   gcc-13
um                    randconfig-001-20240801   clang-20
um                    randconfig-002-20240801   gcc-7
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240801   clang-18
x86_64       buildonly-randconfig-002-20240801   clang-18
x86_64       buildonly-randconfig-003-20240801   clang-18
x86_64       buildonly-randconfig-004-20240801   gcc-11
x86_64       buildonly-randconfig-005-20240801   clang-18
x86_64       buildonly-randconfig-006-20240801   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240801   gcc-13
x86_64                randconfig-002-20240801   gcc-8
x86_64                randconfig-003-20240801   clang-18
x86_64                randconfig-004-20240801   gcc-8
x86_64                randconfig-005-20240801   gcc-13
x86_64                randconfig-006-20240801   gcc-13
x86_64                randconfig-011-20240801   clang-18
x86_64                randconfig-012-20240801   gcc-13
x86_64                randconfig-013-20240801   clang-18
x86_64                randconfig-014-20240801   clang-18
x86_64                randconfig-015-20240801   clang-18
x86_64                randconfig-016-20240801   gcc-13
x86_64                randconfig-071-20240801   clang-18
x86_64                randconfig-072-20240801   clang-18
x86_64                randconfig-073-20240801   clang-18
x86_64                randconfig-074-20240801   clang-18
x86_64                randconfig-075-20240801   gcc-13
x86_64                randconfig-076-20240801   gcc-11
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-002-20240801   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
