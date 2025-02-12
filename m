Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F2BA32955
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 15:58:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33883417C1;
	Wed, 12 Feb 2025 14:58:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rKrhessSz2sV; Wed, 12 Feb 2025 14:58:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 251784061F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739372289;
	bh=ewC1/TUVbtt/AbrTl4LHxt3f7kb0TnBrjQjxKDB1i4k=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jjhd/vGPJQmwSj1fb3iSIh2ARbVgz5G3lSH0y+OpKJbkk2lYOftNnfVDhrH6bhY1d
	 mxlc7JvmNI8w12jMGk++73dbpqJsYO2rrIw3LxrRYB8fHET5Ssvv8409bSuwyhgdmo
	 yWcdnrHU+68fzaGe/o5UUi6KeXIIbEULcrhimhBatAepFVcO/nSJqLSDGTBBcQVHDE
	 oOIu6YPa6IG+s+kxEgwz8kxEE3aviDQ5Sbp/YtYNae1QrBz9jnWtch47T5N+yF45sp
	 B+b8SIqvZFxrDB56qI3tN5dLiEBpu71NbQFxTwtLKRmAY6zpEWn7lk2Rl5KfcjAida
	 K8/Vz/vsp22eA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 251784061F;
	Wed, 12 Feb 2025 14:58:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C24071C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 14:58:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 900BA41271
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 14:58:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B39YH_yd8T3x for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 14:58:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4C22F40F8B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C22F40F8B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4C22F40F8B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 14:58:04 +0000 (UTC)
X-CSE-ConnectionGUID: 37YIbbgJQti0bYU6HagTzA==
X-CSE-MsgGUID: U+mTpDXaRW2Ih4xcQ9tiVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39735684"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="39735684"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 06:58:04 -0800
X-CSE-ConnectionGUID: gz4PR/7BSquP136DrL+T3w==
X-CSE-MsgGUID: ZZjPvpHeRyWURGmtxvCoVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118020056"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 12 Feb 2025 06:58:03 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tiEBc-0015jh-31
 for intel-wired-lan@lists.osuosl.org; Wed, 12 Feb 2025 14:58:00 +0000
Date: Wed, 12 Feb 2025 22:57:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202502122244.r0dSEhu0-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739372285; x=1770908285;
 h=date:from:to:subject:message-id;
 bh=pRE1Rdq9E9Djdy+xpolkytji1/N23s3nXvobkrksyGo=;
 b=H04zLUzbvWX9NKqqFTBvWDmHrDlbDUcsftzJ6Fyivj5py5NIubwyvZrZ
 0tWZaA+xK9Bz9eR66bKLZYO5Gl181IL0LrTTX7L49+c+TlbScug6992RP
 THPJJomHBm2F+igcD1R1OBL08lhAtTditvFXiTD6dLwyF2oR8SL8w0FZd
 oxS5fqKfsuSR+Z1YyNCNuq5lRl5t9wULuofAGMzFmdf0+/Dl9ddlcFs7S
 e44+gh6pQxdAy1p8KYaLySCoDUoxNtKcOwrtdsqWED4iQU5ViB/MBYnod
 ilg2xkZVaPVPjVXKM61GW8QSpchhSsMYTdH6L6SvJOsO7AD/0l0LZoQvx
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=H04zLUzb
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 44ce3511c21c6ba87a719a0b9f140822cc1cc00b
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
branch HEAD: 44ce3511c21c6ba87a719a0b9f140822cc1cc00b  Merge tag 'batadv-net-pullrequest-20250207' of git://git.open-mesh.org/linux-merge

elapsed time: 1708m

configs tested: 86
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20250212    gcc-13.2.0
arc                   randconfig-002-20250212    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20250212    clang-18
arm                   randconfig-002-20250212    clang-16
arm                   randconfig-003-20250212    clang-21
arm                   randconfig-004-20250212    clang-16
arm64                            allmodconfig    clang-18
arm64                 randconfig-001-20250212    gcc-14.2.0
arm64                 randconfig-002-20250212    gcc-14.2.0
arm64                 randconfig-003-20250212    clang-16
arm64                 randconfig-004-20250212    gcc-14.2.0
csky                  randconfig-001-20250212    gcc-14.2.0
csky                  randconfig-002-20250212    gcc-14.2.0
hexagon                          allmodconfig    clang-21
hexagon                          allyesconfig    clang-18
hexagon               randconfig-001-20250212    clang-21
hexagon               randconfig-002-20250212    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250212    clang-19
i386        buildonly-randconfig-002-20250212    gcc-12
i386        buildonly-randconfig-003-20250212    gcc-12
i386        buildonly-randconfig-004-20250212    gcc-12
i386        buildonly-randconfig-005-20250212    gcc-12
i386        buildonly-randconfig-006-20250212    gcc-12
i386                                defconfig    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch             randconfig-001-20250212    gcc-14.2.0
loongarch             randconfig-002-20250212    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
nios2                 randconfig-001-20250212    gcc-14.2.0
nios2                 randconfig-002-20250212    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20250212    gcc-14.2.0
parisc                randconfig-002-20250212    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-16
powerpc               randconfig-001-20250212    gcc-14.2.0
powerpc               randconfig-002-20250212    clang-16
powerpc               randconfig-003-20250212    gcc-14.2.0
powerpc64             randconfig-001-20250212    clang-16
powerpc64             randconfig-002-20250212    gcc-14.2.0
powerpc64             randconfig-003-20250212    gcc-14.2.0
riscv                            allmodconfig    clang-21
riscv                            allyesconfig    clang-21
riscv                 randconfig-001-20250212    clang-21
riscv                 randconfig-002-20250212    clang-18
s390                             allmodconfig    clang-19
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250212    clang-15
s390                  randconfig-002-20250212    clang-17
sh                               allmodconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250212    gcc-14.2.0
sh                    randconfig-002-20250212    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                 randconfig-001-20250212    gcc-14.2.0
sparc                 randconfig-002-20250212    gcc-14.2.0
sparc64               randconfig-001-20250212    gcc-14.2.0
sparc64               randconfig-002-20250212    gcc-14.2.0
um                               allmodconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250212    clang-16
um                    randconfig-002-20250212    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250212    gcc-11
x86_64      buildonly-randconfig-002-20250212    clang-19
x86_64      buildonly-randconfig-003-20250212    clang-19
x86_64      buildonly-randconfig-004-20250212    clang-19
x86_64      buildonly-randconfig-005-20250212    gcc-12
x86_64      buildonly-randconfig-006-20250212    clang-19
x86_64                              defconfig    gcc-11
xtensa                randconfig-001-20250212    gcc-14.2.0
xtensa                randconfig-002-20250212    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
