Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BF12198CEF6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Oct 2024 10:40:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72CD38204D;
	Wed,  2 Oct 2024 08:40:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3RMSmc8wgqaR; Wed,  2 Oct 2024 08:40:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 519108200A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727858410;
	bh=IofZbNW49ovYVNeYYryEe7g+H4cpYJ14EjfxIK8NHyk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xJCJVI3n0YpRfOxTlCsiEUx51x4Q/cnRxxZzlRU4UnFKMV7j3a5im9/XUcT/uLaoD
	 gKyOQ1AHgkRAy9/9rjCV9yY9eFyDhQ99AFrlNjZNOfPsE8IKFzcnzvgWwXS13UydT0
	 GmJ0wG73JfFtpsA1hZpxmmFUR/So3Oebi+mLSXh5tS/kkfkkT0IIrGQI78SohBPXR/
	 3kZgkr1Xg77HghxO1OVfJTfAJL+xtQbNq3VvUr3PQpR6GIyXhB3C0yzy8hKnUKbSkq
	 U41Etb9mY6jXQ60ly5eIyJn6Wcxxgv2brhj0CW7n9hu6TAR+7bEsuOqnOdSO2MnwTk
	 7FseRsn1FJsDg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 519108200A;
	Wed,  2 Oct 2024 08:40:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 403D81BF842
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 08:40:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3BACD60A8D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 08:40:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K0PTwLt8SVaW for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Oct 2024 08:40:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8B14560A83
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B14560A83
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8B14560A83
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 08:40:06 +0000 (UTC)
X-CSE-ConnectionGUID: yZSBZestQyW1tRLl7mYUJg==
X-CSE-MsgGUID: FMv3xWy7QyWEG9CJ3L6gUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="44477361"
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="44477361"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 01:40:05 -0700
X-CSE-ConnectionGUID: b3mqrHP/SJel/D7fAvlXpQ==
X-CSE-MsgGUID: wywZfOmaTrGj3Q0Up9p7gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="104735464"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 02 Oct 2024 01:40:05 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1svutv-000RoN-07
 for intel-wired-lan@lists.osuosl.org; Wed, 02 Oct 2024 08:40:03 +0000
Date: Wed, 02 Oct 2024 16:39:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410021657.Y9DxuK4m-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727858406; x=1759394406;
 h=date:from:to:subject:message-id;
 bh=RP+svz202uhQH9F6bFfg5lcvlP8x1EsIypcEsF2pv+E=;
 b=SMsgePqSCiReDiasr/bV+nU7mcCwgppe3j5xyi+wGKvGaBsavhXXakh+
 ZcmaCJHupwu8sQFBvfxFS+lqevTHxQrVN+RFDC8lzSCWaadkr09to7xE9
 la6GTPzGkt8CGpYqbkkpkz9/BdiEOuZE74kBOg/FFjiu7wydtMbAsy2LG
 j/iDWyfl9ul1w9NuRGuJDi9Y4fCxga53aQjCneAURzawY7ngZkzgcxjs0
 qSufGQzJ7X/+9bSxAMAv+YwA6sZ6h2WIzFL9wqSP0oI/Vq8mx+6I5AJ29
 D/2x+Xt0Gh1agZXQagkVKdp84LRcGWGd3v5DH2a1HQnoTBAz7EYBqRAQX
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SMsgePqS
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 44badc908f2c85711cb18e45e13119c10ad3a05f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 44badc908f2c85711cb18e45e13119c10ad3a05f  tcp: Fix spelling mistake "emtpy" -> "empty"

elapsed time: 1314m

configs tested: 112
configs skipped: 4

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
arm                          ep93xx_defconfig    gcc-14.1.0
arm                        multi_v5_defconfig    gcc-14.1.0
arm                       spear13xx_defconfig    gcc-14.1.0
arm                           stm32_defconfig    gcc-14.1.0
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
i386        buildonly-randconfig-001-20241002    clang-18
i386        buildonly-randconfig-002-20241002    clang-18
i386        buildonly-randconfig-003-20241002    clang-18
i386        buildonly-randconfig-004-20241002    clang-18
i386        buildonly-randconfig-005-20241002    clang-18
i386        buildonly-randconfig-006-20241002    clang-18
i386                                defconfig    clang-18
i386                  randconfig-001-20241002    clang-18
i386                  randconfig-002-20241002    clang-18
i386                  randconfig-003-20241002    clang-18
i386                  randconfig-004-20241002    clang-18
i386                  randconfig-005-20241002    clang-18
i386                  randconfig-006-20241002    clang-18
i386                  randconfig-011-20241002    clang-18
i386                  randconfig-012-20241002    clang-18
i386                  randconfig-013-20241002    clang-18
i386                  randconfig-014-20241002    clang-18
i386                  randconfig-015-20241002    clang-18
i386                  randconfig-016-20241002    clang-18
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch                           defconfig    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                                defconfig    gcc-14.1.0
m68k                        m5272c3_defconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
microblaze                          defconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                         cobalt_defconfig    gcc-14.1.0
mips                           ip28_defconfig    gcc-14.1.0
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
powerpc                          g5_defconfig    gcc-14.1.0
powerpc                     kmeter1_defconfig    gcc-14.1.0
powerpc                 mpc836x_rdk_defconfig    gcc-14.1.0
powerpc                     skiroot_defconfig    gcc-14.1.0
powerpc64                        alldefconfig    gcc-14.1.0
riscv                            allmodconfig    gcc-14.1.0
riscv                             allnoconfig    clang-20
riscv                            allyesconfig    gcc-14.1.0
riscv                               defconfig    gcc-12
s390                             allmodconfig    clang-20
s390                             allmodconfig    gcc-14.1.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    gcc-12
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                         ap325rxa_defconfig    gcc-14.1.0
sh                                  defconfig    gcc-12
sh                           se7722_defconfig    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-12
um                               allmodconfig    clang-20
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                             i386_defconfig    gcc-14.1.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64                              defconfig    clang-18
x86_64                                  kexec    clang-18
x86_64                               rhel-8.3    gcc-12
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0
xtensa                generic_kc705_defconfig    gcc-14.1.0
xtensa                    xip_kc705_defconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
