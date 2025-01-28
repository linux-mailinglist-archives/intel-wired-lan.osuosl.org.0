Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E3CA208B7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jan 2025 11:40:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5521D60E7E;
	Tue, 28 Jan 2025 10:40:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qknWCoEPDg-0; Tue, 28 Jan 2025 10:40:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1FB8F60E72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738060831;
	bh=NyQd/VCX7OEyJawyEcmXdb/dTYgyZUTa4XGjd2hazJQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1FskDHPp3OUviIL45HPatb+KK5Fxqw0610FHcgZJo8YYZx3bdiiQKG4E5oZeSGibm
	 CThZ4oKVhYT+b4a9xHZBBKMLuoQE7NYsf44s/s75JNQFeBQnRwcaUsS++2LDukIdLy
	 UComplEwyg7zrYwccyucS/cYKuUsfbDZrLoWN8a9FR+5qKtGJtK6S7n0xrvP/TIxGX
	 ucj9UtRy2mHRAKcyJaObLMHFICQgxT30mi2KOeyD7AKvIVVw/yChn0m/6vIIaUXBmt
	 51PhquiShiBr6ySFzsq5ktpqxugajoh5L9d9REb56Y8KjmaArrTA1Ed9qE92HmIdQn
	 Gpj80Vgblo9YA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1FB8F60E72;
	Tue, 28 Jan 2025 10:40:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 891B194A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jan 2025 10:40:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6481840B43
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jan 2025 10:40:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BucsV6IWJ2cK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jan 2025 10:40:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 23C98408D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 23C98408D3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 23C98408D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jan 2025 10:40:28 +0000 (UTC)
X-CSE-ConnectionGUID: M4MJtzfET8mlHsWImCG1XA==
X-CSE-MsgGUID: vuvtnVteR+KRZEeUx3GnqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="38711423"
X-IronPort-AV: E=Sophos;i="6.13,240,1732608000"; d="scan'208";a="38711423"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 02:40:27 -0800
X-CSE-ConnectionGUID: O65PqAGSTeGIMgQJMiMKLg==
X-CSE-MsgGUID: 4kc8Xb1/SCiEFiA5EKJS7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109626594"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 28 Jan 2025 02:40:27 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tcj16-000hgi-1T
 for intel-wired-lan@lists.osuosl.org; Tue, 28 Jan 2025 10:40:24 +0000
Date: Tue, 28 Jan 2025 18:39:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202501281820.tj9htzSI-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738060828; x=1769596828;
 h=date:from:to:subject:message-id;
 bh=LYYEh20xIQV/niOLLjzS2LBRIhVJcAnXfftq2jNy6xQ=;
 b=F7NGYuT2gwuHfC7hSILck/bxVSPhaE5Xkq8Tx42o1xMnLsgVuCDnaakH
 naOedqLWy7HOtETHD19QYfrFxx5FuQBqfytZ9oagHQHUe15Sz2fhjimqQ
 9kkjAVZc3XI9hoI7Jws7hwkbcufy9nqWThYLbQaq5cRxfjt5jn8GGyGwE
 lqK1W9ysSt8k7CM0fzoSxcqqKCIHLovWKnoCs+W8/ABbtl2BRn0R9mYea
 hJpd0bK7kUD3u67mgvM5F/1i7mGbiQOa9BBxjhBGLxYGZzvIy3uV2zFIV
 FwprLtMRjLpl2GsR1jKmB5zQW4Iidva8YyS+AUc1zxt7cGIJMATCavnNs
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F7NGYuT2
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 056df74f4b27a6f8af8882651a5367a55eb93c1e
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 056df74f4b27a6f8af8882651a5367a55eb93c1e  ice: stop storing XDP verdict within ice_rx_buf

elapsed time: 950m

configs tested: 107
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                          axs101_defconfig    gcc-13.2.0
arc                 nsimosci_hs_smp_defconfig    gcc-13.2.0
arc                   randconfig-001-20250128    gcc-13.2.0
arc                   randconfig-002-20250128    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-17
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20250128    gcc-14.2.0
arm                   randconfig-002-20250128    clang-20
arm                   randconfig-003-20250128    clang-20
arm                   randconfig-004-20250128    clang-15
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250128    gcc-14.2.0
arm64                 randconfig-002-20250128    clang-17
arm64                 randconfig-003-20250128    gcc-14.2.0
arm64                 randconfig-004-20250128    clang-20
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250128    gcc-14.2.0
csky                  randconfig-002-20250128    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-18
hexagon               randconfig-001-20250128    clang-20
hexagon               randconfig-002-20250128    clang-14
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250128    clang-19
i386        buildonly-randconfig-002-20250128    clang-19
i386        buildonly-randconfig-003-20250128    gcc-12
i386        buildonly-randconfig-004-20250128    clang-19
i386        buildonly-randconfig-005-20250128    clang-19
i386        buildonly-randconfig-006-20250128    clang-19
i386                                defconfig    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250128    gcc-14.2.0
loongarch             randconfig-002-20250128    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                           ci20_defconfig    clang-19
mips                           xway_defconfig    clang-20
nios2                 randconfig-001-20250128    gcc-14.2.0
nios2                 randconfig-002-20250128    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                generic-64bit_defconfig    gcc-14.2.0
parisc                randconfig-001-20250128    gcc-14.2.0
parisc                randconfig-002-20250128    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-16
powerpc                    gamecube_defconfig    clang-16
powerpc                       ppc64_defconfig    clang-19
powerpc                     rainier_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250128    clang-17
powerpc               randconfig-002-20250128    gcc-14.2.0
powerpc               randconfig-003-20250128    clang-20
powerpc64             randconfig-001-20250128    clang-15
powerpc64             randconfig-002-20250128    gcc-14.2.0
powerpc64             randconfig-003-20250128    gcc-14.2.0
riscv                            allmodconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                 randconfig-001-20250128    gcc-14.2.0
riscv                 randconfig-002-20250128    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250128    gcc-14.2.0
s390                  randconfig-002-20250128    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250128    gcc-14.2.0
sh                    randconfig-002-20250128    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                 randconfig-001-20250128    gcc-14.2.0
sparc                 randconfig-002-20250128    gcc-14.2.0
sparc64               randconfig-001-20250128    gcc-14.2.0
sparc64               randconfig-002-20250128    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-18
um                               allyesconfig    gcc-12
um                    randconfig-001-20250128    gcc-12
um                    randconfig-002-20250128    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250128    clang-19
x86_64      buildonly-randconfig-002-20250128    clang-19
x86_64      buildonly-randconfig-003-20250128    gcc-12
x86_64      buildonly-randconfig-004-20250128    clang-19
x86_64      buildonly-randconfig-005-20250128    clang-19
x86_64      buildonly-randconfig-006-20250128    gcc-12
x86_64                              defconfig    gcc-11
xtensa                randconfig-001-20250128    gcc-14.2.0
xtensa                randconfig-002-20250128    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
