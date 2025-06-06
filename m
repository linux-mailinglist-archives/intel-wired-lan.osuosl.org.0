Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 751FDACFBD5
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Jun 2025 06:11:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9614A840D5;
	Fri,  6 Jun 2025 04:11:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id guk-S1MR6h47; Fri,  6 Jun 2025 04:11:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D9D4840D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749183074;
	bh=f6KBkAh4c8s4Yig21KMoTUoxHabRYUGmPvh1HXD0sSU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=aZw5OtFWNbkv32MffvVTKtTO3jKcJS5FcYt75FS/vmAxKtDCHkB7nIjJPMzDxKaKj
	 4rejlr2/AFtqfQSEDEvwlz6SVl5BV34x9gHk8E5GRl1EPPuy1k2y5+pzf+pLHd6g7g
	 +5T/rbS1piKedGKMf/hviebVpfKBjLAngSlHgglCZxtK1V24F7ifOp0Z3lIBXIWuhi
	 aM6klqItpkZxSB5AT4wJzUnYjNAJ0MW/724PQFnpcHaa449UXMjxDBKhG+Ifms8wXa
	 bx9v2w1nKDApHmb9gHQ5R61/egKmmO768qtHjSUBdYiEn0GAzQc+lQCdpi3cjU97fp
	 DbvI6ReizeLMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D9D4840D7;
	Fri,  6 Jun 2025 04:11:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6F7881A4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jun 2025 04:11:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4C65A40B5F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jun 2025 04:11:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2tiwvdS8wBui for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Jun 2025 04:11:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DBB49407CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBB49407CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DBB49407CE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jun 2025 04:11:08 +0000 (UTC)
X-CSE-ConnectionGUID: QEkcnsBNQRGgVDruiE3ddQ==
X-CSE-MsgGUID: t9c1aX4sSICAkyF8okjbEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11455"; a="61950972"
X-IronPort-AV: E=Sophos;i="6.16,214,1744095600"; d="scan'208";a="61950972"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2025 21:11:08 -0700
X-CSE-ConnectionGUID: 1ReQ8rh4R0yt74QwyCF7Nw==
X-CSE-MsgGUID: V0wDAh1OSJqDZbTR5ysnwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,214,1744095600"; d="scan'208";a="150862783"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 05 Jun 2025 21:11:05 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uNOQ3-0004j3-1p
 for intel-wired-lan@lists.osuosl.org; Fri, 06 Jun 2025 04:11:03 +0000
Date: Fri, 06 Jun 2025 12:10:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506061246.grNj2Cvh-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749183069; x=1780719069;
 h=date:from:to:subject:message-id;
 bh=a4f07vIBw275KphRmAZgnQ0HxrQUkj4YUlKfcqBCm+w=;
 b=DK1W19qKyrexLq0IiymIm3F1ZdjRbve5aaYG+drwrc3tqm65Ln9QLPPq
 QR7BkmIHIbSGbdj3Xj2CIjyMjy8WPmIJTuwLIh1d/J7wSo7AAX6TZeVB3
 yzaY8iKRfqMu9HxPwPMOSKTUcjcuU/NNOvl95A8WZaDq2AaHGze9IBSMu
 NW4M9N/9HdQAWwat3d1m3xqhDs1EgBbX5AfCkzkhL+NnqFPqTAezRDYgc
 Z2+aEUkZEGTzxk7A9cMouMQVfcWoRtsMuM27hPa9YmmGBHiDlp99sNvYp
 7+dnC5U06sjPC4gpGW7Pwf+LcWjSlSbUAfBZKxfoshid2hI9bFRxgb4b7
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DK1W19qK
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 3cae906e1a6184cdc9e4d260e4dbdf9a118d94ad
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
branch HEAD: 3cae906e1a6184cdc9e4d260e4dbdf9a118d94ad  calipso: unlock rcu before returning -EAFNOSUPPORT

elapsed time: 726m

configs tested: 222
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                         haps_hs_defconfig    gcc-12
arc                   randconfig-001-20250606    gcc-15.1.0
arc                   randconfig-001-20250606    gcc-8.5.0
arc                   randconfig-002-20250606    gcc-10.5.0
arc                   randconfig-002-20250606    gcc-15.1.0
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-15.1.0
arm                                 defconfig    gcc-15.1.0
arm                   randconfig-001-20250606    clang-21
arm                   randconfig-001-20250606    gcc-15.1.0
arm                   randconfig-002-20250606    gcc-11.5.0
arm                   randconfig-002-20250606    gcc-15.1.0
arm                   randconfig-003-20250606    clang-21
arm                   randconfig-003-20250606    gcc-15.1.0
arm                   randconfig-004-20250606    gcc-11.5.0
arm                   randconfig-004-20250606    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                            allyesconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20250606    clang-21
arm64                 randconfig-001-20250606    gcc-15.1.0
arm64                 randconfig-002-20250606    gcc-15.1.0
arm64                 randconfig-003-20250606    clang-21
arm64                 randconfig-003-20250606    gcc-15.1.0
arm64                 randconfig-004-20250606    clang-21
arm64                 randconfig-004-20250606    gcc-15.1.0
csky                             allmodconfig    gcc-15.1.0
csky                              allnoconfig    gcc-15.1.0
csky                             allyesconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20250606    gcc-13.3.0
csky                  randconfig-001-20250606    gcc-14.3.0
csky                  randconfig-002-20250606    gcc-13.3.0
csky                  randconfig-002-20250606    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-21
hexagon                             defconfig    gcc-15.1.0
hexagon               randconfig-001-20250606    clang-21
hexagon               randconfig-001-20250606    gcc-13.3.0
hexagon               randconfig-002-20250606    clang-18
hexagon               randconfig-002-20250606    gcc-13.3.0
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20250606    clang-20
i386        buildonly-randconfig-002-20250606    gcc-12
i386        buildonly-randconfig-003-20250606    gcc-12
i386        buildonly-randconfig-004-20250606    gcc-12
i386        buildonly-randconfig-005-20250606    gcc-12
i386        buildonly-randconfig-006-20250606    gcc-11
i386                                defconfig    clang-20
i386                  randconfig-001-20250606    clang-20
i386                  randconfig-002-20250606    clang-20
i386                  randconfig-003-20250606    clang-20
i386                  randconfig-004-20250606    clang-20
i386                  randconfig-005-20250606    clang-20
i386                  randconfig-006-20250606    clang-20
i386                  randconfig-007-20250606    clang-20
i386                  randconfig-011-20250606    clang-20
i386                  randconfig-012-20250606    clang-20
i386                  randconfig-013-20250606    clang-20
i386                  randconfig-014-20250606    clang-20
i386                  randconfig-015-20250606    clang-20
i386                  randconfig-016-20250606    clang-20
i386                  randconfig-017-20250606    clang-20
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch                        allyesconfig    gcc-15.1.0
loongarch                           defconfig    gcc-15.1.0
loongarch             randconfig-001-20250606    gcc-13.3.0
loongarch             randconfig-001-20250606    gcc-15.1.0
loongarch             randconfig-002-20250606    gcc-13.3.0
loongarch             randconfig-002-20250606    gcc-14.3.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                             allmodconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                             allyesconfig    gcc-15.1.0
mips                     decstation_defconfig    gcc-12
mips                           ip22_defconfig    gcc-15.1.0
mips                           ip30_defconfig    gcc-15.1.0
mips                           mtx1_defconfig    gcc-12
mips                           rs90_defconfig    gcc-15.1.0
mips                         rt305x_defconfig    gcc-12
nios2                            allmodconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-15.1.0
nios2                            allyesconfig    gcc-15.1.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250606    gcc-13.3.0
nios2                 randconfig-001-20250606    gcc-14.2.0
nios2                 randconfig-002-20250606    gcc-13.3.0
nios2                 randconfig-002-20250606    gcc-9.3.0
openrisc                         allmodconfig    gcc-15.1.0
openrisc                          allnoconfig    clang-21
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-21
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250606    gcc-11.5.0
parisc                randconfig-001-20250606    gcc-13.3.0
parisc                randconfig-002-20250606    gcc-12.4.0
parisc                randconfig-002-20250606    gcc-13.3.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-21
powerpc                          allyesconfig    gcc-15.1.0
powerpc                        icon_defconfig    gcc-12
powerpc                  mpc885_ads_defconfig    gcc-15.1.0
powerpc                         ps3_defconfig    gcc-12
powerpc               randconfig-001-20250606    clang-21
powerpc               randconfig-001-20250606    gcc-13.3.0
powerpc               randconfig-002-20250606    clang-21
powerpc               randconfig-002-20250606    gcc-13.3.0
powerpc               randconfig-003-20250606    gcc-13.3.0
powerpc                     tqm8541_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20250606    clang-21
powerpc64             randconfig-001-20250606    gcc-13.3.0
powerpc64             randconfig-002-20250606    clang-17
powerpc64             randconfig-002-20250606    gcc-13.3.0
powerpc64             randconfig-003-20250606    gcc-12.4.0
powerpc64             randconfig-003-20250606    gcc-13.3.0
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-21
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250606    gcc-11.5.0
riscv                 randconfig-002-20250606    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250606    clang-21
s390                  randconfig-002-20250606    clang-18
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                          landisk_defconfig    gcc-15.1.0
sh                    randconfig-001-20250606    gcc-12.4.0
sh                    randconfig-002-20250606    gcc-10.5.0
sh                           se7751_defconfig    gcc-15.1.0
sh                  sh7785lcr_32bit_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                            allyesconfig    gcc-15.1.0
sparc                 randconfig-001-20250606    gcc-8.5.0
sparc                 randconfig-002-20250606    gcc-8.5.0
sparc64                          allmodconfig    gcc-15.1.0
sparc64                          allyesconfig    gcc-15.1.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250606    gcc-12.4.0
sparc64               randconfig-002-20250606    gcc-15.1.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250606    gcc-12
um                    randconfig-002-20250606    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250606    clang-20
x86_64      buildonly-randconfig-001-20250606    gcc-12
x86_64      buildonly-randconfig-002-20250606    gcc-12
x86_64      buildonly-randconfig-003-20250606    gcc-12
x86_64      buildonly-randconfig-004-20250606    gcc-12
x86_64      buildonly-randconfig-005-20250606    gcc-12
x86_64      buildonly-randconfig-006-20250606    gcc-12
x86_64                              defconfig    clang-20
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250606    gcc-11
x86_64                randconfig-002-20250606    gcc-11
x86_64                randconfig-003-20250606    gcc-11
x86_64                randconfig-004-20250606    gcc-11
x86_64                randconfig-005-20250606    gcc-11
x86_64                randconfig-006-20250606    gcc-11
x86_64                randconfig-007-20250606    gcc-11
x86_64                randconfig-008-20250606    gcc-11
x86_64                randconfig-071-20250606    gcc-12
x86_64                randconfig-072-20250606    gcc-12
x86_64                randconfig-073-20250606    gcc-12
x86_64                randconfig-074-20250606    gcc-12
x86_64                randconfig-075-20250606    gcc-12
x86_64                randconfig-076-20250606    gcc-12
x86_64                randconfig-077-20250606    gcc-12
x86_64                randconfig-078-20250606    gcc-12
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                           allyesconfig    gcc-15.1.0
xtensa                randconfig-001-20250606    gcc-9.3.0
xtensa                randconfig-002-20250606    gcc-12.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
