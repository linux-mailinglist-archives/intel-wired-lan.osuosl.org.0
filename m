Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC88C9794A0
	for <lists+intel-wired-lan@lfdr.de>; Sun, 15 Sep 2024 06:40:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 793274042A;
	Sun, 15 Sep 2024 04:40:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E_g025pdHfJR; Sun, 15 Sep 2024 04:40:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D1E6F401A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726375236;
	bh=WX6UYkhbgvXL01gcWYlCjrXnMbnEL0/mxLfx+PrBKIU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FknSzTFKTiyq53uIw+rhP55/OxdVpx0m1tYkCSN5vBqtJbIyGqY5FgcuAzQfESWNG
	 CJ3mBnyE/DEwaSIjTovNTgKYsaAmZyEPUa94dmkIuNUNhtkJL9FeMPF3qgG9bjakAc
	 uNXf6OS7iSgeL/Q84JObbLRtLhQ9aa24UXDsyVNGtxOhj7iIPZCZEoezZ4tptith2J
	 +Go6kMdTRhyU+pqT7BOn2MQyAO0ymnsUTMv2PVt8gANe5fsTBPt+lADVKj6N9IlPtT
	 6HwVRvbSgh/3e0jmvEeuik0/5EJwH0LULGUnx40SJi4wMnUNDHFfERAzyzwq6vz21n
	 O9gbvZPZJDFLA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D1E6F401A1;
	Sun, 15 Sep 2024 04:40:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 688FB1BF383
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Sep 2024 04:40:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 63C4381F23
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Sep 2024 04:40:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T2UGD69qA4W6 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 15 Sep 2024 04:40:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1347B81F22
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1347B81F22
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1347B81F22
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Sep 2024 04:40:33 +0000 (UTC)
X-CSE-ConnectionGUID: fWpJVqoGTQG8PmYMSjHdJw==
X-CSE-MsgGUID: Ql2Y1SY5R/OqOSNxeMvApw==
X-IronPort-AV: E=McAfee;i="6700,10204,11195"; a="25395000"
X-IronPort-AV: E=Sophos;i="6.10,230,1719903600"; d="scan'208";a="25395000"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2024 21:40:33 -0700
X-CSE-ConnectionGUID: JLSbZ/X0RVqdH/3CbKGzDA==
X-CSE-MsgGUID: X4lmMP1EQamvJHc14oQDZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,230,1719903600"; d="scan'208";a="68863369"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 14 Sep 2024 21:40:32 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sph3l-0008Pi-2t
 for intel-wired-lan@lists.osuosl.org; Sun, 15 Sep 2024 04:40:29 +0000
Date: Sun, 15 Sep 2024 12:39:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202409151236.A26JpFw6-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726375234; x=1757911234;
 h=date:from:to:subject:message-id;
 bh=w/QzLuvn9ob7G6HZOLwFOylIAcJ+GdRhkzoaNgjU3cE=;
 b=LZL3WRHODfPopKOBfMozkxTqj4MJ84vcLetIdoQrIoQa60JC4iJ9keX+
 yp4juILBDv3P89LziUDLKLfP5CcNB2ngU4qZjWMKJw9h/uESOYQeTaw0R
 +9MiKmD69HeFobYA/tuqNYVW3Olnz4uDllgoX006JXD78YXL0IVbmkGjJ
 sUiSbba8ULqjujeHfm9+DctK57IYjAr8DvLqGqBcaSyI55m5w7tzosN8w
 HsTDbWLQ3KKBMfB0ank7mgoEomH4gQ48KXcekJQdAPml2wNrQ173jPFyU
 GNj/1rj+agYWB+q/eiehIrWUisNHr1+bcKcZ2QJTvdy4BTnmu9rDknaQq
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LZL3WRHO
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 f8d647366d8cfb9975480ae9e77e6b21d5332395
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
branch HEAD: f8d647366d8cfb9975480ae9e77e6b21d5332395  e1000e: change I219 (19) devices to ADP

elapsed time: 1889m

configs tested: 105
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-13.3.0
alpha                            allyesconfig    gcc-13.3.0
alpha                               defconfig    gcc-13.3.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                                 defconfig    gcc-13.2.0
arc                        nsimosci_defconfig    gcc-13.2.0
arc                   randconfig-001-20240915    gcc-13.2.0
arc                   randconfig-002-20240915    gcc-13.2.0
arc                           tb10x_defconfig    gcc-13.2.0
arm                               allnoconfig    clang-20
arm                   randconfig-001-20240915    gcc-14.1.0
arm                   randconfig-002-20240915    clang-17
arm                   randconfig-003-20240915    clang-20
arm                   randconfig-004-20240915    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                 randconfig-001-20240915    clang-20
arm64                 randconfig-002-20240915    gcc-14.1.0
arm64                 randconfig-003-20240915    clang-20
arm64                 randconfig-004-20240915    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                  randconfig-001-20240915    gcc-14.1.0
csky                  randconfig-002-20240915    gcc-14.1.0
hexagon                           allnoconfig    clang-20
hexagon               randconfig-001-20240915    clang-20
hexagon               randconfig-002-20240915    clang-16
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20240915    gcc-12
i386        buildonly-randconfig-002-20240915    clang-18
i386        buildonly-randconfig-003-20240915    clang-18
i386        buildonly-randconfig-004-20240915    gcc-12
i386        buildonly-randconfig-005-20240915    clang-18
i386        buildonly-randconfig-006-20240915    gcc-12
i386                                defconfig    clang-18
i386                  randconfig-001-20240915    clang-18
i386                  randconfig-002-20240915    clang-18
i386                  randconfig-003-20240915    clang-18
i386                  randconfig-004-20240915    clang-18
i386                  randconfig-005-20240915    clang-18
i386                  randconfig-006-20240915    clang-18
i386                  randconfig-011-20240915    clang-18
i386                  randconfig-012-20240915    gcc-12
i386                  randconfig-013-20240915    gcc-12
i386                  randconfig-014-20240915    clang-18
i386                  randconfig-015-20240915    gcc-12
i386                  randconfig-016-20240915    gcc-12
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch             randconfig-001-20240915    gcc-14.1.0
loongarch             randconfig-002-20240915    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
nios2                             allnoconfig    gcc-14.1.0
nios2                 randconfig-001-20240915    gcc-14.1.0
nios2                 randconfig-002-20240915    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
openrisc                            defconfig    gcc-14.1.0
parisc                            allnoconfig    gcc-14.1.0
parisc                              defconfig    gcc-14.1.0
parisc                randconfig-001-20240915    gcc-14.1.0
parisc                randconfig-002-20240915    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
powerpc               randconfig-001-20240915    gcc-14.1.0
powerpc               randconfig-002-20240915    gcc-14.1.0
powerpc               randconfig-003-20240915    gcc-14.1.0
powerpc64             randconfig-001-20240915    clang-20
powerpc64             randconfig-002-20240915    clang-20
powerpc64             randconfig-003-20240915    gcc-14.1.0
riscv                             allnoconfig    gcc-14.1.0
riscv                               defconfig    clang-20
riscv                 randconfig-001-20240915    clang-15
riscv                 randconfig-002-20240915    clang-20
s390                             allmodconfig    clang-20
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    clang-20
s390                  randconfig-001-20240915    clang-20
s390                  randconfig-002-20240915    clang-20
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-14.1.0
sh                    randconfig-001-20240915    gcc-14.1.0
sh                    randconfig-002-20240915    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-14.1.0
sparc64               randconfig-001-20240915    gcc-14.1.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                                  defconfig    clang-20
um                             i386_defconfig    gcc-12
um                           x86_64_defconfig    clang-15
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64                              defconfig    gcc-11
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
