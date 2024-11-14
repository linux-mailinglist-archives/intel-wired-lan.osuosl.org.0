Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 739059C840A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 08:36:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 546CC60A4F;
	Thu, 14 Nov 2024 07:36:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EjVSpO_wRV7g; Thu, 14 Nov 2024 07:36:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C8A960A4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731569766;
	bh=lepG0HWG1kXl73jy82Pv2h+FJXeoDzVplIp8e1/2Tuw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wd3oVTCPFvrAEW7NpPUgd7WNt/9m2QnCVNzXPOLrTqme8ibjrACPEg/hoiiF+3lq1
	 PM+Uu3WjKa4wdoQSXrbGDwH38LKOEuav26YBfICQ1QZ4+sbpAVEeKyxv4zadaJsDrG
	 g9MkmLZagY47BbbkcV9tXnmrHO6wZEPEQNi6g94Ux/RyD933mfbFWWthRldQUOcIx2
	 9GZ79gtlbI76EZVp9sy+tKrmOJOMY7uKzec/1sc+a63cGhI615gcUXhBawDFbOaXYF
	 S1VDJKmhsiZq+l6jtJn8jL8Yw/srNL5MWiXIoxhtRmwX4yRbNWM72VCYnA8NRoQ/Pc
	 80ytuXlvQfqUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C8A960A4B;
	Thu, 14 Nov 2024 07:36:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2797CE2E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 07:36:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1638260A45
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 07:36:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QWa-jRKRUm-Z for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 07:36:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ED27560A48
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED27560A48
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ED27560A48
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 07:36:02 +0000 (UTC)
X-CSE-ConnectionGUID: ViNWTlH0TZG+v0rBt7JpwQ==
X-CSE-MsgGUID: uMZezV5fRra0yZcLV+sNaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="35203772"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="35203772"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 23:36:02 -0800
X-CSE-ConnectionGUID: LKqf1W2vT1G0Wmlkj/SOqQ==
X-CSE-MsgGUID: wZofUokGRiuNpwOReI4GLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,153,1728975600"; d="scan'208";a="88001924"
Received: from lkp-server01.sh.intel.com (HELO 8eed2ac03994) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 13 Nov 2024 23:36:01 -0800
Received: from kbuild by 8eed2ac03994 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tBUOU-00004Q-2c
 for intel-wired-lan@lists.osuosl.org; Thu, 14 Nov 2024 07:35:58 +0000
Date: Thu, 14 Nov 2024 15:34:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411141552.dLkplYkt-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731569763; x=1763105763;
 h=date:from:to:subject:message-id;
 bh=ns/Fg2HRs+1Qn9kT8wPWQeaQz5/PGTtji3AkEX8tkjs=;
 b=LONpUE3fkhw+/uy8jTqFS73JASPOQ5OF/+2mjEI2za0yqcTJ4Mv66ftf
 bTO1pmot9l1z2ez/eqHdcRPe3FJBiNRYDYFLJJfeK18as+xBXZqjYAWBS
 FBKXRzV7b99xAMbMmcGQAanxFgEVRXgbFlOtiB2HNVJBmRIHQGMasOKwo
 Z+ILX0H22Wde2D4E1yybYtvEUjPlAZ/TM4sF/q+J0J/BT8dvTaw91bYn3
 4P1/DvOUImvC9mnDb92UIFqR3lalqId2ZO5imhWofzl43CEYO7Ep5JmKu
 slPK/0UxeunznWD6PaU929uVgL+OjwOdhA2QgPuYAWRNvNsF5j/fWoRHQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LONpUE3f
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 e400c7444d84b0fd2ebb34e618f83abe05917543
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: e400c7444d84b0fd2ebb34e618f83abe05917543  e1000: Hold RTNL when e1000_down can be called

elapsed time: 742m

configs tested: 82
configs skipped: 20

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                   allnoconfig    gcc-14.2.0
alpha                  allyesconfig    gcc-14.2.0
arc                    allmodconfig    gcc-13.2.0
arc                     allnoconfig    gcc-13.2.0
arc                    allyesconfig    gcc-13.2.0
arc         randconfig-001-20241114    gcc-13.2.0
arc         randconfig-002-20241114    gcc-13.2.0
arm                    allmodconfig    gcc-14.2.0
arm                     allnoconfig    clang-20
arm                    allyesconfig    gcc-14.2.0
arm         randconfig-001-20241114    gcc-14.2.0
arm         randconfig-002-20241114    gcc-14.2.0
arm         randconfig-003-20241114    gcc-14.2.0
arm         randconfig-004-20241114    clang-14
arm64                  allmodconfig    clang-20
arm64                   allnoconfig    gcc-14.2.0
arm64       randconfig-001-20241114    clang-20
arm64       randconfig-002-20241114    gcc-14.2.0
arm64       randconfig-003-20241114    gcc-14.2.0
arm64       randconfig-004-20241114    gcc-14.2.0
csky                    allnoconfig    gcc-14.2.0
csky        randconfig-001-20241114    gcc-14.2.0
csky        randconfig-002-20241114    gcc-14.2.0
hexagon                allmodconfig    clang-20
hexagon                 allnoconfig    clang-20
hexagon                allyesconfig    clang-20
hexagon     randconfig-001-20241114    clang-20
hexagon     randconfig-002-20241114    clang-20
i386                   allmodconfig    gcc-12
i386                    allnoconfig    gcc-12
i386                   allyesconfig    gcc-12
i386                      defconfig    clang-19
loongarch              allmodconfig    gcc-14.2.0
loongarch               allnoconfig    gcc-14.2.0
loongarch   randconfig-001-20241114    gcc-14.2.0
loongarch   randconfig-002-20241114    gcc-14.2.0
m68k                   allmodconfig    gcc-14.2.0
m68k                    allnoconfig    gcc-14.2.0
m68k                   allyesconfig    gcc-14.2.0
microblaze             allmodconfig    gcc-14.2.0
microblaze              allnoconfig    gcc-14.2.0
microblaze             allyesconfig    gcc-14.2.0
mips                    allnoconfig    gcc-14.2.0
nios2                   allnoconfig    gcc-14.2.0
nios2       randconfig-001-20241114    gcc-14.2.0
nios2       randconfig-002-20241114    gcc-14.2.0
openrisc                allnoconfig    gcc-14.2.0
openrisc               allyesconfig    gcc-14.2.0
openrisc                  defconfig    gcc-14.2.0
parisc                 allmodconfig    gcc-14.2.0
parisc                  allnoconfig    gcc-14.2.0
parisc                 allyesconfig    gcc-14.2.0
parisc                    defconfig    gcc-14.2.0
parisc      randconfig-001-20241114    gcc-14.2.0
parisc      randconfig-002-20241114    gcc-14.2.0
powerpc                allmodconfig    gcc-14.2.0
powerpc                 allnoconfig    gcc-14.2.0
powerpc                allyesconfig    clang-20
powerpc     randconfig-001-20241114    gcc-14.2.0
powerpc     randconfig-002-20241114    clang-14
powerpc     randconfig-003-20241114    gcc-14.2.0
powerpc64   randconfig-001-20241114    gcc-14.2.0
powerpc64   randconfig-002-20241114    clang-20
riscv                  allmodconfig    clang-20
riscv                   allnoconfig    gcc-14.2.0
riscv                  allyesconfig    clang-20
s390                   allmodconfig    clang-20
s390                    allnoconfig    clang-20
s390                   allyesconfig    gcc-14.2.0
sh                     allmodconfig    gcc-14.2.0
sh                      allnoconfig    gcc-14.2.0
sh                     allyesconfig    gcc-14.2.0
sparc                  allmodconfig    gcc-14.2.0
um                     allmodconfig    clang-20
um                      allnoconfig    clang-17
um                     allyesconfig    gcc-12
x86_64                  allnoconfig    clang-19
x86_64                 allyesconfig    clang-19
x86_64                    defconfig    gcc-11
x86_64                        kexec    clang-19
x86_64                     rhel-8.3    gcc-12
xtensa                  allnoconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
