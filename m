Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FC696CAB3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2024 01:09:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C00F140577;
	Wed,  4 Sep 2024 23:09:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oOf0Bvbdr_wZ; Wed,  4 Sep 2024 23:09:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6ACF44057C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725491395;
	bh=jj6HxPqQ/9DSFGAByTG9rNj/lqds+dN+bk88rRsh2Ac=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=31BmuksxrubqpsbjMCo656558knUW3/wRfsKsn7CJTnXGHa3R5YCuGDnLAvtXSn2x
	 ZAB9IUPN/4FR0M4jKqjaFP6t0+B3bOKZ/clNMUwKAL8Smh2gkKDCGlwTlIzHtt/awJ
	 ow8ZZddzAtebTWwhhC9fh9bxZcR+GLYxqmwvlyWBn6wQ8g8wcyFgJKDdEmF+GyvSqM
	 /nNUZbx1aQEo54/jeEwNyIl+uO19kJllrCR+15zkkc1lYbT6ub0Vak9K8+UInRBVtJ
	 7NWATPl4qtPC2+QjKDXBEU5emi+9/R+Oj6H3rAVynj3YzSumZDzSN1mkS4lc5BB35U
	 Hzfd5iMRRX94Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6ACF44057C;
	Wed,  4 Sep 2024 23:09:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ADF941BF299
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 23:09:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A67BD40B98
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 23:09:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 13nxCpuDBlfV for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 23:09:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 269A640B96
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 269A640B96
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 269A640B96
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 23:09:51 +0000 (UTC)
X-CSE-ConnectionGUID: cIHmsqh/QWyb15q+TnQPGQ==
X-CSE-MsgGUID: HU/Lba6RSt6my/GvG2P/Ig==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="34747872"
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="34747872"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 16:09:51 -0700
X-CSE-ConnectionGUID: /6iNsFGDRrOBhOnKSXSLgA==
X-CSE-MsgGUID: jQtpv4OpQCuvwnY6y6cGbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="65078622"
Received: from lkp-server01.sh.intel.com (HELO 9c6b1c7d3b50) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 04 Sep 2024 16:09:50 -0700
Received: from kbuild by 9c6b1c7d3b50 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1slz8F-0008gF-1w
 for intel-wired-lan@lists.osuosl.org; Wed, 04 Sep 2024 23:09:47 +0000
Date: Thu, 05 Sep 2024 07:09:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202409050712.8WWz7tTD-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725491392; x=1757027392;
 h=date:from:to:subject:message-id;
 bh=Z0QkoYExz/MbWPyhC6RAqCXCwD7LfgAicCZQ9CZ1NVc=;
 b=hjmWm7Un3I88p61h0SGx79lyiXJQboSo0eM/5fW0TsRDpV1ECrg58lkz
 Px705oWNSYJSe83hHleVNCGc9BEKWBnHE5OD/h5EJV8uUSrTXO5PBdRkX
 LNXQti8gCiiCLQwYB0/ieDGAdcYf5QcehzSQnlqSq2FmpASMyc//oK2m8
 OKyqFGk09XLFCmljrNETnt4n28NJ1XFnTVRvBKt6tBbc/3yw9DssKzRSx
 bSf7A9VprDPjlvaBNceWHkv4B7V3ucvQfh/TOYYV0lDshQwDsIw3pmpaH
 +D6qAqOKJkVH2Ss8IWBJtzg01gN+DjsQk4vT0KyIRD0M2cnIYqF2jbt5p
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hjmWm7Un
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 75b303206b000ac23ee0e63f377c2a25f9bb5134
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
branch HEAD: 75b303206b000ac23ee0e63f377c2a25f9bb5134  ice: fix VSI lists confusion when adding VLANs

elapsed time: 1452m

configs tested: 112
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-14.1.0
alpha                               defconfig   gcc-14.1.0
arc                              allmodconfig   clang-20
arc                               allnoconfig   gcc-14.1.0
arc                              allyesconfig   clang-20
arc                                 defconfig   gcc-14.1.0
arm                              allmodconfig   clang-20
arm                               allnoconfig   gcc-14.1.0
arm                              allyesconfig   clang-20
arm                          collie_defconfig   gcc-14.1.0
arm                                 defconfig   gcc-14.1.0
arm                          gemini_defconfig   gcc-14.1.0
arm                   milbeaut_m10v_defconfig   gcc-14.1.0
arm                           omap1_defconfig   gcc-14.1.0
arm                        spear3xx_defconfig   gcc-14.1.0
arm                    vt8500_v6_v7_defconfig   gcc-14.1.0
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-14.1.0
hexagon                           allnoconfig   gcc-14.1.0
hexagon                             defconfig   gcc-14.1.0
i386                             allmodconfig   clang-18
i386                              allnoconfig   clang-18
i386                             allyesconfig   clang-18
i386                                defconfig   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
mips                     loongson1c_defconfig   gcc-14.1.0
mips                      loongson3_defconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-14.1.0
openrisc                          allnoconfig   clang-20
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-12
openrisc                    or1ksim_defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   clang-20
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-12
parisc64                            defconfig   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   clang-20
powerpc                          allyesconfig   gcc-14.1.0
powerpc                      ep88xc_defconfig   gcc-14.1.0
powerpc                 mpc836x_rdk_defconfig   gcc-14.1.0
powerpc                         ps3_defconfig   gcc-14.1.0
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   clang-20
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-12
s390                             allmodconfig   gcc-14.1.0
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-12
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-12
sh                          polaris_defconfig   gcc-14.1.0
sh                          r7785rp_defconfig   gcc-14.1.0
sh                           se7750_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-12
um                                allnoconfig   clang-20
um                                  defconfig   gcc-12
um                             i386_defconfig   gcc-12
um                           x86_64_defconfig   gcc-12
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240904   clang-18
x86_64       buildonly-randconfig-002-20240904   clang-18
x86_64       buildonly-randconfig-003-20240904   clang-18
x86_64       buildonly-randconfig-004-20240904   clang-18
x86_64       buildonly-randconfig-005-20240904   clang-18
x86_64       buildonly-randconfig-006-20240904   clang-18
x86_64                              defconfig   clang-18
x86_64                                  kexec   gcc-12
x86_64                randconfig-001-20240904   clang-18
x86_64                randconfig-002-20240904   clang-18
x86_64                randconfig-003-20240904   clang-18
x86_64                randconfig-004-20240904   clang-18
x86_64                randconfig-005-20240904   clang-18
x86_64                randconfig-006-20240904   clang-18
x86_64                randconfig-011-20240904   clang-18
x86_64                randconfig-012-20240904   clang-18
x86_64                randconfig-013-20240904   clang-18
x86_64                randconfig-014-20240904   clang-18
x86_64                randconfig-015-20240904   clang-18
x86_64                randconfig-016-20240904   clang-18
x86_64                randconfig-071-20240904   clang-18
x86_64                randconfig-072-20240904   clang-18
x86_64                randconfig-073-20240904   clang-18
x86_64                randconfig-074-20240904   clang-18
x86_64                randconfig-075-20240904   clang-18
x86_64                randconfig-076-20240904   clang-18
x86_64                          rhel-8.3-rust   clang-18
x86_64                               rhel-8.3   gcc-12
xtensa                            allnoconfig   gcc-14.1.0
xtensa                  audio_kc705_defconfig   gcc-14.1.0
xtensa                         virt_defconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
