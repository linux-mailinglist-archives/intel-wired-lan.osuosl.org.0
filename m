Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8A29BA1C1
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Nov 2024 18:37:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C97094243E;
	Sat,  2 Nov 2024 17:37:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nHy9ZDgdW3ql; Sat,  2 Nov 2024 17:37:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 662E64246C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730569073;
	bh=FOwC+xhaNL/U+9Hm3ur4YlNsZjjHJLHKbDGv7P8xhnA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6mDMCNo8JLPske7WHBkqMKvq3wmDSZbTovjMGEBoP0a8+AvXEvSWVzEZ9O/YeGFkB
	 Dwa90WkTglb1PI3d0aT9hYBXCLlfd/IGdsTYCdEVrgoIYrIVXy4HxDM0Ir3qy0bONL
	 uLvNQAZvjnST2pEJxW8BcOWfsmZYQoNIMFVKqaFF5JymckvQyfF0i3ZtlxGtciB5+N
	 5uuCIYzu1KTQyT0jvl6Vm0rqj9RRJRAfM0IMGf+r/5OU09dpVjnT8Dk++FAWoDanOC
	 Mkch8bc/QJUvckMupuEz8vcm2EAYMxunCLVGBClK/jjQMOzUzXM3oVtcQFDBXlIGrp
	 95RXXtXILoMfA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 662E64246C;
	Sat,  2 Nov 2024 17:37:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5567C112A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Nov 2024 17:37:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 330EB61566
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Nov 2024 17:37:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QM_v-JwQzakE for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Nov 2024 17:37:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 33C7961563
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33C7961563
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 33C7961563
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Nov 2024 17:37:49 +0000 (UTC)
X-CSE-ConnectionGUID: 77wLldrGQo+yQbswnmJWSQ==
X-CSE-MsgGUID: x4z7DVG3R+KnKFmJo6UuZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11244"; a="55707426"
X-IronPort-AV: E=Sophos;i="6.11,253,1725346800"; d="scan'208";a="55707426"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2024 10:37:48 -0700
X-CSE-ConnectionGUID: /jSzFT8sQ3eAzeNZv0nsYw==
X-CSE-MsgGUID: jc45k+CgSQ2HI//pCdqt/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,253,1725346800"; d="scan'208";a="83161790"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 02 Nov 2024 10:37:48 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t7I4H-000jDV-1f
 for intel-wired-lan@lists.osuosl.org; Sat, 02 Nov 2024 17:37:45 +0000
Date: Sun, 03 Nov 2024 01:37:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411030110.z61VWRjN-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730569070; x=1762105070;
 h=date:from:to:subject:message-id;
 bh=X1ZhcfLf0GCG+tPW8DjvUjTJpmIxUPNYAhnFT1Q5+PQ=;
 b=U2ZZauzRg+ptK9/DW21EwHLKOd1PTKmy3U1gKZNf5I8xT//mIZrrNVR8
 /rBSIrJS1J9VSIuLj6IAoP/gUTZVMIQl+lD51cYyaZqIhXImrtxgMpYPH
 8GY1NMPsRbU0AgBWMevY3qvQ/XpK9occ6j/NW/BCxZwRRNfZZpkFE+esT
 REquKMqswdiRVC0qy4vImxuwYTj1DFGA7WEorAicNbnVCrW8zOGa8OZ88
 LW8K5AOhZ3UEwzYNWQtsQVFaWnSiAwoOYInHnHAzZ4dW5lHBIOZLknTl7
 tJFJj/5iUZI9YuVgmMDTqw9jwo86wlPocCXLiAlRBmbtkrVsMR+9BDwr2
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=U2ZZauzR
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 b39357a112f209ff46026e91dedc98570e1d3c75
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
branch HEAD: b39357a112f209ff46026e91dedc98570e1d3c75  igc: Link queues to NAPI instances

elapsed time: 1116m

configs tested: 88
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                    allnoconfig    gcc-13.3.0
alpha                    allnoconfig    gcc-14.1.0
alpha                   allyesconfig    clang-20
arc                     allmodconfig    clang-20
arc                      allnoconfig    gcc-13.2.0
arc                      allnoconfig    gcc-14.1.0
arc                     allyesconfig    clang-20
arc                  tb10x_defconfig    gcc-14.1.0
arm                     allmodconfig    clang-20
arm                      allnoconfig    clang-20
arm                      allnoconfig    gcc-14.1.0
arm                     allyesconfig    clang-20
arm              aspeed_g5_defconfig    gcc-14.1.0
arm             footbridge_defconfig    gcc-14.1.0
arm              multi_v4t_defconfig    gcc-14.1.0
arm                orion5x_defconfig    gcc-14.1.0
arm              versatile_defconfig    gcc-14.1.0
arm64                   allmodconfig    clang-20
arm64                    allnoconfig    gcc-14.1.0
csky                     allnoconfig    gcc-14.1.0
hexagon                 allmodconfig    clang-20
hexagon                  allnoconfig    clang-20
hexagon                  allnoconfig    gcc-14.1.0
hexagon                 allyesconfig    clang-20
i386                    allmodconfig    clang-19
i386                    allmodconfig    gcc-12
i386                     allnoconfig    clang-19
i386                     allnoconfig    gcc-12
i386                    allyesconfig    clang-19
i386                    allyesconfig    gcc-12
i386                       defconfig    clang-19
loongarch               alldefconfig    gcc-14.1.0
loongarch               allmodconfig    gcc-14.1.0
loongarch                allnoconfig    gcc-14.1.0
m68k                    allmodconfig    gcc-14.1.0
m68k                     allnoconfig    gcc-14.1.0
m68k                    allyesconfig    gcc-14.1.0
microblaze              allmodconfig    gcc-14.1.0
microblaze               allnoconfig    gcc-14.1.0
microblaze              allyesconfig    gcc-14.1.0
mips                     allnoconfig    gcc-14.1.0
nios2                    allnoconfig    gcc-14.1.0
openrisc                 allnoconfig    clang-20
openrisc                allyesconfig    gcc-14.1.0
openrisc                   defconfig    gcc-12
parisc                  allmodconfig    gcc-14.1.0
parisc                   allnoconfig    clang-20
parisc                  allyesconfig    gcc-14.1.0
parisc                     defconfig    gcc-12
powerpc                 allmodconfig    gcc-14.1.0
powerpc                  allnoconfig    clang-20
powerpc                 allyesconfig    gcc-14.1.0
powerpc              maple_defconfig    gcc-14.1.0
powerpc             ppc6xx_defconfig    gcc-14.1.0
powerpc         storcenter_defconfig    gcc-14.1.0
riscv                   allmodconfig    gcc-14.1.0
riscv                    allnoconfig    clang-20
riscv                   allyesconfig    gcc-14.1.0
riscv                      defconfig    gcc-12
s390                    allmodconfig    clang-20
s390                    allmodconfig    gcc-14.1.0
s390                     allnoconfig    clang-20
s390                    allyesconfig    gcc-14.1.0
s390                       defconfig    gcc-12
sh                      allmodconfig    gcc-14.1.0
sh                       allnoconfig    gcc-14.1.0
sh                      allyesconfig    gcc-14.1.0
sh                         defconfig    gcc-12
sh                      j2_defconfig    gcc-14.1.0
sh                  se7206_defconfig    gcc-14.1.0
sh          sh7724_generic_defconfig    gcc-14.1.0
sh               sh7757lcr_defconfig    gcc-14.1.0
sparc                   allmodconfig    gcc-14.1.0
sparc64                    defconfig    gcc-12
um                      allmodconfig    clang-20
um                       allnoconfig    clang-20
um                      allyesconfig    clang-20
um                         defconfig    gcc-12
um                    i386_defconfig    gcc-12
um                  x86_64_defconfig    gcc-12
x86_64                   allnoconfig    clang-19
x86_64                  allyesconfig    clang-19
x86_64                     defconfig    clang-19
x86_64                     defconfig    gcc-11
x86_64                         kexec    clang-19
x86_64                         kexec    gcc-12
x86_64                      rhel-8.3    gcc-12
xtensa                   allnoconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
