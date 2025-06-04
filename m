Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F02ACE1EA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Jun 2025 18:06:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E34A9615AE;
	Wed,  4 Jun 2025 16:06:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IjrBu0ppXqci; Wed,  4 Jun 2025 16:06:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E023861548
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749053181;
	bh=i576AweJUMsDfxFlARFEXqnjurRT9uvTduOS8DJJn4A=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wAF8Wudw/3JDyzop1KM89B/03s5RGTeTUD43MrHZ35GwY5Q5Vp1jThFNTSCylO6/w
	 tYH8lz0a90nDgBFCp8CmXmUDktCCI/uwNs3TGytCDIL5ntHwlpb7mxTTtWJVlu+4Ke
	 vTW0MCEPvwiSazZYFls8tYYc+FpkKvxCzfyor3Zez5ItgszfqROtnyZrIs1/dFz1OO
	 QM0k0jHfim5SrhKC1J4YEUDBGjTr1cjsof5E/Y+MA0yyQIv7knDjLqQN/VTygAJTcM
	 hXB6oQC7QMUfxZcRl509OLYDYSFE9WNMbYuRby8nqXSVR1ucldhyEsFoDWvyuUFO4K
	 X8Q3idd9QZCYA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E023861548;
	Wed,  4 Jun 2025 16:06:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D44711A6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 16:06:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C4DDD80C03
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 16:06:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id REcZnewMUKsL for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Jun 2025 16:06:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DE0EE80BF3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE0EE80BF3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DE0EE80BF3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 16:06:19 +0000 (UTC)
X-CSE-ConnectionGUID: dycLFDGwTN+rW/5xGJPzqw==
X-CSE-MsgGUID: H5ZAO6Q0QCyk70BrrkeDlw==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="76539945"
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="76539945"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 08:58:08 -0700
X-CSE-ConnectionGUID: VAtHiYl1QWylJzvMz9PVjw==
X-CSE-MsgGUID: Hi96UixuRR2d4O8Fw/jeqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="150022626"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 04 Jun 2025 08:58:07 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uMqVA-0003Gj-29
 for intel-wired-lan@lists.osuosl.org; Wed, 04 Jun 2025 15:58:04 +0000
Date: Wed, 04 Jun 2025 23:57:41 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506042331.r3pOnR94-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749053180; x=1780589180;
 h=date:from:to:subject:message-id;
 bh=o/YPJq9kyffbdUjj0t9sPCFnt0UWbe1eRDP5qH71GVI=;
 b=h6S9yzwGv8qUi6dAh520eS9MBUYa4ff6fgUuymq4gAvDJk4ywuPSKxCG
 qs4ZqbxU6H3SR4pSy7nzDO6l2dKz43QKPk42khn0JbWi8gHMBx8cZcHly
 VN+O+L1xaea9t77DYVHOIcDeWasbjBYFGe4AmSLHi2jtP0iIBPMRHZiN0
 aMUUhykcu5pWjR3hrMIPVnMMzd8rRhk1sBTQ40gfvOokVMRnmlhl/Y5tJ
 LEeigdtBFldXBGJCZIy66+x5P83rmZXc9gMMM8Mtsta6Ny2iSWMSN2QgI
 i4H3RFiS+W5xfHPKHoWGOrgqysBPtrNdIer6NuNhetntBkRDYKlVJfXeY
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=h6S9yzwG
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 b56bbaf8c9ffe02468f6ba8757668e95dda7e62c
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
branch HEAD: b56bbaf8c9ffe02468f6ba8757668e95dda7e62c  Merge branch 'net-airoha-fix-ipv6-hw-acceleration'

elapsed time: 1670m

configs tested: 67
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                  allyesconfig    gcc-15.1.0
arc                    allmodconfig    clang-19
arc                    allmodconfig    gcc-15.1.0
arc                    allyesconfig    clang-19
arc                    allyesconfig    gcc-15.1.0
arm                    allmodconfig    clang-19
arm                    allmodconfig    gcc-15.1.0
arm                    allyesconfig    clang-19
arm                    allyesconfig    gcc-15.1.0
arm64                  allmodconfig    clang-19
hexagon                allmodconfig    clang-17
hexagon                allyesconfig    clang-21
i386                   allmodconfig    clang-20
i386                   allmodconfig    gcc-12
i386                    allnoconfig    clang-20
i386                    allnoconfig    gcc-12
i386                   allyesconfig    clang-20
i386                   allyesconfig    gcc-12
i386                      defconfig    clang-20
i386        randconfig-001-20250604    clang-20
i386        randconfig-002-20250604    clang-20
i386        randconfig-003-20250604    clang-20
i386        randconfig-004-20250604    clang-20
i386        randconfig-005-20250604    clang-20
i386        randconfig-006-20250604    clang-20
i386        randconfig-007-20250604    clang-20
i386        randconfig-011-20250604    gcc-12
i386        randconfig-012-20250604    gcc-12
i386        randconfig-013-20250604    gcc-12
i386        randconfig-014-20250604    gcc-12
i386        randconfig-015-20250604    gcc-12
i386        randconfig-016-20250604    gcc-12
i386        randconfig-017-20250604    gcc-12
loongarch              allmodconfig    gcc-15.1.0
m68k                   allmodconfig    gcc-15.1.0
m68k                   allyesconfig    gcc-15.1.0
microblaze             allmodconfig    gcc-15.1.0
microblaze             allyesconfig    gcc-15.1.0
openrisc                allnoconfig    clang-21
openrisc               allyesconfig    gcc-15.1.0
parisc                 allmodconfig    gcc-15.1.0
parisc                  allnoconfig    clang-21
parisc                 allyesconfig    gcc-15.1.0
powerpc                allmodconfig    gcc-15.1.0
powerpc                 allnoconfig    clang-21
powerpc                allyesconfig    clang-21
riscv                  allmodconfig    clang-21
riscv                   allnoconfig    clang-21
riscv                  allyesconfig    clang-16
s390                   allmodconfig    clang-18
s390                   allmodconfig    gcc-15.1.0
s390                    allnoconfig    clang-21
s390                   allyesconfig    gcc-15.1.0
sh                     allmodconfig    gcc-15.1.0
sh                     allyesconfig    gcc-15.1.0
sparc                  allmodconfig    gcc-15.1.0
um                     allmodconfig    clang-19
um                      allnoconfig    clang-21
um                     allyesconfig    gcc-12
x86_64                  allnoconfig    clang-20
x86_64                 allyesconfig    clang-20
x86_64                    defconfig    clang-20
x86_64                    defconfig    gcc-11
x86_64                        kexec    clang-20
x86_64                     rhel-9.4    clang-20
x86_64                rhel-9.4-rust    clang-18
x86_64                rhel-9.4-rust    clang-20

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
