Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2528BAFF4C2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Jul 2025 00:35:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA54481F59;
	Wed,  9 Jul 2025 22:35:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G7lNvJxwAeNq; Wed,  9 Jul 2025 22:35:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B325881EED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752100532;
	bh=8NnPOpEw/Rtc2WiI0H3kzU+r6zi563qKNg1pKNLZyGk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5yVGnftFYksE0792O+/rTPQag9QZ6RdPhBO+o4KYKxT+gTRHaWGRjdgVlGQkGhOHM
	 YQm7H2ahXM53Xq5s2+Rs6ZphXZmYaH8lJjC7AQ0hTt6i4SI6kzZgyb2A4jLXDrpH+r
	 91gQGJPI5ulGByW7RC1mNDnOl+YUagPe0VMJNYwLELetM0IgjE9oe7GpB/fbuWpTy8
	 31dOIsYZP3Qd/1qZNNHQLsc0hkXb4ItNPy+cFowYu62n/g7tIqLBcX6W2DRNxE6U00
	 bM55pWmuGyznPwXM+VR9malovlGDWOZhd7TfS8d91p0+q9kdDyH+8ys/Pv1WwmrpGw
	 qmX/lgAu/B1FQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B325881EED;
	Wed,  9 Jul 2025 22:35:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6151E15F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 22:35:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5E56B60C16
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 22:35:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id msp6tEfOMKwy for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jul 2025 22:35:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7CFC860C08
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7CFC860C08
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7CFC860C08
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 22:35:30 +0000 (UTC)
X-CSE-ConnectionGUID: 9BbVIPyCS0u5rUfST25eHw==
X-CSE-MsgGUID: 2G/L/qQmRgmoHodocHRFqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11489"; a="65724038"
X-IronPort-AV: E=Sophos;i="6.16,299,1744095600"; d="scan'208";a="65724038"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 15:35:29 -0700
X-CSE-ConnectionGUID: u9azu0NnSmOdQNjCBlTCHw==
X-CSE-MsgGUID: l+UKcZaXQ8md1SPLpEAabg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,299,1744095600"; d="scan'208";a="156454550"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 09 Jul 2025 15:35:29 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uZdNu-00048v-2y
 for intel-wired-lan@lists.osuosl.org; Wed, 09 Jul 2025 22:35:26 +0000
Date: Thu, 10 Jul 2025 06:35:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507100608.7FcHsfmx-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752100530; x=1783636530;
 h=date:from:to:subject:message-id;
 bh=DF+ePLxPO0d7qBpp2FaVUlw80am9R5WvTNoLA5N58E4=;
 b=T7I3EeU/wRrAlFKVmoHnu/3JuWnMr9mgJMLkxGoelit+0O8GR+xKVoJC
 clCVuA1pEZVVQeIS29ahdb0/dGoIXzN9xfWzMwp/nwDTRLrRvNX39CtdD
 y3934ag0JypZRZ5WwvIWlWYfa5rDnzMhsMH5kpi+3TwR9xocKgeOoK4TO
 BNtC19kBbBNgUyrUDJb4lz5/n7sHB4SjS7BXKwPUZSBVcQ2qKRT5rBg9e
 PliWY4zZLy3Xg6Kxf7E7kPv4kTcjGam6ok9QH5ANA9qku3mGgTKDrQqvu
 jHu+YdBrUPXnsU7P8Y2HOve/zoG+sIcGxAba/JP885ZzNhIqv9FDNJBSR
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T7I3EeU/
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 93ff9b62f30e2d4312b61effbcd1372066f2b8ab
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
branch HEAD: 93ff9b62f30e2d4312b61effbcd1372066f2b8ab  ice: Fix a null pointer dereference in ice_copy_and_init_pkg()

elapsed time: 1455m

configs tested: 106
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250709    gcc-8.5.0
arc                   randconfig-002-20250709    gcc-11.5.0
arm                               allnoconfig    clang-21
arm                   randconfig-001-20250709    gcc-12.4.0
arm                   randconfig-002-20250709    gcc-10.5.0
arm                   randconfig-003-20250709    clang-21
arm                   randconfig-004-20250709    clang-21
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250709    clang-21
arm64                 randconfig-002-20250709    gcc-15.1.0
arm64                 randconfig-003-20250709    clang-21
arm64                 randconfig-004-20250709    gcc-10.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250709    gcc-15.1.0
csky                  randconfig-002-20250709    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250709    clang-19
hexagon               randconfig-002-20250709    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250709    gcc-12
i386        buildonly-randconfig-002-20250709    clang-20
i386        buildonly-randconfig-003-20250709    clang-20
i386        buildonly-randconfig-004-20250709    clang-20
i386        buildonly-randconfig-005-20250709    gcc-12
i386        buildonly-randconfig-006-20250709    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-21
loongarch             randconfig-001-20250709    gcc-15.1.0
loongarch             randconfig-002-20250709    gcc-12.4.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20250709    gcc-14.2.0
nios2                 randconfig-002-20250709    gcc-14.2.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250709    gcc-15.1.0
parisc                randconfig-002-20250709    gcc-14.3.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc               randconfig-001-20250709    gcc-8.5.0
powerpc               randconfig-002-20250709    clang-21
powerpc               randconfig-003-20250709    clang-21
powerpc64             randconfig-001-20250709    gcc-10.5.0
powerpc64             randconfig-002-20250709    gcc-10.5.0
powerpc64             randconfig-003-20250709    clang-21
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250709    gcc-10.5.0
riscv                 randconfig-002-20250709    clang-21
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250709    clang-17
s390                  randconfig-002-20250709    clang-21
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250709    gcc-10.5.0
sh                    randconfig-002-20250709    gcc-14.3.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250709    gcc-15.1.0
sparc                 randconfig-002-20250709    gcc-10.3.0
sparc64               randconfig-001-20250709    clang-21
sparc64               randconfig-002-20250709    clang-21
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250709    clang-17
um                    randconfig-002-20250709    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250709    gcc-12
x86_64      buildonly-randconfig-002-20250709    clang-20
x86_64      buildonly-randconfig-003-20250709    gcc-12
x86_64      buildonly-randconfig-004-20250709    gcc-12
x86_64      buildonly-randconfig-005-20250709    clang-20
x86_64      buildonly-randconfig-006-20250709    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250709    gcc-8.5.0
xtensa                randconfig-002-20250709    gcc-11.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
