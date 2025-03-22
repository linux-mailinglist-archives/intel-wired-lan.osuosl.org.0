Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D6CA6CCC0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Mar 2025 22:34:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC7E0837BC;
	Sat, 22 Mar 2025 21:33:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id My1zsYj6r0u8; Sat, 22 Mar 2025 21:33:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C28D683760
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742679237;
	bh=HyZUaKhp0En4+dc+7JsExmZvfFTLlo/V2Ojt52F9zWo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bBbBHAc7KGO8lzCh7d6qrXvmT89eZ+mwuN3SPDqhyKZzIkWzEHW3dFf/d9uKLQ5jF
	 5VRRYbZeNijj8nIBerpIDsDI+hSvZhaGBAfbPEzwM9swlEtSzuBv+5z+jKTQ/29Yxf
	 xGbp5qpWWRJ3xCuLyhix8o/kNVGler1u7ismOc2VCDLGjxFbgv3bTpfbvv1dJq5VGk
	 CGvmwAmkmUn7BqWNOQTw1nUfD4zcMI734QfcIu2gkZogrWWbYXywFfjKmrm951YnUo
	 aLtfmIwHLqTyO6CwairWMgVTX3s0Rqu6BMIRuffnoAeWB8xcItUheze1ieZtySaEo4
	 eIDBuIlwyJZHw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C28D683760;
	Sat, 22 Mar 2025 21:33:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B3FA31A0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Mar 2025 21:33:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 91F0740443
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Mar 2025 21:33:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gF9u3nq5iM5i for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Mar 2025 21:33:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 765F140153
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 765F140153
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 765F140153
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Mar 2025 21:33:55 +0000 (UTC)
X-CSE-ConnectionGUID: EdX5LiX4SECp1koJKwF3nQ==
X-CSE-MsgGUID: GURInfjnTyaGmmRGk9vdNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11381"; a="54912223"
X-IronPort-AV: E=Sophos;i="6.14,268,1736841600"; d="scan'208";a="54912223"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2025 14:33:55 -0700
X-CSE-ConnectionGUID: URMwqsgqT1Sh+7ZEgu1pzQ==
X-CSE-MsgGUID: b818xcT9TL2gmQzYR+KVgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,268,1736841600"; d="scan'208";a="146907769"
Received: from lkp-server02.sh.intel.com (HELO e98e3655d6d2) ([10.239.97.151])
 by fmviesa002.fm.intel.com with ESMTP; 22 Mar 2025 14:33:53 -0700
Received: from kbuild by e98e3655d6d2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tw6TX-0002PP-2b
 for intel-wired-lan@lists.osuosl.org; Sat, 22 Mar 2025 21:33:51 +0000
Date: Sun, 23 Mar 2025 05:33:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202503230534.HY6LIKZR-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742679235; x=1774215235;
 h=date:from:to:subject:message-id;
 bh=naD+0sAObKCAdCt0YQGhvM7f8im6smF44slthYvhwhc=;
 b=aS18Wpha9YEyJjtPT73Z6HSYBecALIa0loriASp1RMSyJNSsad5fFuTc
 NguSwqJOEu2GYh4qMlI+02iOOTnKra0cOGpgCfniY0wOt1opDqrjuYzR/
 q1EqSoPfOHSTMLgwSDJUtTV/X6rFWyIof2WpP0vdIo7fJxaaRMfmFUMki
 Qp+1oRv5I32hVYQ8iouNYP+8cj4F4Gs8n/VRPBaApsoA7OCblX/q4S9WT
 /xXEn4pkLgBcG0dI6l4BiC/c9bvlvFwytlWH7GvgmXiEhSiBIMnpHYQLk
 AyTJraBHhlY5Q0x4EX6rggyjAc0U1wvI9lq+CBEXy5UHpKCzFg17LT4Fi
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aS18Wpha
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 919f9f497dbcee75d487400e8f9815b74a6a37df
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: 919f9f497dbcee75d487400e8f9815b74a6a37df  eth: bnxt: fix out-of-range access of vnic_info array

elapsed time: 1514m

configs tested: 93
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    gcc-14.2.0
arc                   randconfig-001-20250322    gcc-10.5.0
arc                   randconfig-002-20250322    gcc-8.5.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20250322    gcc-7.5.0
arm                   randconfig-002-20250322    gcc-7.5.0
arm                   randconfig-003-20250322    clang-21
arm                   randconfig-004-20250322    clang-19
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250322    clang-21
arm64                 randconfig-002-20250322    clang-21
arm64                 randconfig-003-20250322    gcc-8.5.0
arm64                 randconfig-004-20250322    clang-21
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250322    gcc-14.2.0
csky                  randconfig-002-20250322    gcc-14.2.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250322    clang-21
hexagon               randconfig-002-20250322    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250322    clang-20
i386        buildonly-randconfig-002-20250322    gcc-12
i386        buildonly-randconfig-003-20250322    gcc-12
i386        buildonly-randconfig-004-20250322    clang-20
i386        buildonly-randconfig-005-20250322    clang-20
i386        buildonly-randconfig-006-20250322    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250322    gcc-14.2.0
loongarch             randconfig-002-20250322    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
nios2                 randconfig-001-20250322    gcc-6.5.0
nios2                 randconfig-002-20250322    gcc-10.5.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20250322    gcc-5.5.0
parisc                randconfig-002-20250322    gcc-13.3.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-21
powerpc               randconfig-001-20250322    clang-21
powerpc               randconfig-002-20250322    gcc-8.5.0
powerpc               randconfig-003-20250322    clang-21
powerpc64             randconfig-001-20250322    clang-21
powerpc64             randconfig-002-20250322    gcc-8.5.0
powerpc64             randconfig-003-20250322    gcc-8.5.0
riscv                            allmodconfig    clang-21
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250322    gcc-8.5.0
riscv                 randconfig-002-20250322    clang-21
s390                             allmodconfig    clang-18
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250322    gcc-9.3.0
s390                  randconfig-002-20250322    gcc-6.5.0
sh                               allmodconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250322    gcc-10.5.0
sh                    randconfig-002-20250322    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                 randconfig-001-20250322    gcc-9.3.0
sparc                 randconfig-002-20250322    gcc-9.3.0
sparc64               randconfig-001-20250322    gcc-5.5.0
sparc64               randconfig-002-20250322    gcc-5.5.0
um                               allmodconfig    clang-19
um                               allyesconfig    gcc-12
um                    randconfig-001-20250322    clang-21
um                    randconfig-002-20250322    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250322    clang-20
x86_64      buildonly-randconfig-002-20250322    clang-20
x86_64      buildonly-randconfig-003-20250322    clang-20
x86_64      buildonly-randconfig-004-20250322    gcc-12
x86_64      buildonly-randconfig-005-20250322    clang-20
x86_64      buildonly-randconfig-006-20250322    gcc-12
x86_64                              defconfig    gcc-11
xtensa                randconfig-001-20250322    gcc-14.2.0
xtensa                randconfig-002-20250322    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
