Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFFA99BCC8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Oct 2024 01:50:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 624934050C;
	Sun, 13 Oct 2024 23:50:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bf2773qb00gy; Sun, 13 Oct 2024 23:50:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CCC14404E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728863422;
	bh=6rBVhfV8XipY+Afd5ookjW+WkMt96VVNbCwVx1LCYC4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IbtWXVh4+yh08eg7EZJ0vfU2ClYVHA5fO7dwdWQGuRi4XUKTY0Ua4I9ms1v79T4So
	 nLx3KN0LxB8Z0BJHX6qOBQUQw7DzbYkh/dJlBzuONbUE8Wankb9uPLENvApp7u7qZc
	 FFOLIn0N1iwdcQbQTe02FUn7DAJwoDm32K2/naA5goPHBDw8HDHWr+LHoIgn0BTNxT
	 0BDFMWvPQSFzTNNwNUmtbhbDCCU7rYhud7W0kzdHnhw4qrCCCR55oFyzjO0bKqQTWG
	 0sdVveVuPAPk6fAKN0gQk3nAvG324CQOOZ09JI0UB4fBoZUEyKPCaRQuqVa+4aq/AL
	 gDByN6qC31m4A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CCC14404E9;
	Sun, 13 Oct 2024 23:50:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B7FC91BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 13 Oct 2024 23:50:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A64A380E85
 for <intel-wired-lan@lists.osuosl.org>; Sun, 13 Oct 2024 23:50:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4loTLsLAltQ8 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 13 Oct 2024 23:50:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 995BD80DA8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 995BD80DA8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 995BD80DA8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 13 Oct 2024 23:50:19 +0000 (UTC)
X-CSE-ConnectionGUID: VnYSqwm6TvyK75/XCVezzQ==
X-CSE-MsgGUID: ziK32TizSzqS083ASHRDcg==
X-IronPort-AV: E=McAfee;i="6700,10204,11224"; a="38843036"
X-IronPort-AV: E=Sophos;i="6.11,201,1725346800"; d="scan'208";a="38843036"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2024 16:50:18 -0700
X-CSE-ConnectionGUID: VHIDNV7WT7qM4gwthnG5fg==
X-CSE-MsgGUID: k76zo1FtTgGEpcOhu286ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,201,1725346800"; d="scan'208";a="77064342"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 13 Oct 2024 16:50:17 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t08Ln-000EmL-1n
 for intel-wired-lan@lists.osuosl.org; Sun, 13 Oct 2024 23:50:15 +0000
Date: Mon, 14 Oct 2024 07:50:11 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410140702.MK6yQkkU-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728863419; x=1760399419;
 h=date:from:to:subject:message-id;
 bh=0TopBOW999GUDpJwyD3SaxjrBO3efqizCU8zHqn2lTM=;
 b=cn65d0PHjxUx2P/TnwkhvBFAzonxiPpwGzxX5AM6vhei5vma1sB8vgmR
 Ff9tlYcCQ3WY2ods2en05mYEcoIBXYa1tv6GGEwOe98UwVNpYNm0PtisT
 6CpsKgPBzYEk2ErIFOGGAgxUWdEpK4mvDTDqBDhesBqo2Xny0SiPEIXsm
 piDcgn9er+VDDC8OylSqcd5cb1+G1rEv77hdYnIXK6Z4ogzecruzaytS4
 kKnpX9+1vuIESX5h1SLNPsKJE+VGYBHDTf0UZaZ7CPLhcftHoK6IKtnt4
 +9fxzNybP+rXYrkHilYx/65kZdGVPGt9UvRTRUq6KLCjZX1itEl5Y6egE
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cn65d0PH
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 a77c49f53be0af1efad5b4541a9a145505c81800
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
branch HEAD: a77c49f53be0af1efad5b4541a9a145505c81800  ice: Fix use after free during unload with ports in bridge

elapsed time: 3042m

configs tested: 93
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-13.3.0
alpha                            allyesconfig    gcc-13.3.0
alpha                               defconfig    gcc-13.3.0
arc                               allnoconfig    gcc-13.2.0
arc                                 defconfig    gcc-13.2.0
arc                   randconfig-001-20241014    gcc-13.2.0
arc                   randconfig-002-20241014    gcc-13.2.0
arm                               allnoconfig    clang-20
arm                      integrator_defconfig    clang-20
arm                          ixp4xx_defconfig    gcc-14.1.0
arm                        keystone_defconfig    gcc-14.1.0
arm                   randconfig-001-20241014    clang-20
arm                   randconfig-002-20241014    gcc-14.1.0
arm                   randconfig-003-20241014    clang-20
arm                   randconfig-004-20241014    gcc-14.1.0
arm                        vexpress_defconfig    gcc-14.1.0
arm64                             allnoconfig    gcc-14.1.0
arm64                 randconfig-001-20241014    clang-15
arm64                 randconfig-002-20241014    gcc-14.1.0
arm64                 randconfig-003-20241014    clang-20
arm64                 randconfig-004-20241014    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                  randconfig-001-20241014    gcc-14.1.0
csky                  randconfig-002-20241014    gcc-14.1.0
hexagon                           allnoconfig    clang-20
hexagon               randconfig-001-20241014    clang-14
hexagon               randconfig-002-20241014    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241013    clang-18
i386        buildonly-randconfig-002-20241013    gcc-12
i386        buildonly-randconfig-003-20241013    clang-18
i386        buildonly-randconfig-004-20241013    gcc-12
i386        buildonly-randconfig-005-20241013    clang-18
i386        buildonly-randconfig-006-20241013    clang-18
i386                                defconfig    clang-18
i386                  randconfig-001-20241013    clang-18
i386                  randconfig-002-20241013    gcc-12
i386                  randconfig-003-20241013    gcc-12
i386                  randconfig-004-20241013    gcc-11
i386                  randconfig-005-20241013    clang-18
i386                  randconfig-006-20241013    clang-18
i386                  randconfig-011-20241013    clang-18
i386                  randconfig-012-20241013    gcc-12
i386                  randconfig-013-20241013    clang-18
i386                  randconfig-014-20241013    gcc-12
i386                  randconfig-015-20241013    clang-18
i386                  randconfig-016-20241013    clang-18
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch             randconfig-001-20241014    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                       m5249evb_defconfig    gcc-14.1.0
m68k                        m5307c3_defconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
nios2                             allnoconfig    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-14.1.0
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    gcc-14.1.0
parisc                              defconfig    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
powerpc                      arches_defconfig    gcc-14.1.0
powerpc                     ep8248e_defconfig    gcc-14.1.0
powerpc                     mpc512x_defconfig    clang-20
powerpc                     rainier_defconfig    gcc-14.1.0
powerpc                    sam440ep_defconfig    gcc-14.1.0
powerpc                     tqm8540_defconfig    gcc-14.1.0
riscv                             allnoconfig    gcc-14.1.0
s390                             alldefconfig    gcc-14.1.0
s390                             allmodconfig    clang-20
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
um                                allnoconfig    clang-17
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-18
x86_64                               rhel-8.3    gcc-12
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
