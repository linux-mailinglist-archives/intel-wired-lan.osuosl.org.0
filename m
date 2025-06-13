Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 489E4AD87AF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 11:24:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CFABD409BC;
	Fri, 13 Jun 2025 09:24:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I7WLMesKY2w8; Fri, 13 Jun 2025 09:24:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 909CC409B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749806648;
	bh=n2hAwFPhQCR0bbHzYNVWVFIfNe9MXOOBIFXeXj6YxEo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0KycoBX28LGhPfEZiyUCsRxn+j0h1JqMy2xuV6W/gvE1nzvd0gsEhhH2rUfDU+ufM
	 2krWT0cRpSreqemW4jrKYbp2SpgQgQ4zQQA3pg8yJj7LKcxKy8EQyHWWlp1gI1Zvxh
	 2RXhwFLTfI0guuGKsF+qti4el+EIsOppOEueHuRxQHttK/Vpl7TFtBAqy3nEMwyRXG
	 Hh4FHLUcD/rp6Q1he4M0ICV/gUxguzgrxOacAIIIXIeuP+NH1isZLP0gwcTP2/IiQs
	 xPPoBmBYl3Vm/WRHP6OboYdtPfJg3cidlpcg8nC+19vnR2e+WthxCSMSX8lpksjta9
	 moYikyZpu688A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 909CC409B9;
	Fri, 13 Jun 2025 09:24:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7F355115
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 09:24:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 62C6B8149E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 09:24:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y6ZB-me4v5GE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 09:24:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6ACBF80D69
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6ACBF80D69
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6ACBF80D69
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 09:24:05 +0000 (UTC)
X-CSE-ConnectionGUID: /L5gSV+dQbycWTImzZ68cw==
X-CSE-MsgGUID: KKBq6A71SuSGFft8gfuDPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="51937483"
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="51937483"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 02:24:04 -0700
X-CSE-ConnectionGUID: RM6lBP5eTPC+HQNyM0COYw==
X-CSE-MsgGUID: awo3euX7QcO58gkabC83jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="170953305"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 13 Jun 2025 02:24:03 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uQ0dl-000CPo-1D
 for intel-wired-lan@lists.osuosl.org; Fri, 13 Jun 2025 09:24:01 +0000
Date: Fri, 13 Jun 2025 17:23:45 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506131734.HKvrZ4b7-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749806645; x=1781342645;
 h=date:from:to:subject:message-id;
 bh=B8UvxpQe3MYiRpyFkA2nNWMkkBlZRSMdPBl9ADj+t2A=;
 b=OFmM09jb0uxRFQiL9vscDSFN34NBnEOXnTju6emoFEXARiH7m7Jjt06z
 +WWjXjNSVxLcRX4NbpihrUpBbJ4m8jAI+nXGN+DkcIQYPlC+XXeIA5mxW
 r8UaoZKzJjaicy4IpqoYw6yvrgfL9hEuzXj75Qkst3m/WeW+pUq8WkHP2
 C9bx0Uxmx88mC50qrnoalrcOGWhkjJne9it4BUBokJ4ChmqyDwkLgHnBT
 qCeiw0C1Slip7DroW+CxKWn6jbVmtlSVMyEksqnwM0bX0jgpOqBSKihlF
 ovhW2cd3Q8V/cLvN1qAOIxyKSLaUUjB1Na0ntjblGUQPFCgnqSTuX9HiJ
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OFmM09jb
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 d5705afbaca2f5b3fb8766391ca6c43105d229b2
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: d5705afbaca2f5b3fb8766391ca6c43105d229b2  Merge tag 'wireless-2025-06-12' of https://git.kernel.org/pub/scm/linux/kernel/git/wireless/wireless

elapsed time: 1058m

configs tested: 212
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                              allmodconfig    clang-19
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                                 defconfig    gcc-15.1.0
arc                   randconfig-001-20250613    gcc-12.4.0
arc                   randconfig-002-20250613    gcc-12.4.0
arm                              allmodconfig    clang-19
arm                               allnoconfig    gcc-15.1.0
arm                              allyesconfig    clang-19
arm                         at91_dt_defconfig    gcc-15.1.0
arm                                 defconfig    gcc-15.1.0
arm                            dove_defconfig    gcc-15.1.0
arm                           h3600_defconfig    gcc-15.1.0
arm                          ixp4xx_defconfig    gcc-15.1.0
arm                         orion5x_defconfig    gcc-15.1.0
arm                   randconfig-001-20250613    clang-21
arm                   randconfig-001-20250613    gcc-12.4.0
arm                   randconfig-002-20250613    clang-20
arm                   randconfig-002-20250613    gcc-12.4.0
arm                   randconfig-003-20250613    gcc-12.4.0
arm                   randconfig-003-20250613    gcc-8.5.0
arm                   randconfig-004-20250613    clang-21
arm                   randconfig-004-20250613    gcc-12.4.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20250613    gcc-12.4.0
arm64                 randconfig-001-20250613    gcc-15.1.0
arm64                 randconfig-002-20250613    clang-21
arm64                 randconfig-002-20250613    gcc-12.4.0
arm64                 randconfig-003-20250613    clang-21
arm64                 randconfig-003-20250613    gcc-12.4.0
arm64                 randconfig-004-20250613    gcc-12.4.0
arm64                 randconfig-004-20250613    gcc-15.1.0
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20250613    gcc-13.3.0
csky                  randconfig-001-20250613    gcc-15.1.0
csky                  randconfig-002-20250613    gcc-13.3.0
csky                  randconfig-002-20250613    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    gcc-15.1.0
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-21
hexagon                             defconfig    gcc-15.1.0
hexagon               randconfig-001-20250613    clang-21
hexagon               randconfig-001-20250613    gcc-13.3.0
hexagon               randconfig-002-20250613    clang-21
hexagon               randconfig-002-20250613    gcc-13.3.0
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20250613    gcc-12
i386        buildonly-randconfig-002-20250613    gcc-11
i386        buildonly-randconfig-002-20250613    gcc-12
i386        buildonly-randconfig-003-20250613    gcc-12
i386        buildonly-randconfig-004-20250613    clang-20
i386        buildonly-randconfig-004-20250613    gcc-12
i386        buildonly-randconfig-005-20250613    clang-20
i386        buildonly-randconfig-005-20250613    gcc-12
i386        buildonly-randconfig-006-20250613    gcc-12
i386                                defconfig    clang-20
i386                  randconfig-001-20250613    clang-20
i386                  randconfig-002-20250613    clang-20
i386                  randconfig-003-20250613    clang-20
i386                  randconfig-004-20250613    clang-20
i386                  randconfig-005-20250613    clang-20
i386                  randconfig-006-20250613    clang-20
i386                  randconfig-007-20250613    clang-20
i386                  randconfig-011-20250613    clang-20
i386                  randconfig-012-20250613    clang-20
i386                  randconfig-013-20250613    clang-20
i386                  randconfig-014-20250613    clang-20
i386                  randconfig-015-20250613    clang-20
i386                  randconfig-016-20250613    clang-20
i386                  randconfig-017-20250613    clang-20
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch                           defconfig    gcc-15.1.0
loongarch             randconfig-001-20250613    gcc-13.3.0
loongarch             randconfig-001-20250613    gcc-15.1.0
loongarch             randconfig-002-20250613    gcc-13.3.0
loongarch             randconfig-002-20250613    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
m68k                          multi_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250613    gcc-11.5.0
nios2                 randconfig-001-20250613    gcc-13.3.0
nios2                 randconfig-002-20250613    gcc-11.5.0
nios2                 randconfig-002-20250613    gcc-13.3.0
openrisc                          allnoconfig    clang-21
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
openrisc                       virt_defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-21
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250613    gcc-13.3.0
parisc                randconfig-001-20250613    gcc-8.5.0
parisc                randconfig-002-20250613    gcc-13.3.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-21
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    gcc-15.1.0
powerpc                      bamboo_defconfig    gcc-15.1.0
powerpc                    gamecube_defconfig    gcc-15.1.0
powerpc                     mpc83xx_defconfig    gcc-15.1.0
powerpc                         ps3_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250613    clang-21
powerpc               randconfig-001-20250613    gcc-13.3.0
powerpc               randconfig-002-20250613    gcc-13.3.0
powerpc               randconfig-002-20250613    gcc-8.5.0
powerpc               randconfig-003-20250613    gcc-13.3.0
powerpc               randconfig-003-20250613    gcc-9.3.0
powerpc                     skiroot_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20250613    gcc-13.3.0
powerpc64             randconfig-001-20250613    gcc-8.5.0
powerpc64             randconfig-002-20250613    gcc-13.3.0
powerpc64             randconfig-002-20250613    gcc-8.5.0
powerpc64             randconfig-003-20250613    gcc-10.5.0
powerpc64             randconfig-003-20250613    gcc-13.3.0
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-21
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250613    gcc-8.5.0
riscv                 randconfig-002-20250613    clang-21
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250613    clang-21
s390                  randconfig-002-20250613    clang-21
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                        edosk7705_defconfig    gcc-15.1.0
sh                    randconfig-001-20250613    gcc-15.1.0
sh                    randconfig-002-20250613    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250613    gcc-10.3.0
sparc                 randconfig-002-20250613    gcc-13.3.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250613    gcc-15.1.0
sparc64               randconfig-002-20250613    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250613    gcc-12
um                    randconfig-002-20250613    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250613    clang-20
x86_64      buildonly-randconfig-001-20250613    gcc-12
x86_64      buildonly-randconfig-002-20250613    gcc-12
x86_64      buildonly-randconfig-003-20250613    gcc-12
x86_64      buildonly-randconfig-004-20250613    gcc-12
x86_64      buildonly-randconfig-005-20250613    clang-20
x86_64      buildonly-randconfig-005-20250613    gcc-12
x86_64      buildonly-randconfig-006-20250613    gcc-12
x86_64                              defconfig    clang-20
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250613    gcc-12
x86_64                randconfig-002-20250613    gcc-12
x86_64                randconfig-003-20250613    gcc-12
x86_64                randconfig-004-20250613    gcc-12
x86_64                randconfig-005-20250613    gcc-12
x86_64                randconfig-006-20250613    gcc-12
x86_64                randconfig-007-20250613    gcc-12
x86_64                randconfig-008-20250613    gcc-12
x86_64                randconfig-071-20250613    gcc-12
x86_64                randconfig-072-20250613    gcc-12
x86_64                randconfig-073-20250613    gcc-12
x86_64                randconfig-074-20250613    gcc-12
x86_64                randconfig-075-20250613    gcc-12
x86_64                randconfig-076-20250613    gcc-12
x86_64                randconfig-077-20250613    gcc-12
x86_64                randconfig-078-20250613    gcc-12
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                  audio_kc705_defconfig    gcc-15.1.0
xtensa                randconfig-001-20250613    gcc-8.5.0
xtensa                randconfig-002-20250613    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
