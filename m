Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A5EA6CCCF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Mar 2025 22:43:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3192D83B8D;
	Sat, 22 Mar 2025 21:43:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HIpY6D82s9Mm; Sat, 22 Mar 2025 21:43:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FE0483B8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742679780;
	bh=hHyb9vwhCwVxlvpC8e8OJscvKrflVSMxTE7Zogx9OIc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Vk/NceJiTxmBd1i+Rv6dUeqVx9b8cSKC93N1DFdGY4/5NSt4sxuSYDkl8kTexdO5d
	 WDe2tandNC7+PF6+zrozKOXrTOhg+YjfE46pdvFjeQwsL44awbOy1h9PyJRlTXpPJL
	 LvkDgPCpvsm85Y13VAq5wvSPf23Ji5QvWmZwKM1XCxoqC/476yVIJxe6Bibzlmp/LJ
	 CC2Z4ytnIPX7QMlJD3IlNKoJ0gf1wdCoY6BYStTvYKYAKVRmPbA/TRYm0jxEhfVr2P
	 v6cSFsAYMB0tB8EFEN56KZ13VDG6DWR+KTVEG963PzM6HT+8n1WrhcDtVzAgHWIGYE
	 sNoBvgcoew1ow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1FE0483B8E;
	Sat, 22 Mar 2025 21:43:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 76C73E2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Mar 2025 21:42:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A5C1340CD5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Mar 2025 21:42:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xXtxPrOwo4co for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Mar 2025 21:42:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B643D40CE6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B643D40CE6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B643D40CE6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Mar 2025 21:42:56 +0000 (UTC)
X-CSE-ConnectionGUID: sIZtg+kxSC6vwXO9j24+ag==
X-CSE-MsgGUID: W43MTi9STOm+PlrPen7bzQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11381"; a="44032592"
X-IronPort-AV: E=Sophos;i="6.14,268,1736841600"; d="scan'208";a="44032592"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2025 14:42:56 -0700
X-CSE-ConnectionGUID: e6EfLySCQhGodTkvevZ1Mg==
X-CSE-MsgGUID: 7AHKGBwVQzKBtQ0CdV5u0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,268,1736841600"; d="scan'208";a="123499242"
Received: from lkp-server02.sh.intel.com (HELO e98e3655d6d2) ([10.239.97.151])
 by fmviesa006.fm.intel.com with ESMTP; 22 Mar 2025 14:42:54 -0700
Received: from kbuild by e98e3655d6d2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tw6cG-0002Pz-1q
 for intel-wired-lan@lists.osuosl.org; Sat, 22 Mar 2025 21:42:52 +0000
Date: Sun, 23 Mar 2025 05:42:48 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202503230542.OkQ1FTVF-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742679777; x=1774215777;
 h=date:from:to:subject:message-id;
 bh=0aY5cOlK1FKr4RTOTqC9GE6CuFdqJ0qx2NOgMgyd+o4=;
 b=AiYUbVvKfs9bKT5kq18Um5fV6aR3ovOeFLzuIhblSLwoXJ76AO+dj6AZ
 3UVJ97+Pbuxgd1GcgqLL4e5V6GsJI+l+/4Kj/E7tHJE4xR78j+9Mw8Xku
 laziZxep8c/+F7ZmAgKJvzBiKXYJ2hzPcqUlQK1DNjsqca3XQ7OPeuZAa
 vJq418gyAN8KaqpYZ4WmKXr4qxPJ6sJxvxchPWc/SpPJQOZbBEW8tN9Qa
 b7LHcjKiE4IymHcUd0D04LSKHFZj3b+R5qzhN25iXXzyDq++EwAkelk9g
 bXkqzmyFiTJ7ci6yBABjRBTB3y4FpKxODE/aQS35lG8X4AKiWF+jfIniv
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AiYUbVvK
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 fab5ec4c830a4949f7a201bc75205c646b9b13d6
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
branch HEAD: fab5ec4c830a4949f7a201bc75205c646b9b13d6  idpf: fix adapter NULL pointer dereference on reboot

elapsed time: 1448m

configs tested: 83
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                           allyesconfig    gcc-14.2.0
arc                             allmodconfig    gcc-14.2.0
arc                             allyesconfig    gcc-14.2.0
arc                  randconfig-001-20250322    gcc-10.5.0
arc                  randconfig-002-20250322    gcc-8.5.0
arm                             allmodconfig    gcc-14.2.0
arm                             allyesconfig    gcc-14.2.0
arm                  randconfig-001-20250322    gcc-7.5.0
arm                  randconfig-002-20250322    gcc-7.5.0
arm                  randconfig-003-20250322    clang-21
arm                  randconfig-004-20250322    clang-19
arm64                           allmodconfig    clang-19
arm64                randconfig-001-20250322    clang-21
arm64                randconfig-002-20250322    clang-21
arm64                randconfig-003-20250322    gcc-8.5.0
arm64                randconfig-004-20250322    clang-21
csky                 randconfig-001-20250322    gcc-14.2.0
csky                 randconfig-002-20250322    gcc-14.2.0
hexagon                         allmodconfig    clang-17
hexagon                         allyesconfig    clang-21
hexagon              randconfig-001-20250322    clang-21
hexagon              randconfig-002-20250322    clang-21
i386                            allmodconfig    gcc-12
i386                             allnoconfig    gcc-12
i386       buildonly-randconfig-001-20250322    clang-20
i386       buildonly-randconfig-002-20250322    gcc-12
i386       buildonly-randconfig-003-20250322    gcc-12
i386       buildonly-randconfig-004-20250322    clang-20
i386       buildonly-randconfig-005-20250322    clang-20
i386       buildonly-randconfig-006-20250322    clang-20
i386                               defconfig    clang-20
loongarch                       allmodconfig    gcc-14.2.0
loongarch            randconfig-001-20250322    gcc-14.2.0
loongarch            randconfig-002-20250322    gcc-14.2.0
m68k                            allmodconfig    gcc-14.2.0
m68k                            allyesconfig    gcc-14.2.0
nios2                randconfig-001-20250322    gcc-6.5.0
nios2                randconfig-002-20250322    gcc-10.5.0
openrisc                        allyesconfig    gcc-14.2.0
parisc                          allmodconfig    gcc-14.2.0
parisc                          allyesconfig    gcc-14.2.0
parisc               randconfig-001-20250322    gcc-5.5.0
parisc               randconfig-002-20250322    gcc-13.3.0
powerpc                         allmodconfig    gcc-14.2.0
powerpc                         allyesconfig    clang-21
powerpc              randconfig-001-20250322    clang-21
powerpc              randconfig-002-20250322    gcc-8.5.0
powerpc              randconfig-003-20250322    clang-21
powerpc64            randconfig-001-20250322    clang-21
powerpc64            randconfig-002-20250322    gcc-8.5.0
powerpc64            randconfig-003-20250322    gcc-8.5.0
riscv                           allmodconfig    clang-21
riscv                           allyesconfig    clang-16
riscv                randconfig-001-20250322    gcc-8.5.0
riscv                randconfig-002-20250322    clang-21
s390                            allmodconfig    clang-18
s390                            allyesconfig    gcc-14.2.0
s390                 randconfig-001-20250322    gcc-9.3.0
s390                 randconfig-002-20250322    gcc-6.5.0
sh                              allmodconfig    gcc-14.2.0
sh                              allyesconfig    gcc-14.2.0
sh                   randconfig-001-20250322    gcc-10.5.0
sh                   randconfig-002-20250322    gcc-14.2.0
sparc                           allmodconfig    gcc-14.2.0
sparc                randconfig-001-20250322    gcc-9.3.0
sparc                randconfig-002-20250322    gcc-9.3.0
sparc64              randconfig-001-20250322    gcc-5.5.0
sparc64              randconfig-002-20250322    gcc-5.5.0
um                              allmodconfig    clang-19
um                              allyesconfig    gcc-12
um                   randconfig-001-20250322    clang-21
um                   randconfig-002-20250322    gcc-12
x86_64                           allnoconfig    clang-20
x86_64                          allyesconfig    clang-20
x86_64     buildonly-randconfig-001-20250322    clang-20
x86_64     buildonly-randconfig-002-20250322    clang-20
x86_64     buildonly-randconfig-003-20250322    clang-20
x86_64     buildonly-randconfig-004-20250322    gcc-12
x86_64     buildonly-randconfig-005-20250322    clang-20
x86_64     buildonly-randconfig-006-20250322    gcc-12
x86_64                             defconfig    gcc-11
xtensa               randconfig-001-20250322    gcc-14.2.0
xtensa               randconfig-002-20250322    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
