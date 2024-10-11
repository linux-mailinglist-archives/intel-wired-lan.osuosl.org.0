Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73310999F17
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2024 10:33:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 65FBC4158D;
	Fri, 11 Oct 2024 08:33:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2yw7npFBGyCW; Fri, 11 Oct 2024 08:33:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EFE9F4158F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728635592;
	bh=kNrVguRl1byJQdybzLPI60HKwHtyEciMuueYoqkjFhY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fgODYPhrr2z7Js7h4sQ9tpCvyq4ydT5hHq7UZY6mll+v9fl/lT4ecp3gypipGDht3
	 a2bTl5w1Cfp1iL1F2+IBvc3nhLq3Q9Sy5Kgq5EvxzBup27Pij3GtRKbBrAbmVe5HU5
	 otVCr2gyWuATikLxXbD757D8gcnh87CX/6wE39x+nHVUyxHoMzDopq8CK/tr/RzRxG
	 L/pd72NQvFiW4NlpmvPIeAaGOZIFa6/m3d8QtuFcC8wTh3mJZzbAwn4kwdfm5jjLHS
	 0/jfYS9kxY8ZR4+z4wrJtPkg8rXOvQuIzK2ijQXgRIFtpcnEikqq21ayFyDXkzQIcT
	 8wAQESA9zM0TQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EFE9F4158F;
	Fri, 11 Oct 2024 08:33:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 648441BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 08:33:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4F5B442409
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 08:33:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8QMUTBhoQkMl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2024 08:33:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B887042406
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B887042406
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B887042406
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 08:33:07 +0000 (UTC)
X-CSE-ConnectionGUID: Gij1w4bnTuKdUude6OAzbA==
X-CSE-MsgGUID: 6S8fr/1gR/yNHEFSKDow7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="50570324"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="50570324"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 01:33:06 -0700
X-CSE-ConnectionGUID: fyGBh3sES52KP2lS1KFcxA==
X-CSE-MsgGUID: marN86EpR8iVEtzNaglJ0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="77155480"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 11 Oct 2024 01:33:05 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1szB55-000C4v-1w
 for intel-wired-lan@lists.osuosl.org; Fri, 11 Oct 2024 08:33:03 +0000
Date: Fri, 11 Oct 2024 16:32:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410111614.5cdYYSJx-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728635587; x=1760171587;
 h=date:from:to:subject:message-id;
 bh=LuljtIxCqYQBIds/qoSX0rVPdBgOzgNWR9gfvkE6cnw=;
 b=bYXi8tpx7+7D+cuYaARFBNX43Uq/qffSi15E96JkKQ3CiLuu64HZhdOJ
 u/OmMoBDuvEu6kv2ZGCIrDX9sSl0FdmNNlf5QINOXi9/sMvg01duCbhwg
 gUJLvZ8QuZArxf4WbIoYFIueQrBqvj7z9jfRg4eUkldpDVu3/3lkYnIzp
 JxJJfXymUmXyByoymgsOS0q1FY5I1B1QyV5QqE+wAJsGU7Tmrt52GV3S/
 UANLI/M4X7ysm2k3oVbz70Z9urreUk2/Fl32yrNT7nt+gkCo3jbX7yIr6
 V1ZMLsF3ofONGF9/HpQJCVYxRsnlP93/0jEzgZ/pFN2n/Dpi20bH1fXIN
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bYXi8tpx
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 27e66db70a9c3c1d94e4678774e18cce0cdf3547
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 27e66db70a9c3c1d94e4678774e18cce0cdf3547  idpf: set completion tag for "empty" bufs associated with a packet

elapsed time: 983m

configs tested: 100
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.1.0
alpha                            allyesconfig    clang-20
alpha                               defconfig    gcc-14.1.0
arc                              allmodconfig    clang-20
arc                               allnoconfig    gcc-14.1.0
arc                              allyesconfig    clang-20
arc                                 defconfig    gcc-14.1.0
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.1.0
arm                              allyesconfig    clang-20
arm                                 defconfig    gcc-14.1.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                               defconfig    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                                defconfig    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.1.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.1.0
i386                             allmodconfig    clang-18
i386                              allnoconfig    clang-18
i386                             allyesconfig    clang-18
i386                                defconfig    clang-18
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch                           defconfig    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                                defconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
microblaze                          defconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
nios2                             allnoconfig    gcc-14.1.0
nios2                               defconfig    gcc-14.1.0
openrisc                          allnoconfig    clang-20
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    clang-20
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-12
parisc64                            defconfig    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    clang-20
powerpc                          allyesconfig    gcc-14.1.0
riscv                            allmodconfig    gcc-14.1.0
riscv                             allnoconfig    clang-20
riscv                            allyesconfig    gcc-14.1.0
riscv                               defconfig    gcc-12
s390                             allmodconfig    gcc-14.1.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    gcc-12
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-12
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-12
um                               allmodconfig    clang-20
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64      buildonly-randconfig-001-20241011    gcc-12
x86_64      buildonly-randconfig-002-20241011    gcc-12
x86_64      buildonly-randconfig-003-20241011    gcc-12
x86_64      buildonly-randconfig-004-20241011    gcc-12
x86_64      buildonly-randconfig-005-20241011    gcc-12
x86_64      buildonly-randconfig-006-20241011    gcc-12
x86_64                              defconfig    clang-18
x86_64                                  kexec    gcc-12
x86_64                randconfig-001-20241011    gcc-12
x86_64                randconfig-002-20241011    gcc-12
x86_64                randconfig-003-20241011    gcc-12
x86_64                randconfig-004-20241011    gcc-12
x86_64                randconfig-005-20241011    gcc-12
x86_64                randconfig-006-20241011    gcc-12
x86_64                randconfig-011-20241011    gcc-12
x86_64                randconfig-012-20241011    gcc-12
x86_64                randconfig-013-20241011    gcc-12
x86_64                randconfig-014-20241011    gcc-12
x86_64                randconfig-015-20241011    gcc-12
x86_64                randconfig-016-20241011    gcc-12
x86_64                randconfig-071-20241011    gcc-12
x86_64                randconfig-072-20241011    gcc-12
x86_64                randconfig-073-20241011    gcc-12
x86_64                randconfig-074-20241011    gcc-12
x86_64                randconfig-075-20241011    gcc-12
x86_64                randconfig-076-20241011    gcc-12
x86_64                               rhel-8.3    gcc-12
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
