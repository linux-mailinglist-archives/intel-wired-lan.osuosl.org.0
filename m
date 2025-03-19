Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB54DA69496
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Mar 2025 17:17:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E38340197;
	Wed, 19 Mar 2025 16:17:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bLTe84JOTR2p; Wed, 19 Mar 2025 16:17:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14333401B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742401044;
	bh=FJkhCSdJStcmxB0hzLPHcRRG3TiFqL7Q0s3wKgOw/Ys=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=B13QaQyyMGYFuyEXm/rhoCL1Th4qgR/1c0jOL00hf5lnm2x2J+t/dfURY2iWr5pQH
	 AqAVMUKiJopCPSKYj1WlXa0ygOGABhAvvx3Wm5/s3iNrC1wGom82nc5jHqZ3qNS2vs
	 dOqPjl729D6qB+3JbQCzhKyPLbZ6MJuXPybAsAUIOmW8mFET7Uc1r8xB0mCAIdrNKy
	 hsV63hyoo52cI+L4/TQKDskm9vtus3kbhvAazDJLoCDRU/zS9EbLDivvsgACec7mVE
	 oqnhBcq88ZdyG3LDM9s72CNhV9Y401tCfRgZSR8hekmM1Qa99MEefj5vVDruqcX46X
	 7nlec/VZbpBYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14333401B6;
	Wed, 19 Mar 2025 16:17:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3325CCD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 16:17:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2D9F0400EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 16:17:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ywiOKWGPvocT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Mar 2025 16:17:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EC3F7400D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC3F7400D2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EC3F7400D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 16:17:20 +0000 (UTC)
X-CSE-ConnectionGUID: b2LsBj8SQ6K3DDpxxCa2kA==
X-CSE-MsgGUID: NKcWefyDRz6+VD7meUfjzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="43705718"
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="43705718"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 09:17:20 -0700
X-CSE-ConnectionGUID: iA18hByETWeBdf+Ju1HSFg==
X-CSE-MsgGUID: XsaBQnZ8R8y62uXFRryv8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="153542389"
Received: from lkp-server02.sh.intel.com (HELO a4747d147074) ([10.239.97.151])
 by orviesa002.jf.intel.com with ESMTP; 19 Mar 2025 09:17:20 -0700
Received: from kbuild by a4747d147074 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tuw6X-000FVO-1b
 for intel-wired-lan@lists.osuosl.org; Wed, 19 Mar 2025 16:17:17 +0000
Date: Thu, 20 Mar 2025 00:16:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202503200019.HklOxXKm-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742401041; x=1773937041;
 h=date:from:to:subject:message-id;
 bh=DzZDOJO0lNb4S28xy3oKVL5NJjYm++CztA+NAomXl+U=;
 b=gH09e5kCTYDfT4vby0NybpqICcZDBwjgMIbM4TbV0Myy7RtTQr9EhjsL
 zgd1yugUwrE9/GwGbeyV6Z6DKPKaZYe7cARoV5XabE/nhxDGlcOL/Aikw
 xQPOunlUVPO6p63ekNVtdyfK7JPKX+mh11GL0vpQ2ha/3gRqd4xvUFL5q
 nQQDuvWu63z2t0e7Q5NQTwDaOlQpUqzHRECs+8SEKpWI13hXJQpfZqfei
 pSQf9+NgLnc6bKJDLEO5iWno8ZQWgoEv+cx2VkOBrZxXLXxsIDITNL6Sj
 O2xNDEBb1itXxBoVD4Gh8SbqtYd4qqn3Sucdiu1CPVs4Pn7oqrWUgITSv
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gH09e5kC
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 41d5e7dc3a09eb0ffbacab188d647f6d74de3e78
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
branch HEAD: 41d5e7dc3a09eb0ffbacab188d647f6d74de3e78  e1000e: change k1 configuration on MTP and later platforms

elapsed time: 1443m

configs tested: 100
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-6.5.0
alpha                            allyesconfig    gcc-9.3.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-8.5.0
arc                              allyesconfig    gcc-14.2.0
arc                   randconfig-001-20250319    gcc-14.2.0
arc                   randconfig-002-20250319    gcc-14.2.0
arm                              allmodconfig    gcc-8.5.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-6.5.0
arm                   randconfig-001-20250319    clang-18
arm                   randconfig-002-20250319    clang-21
arm                   randconfig-003-20250319    clang-20
arm                   randconfig-004-20250319    clang-16
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-8.5.0
arm64                 randconfig-001-20250319    gcc-14.2.0
arm64                 randconfig-002-20250319    gcc-7.5.0
arm64                 randconfig-003-20250319    gcc-12.3.0
arm64                 randconfig-004-20250319    gcc-7.5.0
csky                              allnoconfig    gcc-9.3.0
csky                  randconfig-001-20250319    gcc-14.2.0
csky                  randconfig-002-20250319    gcc-10.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250319    clang-21
hexagon               randconfig-002-20250319    clang-16
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250319    gcc-12
i386        buildonly-randconfig-002-20250319    gcc-12
i386        buildonly-randconfig-003-20250319    gcc-12
i386        buildonly-randconfig-004-20250319    clang-20
i386        buildonly-randconfig-005-20250319    gcc-12
i386        buildonly-randconfig-006-20250319    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-13.3.0
loongarch             randconfig-001-20250319    gcc-14.2.0
loongarch             randconfig-002-20250319    gcc-14.2.0
m68k                             allmodconfig    gcc-8.5.0
m68k                              allnoconfig    gcc-5.5.0
m68k                             allyesconfig    gcc-6.5.0
microblaze                       allmodconfig    gcc-9.3.0
microblaze                        allnoconfig    gcc-11.5.0
microblaze                       allyesconfig    gcc-9.3.0
mips                              allnoconfig    gcc-10.5.0
nios2                             allnoconfig    gcc-8.5.0
nios2                 randconfig-001-20250319    gcc-14.2.0
nios2                 randconfig-002-20250319    gcc-10.5.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-5.5.0
parisc                           allyesconfig    gcc-9.3.0
parisc                randconfig-001-20250319    gcc-10.5.0
parisc                randconfig-002-20250319    gcc-5.5.0
powerpc                          allmodconfig    gcc-10.5.0
powerpc                          allyesconfig    clang-21
powerpc               randconfig-001-20250319    gcc-9.3.0
powerpc               randconfig-002-20250319    clang-21
powerpc               randconfig-003-20250319    clang-21
powerpc64             randconfig-001-20250319    clang-20
powerpc64             randconfig-002-20250319    gcc-5.5.0
powerpc64             randconfig-003-20250319    clang-21
riscv                            allmodconfig    clang-21
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250319    clang-20
riscv                 randconfig-002-20250319    clang-17
s390                             allmodconfig    clang-18
s390                             allyesconfig    gcc-13.2.0
s390                  randconfig-001-20250319    gcc-11.5.0
s390                  randconfig-002-20250319    gcc-8.5.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-10.5.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250319    gcc-11.5.0
sh                    randconfig-002-20250319    gcc-14.2.0
sparc                            allmodconfig    gcc-6.5.0
sparc                             allnoconfig    gcc-6.5.0
sparc                 randconfig-001-20250319    gcc-6.5.0
sparc                 randconfig-002-20250319    gcc-13.3.0
sparc64               randconfig-001-20250319    gcc-14.2.0
sparc64               randconfig-002-20250319    gcc-14.2.0
um                               allmodconfig    clang-19
um                               allyesconfig    gcc-12
um                    randconfig-001-20250319    gcc-12
um                    randconfig-002-20250319    gcc-11
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250319    clang-20
x86_64      buildonly-randconfig-002-20250319    clang-20
x86_64      buildonly-randconfig-003-20250319    gcc-12
x86_64      buildonly-randconfig-004-20250319    gcc-11
x86_64      buildonly-randconfig-005-20250319    clang-20
x86_64      buildonly-randconfig-006-20250319    clang-20
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250319    gcc-10.5.0
xtensa                randconfig-002-20250319    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
