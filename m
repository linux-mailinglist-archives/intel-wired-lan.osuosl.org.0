Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3CF989113
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Sep 2024 21:07:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F70760708;
	Sat, 28 Sep 2024 19:07:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YeDAmTtJLbOo; Sat, 28 Sep 2024 19:07:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1717B606E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727550453;
	bh=XlhTUndG2XSLEeiEdpj4xnfpOrn+boHz3I4zPf4Esag=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rz4BLpNkWgrTuNKBEC5n68AKovPvMtjfbNNeaZ+Ddx1TPEHFqvBjqUtUxbFQzgrLV
	 imR/lO1BB8CL3YQevWAHQuClFwUVpCQGORaQASMT/xYb4Une55gigtVpCAI60dJ2Cg
	 N+idWJo0FRJ8jDlo2P07gsKu5mQZiA9dGzPu9AaBUPY4Afa7/isM22au3y0qJdyyXK
	 RO+Un4wWgRUaYhoVV9NrMqFzSS7iwBfi4eLy3AouLbol+iUMtzLLKHU3yOQEVOojZa
	 p8keK7M8bYnem9f1kdd/rXqMaqTqulNES72x8noiNfizEqwZji0WJcDLfAoj7G+n6n
	 GHfQ728bz850g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1717B606E5;
	Sat, 28 Sep 2024 19:07:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D78781BF852
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Sep 2024 19:07:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C5F0981362
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Sep 2024 19:07:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3FVHwnMEyXAE for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Sep 2024 19:07:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6101880D33
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6101880D33
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6101880D33
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Sep 2024 19:07:30 +0000 (UTC)
X-CSE-ConnectionGUID: KfWWsckRTmq/OJo0uHno1Q==
X-CSE-MsgGUID: miEp84sbSKinTycFKiNtTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11209"; a="37242792"
X-IronPort-AV: E=Sophos;i="6.11,162,1725346800"; d="scan'208";a="37242792"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2024 12:07:29 -0700
X-CSE-ConnectionGUID: BP0HmOO8TBC3z/t0jEbBBA==
X-CSE-MsgGUID: F/872nIVTnC9ZAQ6qyfdcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,162,1725346800"; d="scan'208";a="72730840"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 28 Sep 2024 12:07:28 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sucmr-000NXb-2g
 for intel-wired-lan@lists.osuosl.org; Sat, 28 Sep 2024 19:07:25 +0000
Date: Sun, 29 Sep 2024 03:06:34 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202409290329.JMXXi2pr-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727550450; x=1759086450;
 h=date:from:to:subject:message-id;
 bh=3ylPn2TX8+4OcpST8IP8sTjPNzvNTCickIe07G0iNOk=;
 b=B7TKkGx5tOexw5qsbl9Fc/k+Ig9HY5kvGpcrIm5OATBz/BXkwaa992B5
 u8LP5YsPkGQg9AdUZwNwoiqqIw3qYf8HKCzwrqyiS/Xdq4L8KF88NkRae
 B/9MMdyzw4lRPAF22GxLl22M0IaRxI2jM3bMp6ANiHWeB98mGvCzQDLgD
 98Hy/oGd/VmGuqB4Kx1vZvQOjjRGqwAGq2rh7uZONAABYFKHBeJVNQur1
 ebG7q31g/dv1fzvK8b81EM0DQeLJCF6egQ7DYUtaIloJbWEb/6dtMUnzx
 r7OyQGIQu/B2APcBkx9pQ9NZrmuGnzo8RUSGNPiW/Pmta2g4I4TQGXHl4
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B7TKkGx5
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 252daba137fd8c5a841f7120fdafa6f2ad67e88a
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
branch HEAD: 252daba137fd8c5a841f7120fdafa6f2ad67e88a  igb: Do not bring the device up after non-fatal error

elapsed time: 1208m

configs tested: 190
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-13.3.0
alpha                            allyesconfig    clang-20
alpha                            allyesconfig    gcc-13.3.0
alpha                               defconfig    gcc-14.1.0
arc                              allmodconfig    clang-20
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    clang-20
arc                              allyesconfig    gcc-13.2.0
arc                          axs103_defconfig    clang-20
arc                                 defconfig    gcc-14.1.0
arc                   randconfig-001-20240928    gcc-14.1.0
arc                   randconfig-002-20240928    gcc-14.1.0
arc                           tb10x_defconfig    clang-20
arm                              allmodconfig    clang-20
arm                              allmodconfig    gcc-14.1.0
arm                               allnoconfig    clang-20
arm                              allyesconfig    clang-20
arm                              allyesconfig    gcc-14.1.0
arm                                 defconfig    gcc-14.1.0
arm                        mvebu_v5_defconfig    clang-20
arm                   randconfig-001-20240928    gcc-14.1.0
arm                   randconfig-002-20240928    gcc-14.1.0
arm                   randconfig-003-20240928    gcc-14.1.0
arm                   randconfig-004-20240928    gcc-14.1.0
arm                             rpc_defconfig    clang-20
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                               defconfig    gcc-14.1.0
arm64                 randconfig-001-20240928    gcc-14.1.0
arm64                 randconfig-002-20240928    gcc-14.1.0
arm64                 randconfig-003-20240928    gcc-14.1.0
arm64                 randconfig-004-20240928    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                                defconfig    gcc-14.1.0
csky                  randconfig-001-20240928    gcc-14.1.0
csky                  randconfig-002-20240928    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.1.0
hexagon               randconfig-001-20240928    gcc-14.1.0
hexagon               randconfig-002-20240928    gcc-14.1.0
i386                             allmodconfig    clang-18
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-18
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-18
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20240928    clang-18
i386        buildonly-randconfig-002-20240928    gcc-12
i386        buildonly-randconfig-003-20240928    clang-18
i386        buildonly-randconfig-004-20240928    gcc-12
i386        buildonly-randconfig-005-20240928    gcc-12
i386        buildonly-randconfig-006-20240928    gcc-12
i386                                defconfig    clang-18
i386                  randconfig-001-20240928    clang-18
i386                  randconfig-002-20240928    gcc-12
i386                  randconfig-003-20240928    clang-18
i386                  randconfig-004-20240928    clang-18
i386                  randconfig-005-20240928    clang-18
i386                  randconfig-006-20240928    gcc-12
i386                  randconfig-011-20240928    clang-18
i386                  randconfig-012-20240928    gcc-12
i386                  randconfig-013-20240928    clang-18
i386                  randconfig-014-20240928    clang-18
i386                  randconfig-015-20240928    clang-18
i386                  randconfig-016-20240928    clang-18
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch                           defconfig    gcc-14.1.0
loongarch             randconfig-001-20240928    gcc-14.1.0
loongarch             randconfig-002-20240928    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                                defconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
microblaze                          defconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                          eyeq5_defconfig    clang-20
mips                           ip22_defconfig    clang-20
mips                           jazz_defconfig    clang-20
mips                     loongson2k_defconfig    clang-20
mips                          rb532_defconfig    clang-20
nios2                             allnoconfig    gcc-14.1.0
nios2                               defconfig    gcc-14.1.0
nios2                 randconfig-001-20240928    gcc-14.1.0
nios2                 randconfig-002-20240928    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    gcc-14.1.0
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20240928    gcc-14.1.0
parisc                randconfig-002-20240928    gcc-14.1.0
parisc64                            defconfig    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
powerpc                          allyesconfig    clang-20
powerpc                          allyesconfig    gcc-14.1.0
powerpc                     asp8347_defconfig    clang-20
powerpc                      mgcoge_defconfig    clang-20
powerpc                      ppc6xx_defconfig    clang-20
powerpc               randconfig-001-20240928    gcc-14.1.0
powerpc               randconfig-002-20240928    gcc-14.1.0
powerpc               randconfig-003-20240928    gcc-14.1.0
powerpc                     tqm8540_defconfig    clang-20
powerpc64             randconfig-001-20240928    gcc-14.1.0
powerpc64             randconfig-002-20240928    gcc-14.1.0
powerpc64             randconfig-003-20240928    gcc-14.1.0
riscv                            allmodconfig    clang-20
riscv                            allmodconfig    gcc-14.1.0
riscv                             allnoconfig    gcc-14.1.0
riscv                            allyesconfig    clang-20
riscv                            allyesconfig    gcc-14.1.0
riscv                               defconfig    clang-20
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20240928    gcc-14.1.0
riscv                 randconfig-002-20240928    gcc-14.1.0
s390                             allmodconfig    clang-20
s390                             allmodconfig    gcc-14.1.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20240928    gcc-14.1.0
s390                  randconfig-002-20240928    gcc-14.1.0
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-12
sh                          kfr2r09_defconfig    clang-20
sh                    randconfig-001-20240928    gcc-14.1.0
sh                    randconfig-002-20240928    gcc-14.1.0
sh                   rts7751r2dplus_defconfig    clang-20
sh                           se7780_defconfig    clang-20
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20240928    gcc-14.1.0
sparc64               randconfig-002-20240928    gcc-14.1.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                               allyesconfig    clang-20
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20240928    gcc-14.1.0
um                    randconfig-002-20240928    gcc-14.1.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64      buildonly-randconfig-001-20240928    clang-18
x86_64      buildonly-randconfig-002-20240928    clang-18
x86_64      buildonly-randconfig-003-20240928    clang-18
x86_64      buildonly-randconfig-004-20240928    clang-18
x86_64      buildonly-randconfig-005-20240928    clang-18
x86_64      buildonly-randconfig-006-20240928    clang-18
x86_64                              defconfig    clang-18
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-18
x86_64                randconfig-001-20240928    clang-18
x86_64                randconfig-002-20240928    clang-18
x86_64                randconfig-003-20240928    clang-18
x86_64                randconfig-004-20240928    clang-18
x86_64                randconfig-005-20240928    clang-18
x86_64                randconfig-006-20240928    clang-18
x86_64                randconfig-011-20240928    clang-18
x86_64                randconfig-012-20240928    clang-18
x86_64                randconfig-013-20240928    clang-18
x86_64                randconfig-014-20240928    clang-18
x86_64                randconfig-015-20240928    clang-18
x86_64                randconfig-016-20240928    clang-18
x86_64                randconfig-071-20240928    clang-18
x86_64                randconfig-072-20240928    clang-18
x86_64                randconfig-073-20240928    clang-18
x86_64                randconfig-074-20240928    clang-18
x86_64                randconfig-075-20240928    clang-18
x86_64                randconfig-076-20240928    clang-18
x86_64                               rhel-8.3    gcc-12
x86_64                           rhel-8.3-bpf    clang-18
x86_64                         rhel-8.3-kunit    clang-18
x86_64                           rhel-8.3-ltp    clang-18
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0
xtensa                randconfig-001-20240928    gcc-14.1.0
xtensa                randconfig-002-20240928    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
