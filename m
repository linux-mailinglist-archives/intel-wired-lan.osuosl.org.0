Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D02A5CD63
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Mar 2025 19:12:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1126781F3E;
	Tue, 11 Mar 2025 18:12:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FA1vWWWQdH3F; Tue, 11 Mar 2025 18:12:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45AFC81F3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741716723;
	bh=9JZrJ06NnE4O0spwgP0Wh5wgYZ3mK3cWi6nB2An1Afs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jvBWguOGPKeNRshcNCnNdY/qaXcWP7cYJl3BjhXwlLOQbbsbT2uds4HewTMhQTSFa
	 jcNksGTnh4EXk2K0XAvnX1B1L9VqldNKSbGbczk1FiW3b1EIs9m3xPkSs3m9kvaDo9
	 kfZD5FgVQOHQHRS8NU3bLoJMu+7Oc2PcRNF4lbJ1/1Zkx1sZvzgnLlt64v+e6VKahz
	 Eu5DI8tz+Hzmm1bKtLzWTfz2C3T3r3e40cSNdjCFnTu++OkYUWVA5BGOx3e4N/ea0X
	 xLnTENO4Xe1/8uFLnPKXmbmEyG3SERFCjldmegI6IKRFa2fjKsBWV3Tu60l5WtG/ek
	 WaeFH8MWs9n+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45AFC81F3A;
	Tue, 11 Mar 2025 18:12:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 845291DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 18:12:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6AF8681F3A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 18:12:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uBEHXHnPlBeU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Mar 2025 18:12:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 470A081F2D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 470A081F2D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 470A081F2D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 18:11:59 +0000 (UTC)
X-CSE-ConnectionGUID: NLknb95MRV++qnP8SCNqIg==
X-CSE-MsgGUID: Qk9cBRcdTGCYqL4eG7PiIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="53764392"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="53764392"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 11:11:58 -0700
X-CSE-ConnectionGUID: v+Tc4a5GRUi7xn6xdyBKdg==
X-CSE-MsgGUID: 35hIwjchRf6pyXiNVulPAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="157595358"
Received: from lkp-server02.sh.intel.com (HELO a4747d147074) ([10.239.97.151])
 by orviesa001.jf.intel.com with ESMTP; 11 Mar 2025 11:11:58 -0700
Received: from kbuild by a4747d147074 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ts44y-0007iW-0b
 for intel-wired-lan@lists.osuosl.org; Tue, 11 Mar 2025 18:11:50 +0000
Date: Wed, 12 Mar 2025 02:11:47 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202503120241.hcXGpSpw-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741716720; x=1773252720;
 h=date:from:to:subject:message-id;
 bh=v0gjsUFinuWVClqlJsAZLKF6PODGgMu6NlZO5nRGL1M=;
 b=F0IWeO8f1MYM2Fib8fTy9WS7KouEgWxjh4bfAHWPnNqESGyBp2ZA387h
 J/OWEZfJOeXrmOm0dyyvgslASWHfGyIOunQzHW7akbbHU7Vi2/MTNRChr
 KxONjehMQgAyCltJrLIRaNmtbXn40EdtjLnucj+3OnuJb7MWdpzUZ0PAN
 qlrmmmCIE96BDa3g2OPb6lo9zDX1kD/GouF7YpGIvbxLYAe6xbPiA6ZWm
 N7scHlhYCiSd5uhm8vc0eQ2GPnoeCdJPDAr9OU/5E2PuGA56bScxUK06W
 7rTz1SUcrdrXItfxbWmazqbBGE326FxJ6E/H0uosPTs3cf4oPUN6JrV2u
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=F0IWeO8f
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 4f262e9f14eb198ecef69562d87b02a766b772a0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 4f262e9f14eb198ecef69562d87b02a766b772a0  ixgbe: add support for thermal sensor event reception

elapsed time: 1460m

configs tested: 106
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20250311    gcc-13.2.0
arc                   randconfig-002-20250311    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-17
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20250311    gcc-14.2.0
arm                   randconfig-002-20250311    clang-16
arm                   randconfig-003-20250311    gcc-14.2.0
arm                   randconfig-004-20250311    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250311    gcc-14.2.0
arm64                 randconfig-002-20250311    gcc-14.2.0
arm64                 randconfig-003-20250311    gcc-14.2.0
arm64                 randconfig-004-20250311    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250311    gcc-14.2.0
csky                  randconfig-002-20250311    gcc-14.2.0
hexagon                          allmodconfig    clang-21
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-18
hexagon               randconfig-001-20250311    clang-21
hexagon               randconfig-002-20250311    clang-21
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250311    gcc-12
i386        buildonly-randconfig-001-20250312    gcc-12
i386        buildonly-randconfig-002-20250311    clang-19
i386        buildonly-randconfig-002-20250312    gcc-12
i386        buildonly-randconfig-003-20250311    clang-19
i386        buildonly-randconfig-003-20250312    gcc-12
i386        buildonly-randconfig-004-20250311    clang-19
i386        buildonly-randconfig-004-20250312    gcc-12
i386        buildonly-randconfig-005-20250311    clang-19
i386        buildonly-randconfig-005-20250312    gcc-12
i386        buildonly-randconfig-006-20250311    gcc-11
i386        buildonly-randconfig-006-20250312    gcc-12
i386                                defconfig    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250311    gcc-14.2.0
loongarch             randconfig-002-20250311    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250311    gcc-14.2.0
nios2                 randconfig-002-20250311    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20250311    gcc-14.2.0
parisc                randconfig-002-20250311    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc               randconfig-001-20250311    clang-21
powerpc               randconfig-002-20250311    clang-16
powerpc               randconfig-003-20250311    gcc-14.2.0
powerpc64             randconfig-001-20250311    gcc-14.2.0
powerpc64             randconfig-002-20250311    clang-18
powerpc64             randconfig-003-20250311    gcc-14.2.0
riscv                             allnoconfig    gcc-14.2.0
riscv                 randconfig-001-20250311    gcc-14.2.0
riscv                 randconfig-002-20250311    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-15
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250311    clang-15
s390                  randconfig-002-20250311    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250311    gcc-14.2.0
sh                    randconfig-002-20250311    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250311    gcc-14.2.0
sparc                 randconfig-002-20250311    gcc-14.2.0
sparc64               randconfig-001-20250311    gcc-14.2.0
sparc64               randconfig-002-20250311    gcc-14.2.0
um                               allmodconfig    clang-21
um                                allnoconfig    clang-18
um                               allyesconfig    gcc-12
um                    randconfig-001-20250311    gcc-12
um                    randconfig-002-20250311    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250311    gcc-12
x86_64      buildonly-randconfig-002-20250311    gcc-12
x86_64      buildonly-randconfig-003-20250311    clang-19
x86_64      buildonly-randconfig-004-20250311    clang-19
x86_64      buildonly-randconfig-005-20250311    gcc-12
x86_64      buildonly-randconfig-006-20250311    gcc-12
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250311    gcc-14.2.0
xtensa                randconfig-002-20250311    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
