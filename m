Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F03AECA67
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Jun 2025 23:40:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E58AD608D8;
	Sat, 28 Jun 2025 21:40:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rRynie_1Ayra; Sat, 28 Jun 2025 21:40:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2F8F608EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751146813;
	bh=E3QR9rACMxT3kuca7MyJaBcCj8xvUdc3Z8kl36xd5x8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=g1HBESmOVybx0R7JLvdbfC4vnD0l/JUQaUk7aBg2y1tbLGOnClFHKuvWx0FMI/uIy
	 jg4JWmkoYZqc/I0efO3SQI8XrLNeoS93RZPwbAhHJ8XoDREebbGrVm2rXtFakWj0Vg
	 a+Mq6wblducMiAESdoLjcVK6Brjxu6E98WeVrosI8Y/lYsgswiyfoss+7KwZ9YbJjv
	 qD04Wv80A12BYcEnCgMGRGmQ/zW8ETqig2M/+AlfEOmGbmjsdY48bF6cWo9wr1sK3K
	 NQReXSZgPhUNJ2zYihpR/gzoC0yj8WsFGikGcg63vUAXK1We1i9KXXMJXZOpRgO6Ha
	 DHhsHwNTfGfzA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E2F8F608EA;
	Sat, 28 Jun 2025 21:40:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9DE231C9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jun 2025 21:40:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8FC9B608DD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jun 2025 21:40:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q6HGR2uL0fVr for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Jun 2025 21:40:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 36068608D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36068608D5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 36068608D5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jun 2025 21:40:10 +0000 (UTC)
X-CSE-ConnectionGUID: egRsd/YZSLu5PJkrw/FGEg==
X-CSE-MsgGUID: nvIg98KASfmMhkNOPXpgNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11478"; a="63673051"
X-IronPort-AV: E=Sophos;i="6.16,273,1744095600"; d="scan'208";a="63673051"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2025 14:40:10 -0700
X-CSE-ConnectionGUID: KDD6L5HySK27bEgGdLM0Rg==
X-CSE-MsgGUID: gB4d+KuCTH+Bel6JtdAwuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,273,1744095600"; d="scan'208";a="158596435"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 28 Jun 2025 14:40:09 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uVdHL-000XPT-26
 for intel-wired-lan@lists.osuosl.org; Sat, 28 Jun 2025 21:40:07 +0000
Date: Sun, 29 Jun 2025 05:39:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506290559.Dp9vo1vt-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751146811; x=1782682811;
 h=date:from:to:subject:message-id;
 bh=gnOmq7L7WqW0Ej/P6rxrfb1umEExmblkOoWmYKN4lpk=;
 b=UCRLiHRLKI+4SrorcP+7gCopkW2cg+OqHwrB/LO/3YdHCte6Nis/3QoJ
 LjxGI7duu8zm2S8mhX+xSeMa4llEqKVoYx+xALD5F/fgkAvFKPIZ9SaDw
 22Kjcj/92ochEBSKlPSbygDih79Qc7apZNdSN0AmYt8VbJwk8yTwFZAn2
 6RE+gIhH/gpstZExp6pn7jkeNtAkHPX2+fMWKyd2fssjRI0vf52If8eIV
 rTg+/3FW6CebFGzKlA9xPddetVp0FnUWXNG89FtkomRUgfvO//9x532I0
 ab/BaT7cbq02ICMHIo4y1HtSOEv5mk3vUy8WmJgAyiMffC8L9oJLC30hf
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UCRLiHRL
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 856951290c2d5da80fec5356fadce87addcf0b69
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 856951290c2d5da80fec5356fadce87addcf0b69  i40e: When removing VF MAC filters, only check PF-set MAC

elapsed time: 1442m

configs tested: 114
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250628    gcc-8.5.0
arc                   randconfig-002-20250628    gcc-15.1.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250628    gcc-12.4.0
arm                   randconfig-002-20250628    clang-21
arm                   randconfig-003-20250628    clang-17
arm                   randconfig-004-20250628    clang-17
arm                         wpcm450_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20250628    gcc-14.3.0
arm64                 randconfig-002-20250628    clang-21
arm64                 randconfig-003-20250628    clang-21
arm64                 randconfig-004-20250628    clang-17
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250628    gcc-14.3.0
csky                  randconfig-002-20250628    gcc-14.3.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250628    clang-21
hexagon               randconfig-002-20250628    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250628    clang-20
i386        buildonly-randconfig-002-20250628    clang-20
i386        buildonly-randconfig-003-20250628    gcc-12
i386        buildonly-randconfig-004-20250628    clang-20
i386        buildonly-randconfig-005-20250628    clang-20
i386        buildonly-randconfig-006-20250628    gcc-12
i386                                defconfig    clang-20
loongarch                         allnoconfig    gcc-15.1.0
loongarch             randconfig-001-20250628    gcc-12.4.0
loongarch             randconfig-002-20250628    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                       bvme6000_defconfig    gcc-15.1.0
m68k                        m5307c3_defconfig    gcc-15.1.0
m68k                            mac_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                           ci20_defconfig    clang-21
mips                     loongson1b_defconfig    clang-21
mips                        vocore2_defconfig    clang-21
nios2                         3c120_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250628    gcc-8.5.0
nios2                 randconfig-002-20250628    gcc-9.3.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                randconfig-001-20250628    gcc-8.5.0
parisc                randconfig-002-20250628    gcc-12.4.0
powerpc                    adder875_defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                   bluestone_defconfig    clang-21
powerpc                      ppc6xx_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250628    gcc-8.5.0
powerpc               randconfig-002-20250628    clang-19
powerpc               randconfig-003-20250628    clang-21
powerpc64             randconfig-001-20250628    clang-20
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250628    clang-21
riscv                 randconfig-002-20250628    clang-16
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250628    clang-21
s390                  randconfig-002-20250628    gcc-11.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250628    gcc-15.1.0
sh                    randconfig-002-20250628    gcc-9.3.0
sh                          sdk7780_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250628    gcc-8.5.0
sparc                 randconfig-002-20250628    gcc-12.4.0
sparc64               randconfig-001-20250628    gcc-8.5.0
sparc64               randconfig-002-20250628    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250628    gcc-12
um                    randconfig-002-20250628    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250628    gcc-12
x86_64      buildonly-randconfig-002-20250628    clang-20
x86_64      buildonly-randconfig-003-20250628    gcc-12
x86_64      buildonly-randconfig-004-20250628    clang-20
x86_64      buildonly-randconfig-005-20250628    clang-20
x86_64      buildonly-randconfig-006-20250628    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250628    gcc-11.5.0
xtensa                randconfig-002-20250628    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
