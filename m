Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D78889EFCD3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2024 20:56:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D8DA78462D;
	Thu, 12 Dec 2024 19:56:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 21F2mFgNGwWn; Thu, 12 Dec 2024 19:56:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DAF26845F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734033373;
	bh=hATVOAzznSzWyXUGTZjIW6MS7yOd0e0dHjvj2G0TKAc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TRrVCxAtlr1vPhkb2RmUesuKClFLuqZvg6IlfHsMA6F38iy20ZFrLj5Q+5D1OGGqr
	 OmUegdcZ4R7jIjP5d+SmALjUQXbsQaCdZx4yXHCS4altv8utXTtOd0W7Bi/oMsu3pm
	 fM55sCHV8gZzAM4nVr09E0PO/ckWyntqsUClyFM4u3nRkQ8AMvcaAJclr/ChQFt0Oz
	 gJmsdjomRwXrmc7CTchovj7Pn61aO+u2Z2Eezd7XmcyFJmfdyOqTQfLuICWSb5OVpD
	 T1RaWI7dCyVrM6ZIDWcHV8ZVD7lF/7HETHAURpMLYA0kHOHYf8CHY55VKh2ijj4Xmu
	 nvVDjTRC+kz5g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DAF26845F4;
	Thu, 12 Dec 2024 19:56:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 130CB114A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 19:56:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E2F75845DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 19:56:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0y59yvtSH6JC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2024 19:56:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 911E4845D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 911E4845D5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 911E4845D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 19:56:10 +0000 (UTC)
X-CSE-ConnectionGUID: ge82DRjTS7yPQtE5lkErKQ==
X-CSE-MsgGUID: pzXch+ZgRmGQpsbc7AJxUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="56944643"
X-IronPort-AV: E=Sophos;i="6.12,229,1728975600"; d="scan'208";a="56944643"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 11:56:10 -0800
X-CSE-ConnectionGUID: 3sPQj5JaRPCqPVMTaZFjhQ==
X-CSE-MsgGUID: X4qF85G/SOSwDKs145m35w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,229,1728975600"; d="scan'208";a="101358895"
Received: from lkp-server01.sh.intel.com (HELO 82a3f569d0cb) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 12 Dec 2024 11:56:09 -0800
Received: from kbuild by 82a3f569d0cb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tLpI6-000BH0-1v
 for intel-wired-lan@lists.osuosl.org; Thu, 12 Dec 2024 19:56:06 +0000
Date: Fri, 13 Dec 2024 03:55:18 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202412130312.kpTWZdOc-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734033371; x=1765569371;
 h=date:from:to:subject:message-id;
 bh=E/Pdbk6F1/6388T5IaOEWOP3wEjJ6S5DLUzbIyfbghM=;
 b=klyb+X5fUGLP/p1BVUjluSAXmP+PfDZdXrxK5jF51RWwBD4Kva22C8w2
 0KVFPZt5MYnL+R7aQKpsnYUB8JxGX5aQpTxY3HbxbpnXJmZGrpvCQ1BO7
 3aPlxHkvCXtQT2VY92fbEgyhgivVJkuWU0P6LgFXzHjY3ducKGkD7ljBo
 NZTUkkA0s8/0Oz5L3a2d0Nf9D/rRQzN9UDfL3xJuCj7Y8yTZuOE2KHjIo
 lj/sF9G5BipS8vqDxKowfTlyvlUyvaZtNwPhisuqlEHwFhy9SwRU8JvQZ
 QG0v2i9T0YS4nhdykeUbcdPaJBDZrDQdMGOuwbdYPbTTJhlC84fz1iQni
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=klyb+X5f
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 3dd002f20098b9569f8fd7f8703f364571e2e975
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
branch HEAD: 3dd002f20098b9569f8fd7f8703f364571e2e975  net: renesas: rswitch: handle stop vs interrupt race

elapsed time: 2394m

configs tested: 91
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
arc                             allmodconfig    gcc-13.2.0
arc                             allyesconfig    gcc-13.2.0
arc                  randconfig-001-20241212    gcc-13.2.0
arc                  randconfig-002-20241212    gcc-13.2.0
arm                             allmodconfig    gcc-14.2.0
arm                             allyesconfig    gcc-14.2.0
arm                  randconfig-001-20241212    gcc-14.2.0
arm                  randconfig-002-20241212    clang-20
arm                  randconfig-003-20241212    clang-19
arm                  randconfig-004-20241212    clang-20
arm64                           allmodconfig    clang-18
arm64                randconfig-001-20241212    clang-20
arm64                randconfig-002-20241212    clang-15
arm64                randconfig-003-20241212    clang-20
arm64                randconfig-004-20241212    gcc-14.2.0
csky                 randconfig-001-20241212    gcc-14.2.0
csky                 randconfig-002-20241212    gcc-14.2.0
hexagon              randconfig-001-20241212    clang-14
hexagon              randconfig-002-20241212    clang-16
i386                            allmodconfig    clang-19
i386                             allnoconfig    clang-19
i386                            allyesconfig    clang-19
i386       buildonly-randconfig-001-20241211    clang-19
i386       buildonly-randconfig-001-20241212    clang-19
i386       buildonly-randconfig-002-20241211    gcc-11
i386       buildonly-randconfig-002-20241212    clang-19
i386       buildonly-randconfig-003-20241211    clang-19
i386       buildonly-randconfig-003-20241212    clang-19
i386       buildonly-randconfig-004-20241211    gcc-11
i386       buildonly-randconfig-004-20241212    clang-19
i386       buildonly-randconfig-005-20241211    gcc-12
i386       buildonly-randconfig-005-20241212    clang-19
i386       buildonly-randconfig-006-20241211    clang-19
i386       buildonly-randconfig-006-20241212    gcc-12
i386                               defconfig    clang-19
loongarch            randconfig-001-20241212    gcc-14.2.0
loongarch            randconfig-002-20241212    gcc-14.2.0
m68k                            allmodconfig    gcc-14.2.0
m68k                            allyesconfig    gcc-14.2.0
nios2                randconfig-001-20241212    gcc-14.2.0
nios2                randconfig-002-20241212    gcc-14.2.0
parisc               randconfig-001-20241212    gcc-14.2.0
parisc               randconfig-002-20241212    gcc-14.2.0
powerpc              randconfig-001-20241212    gcc-14.2.0
powerpc              randconfig-002-20241212    clang-20
powerpc              randconfig-003-20241212    clang-15
powerpc64            randconfig-001-20241212    clang-20
powerpc64            randconfig-002-20241212    gcc-14.2.0
powerpc64            randconfig-003-20241212    gcc-14.2.0
riscv                randconfig-001-20241212    clang-17
riscv                randconfig-002-20241212    clang-20
s390                            allmodconfig    clang-19
s390                            allyesconfig    gcc-14.2.0
s390                 randconfig-001-20241212    clang-18
s390                 randconfig-002-20241212    clang-20
sh                              allmodconfig    gcc-14.2.0
sh                              allyesconfig    gcc-14.2.0
sh                   randconfig-001-20241212    gcc-14.2.0
sh                   randconfig-002-20241212    gcc-14.2.0
sparc                           allmodconfig    gcc-14.2.0
sparc                randconfig-001-20241212    gcc-14.2.0
sparc                randconfig-002-20241212    gcc-14.2.0
sparc64              randconfig-001-20241212    gcc-14.2.0
sparc64              randconfig-002-20241212    gcc-14.2.0
um                   randconfig-001-20241212    gcc-12
um                   randconfig-002-20241212    clang-20
x86_64                           allnoconfig    clang-19
x86_64                          allyesconfig    clang-19
x86_64     buildonly-randconfig-001-20241212    clang-19
x86_64     buildonly-randconfig-002-20241212    gcc-12
x86_64     buildonly-randconfig-003-20241212    clang-19
x86_64     buildonly-randconfig-004-20241212    clang-19
x86_64     buildonly-randconfig-005-20241212    gcc-11
x86_64     buildonly-randconfig-006-20241212    clang-19
x86_64                             defconfig    clang-19
x86_64                                 kexec    clang-19
x86_64               randconfig-001-20241212    clang-19
x86_64               randconfig-002-20241212    clang-19
x86_64               randconfig-003-20241212    clang-19
x86_64               randconfig-004-20241212    clang-19
x86_64               randconfig-005-20241212    clang-19
x86_64               randconfig-006-20241212    clang-19
x86_64               randconfig-007-20241212    clang-19
x86_64               randconfig-008-20241212    clang-19
x86_64                              rhel-9.4    clang-19
x86_64                          rhel-9.4-bpf    clang-19
x86_64                        rhel-9.4-kunit    clang-19
x86_64                          rhel-9.4-ltp    clang-19
x86_64                         rhel-9.4-rust    clang-19
xtensa               randconfig-001-20241212    gcc-14.2.0
xtensa               randconfig-002-20241212    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
