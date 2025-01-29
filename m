Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 87777A216EA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jan 2025 04:28:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A1F7C80F23;
	Wed, 29 Jan 2025 03:28:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wPPLHTOn3Q_f; Wed, 29 Jan 2025 03:28:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D62080F37
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738121291;
	bh=7Gl/RHnuO1wCM8KRPOobFGbqN7UnpgJWB90dx66AWNw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ay4a4lXCsMF8RkwpIeQbR+QPvmy5oSmaI6hsqyr1qTwwqn2NfRZAgbmy19IioSGIT
	 kAF5kfA+shi7c6vWBr44jhYhzMOiPLFSlJLYWAdufwVtINdp0veasPOk3lx0BIU82z
	 WSuBAL9ZIESVAeX0IR5qjOVb9SEq2X7lVShrjDxcyyZuNohP3WOEIdSTu+5eAdhrcQ
	 BDO2ugouk6BfTvEPJghkFWhlsWVz6CsWIB4H4QVtZWXXs5M9OR/PAWYIeH1lqsqlgt
	 BszoUn4gqcAbX9UCr3+L4S/0qPdcTkAxetG+0cQ9wxvog9+/KxKF/HmfCNi3tnHiEF
	 xOcCes3rcqMrQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D62080F37;
	Wed, 29 Jan 2025 03:28:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 37A68AF7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jan 2025 03:28:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1510040104
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jan 2025 03:28:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Aq75GQDTmdaL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Jan 2025 03:28:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AC9154043C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC9154043C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AC9154043C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jan 2025 03:28:07 +0000 (UTC)
X-CSE-ConnectionGUID: Bg+qpuLASn2M8W0ylz7WoQ==
X-CSE-MsgGUID: 7wWYeMz1QvKvBWNmZTFlTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11329"; a="49119238"
X-IronPort-AV: E=Sophos;i="6.13,242,1732608000"; d="scan'208";a="49119238"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 19:28:07 -0800
X-CSE-ConnectionGUID: qHTanDedSMiQdUa6pNVKYw==
X-CSE-MsgGUID: 8Tdt9WY/RpSq5HLgu0nkpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,242,1732608000"; d="scan'208";a="113950422"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 28 Jan 2025 19:28:05 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tcykF-000iWh-1K
 for intel-wired-lan@lists.osuosl.org; Wed, 29 Jan 2025 03:28:03 +0000
Date: Wed, 29 Jan 2025 11:27:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202501291143.ilqEFqUh-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738121289; x=1769657289;
 h=date:from:to:subject:message-id;
 bh=ed+nRLIOY/1r/CQZdnHlcr3KlEZly0+cXsSJO+AUMhg=;
 b=Cud4IIapTT8Mmf0C3doq5APexqAXqAZl76HAyXjtiCU3vv++o9t7iceh
 ceZ1/Djfk/fXMQzhoXqWz4wD08Y8LiHKMK8T60P9eOAkbc83Yh4OpI9Nl
 dBk4qHSSOPB3HRSfX0vT+79nh0j5qEv8LOoBNKIh8XpVKvKDI7BpXANGR
 FlOF1KI48I7Th3yXGKiEFA6CxN6BxvPGE2RirhNV11G+AORSfMNBlYFtF
 4zluY+lHNxDzMdTJHx4pcUsvQR1y0ClcEpcKWOuzDFAk1kxGpJ/2TkF1h
 yO+0WLBtja9+l4kTVDaO8v+BXyHYCXeaHKj+wLj3DMB6YUKbxR/+wYk14
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Cud4IIap
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 9e6c4e6b605c1fa3e24f74ee0b641e95f090188a
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 9e6c4e6b605c1fa3e24f74ee0b641e95f090188a  bonding: Correctly support GSO ESP offload

elapsed time: 848m

configs tested: 120
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                     nsimosci_hs_defconfig    gcc-13.2.0
arc                   randconfig-001-20250129    gcc-13.2.0
arc                   randconfig-002-20250129    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-17
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20250129    gcc-14.2.0
arm                   randconfig-002-20250129    clang-20
arm                   randconfig-003-20250129    gcc-14.2.0
arm                   randconfig-004-20250129    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250129    gcc-14.2.0
arm64                 randconfig-002-20250129    gcc-14.2.0
arm64                 randconfig-003-20250129    gcc-14.2.0
arm64                 randconfig-004-20250129    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250129    gcc-14.2.0
csky                  randconfig-002-20250129    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-18
hexagon               randconfig-001-20250129    clang-19
hexagon               randconfig-002-20250129    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250129    clang-19
i386        buildonly-randconfig-002-20250129    gcc-12
i386        buildonly-randconfig-003-20250129    clang-19
i386        buildonly-randconfig-004-20250129    clang-19
i386        buildonly-randconfig-005-20250129    clang-19
i386        buildonly-randconfig-006-20250129    gcc-12
i386                                defconfig    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250129    gcc-14.2.0
loongarch             randconfig-002-20250129    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                            q40_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                           ip30_defconfig    gcc-14.2.0
nios2                 randconfig-001-20250129    gcc-14.2.0
nios2                 randconfig-002-20250129    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20250129    gcc-14.2.0
parisc                randconfig-002-20250129    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-16
powerpc                      pcm030_defconfig    clang-17
powerpc               randconfig-001-20250129    clang-20
powerpc               randconfig-002-20250129    clang-20
powerpc               randconfig-003-20250129    gcc-14.2.0
powerpc64             randconfig-001-20250129    clang-16
powerpc64             randconfig-002-20250129    clang-18
powerpc64             randconfig-003-20250129    clang-20
riscv                            alldefconfig    gcc-14.2.0
riscv                            allmodconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                 randconfig-001-20250128    gcc-14.2.0
riscv                 randconfig-001-20250129    gcc-14.2.0
riscv                 randconfig-002-20250128    gcc-14.2.0
riscv                 randconfig-002-20250129    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250128    gcc-14.2.0
s390                  randconfig-001-20250129    clang-20
s390                  randconfig-002-20250128    gcc-14.2.0
s390                  randconfig-002-20250129    clang-17
sh                               allmodconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250128    gcc-14.2.0
sh                    randconfig-001-20250129    gcc-14.2.0
sh                    randconfig-002-20250128    gcc-14.2.0
sh                    randconfig-002-20250129    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                 randconfig-001-20250128    gcc-14.2.0
sparc                 randconfig-001-20250129    gcc-14.2.0
sparc                 randconfig-002-20250128    gcc-14.2.0
sparc                 randconfig-002-20250129    gcc-14.2.0
sparc64               randconfig-001-20250128    gcc-14.2.0
sparc64               randconfig-001-20250129    gcc-14.2.0
sparc64               randconfig-002-20250128    gcc-14.2.0
sparc64               randconfig-002-20250129    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-18
um                               allyesconfig    gcc-12
um                    randconfig-001-20250128    gcc-12
um                    randconfig-001-20250129    gcc-12
um                    randconfig-002-20250128    gcc-12
um                    randconfig-002-20250129    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250129    clang-19
x86_64      buildonly-randconfig-002-20250129    gcc-12
x86_64      buildonly-randconfig-003-20250129    gcc-12
x86_64      buildonly-randconfig-004-20250129    gcc-12
x86_64      buildonly-randconfig-005-20250129    gcc-12
x86_64      buildonly-randconfig-006-20250129    clang-19
x86_64                              defconfig    gcc-11
xtensa                  cadence_csp_defconfig    gcc-14.2.0
xtensa                       common_defconfig    gcc-14.2.0
xtensa                randconfig-001-20250128    gcc-14.2.0
xtensa                randconfig-001-20250129    gcc-14.2.0
xtensa                randconfig-002-20250128    gcc-14.2.0
xtensa                randconfig-002-20250129    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
