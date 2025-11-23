Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAAEC7E125
	for <lists+intel-wired-lan@lfdr.de>; Sun, 23 Nov 2025 13:47:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4115D80F4C;
	Sun, 23 Nov 2025 12:47:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HLL5bLvTDyqL; Sun, 23 Nov 2025 12:47:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8674580EE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763902055;
	bh=Xu/2NBnROj/D8WEtcZhlyPgDVjo3/XoIbyVIHi5XDu4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BopCkNqB804jcjV+Uk/N6+2FnlxdXHELY0/BreWwXoGiPhxw448O7PdrViP3tPSna
	 ZGhGCOoEJi+ZaAB/0cM4DTks9Q0HSqBvhdZHUAZM5KR30bbC3u4+a/gd/u62KZ6PLw
	 yHOx50LezQrSJ8zfhaMnj4OQ7vjCMuqYINsC1WEw9TIh77D3lzjOXq/oLXnSOqxyA3
	 Gd1aTaaXO1lpLYwJ8/7Ri5Ru8wBjfq0j9++7wnuXg7FvD1WlZC8M0WXpyY78xdctiu
	 xWctFv/JujK2UHGQ3A4/t7uGgYIwHElNHius45ZMXRmJ9BLmVawWBb6e98v7F2/8jk
	 PRdl15O4AIrvQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8674580EE1;
	Sun, 23 Nov 2025 12:47:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3BC35158
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Nov 2025 12:47:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2285E80C87
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Nov 2025 12:47:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ujY_LcsY7f_S for <intel-wired-lan@lists.osuosl.org>;
 Sun, 23 Nov 2025 12:47:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F14AA80C9E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F14AA80C9E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F14AA80C9E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Nov 2025 12:47:31 +0000 (UTC)
X-CSE-ConnectionGUID: euv/GLfTStKr691OJEs9CA==
X-CSE-MsgGUID: 5E8LfcG3Tc6I1KQ7CwJh/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11622"; a="76610967"
X-IronPort-AV: E=Sophos;i="6.20,220,1758610800"; d="scan'208";a="76610967"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2025 04:47:31 -0800
X-CSE-ConnectionGUID: +GfgKhxWR9mewSyTLFSOHw==
X-CSE-MsgGUID: +e73UNzVRDWhhFD4KY7nkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,220,1758610800"; d="scan'208";a="191373703"
Received: from lkp-server01.sh.intel.com (HELO adf6d29aa8d9) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 23 Nov 2025 04:47:30 -0800
Received: from kbuild by adf6d29aa8d9 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vN9V1-0008Gl-2Z
 for intel-wired-lan@lists.osuosl.org; Sun, 23 Nov 2025 12:47:27 +0000
Date: Sun, 23 Nov 2025 20:47:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511232021.7CFWrCwO-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763902052; x=1795438052;
 h=date:from:to:subject:message-id;
 bh=E48m67Qm91n7LhduQCo/baYWg2z9NEmDbOuaSakpDcU=;
 b=J99Q8WFsjGYbftQhuoGxSvvD8i34sC2U7zsB21DmHklwY84xYao8k6vb
 EIWkiZI4TvyXdBVjZ/scF3Bm3XV4conntQx9vquWSHesP5E7Bj8ayYv1x
 /wPCQ5AqX3km9rvOc3qowN80J18Q6RvZz5OqzwRNlQA2tY+43cbxrtx9U
 D9BxNSctutEtImIhmJhB9yYluv7q9Vcwqmg4iUCqS6E/uEXYtOLedC2do
 Xxom+1YeoVYfrpNp3aasCT/U7sYZl1alULSr0sGP0pMhe+rdcdO+yzCsZ
 0m5nMGmkBoEIu7C2Bmz3P3RwcMV97Br3D6Vw3Jc3LIHIKC1E4o9Vh+DIG
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=J99Q8WFs
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 6228a4ab27f51d261f5693b9320d41122051f786
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
branch HEAD: 6228a4ab27f51d261f5693b9320d41122051f786  idpf: fix aux device unplugging when rdma is not supported by vport

elapsed time: 2236m

configs tested: 103
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                   randconfig-001-20251122    gcc-14.3.0
arc                   randconfig-002-20251122    gcc-9.5.0
arc                    vdk_hs38_smp_defconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                       aspeed_g5_defconfig    gcc-15.1.0
arm                   randconfig-001-20251122    clang-22
arm                   randconfig-002-20251122    clang-22
arm                   randconfig-003-20251122    clang-22
arm                   randconfig-004-20251122    gcc-12.5.0
arm                        realview_defconfig    clang-16
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251123    gcc-8.5.0
arm64                 randconfig-002-20251123    gcc-11.5.0
arm64                 randconfig-003-20251123    clang-22
arm64                 randconfig-004-20251123    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251123    gcc-15.1.0
csky                  randconfig-002-20251123    gcc-15.1.0
hexagon                           allnoconfig    clang-22
hexagon               randconfig-001-20251122    clang-22
hexagon               randconfig-002-20251122    clang-17
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20251123    clang-20
i386        buildonly-randconfig-002-20251123    clang-20
i386        buildonly-randconfig-003-20251123    gcc-14
i386        buildonly-randconfig-004-20251123    gcc-14
i386        buildonly-randconfig-005-20251123    clang-20
i386        buildonly-randconfig-006-20251123    gcc-14
i386                  randconfig-001-20251123    gcc-14
i386                  randconfig-002-20251123    gcc-14
i386                  randconfig-003-20251123    gcc-14
i386                  randconfig-004-20251123    gcc-14
i386                  randconfig-005-20251123    gcc-14
i386                  randconfig-006-20251123    clang-20
i386                  randconfig-007-20251123    gcc-14
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20251122    gcc-12.5.0
loongarch             randconfig-002-20251122    gcc-14.3.0
m68k                              allnoconfig    gcc-15.1.0
m68k                        m5407c3_defconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                       bmips_be_defconfig    gcc-15.1.0
mips                           xway_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                 randconfig-001-20251122    gcc-11.5.0
nios2                 randconfig-002-20251122    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251123    gcc-14.3.0
parisc                randconfig-002-20251123    gcc-14.3.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                 linkstation_defconfig    clang-20
powerpc               randconfig-001-20251123    clang-22
powerpc               randconfig-002-20251123    gcc-8.5.0
powerpc64             randconfig-001-20251123    clang-22
powerpc64             randconfig-002-20251123    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                               defconfig    clang-22
riscv                 randconfig-001-20251123    clang-20
riscv                 randconfig-002-20251123    gcc-8.5.0
s390                              allnoconfig    clang-22
s390                                defconfig    clang-22
s390                  randconfig-001-20251123    gcc-8.5.0
s390                  randconfig-002-20251123    clang-22
sh                                allnoconfig    gcc-15.1.0
sh                         ap325rxa_defconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20251123    gcc-12.5.0
sh                    randconfig-002-20251123    gcc-14.3.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251123    gcc-8.5.0
sparc                 randconfig-002-20251123    gcc-15.1.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251123    clang-22
sparc64               randconfig-002-20251123    clang-22
um                                allnoconfig    clang-22
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251123    gcc-14
um                    randconfig-002-20251123    gcc-14
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20251123    gcc-14
x86_64                randconfig-002-20251123    clang-20
x86_64                randconfig-003-20251123    clang-20
x86_64                randconfig-004-20251123    clang-20
x86_64                randconfig-005-20251123    clang-20
x86_64                randconfig-011-20251123    gcc-14
x86_64                randconfig-012-20251123    gcc-14
x86_64                randconfig-013-20251123    clang-20
x86_64                randconfig-014-20251123    gcc-14
x86_64                randconfig-015-20251123    gcc-14
x86_64                randconfig-016-20251123    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251123    gcc-14.3.0
xtensa                randconfig-002-20251123    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
