Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12744AD79B8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 20:21:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF10D408CD;
	Thu, 12 Jun 2025 18:21:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mP1FvHPa1szH; Thu, 12 Jun 2025 18:21:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA3AC40870
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749752509;
	bh=T+iIieCS4gz5I3iyKV5pKKtbEwLA3RJ2m+BvPSNFPnU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=pC9FHt8ljuNAoI6XCrKsDZ62c7Sl5Qjotw5QpJNMW1nC4addpqLOBpT/PtPZiGGXP
	 78LgoXD9qA/DHUo+yftOshnUrwsZBQGKzcg3ibau2STjB67EvuIdBHi/Up1Px0sHma
	 nir31o9X/3LXNyNGPd8tOerGY12UF7O/Mi1ciWNJK63TpWdkmQMB0ECjy8+HJgYiuU
	 o2944cxlnqSpTnw9clYykoCN/GRYPdBdORYaDe+ltQ9jd0/AoEE9F4MuIOwYNvP4xK
	 iQP8TkJfvSaBPU893EDUS7BJUYSLfSQZD9dr6rlaxaeSjs8AWIYIKxuAnTjskzqEMg
	 TH/HofPK+Lcew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA3AC40870;
	Thu, 12 Jun 2025 18:21:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9EB791E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 18:21:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 83DC940870
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 18:21:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TgvOuQqJL7el for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 18:21:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 95D3240829
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95D3240829
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 95D3240829
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 18:21:45 +0000 (UTC)
X-CSE-ConnectionGUID: m9m5fMDqQ6CKtJgUpRQsQA==
X-CSE-MsgGUID: xNJjFFqCSumz2367tF8qzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="69517788"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="69517788"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 11:21:45 -0700
X-CSE-ConnectionGUID: rRpr1vcTQI6Y0Pr1TyKuXw==
X-CSE-MsgGUID: hjy+2obzS0SBgaDV04tPrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="152888524"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 12 Jun 2025 11:21:44 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uPmYX-000Bs1-1f
 for intel-wired-lan@lists.osuosl.org; Thu, 12 Jun 2025 18:21:41 +0000
Date: Fri, 13 Jun 2025 02:21:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506130254.RlzNJxT9-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749752505; x=1781288505;
 h=date:from:to:subject:message-id;
 bh=IPfqXTdiEAKORjk+25lUGJSNRy+mwm+dyZER+/wUkkc=;
 b=dzPX3SW5sFpYFgVycyU39GwlfvEaiFWLLz2bHdB9iPdZGBTk+jPzMvpj
 oTQtldKIv9I7SZd80j8b1J+BjairWaXscLFLBp1nYkBMysS+/HWDBZK30
 wrC6t+dPx5O89ZOTtSLqIeqLQlf0SfQ1X16PfusmLnBwSA0PNTj5OaM2N
 gta24ZHlnLC8ujPwCJhz5h7swnZC5u20TeMTxPy4sznrfh1U5F9qZ6hCO
 AXTD2Qy03YRi63eJwIdCH1UEVUZ52wfHEB9A0we6k+8c1vFpWMxnCA44j
 pcnvAjmipFk953YwUzM3yJR2ERaQa3eMPf5JDCG8a9ITr/J0Dzn+i1SnU
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dzPX3SW5
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 a7d45bcfde3ce8aba7e1bd8b745a0eac68585b84
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 1GbE
branch HEAD: a7d45bcfde3ce8aba7e1bd8b745a0eac68585b84  igc: add preemptible queue support in mqprio

elapsed time: 1458m

configs tested: 91
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                   randconfig-001-20250612    gcc-8.5.0
arc                   randconfig-002-20250612    gcc-10.5.0
arm                               allnoconfig    clang-21
arm                   randconfig-001-20250612    clang-21
arm                   randconfig-002-20250612    clang-18
arm                   randconfig-003-20250612    clang-21
arm                   randconfig-004-20250612    clang-21
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250612    clang-19
arm64                 randconfig-002-20250612    clang-17
arm64                 randconfig-003-20250612    clang-21
arm64                 randconfig-004-20250612    clang-18
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250612    gcc-11.5.0
csky                  randconfig-002-20250612    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250612    clang-21
hexagon               randconfig-002-20250612    clang-21
i386                              allnoconfig    gcc-12
i386        buildonly-randconfig-001-20250612    clang-20
i386        buildonly-randconfig-002-20250612    gcc-12
i386        buildonly-randconfig-003-20250612    clang-20
i386        buildonly-randconfig-004-20250612    clang-20
i386        buildonly-randconfig-005-20250612    clang-20
i386        buildonly-randconfig-006-20250612    clang-20
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch             randconfig-001-20250612    gcc-13.3.0
loongarch             randconfig-002-20250612    gcc-12.4.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250612    gcc-14.2.0
nios2                 randconfig-002-20250612    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                randconfig-001-20250612    gcc-8.5.0
parisc                randconfig-002-20250612    gcc-10.5.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc               randconfig-001-20250612    clang-21
powerpc               randconfig-002-20250612    gcc-8.5.0
powerpc               randconfig-003-20250612    clang-17
powerpc64             randconfig-001-20250612    gcc-12.4.0
powerpc64             randconfig-002-20250612    clang-21
powerpc64             randconfig-003-20250612    clang-21
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250612    clang-21
riscv                 randconfig-002-20250612    clang-21
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250612    clang-21
s390                  randconfig-002-20250612    gcc-11.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250612    gcc-12.4.0
sh                    randconfig-002-20250612    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250612    gcc-14.3.0
sparc                 randconfig-002-20250612    gcc-10.3.0
sparc64               randconfig-001-20250612    gcc-13.3.0
sparc64               randconfig-002-20250612    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250612    clang-17
um                    randconfig-002-20250612    clang-21
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20250612    gcc-12
x86_64      buildonly-randconfig-002-20250612    clang-20
x86_64      buildonly-randconfig-003-20250612    gcc-12
x86_64      buildonly-randconfig-004-20250612    gcc-12
x86_64      buildonly-randconfig-005-20250612    clang-20
x86_64      buildonly-randconfig-006-20250612    clang-20
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250612    gcc-10.5.0
xtensa                randconfig-002-20250612    gcc-12.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
