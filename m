Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D72ACD462B
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Dec 2025 22:58:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 209F24077B;
	Sun, 21 Dec 2025 21:58:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n0_vGospg92O; Sun, 21 Dec 2025 21:58:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5ACA24077F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766354302;
	bh=s9ahUyPwLF1+MXA2ErXXOZkYQqgfJsIjL/Oh8loO6RA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=uA2I5/a0HRYcsModYv/lQPBeFOO7+zDAzqpTn5ceHSwtzdQBZ3j2YO358f4ujDWDj
	 QIeT+gR92q8CR52qiT7QtG+89mfZ6FaGmKyYxqsQF22D3QTmJLrCiGbAnolGHSYDDS
	 0Fln2ZYW5/KaqYxSObUJOxKgZyEtZ8QiFRaZFddKK+M2iY0JRNvqwpcTTM7GgClOCe
	 oc530PvD9E4MbJjzsVOtXN1Y/Ye+VijucIU36nR4UaUH/Esy7PYKUCObCnshM0uinU
	 9uG0tAoHObIfKPZJO9u+d6I9BzcTrvIiv3vcLGhqp4LXG8mJ68O/vYUM8v62G6ziOc
	 gi3KrnRmXsM9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5ACA24077F;
	Sun, 21 Dec 2025 21:58:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 989D6119
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Dec 2025 21:58:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 89BB74008B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Dec 2025 21:58:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SLgQAV1X7SA5 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Dec 2025 21:58:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 414B140089
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 414B140089
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 414B140089
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Dec 2025 21:58:18 +0000 (UTC)
X-CSE-ConnectionGUID: VmxFiXtqSsyOFrr6VzA3UQ==
X-CSE-MsgGUID: 3Ra55XprSOiqg6weXdxe/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11649"; a="72079904"
X-IronPort-AV: E=Sophos;i="6.21,166,1763452800"; d="scan'208";a="72079904"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2025 13:58:18 -0800
X-CSE-ConnectionGUID: zbGSJmC8QhmtATbOMuxzkw==
X-CSE-MsgGUID: hqGGiC65TPGxaOv6UcAVBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,166,1763452800"; d="scan'208";a="203899616"
Received: from lkp-server01.sh.intel.com (HELO 0713df988ca2) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 21 Dec 2025 13:58:18 -0800
Received: from kbuild by 0713df988ca2 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vXRRO-000000000Dp-3OVz;
 Sun, 21 Dec 2025 21:58:14 +0000
Date: Mon, 22 Dec 2025 05:57:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202512220530.SgYRIL71-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766354299; x=1797890299;
 h=date:from:to:subject:message-id;
 bh=fC55SzxGRhy3uLJz2R4OkXBftfiwAxjbZUf3JcXTLOI=;
 b=PcIP0MKly4Lpue23bNYUJdb+psuSu4riUaobx5Hx8vhgMy+r80um6l+C
 PpMNb81V0v4WRByCQYc4jH/2RP/4ChxXXtquyb0gZki8gvOjuVCU1NEzc
 zDb+SihXRAbLOFPS90ReEdN2mH9fr35j8JSU2AfwlT+Afa5c7iVqrLz/R
 XAxpkUDya9FKOudbDeYOIWbP0jmLkhgfX84HuuRKeiUuTdqWBCNDspNZn
 kaBvdjE/Ctvc4LLaCzhDEtf95Z80bsy3LA/q+BFV+aDw3UzcVwt3Xssff
 3ZRAMWi8nSLSX781eLhE3zPA0X6vTRBPH+ak7EjwbUxUHYwvtDCSJH893
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PcIP0MKl
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 296f46823a8302fd8fe10f4329ecbe0593af4aec
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
branch HEAD: 296f46823a8302fd8fe10f4329ecbe0593af4aec  ixgbe: don't initialize aci lock in ixgbe_recovery_probe()

elapsed time: 3150m

configs tested: 65
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                           tb10x_defconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                       multi_v4t_defconfig    clang-16
arm64                            alldefconfig    gcc-15.1.0
arm64                             allnoconfig    gcc-15.1.0
csky                             allmodconfig    gcc-15.1.0
csky                              allnoconfig    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon               randconfig-001-20251222    clang-20
hexagon               randconfig-002-20251222    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20251221    gcc-14
i386        buildonly-randconfig-002-20251221    clang-20
i386        buildonly-randconfig-003-20251221    gcc-14
i386        buildonly-randconfig-004-20251221    gcc-14
i386        buildonly-randconfig-005-20251221    clang-20
i386        buildonly-randconfig-006-20251221    gcc-14
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20251222    clang-22
loongarch             randconfig-002-20251222    clang-18
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                             allyesconfig    gcc-15.1.0
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                 randconfig-001-20251222    gcc-10.5.0
nios2                 randconfig-002-20251222    gcc-8.5.0
openrisc                         allmodconfig    gcc-15.1.0
openrisc                          allnoconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                randconfig-002-20251222    gcc-10.5.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc               randconfig-002-20251222    gcc-8.5.0
riscv                             allnoconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20251222    gcc-8.5.0
sparc                 randconfig-002-20251222    gcc-15.1.0
sparc64                          allmodconfig    clang-22
sparc64               randconfig-001-20251222    clang-20
sparc64               randconfig-002-20251222    gcc-8.5.0
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                    randconfig-001-20251222    clang-22
um                    randconfig-002-20251222    clang-19
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251222    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
