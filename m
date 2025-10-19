Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 706F8BEDD87
	for <lists+intel-wired-lan@lfdr.de>; Sun, 19 Oct 2025 03:09:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B7178224D;
	Sun, 19 Oct 2025 01:09:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LH6T0xloDka6; Sun, 19 Oct 2025 01:09:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DEAE82280
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760836175;
	bh=8iiLNwcFW1c/mzYrPKzNnkpffrbegOGq5gihbQVOZ+w=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oYnm1z0a9ykmYo55s+S+heNMSYuJhadwIZBnWP5Z0w4oKs4iE3Qx8WkQW+pq+9Jk7
	 0TZMpBx7fsEIUNcR/O9GL9QiUfBEr1Oy7kL03JIzErUIT6xssEY6KHkdhFx1XOuASB
	 wUmGeQhz2G5vvsQEYb70Zx6QhqljoCbrMcOu7vUSfR8aVMx+Vykr9n1o1gka+Y/txt
	 S5PtrTfgNJNGWnVDGP5cGU3lh1AVgni3qleKrZUxsJU31pxilS0f+PNhlbsd/X0/W6
	 /DKQpqGIxt4t6URF3h/Jt3kZucfdILxkErfrd446mf8uoHIbhlL0yCtGjMGD3ngi2j
	 MmOcxPiWFF3xg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DEAE82280;
	Sun, 19 Oct 2025 01:09:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id DCED11CD
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Oct 2025 01:09:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C2CCF610AB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Oct 2025 01:09:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gUjzHPeoMkWt for <intel-wired-lan@lists.osuosl.org>;
 Sun, 19 Oct 2025 01:09:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ADEB2610A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ADEB2610A7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ADEB2610A7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Oct 2025 01:09:32 +0000 (UTC)
X-CSE-ConnectionGUID: EJIh+TzZQ3Ca5X0JWg7RAg==
X-CSE-MsgGUID: Qn8d2YTZSnaq+7VivV9wHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74351220"
X-IronPort-AV: E=Sophos;i="6.19,239,1754982000"; d="scan'208";a="74351220"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2025 18:09:32 -0700
X-CSE-ConnectionGUID: pyscFzJvRbK6j3ytKUPGWA==
X-CSE-MsgGUID: Hoy6apfVQ9qUQ2Ty3PleJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,239,1754982000"; d="scan'208";a="183448713"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
 by fmviesa008.fm.intel.com with ESMTP; 18 Oct 2025 18:09:31 -0700
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vAHvN-0008jf-0t
 for intel-wired-lan@lists.osuosl.org; Sun, 19 Oct 2025 01:09:29 +0000
Date: Sun, 19 Oct 2025 09:08:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202510190948.OdjFrL72-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760836172; x=1792372172;
 h=date:from:to:subject:message-id;
 bh=7LmdQXsPl55JyBnohHbKcy8iFXon9ytZpSLUVDlheGM=;
 b=EaYd63/ISHovVp8GIlA4XlDJgD1cQfOQkrQ00j5XReDeQ+l9QcCiAlU6
 mbDI6OdFw96NAhbbuDIl/iPBz9EmoS5DbvkfLGOqyWG0kuINDPsqntDCF
 LazA8T4AskdFY5gMr/0ZdhFMxUsjqoLd/D91aN9BzgsZ2eb7EidHQGShm
 27IsZ8ET6IvdCj3XmocV9JadZOyBj+4MVA0kaIZGRWD8jD8ECVkknybjU
 qyO4P9AvicH2w4v2ekbbgYINls0jfMQ+pljA8AWyLmg+B/o7RoW/Pibiy
 pvezr8GdIQRKH/LWwIhXeEOHjd3XltZvwo2kh54+5Zne9VGjzUy6gmoGa
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EaYd63/I
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 092710597360795076542887c0eaa4e4722bb11f
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
branch HEAD: 092710597360795076542887c0eaa4e4722bb11f  libie: depend on DEBUG_FS when building LIBIE_FWLOG

elapsed time: 1446m

configs tested: 118
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                   randconfig-001-20251018    gcc-12.5.0
arc                   randconfig-002-20251018    gcc-8.5.0
arm                               allnoconfig    clang-22
arm                       aspeed_g4_defconfig    clang-22
arm                            hisi_defconfig    gcc-15.1.0
arm                   randconfig-001-20251018    clang-19
arm                   randconfig-002-20251018    clang-20
arm                   randconfig-003-20251018    clang-22
arm                   randconfig-004-20251018    gcc-15.1.0
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251018    gcc-8.5.0
arm64                 randconfig-002-20251018    clang-22
arm64                 randconfig-003-20251018    gcc-13.4.0
arm64                 randconfig-004-20251018    gcc-11.5.0
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20251018    gcc-9.5.0
csky                  randconfig-002-20251018    gcc-9.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20251018    clang-22
hexagon               randconfig-002-20251018    clang-22
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20251018    gcc-14
i386        buildonly-randconfig-002-20251018    gcc-14
i386        buildonly-randconfig-003-20251018    clang-20
i386        buildonly-randconfig-004-20251018    gcc-14
i386        buildonly-randconfig-005-20251018    clang-20
i386        buildonly-randconfig-006-20251018    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20251018    clang-22
loongarch             randconfig-002-20251018    gcc-13.4.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                          sun3x_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251018    gcc-11.5.0
nios2                 randconfig-002-20251018    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
openrisc                       virt_defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251018    gcc-10.5.0
parisc                randconfig-002-20251018    gcc-14.3.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                      katmai_defconfig    clang-22
powerpc               randconfig-001-20251018    clang-22
powerpc               randconfig-002-20251018    clang-22
powerpc               randconfig-003-20251018    gcc-14.3.0
powerpc                    socrates_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20251018    gcc-10.5.0
powerpc64             randconfig-002-20251018    gcc-12.5.0
powerpc64             randconfig-003-20251018    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                 randconfig-001-20251019    clang-19
riscv                 randconfig-002-20251019    gcc-11.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20251019    gcc-8.5.0
s390                  randconfig-002-20251019    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20251019    gcc-15.1.0
sh                    randconfig-002-20251019    gcc-15.1.0
sh                           se7619_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251019    gcc-11.5.0
sparc                 randconfig-002-20251019    gcc-13.4.0
sparc                       sparc32_defconfig    gcc-15.1.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251019    gcc-8.5.0
sparc64               randconfig-002-20251019    gcc-14.3.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                    randconfig-001-20251019    gcc-13
um                    randconfig-002-20251019    clang-22
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20251018    gcc-14
x86_64      buildonly-randconfig-002-20251018    gcc-14
x86_64      buildonly-randconfig-003-20251018    gcc-14
x86_64      buildonly-randconfig-004-20251018    gcc-14
x86_64      buildonly-randconfig-005-20251018    gcc-14
x86_64      buildonly-randconfig-006-20251018    clang-20
x86_64                              defconfig    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251019    gcc-14.3.0
xtensa                randconfig-002-20251019    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
