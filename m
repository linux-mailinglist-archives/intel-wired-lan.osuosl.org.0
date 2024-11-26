Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 441649D9A8E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Nov 2024 16:41:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D95E405A2;
	Tue, 26 Nov 2024 15:41:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GlZvV9Q7EMnc; Tue, 26 Nov 2024 15:41:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 176EE40604
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732635703;
	bh=vgwTgDcVR9tzHWa91QU3au6U8pXZtgufvNLa5707ETI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=op8CACFHPqulFcwS882soz3RUhCF8Nhccwv+pUtAztb9+rmWwqBbFKP3Z2yC38qFN
	 6keiRyUONtnP/Z4oXptgPdADcXCH5323Fe2YWQnFCVhytcuL/OmZJkPc6Og5jiG3eR
	 zWdCgwXhv6URlCYhyg2FaoT+CyBySwm9vkk8EK/uytXAo11F82mGjgUZ++tXkXdI5N
	 dfDZspNyyPh+U6VUG2sdcUFBLtAgE8ZGxvVFo1V1izwQMvb1eI6993TEq2qiBF8JvP
	 Xpce4c4t5BUyDL6ks1j/4YVB3T/ws7dwsDNjpwqmBGoXng195KSusNpKFT3Rz7QcdP
	 EICa8EXcxZGHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 176EE40604;
	Tue, 26 Nov 2024 15:41:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 47859DB3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 15:41:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 287F06F7D7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 15:41:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hiM5T0bbVwBU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Nov 2024 15:41:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CCF66607E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CCF66607E8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CCF66607E8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 15:41:39 +0000 (UTC)
X-CSE-ConnectionGUID: xm7WP99QQrGvMD9xsDwEYg==
X-CSE-MsgGUID: I70Hr9XDSjSaMuACOjN0dA==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="32962442"
X-IronPort-AV: E=Sophos;i="6.12,186,1728975600"; d="scan'208";a="32962442"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 07:41:39 -0800
X-CSE-ConnectionGUID: alTwKv1oT/m9VKx0ErWrxw==
X-CSE-MsgGUID: 7pnYMjzrQxWyXgflIS/Eaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,186,1728975600"; d="scan'208";a="92064063"
Received: from lkp-server01.sh.intel.com (HELO 8122d2fc1967) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 26 Nov 2024 07:41:37 -0800
Received: from kbuild by 8122d2fc1967 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tFxh1-0007NN-1R
 for intel-wired-lan@lists.osuosl.org; Tue, 26 Nov 2024 15:41:35 +0000
Date: Tue, 26 Nov 2024 23:39:47 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411262337.9zX5EeWc-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732635700; x=1764171700;
 h=date:from:to:subject:message-id;
 bh=DOwHhPNvxERfI60qeJPXyV0i7EU6Of8NmFj1kQwc0Sg=;
 b=PbODgqjgAON0Kaf0HOBcnGbDkv5lETtfx9pbdAWdTgZDBbDG8kGEiA8a
 27O/5Dwz74XqFVhrsx6Amfz7koHHIzSKXOgjnpvG+oLv5Misyj8KqcCNe
 31LzsZFcPLNoy7Ram3w+rLWz6gRfaNi5MxKonDALk/laPFylfofxaSoE4
 qkFjttloVT41pVmhFFpUIpswRr1ukPUc2TZ0CKN3aw/w+3viYx7XyCgry
 sgQ2OMxsOSnY34oQJeE4NAXfNF43vkhE3WA0OLMT+3XjYE6bgwvBzpGvY
 BR/eZgArit+f5gOa2L4rxaQ8GiVPC2LmBm3PtsBgu60x9gWOxMsuCeGhv
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PbODgqjg
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 be9bc5f29544142931d3958e972623a1db595af4
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
branch HEAD: be9bc5f29544142931d3958e972623a1db595af4  idpf: add read memory barrier when checking descriptor done bit

elapsed time: 1035m

configs tested: 112
configs skipped: 19

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                         haps_hs_defconfig    gcc-13.2.0
arc                        vdk_hs38_defconfig    gcc-13.2.0
arm                               allnoconfig    clang-20
arm                              allyesconfig    gcc-14.2.0
arm                          ep93xx_defconfig    clang-14
arm                             pxa_defconfig    clang-14
arm                           sama7_defconfig    clang-20
arm                         vf610m4_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-20
i386        buildonly-randconfig-001-20241126    gcc-12
i386        buildonly-randconfig-002-20241126    gcc-12
i386        buildonly-randconfig-003-20241126    clang-19
i386        buildonly-randconfig-003-20241126    gcc-12
i386        buildonly-randconfig-004-20241126    gcc-12
i386        buildonly-randconfig-005-20241126    clang-19
i386        buildonly-randconfig-005-20241126    gcc-12
i386        buildonly-randconfig-006-20241126    gcc-12
i386                  randconfig-001-20241126    gcc-12
i386                  randconfig-002-20241126    gcc-12
i386                  randconfig-003-20241126    gcc-12
i386                  randconfig-004-20241126    gcc-11
i386                  randconfig-004-20241126    gcc-12
i386                  randconfig-005-20241126    clang-19
i386                  randconfig-005-20241126    gcc-12
i386                  randconfig-006-20241126    clang-19
i386                  randconfig-006-20241126    gcc-12
i386                  randconfig-011-20241126    clang-19
i386                  randconfig-011-20241126    gcc-12
i386                  randconfig-012-20241126    clang-19
i386                  randconfig-012-20241126    gcc-12
i386                  randconfig-013-20241126    clang-19
i386                  randconfig-013-20241126    gcc-12
i386                  randconfig-014-20241126    gcc-12
i386                  randconfig-015-20241126    clang-19
i386                  randconfig-015-20241126    gcc-12
i386                  randconfig-016-20241126    clang-19
i386                  randconfig-016-20241126    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
m68k                             alldefconfig    clang-14
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                       m5275evb_defconfig    gcc-14.2.0
m68k                           sun3_defconfig    clang-20
m68k                          sun3x_defconfig    clang-14
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                          ath79_defconfig    clang-14
mips                         db1xxx_defconfig    clang-20
mips                           jazz_defconfig    clang-20
mips                           xway_defconfig    clang-14
nios2                             allnoconfig    gcc-14.2.0
openrisc                          allnoconfig    clang-20
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-20
powerpc                          allyesconfig    gcc-14.2.0
powerpc                   currituck_defconfig    clang-20
powerpc                 mpc837x_rdb_defconfig    gcc-14.2.0
powerpc                      pmac32_defconfig    clang-14
powerpc                      pmac32_defconfig    clang-20
powerpc                     redwood_defconfig    clang-20
riscv                            allmodconfig    clang-20
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                            allyesconfig    gcc-14.2.0
s390                             allmodconfig    clang-20
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                       zfcpdump_defconfig    clang-20
sh                               alldefconfig    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                            hp6xx_defconfig    clang-14
sh                 kfr2r09-romimage_defconfig    gcc-14.2.0
sh                          rsk7264_defconfig    gcc-14.2.0
sh                   rts7751r2dplus_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                               allyesconfig    gcc-12
x86_64                                  kexec    clang-19
x86_64                               rhel-9.4    clang-19
x86_64                               rhel-9.4    gcc-12
xtensa                            allnoconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
