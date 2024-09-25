Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 619A09850E1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Sep 2024 04:16:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3DFD94056B;
	Wed, 25 Sep 2024 02:15:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6TtUaG0FFxOt; Wed, 25 Sep 2024 02:15:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E430F40518
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727230557;
	bh=Xq8fi4Uv/lXnsy+R0IMAdtduy7EAU7bmRliQbSgP/RE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=x7m8aw6YVBwIcgvTENhempn+5ZvastodB1lPhV2l5aw22IRT221CBk5O5YjMSnhtn
	 MW0JkU33YSPNJXKwtGX3beXab3AJRNTMp9exXWn+lhibOrTUtwuLFAyLf4SEvw1Luh
	 U0H++IcYhMtPQDup2VRKweHF+wGebUc9hIIxtDGAxtfW5V3QvWV4GEKgMcecRFoUC9
	 xX+IJ0oXKSs3DMWZxCjFkzYT7YMRllQqYkAxR45UsPYg470HZMP/ZEa7LCpqJKiJok
	 LYtVTxolQs03JQaQX5L2e2TO9qhyl58hPQQVcVLCW5uN/sybSj0ejkYbCMdY3kABgz
	 GsixHj5mHTTBg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E430F40518;
	Wed, 25 Sep 2024 02:15:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 51B8C1BF3DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 02:15:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3EEC54036F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 02:15:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7p2LOQvAwwkv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Sep 2024 02:15:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 17A3B4049D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17A3B4049D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 17A3B4049D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 02:15:52 +0000 (UTC)
X-CSE-ConnectionGUID: /vC0C8RgRWWroMyNxGo4gw==
X-CSE-MsgGUID: gsOnK8cFTzKcshvoii1UQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="25771353"
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="25771353"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 19:15:52 -0700
X-CSE-ConnectionGUID: /pYscSpSRBm3Jyyce2FoRg==
X-CSE-MsgGUID: e+1457GcTOqecMOAcZ7QDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="72073498"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 24 Sep 2024 19:15:51 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1stHZE-000J2n-29
 for intel-wired-lan@lists.osuosl.org; Wed, 25 Sep 2024 02:15:48 +0000
Date: Wed, 25 Sep 2024 10:15:16 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202409251011.QRSUvmro-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727230553; x=1758766553;
 h=date:from:to:subject:message-id;
 bh=t8Rgg8/2JmRmixal2y1jZVWjzGp1cOWsh72IraApVq8=;
 b=Py2wP4cb3bHKooM5mWyasQcMM8SwDDRln8yCdoUUdR4lfL/5rt4DzaQ/
 vEyvmZBb74UYhCHc4k5aKwv1h03nefm2CIXceHl2W00JAfmymc2BWaKUU
 nSWVDEzSkMSllIIF/D7wkttSTnkRpwy7S6yEnZGkTkHKLGoliNoGj+yvj
 FVTEmlEOqditXUkKf1FepGOqf+cDmrVzOzKOMOaOYXxQrIwpCiADPExND
 D5V8KvphwDaZ9APQURMpurWkMuO+roecE+cvI//emiX9Eq3wsSXF6Rna6
 JodEoixv3Xtqwmtkjk+xH2k/Ny4u5Yaeij3CIVxkd7byC9JGyOwpGpBIR
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Py2wP4cb
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 0cbfd45fbcf0cb26d85c981b91c62fe73cdee01c
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 0cbfd45fbcf0cb26d85c981b91c62fe73cdee01c  bonding: Fix unnecessary warnings and logs from bond_xdp_get_xmit_slave()

elapsed time: 732m

configs tested: 101
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.1.0
alpha                            allyesconfig    clang-20
alpha                               defconfig    gcc-14.1.0
arc                              allmodconfig    clang-20
arc                               allnoconfig    gcc-14.1.0
arc                              allyesconfig    clang-20
arc                                 defconfig    gcc-14.1.0
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.1.0
arm                              allyesconfig    clang-20
arm                                 defconfig    gcc-14.1.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                               defconfig    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                                defconfig    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.1.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.1.0
i386                             allmodconfig    clang-18
i386                              allnoconfig    clang-18
i386                             allyesconfig    clang-18
i386        buildonly-randconfig-001-20240925    clang-18
i386        buildonly-randconfig-002-20240925    clang-18
i386        buildonly-randconfig-003-20240925    clang-18
i386        buildonly-randconfig-004-20240925    clang-18
i386        buildonly-randconfig-005-20240925    clang-18
i386        buildonly-randconfig-006-20240925    clang-18
i386                                defconfig    clang-18
i386                  randconfig-001-20240925    clang-18
i386                  randconfig-002-20240925    clang-18
i386                  randconfig-003-20240925    clang-18
i386                  randconfig-004-20240925    clang-18
i386                  randconfig-005-20240925    clang-18
i386                  randconfig-006-20240925    clang-18
i386                  randconfig-011-20240925    clang-18
i386                  randconfig-012-20240925    clang-18
i386                  randconfig-013-20240925    clang-18
i386                  randconfig-014-20240925    clang-18
i386                  randconfig-015-20240925    clang-18
i386                  randconfig-016-20240925    clang-18
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch                           defconfig    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                                defconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
microblaze                          defconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
nios2                             allnoconfig    gcc-14.1.0
nios2                               defconfig    gcc-14.1.0
openrisc                          allnoconfig    clang-20
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    clang-20
parisc                            allnoconfig    gcc-14.1.0
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-12
parisc64                            defconfig    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    clang-20
powerpc                           allnoconfig    gcc-14.1.0
powerpc                          allyesconfig    gcc-14.1.0
riscv                            allmodconfig    gcc-14.1.0
riscv                             allnoconfig    clang-20
riscv                             allnoconfig    gcc-14.1.0
riscv                            allyesconfig    gcc-14.1.0
riscv                               defconfig    gcc-12
s390                             allmodconfig    clang-20
s390                             allmodconfig    gcc-14.1.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    gcc-12
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-12
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-12
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64                              defconfig    clang-18
x86_64                                  kexec    clang-18
x86_64                                  kexec    gcc-12
x86_64                               rhel-8.3    gcc-12
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
