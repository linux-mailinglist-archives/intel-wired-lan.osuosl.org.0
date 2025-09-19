Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 650ADB8B9DF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Sep 2025 01:12:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1BADA41150;
	Fri, 19 Sep 2025 23:12:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fGYnwFHAvGxh; Fri, 19 Sep 2025 23:12:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A97341144
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758323563;
	bh=xB9xdxbNJtdUOZmcsxvD0RYGLUdRNepj1UCe8deA6pU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=pS84WtXY9GkMxhspFWoCpiOjNLBdMTMdvyi8/Uopv7oUOnrJHs50kMPv85NkLv3It
	 OXqjJ+hLnuljxv/bjpHQ1WGG9QKmlDjzwjM/VfDoki3Pfp/BLfPoraIlRvMfFkuc4/
	 cDT9ID9PZjxTxO/fQNCABEP5EXiLUD+ZFIUdQYNbr7iMbIv0Qd1k9ZYnO1P7J9fxDU
	 Q50Rvc9bAfcQrLAs75E7P65P6vTg1BT9KdH6Ngof6+d2VenBWjoHLnaCBMQ76CU8Ds
	 yKL+RD0mBbBnjHHvOsxMMFhtQIkCUwgCgRxKwUxCsLmeAHnA1Jg0/ID06v+tiHJK0z
	 0skaqbIWjr9qg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A97341144;
	Fri, 19 Sep 2025 23:12:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B74AE7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 23:12:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7942984036
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 23:12:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hu3wGzFbrsNW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Sep 2025 23:12:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4BD7A84034
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4BD7A84034
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4BD7A84034
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 23:12:40 +0000 (UTC)
X-CSE-ConnectionGUID: Hlc7jDUyRN2CVHjVf32eTw==
X-CSE-MsgGUID: tkg3iZghTm+Dk0oY8HDD6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="63305475"
X-IronPort-AV: E=Sophos;i="6.18,279,1751266800"; d="scan'208";a="63305475"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 16:12:40 -0700
X-CSE-ConnectionGUID: OcTxcPu7Q7qh0BfA4uMyVw==
X-CSE-MsgGUID: BYL2s/BWRhKGCcq1Xdbn9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,279,1751266800"; d="scan'208";a="199667041"
Received: from lkp-server01.sh.intel.com (HELO 84a20bd60769) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 19 Sep 2025 16:12:39 -0700
Received: from kbuild by 84a20bd60769 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uzkHN-0004t1-0S
 for intel-wired-lan@lists.osuosl.org; Fri, 19 Sep 2025 23:12:37 +0000
Date: Sat, 20 Sep 2025 07:11:48 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202509200742.vkr1Rbsk-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758323561; x=1789859561;
 h=date:from:to:subject:message-id;
 bh=smtr/BC8oomlVpcfRqAYvaj1fsWBut5Y/0NOyusrTp4=;
 b=JtQxu1c3SMzc6JNDgboOGL1er7Jd0Va6l2XUBI+TaSHK3//WH/h3KtYg
 kjTOdmkPpV1t2rjVQoQg69Y+gIArdEYuJKEIiH69Y4DjMrfaTVfGEK5ed
 Sdk6vhPhPAcjf9jZIdZ91AE5KRxlwtNPnlf2fW5RV0DlOycnQ4VGnos5r
 FuYkxmyX4ll3kFYKwfH6fe9wmaPcL0Kag/ImxmxTIyRqEHz3zXAmR8Tnm
 Z4g35xuELx44VbFf6AshNtcpYJSC+ZSHleYCaTSbdbTaEvvlNMoyndnDY
 TxE9Jvsm8iZC75LhEmJpuIOobY0sqm/oBlWK36aGvsmjDVvRCavoTW7Id
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JtQxu1c3
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 b90197a414b3da9d262799a4e98e0017a2e22bbf
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
branch HEAD: b90197a414b3da9d262799a4e98e0017a2e22bbf  libie: fix string names for AQ error codes

elapsed time: 1466m

configs tested: 100
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250919    gcc-15.1.0
arc                   randconfig-002-20250919    gcc-8.5.0
arm                               allnoconfig    clang-22
arm                   randconfig-001-20250919    gcc-12.5.0
arm                   randconfig-002-20250919    gcc-10.5.0
arm                   randconfig-003-20250919    gcc-12.5.0
arm                   randconfig-004-20250919    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250919    gcc-15.1.0
arm64                 randconfig-002-20250919    gcc-8.5.0
arm64                 randconfig-003-20250919    gcc-12.5.0
arm64                 randconfig-004-20250919    gcc-11.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250919    gcc-14.3.0
csky                  randconfig-002-20250919    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250919    clang-22
hexagon               randconfig-002-20250919    clang-22
i386        buildonly-randconfig-001-20250919    clang-20
i386        buildonly-randconfig-002-20250919    gcc-14
i386        buildonly-randconfig-003-20250919    gcc-14
i386        buildonly-randconfig-004-20250919    gcc-14
i386        buildonly-randconfig-005-20250919    clang-20
i386        buildonly-randconfig-006-20250919    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250919    gcc-15.1.0
loongarch             randconfig-002-20250919    clang-22
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                       m5275evb_defconfig    gcc-15.1.0
m68k                        stmark2_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                     loongson1b_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250919    gcc-10.5.0
nios2                 randconfig-002-20250919    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250919    gcc-15.1.0
parisc                randconfig-002-20250919    gcc-15.1.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc               randconfig-001-20250919    gcc-10.5.0
powerpc               randconfig-002-20250919    gcc-8.5.0
powerpc               randconfig-003-20250919    clang-18
powerpc64             randconfig-001-20250919    gcc-8.5.0
powerpc64             randconfig-002-20250919    gcc-13.4.0
powerpc64             randconfig-003-20250919    clang-18
riscv                             allnoconfig    gcc-15.1.0
riscv                    nommu_virt_defconfig    clang-22
riscv                 randconfig-001-20250919    gcc-10.5.0
riscv                 randconfig-002-20250919    gcc-13.4.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250919    gcc-8.5.0
s390                  randconfig-002-20250919    gcc-15.1.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250919    gcc-12.5.0
sh                    randconfig-002-20250919    gcc-10.5.0
sh                          sdk7780_defconfig    gcc-15.1.0
sh                   sh7770_generic_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250919    gcc-14.3.0
sparc                 randconfig-002-20250919    gcc-8.5.0
sparc64               randconfig-001-20250919    clang-22
sparc64               randconfig-002-20250919    gcc-14.3.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                    randconfig-001-20250919    gcc-12
um                    randconfig-002-20250919    clang-22
x86_64                           alldefconfig    gcc-14
x86_64      buildonly-randconfig-001-20250919    clang-20
x86_64      buildonly-randconfig-002-20250919    gcc-14
x86_64      buildonly-randconfig-003-20250919    gcc-14
x86_64      buildonly-randconfig-004-20250919    clang-20
x86_64      buildonly-randconfig-005-20250919    clang-20
x86_64      buildonly-randconfig-006-20250919    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250919    gcc-11.5.0
xtensa                randconfig-002-20250919    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
