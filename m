Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C72BF98BADD
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Oct 2024 13:20:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6433240388;
	Tue,  1 Oct 2024 11:20:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tyCEcaCR7CFn; Tue,  1 Oct 2024 11:20:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0ACD4038A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727781614;
	bh=9NtZ1xZAlkp7GfTMMLf3ajkOFOvwhGYTIQBA570mExs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Nz96pMHC10MX4B1glsAFQEved21++6r9T1YRq4dMyvcXOaXh1M+ockZRemFG3HqbU
	 8B+mVWxNmaziVN/FNKAA2omZdhFJjYOP8KdaLuxX5BtbyBbKCeHhd9XF+JV+IU02Zc
	 0aCNhm+/u45KTruymx5Df3hk55BOs7E6u2hdZNI34h6e5OzrBvULHbXrlgDe+hdvEY
	 AGUwdLvPCdeXqLVKJ/BWxXlhUcsbPxNvBHC1hyDRLZmN2BruLK+c+M0ISiWxfaJXts
	 oJoTNZMfjE4DWi4p5oo3GERAFJYstqBJat84hAlhOC2SnuF4JY80GVZJl1IF2POfJI
	 hTxqhf/znbj1w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B0ACD4038A;
	Tue,  1 Oct 2024 11:20:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3C0451BF48D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 11:20:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2A62081249
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 11:20:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gW4TkdUIFneP for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Oct 2024 11:20:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F26B781248
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F26B781248
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F26B781248
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 11:20:11 +0000 (UTC)
X-CSE-ConnectionGUID: iQ4szpPWTJKOGcRVsg/8kA==
X-CSE-MsgGUID: KQX0j61bSTiD7Y+ZcAs+sQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="52320997"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="52320997"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 04:20:11 -0700
X-CSE-ConnectionGUID: 5ebzpQKfQiekVw60USU5SA==
X-CSE-MsgGUID: BIudirnvThiu06Z/XgqOEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="78599811"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 01 Oct 2024 04:20:10 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1svavH-000QbR-1L
 for intel-wired-lan@lists.osuosl.org; Tue, 01 Oct 2024 11:20:07 +0000
Date: Tue, 01 Oct 2024 19:19:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410011925.Yu9Y91xD-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727781612; x=1759317612;
 h=date:from:to:subject:message-id;
 bh=Chl4VVmk9yFHZiCCow1q5JYb/71asc/W2GitIOn1pEM=;
 b=TRJ4qO7zUriyoKQSNhND9aCcSqz/ziK2klhFbEGhEqgRnxNPrRhNuBkg
 4t3hvhX9XlnJNSvJh5oBX9OYdQLi3aGbYeRziCMqt7fm1+JG47nahICwp
 yvP1kxmy9+eMO2/n5n6/UFckzl7MRFA+k+wfQxbNQ9xDVO882lR77w7ee
 eC3QQYAAZgWlx+CYPnG9XLQrEdPpD7MrdUP+E20599fx6bhL/a/bG0IQO
 QQo6az3oBtGWxEX77sEABlK9T0UuYs2AtZk8h6A0J+ryY/hajow95Iza2
 f37t7Pl5UyBBN0cYHU/kJfFwZhILgGJJz//NIm8vRwhZ9qnEB6h2Iegwu
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TRJ4qO7z
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 09d0fb5cb30ebcaed4a33028ae383f5a1463e2b2
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 09d0fb5cb30ebcaed4a33028ae383f5a1463e2b2  idpf: deinit virtchnl transaction manager after vport and vectors

elapsed time: 829m

configs tested: 94
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                       allnoconfig    gcc-14.1.0
alpha                      allyesconfig    clang-20
alpha                         defconfig    gcc-14.1.0
arc                        allmodconfig    clang-20
arc                         allnoconfig    gcc-14.1.0
arc                        allyesconfig    clang-20
arc                    axs103_defconfig    gcc-14.1.0
arc                           defconfig    gcc-14.1.0
arm                        allmodconfig    clang-20
arm                         allnoconfig    gcc-14.1.0
arm                        allyesconfig    clang-20
arm                    collie_defconfig    gcc-14.1.0
arm               davinci_all_defconfig    gcc-14.1.0
arm                           defconfig    gcc-14.1.0
arm                   lpc18xx_defconfig    gcc-14.1.0
arm                 versatile_defconfig    gcc-14.1.0
arm64                      allmodconfig    clang-20
arm64                       allnoconfig    gcc-14.1.0
arm64                         defconfig    gcc-14.1.0
csky                        allnoconfig    gcc-14.1.0
csky                          defconfig    gcc-14.1.0
hexagon                    allmodconfig    clang-20
hexagon                     allnoconfig    gcc-14.1.0
hexagon                    allyesconfig    clang-20
hexagon                       defconfig    gcc-14.1.0
i386                       allmodconfig    clang-18
i386                        allnoconfig    clang-18
i386                       allyesconfig    clang-18
i386                          defconfig    clang-18
loongarch                  allmodconfig    gcc-14.1.0
loongarch                   allnoconfig    gcc-14.1.0
loongarch                     defconfig    gcc-14.1.0
m68k                       allmodconfig    gcc-14.1.0
m68k                        allnoconfig    gcc-14.1.0
m68k                       allyesconfig    gcc-14.1.0
m68k                          defconfig    gcc-14.1.0
microblaze                 allmodconfig    gcc-14.1.0
microblaze                  allnoconfig    gcc-14.1.0
microblaze                 allyesconfig    gcc-14.1.0
microblaze                    defconfig    gcc-14.1.0
mips                        allnoconfig    gcc-14.1.0
mips                   db1xxx_defconfig    gcc-14.1.0
mips                     rs90_defconfig    gcc-14.1.0
nios2                       allnoconfig    gcc-14.1.0
nios2                         defconfig    gcc-14.1.0
openrisc                    allnoconfig    clang-20
openrisc                   allyesconfig    gcc-14.1.0
openrisc                      defconfig    gcc-12
openrisc            or1klitex_defconfig    gcc-14.1.0
parisc                     allmodconfig    gcc-14.1.0
parisc                      allnoconfig    clang-20
parisc                     allyesconfig    gcc-14.1.0
parisc                        defconfig    gcc-12
parisc64                      defconfig    gcc-14.1.0
powerpc                    allmodconfig    gcc-14.1.0
powerpc                     allnoconfig    clang-20
powerpc                    allyesconfig    gcc-14.1.0
powerpc           canyonlands_defconfig    gcc-14.1.0
powerpc                  cell_defconfig    gcc-14.1.0
powerpc                  fsp2_defconfig    gcc-14.1.0
powerpc         mpc834x_itxgp_defconfig    gcc-14.1.0
powerpc                   wii_defconfig    gcc-14.1.0
riscv                      allmodconfig    gcc-14.1.0
riscv                       allnoconfig    clang-20
riscv                      allyesconfig    gcc-14.1.0
riscv                         defconfig    gcc-12
s390                       allmodconfig    clang-20
s390                       allmodconfig    gcc-14.1.0
s390                        allnoconfig    clang-20
s390                       allyesconfig    gcc-14.1.0
s390                          defconfig    gcc-12
sh                         alldefconfig    gcc-14.1.0
sh                         allmodconfig    gcc-14.1.0
sh                          allnoconfig    gcc-14.1.0
sh                         allyesconfig    gcc-14.1.0
sh                            defconfig    gcc-12
sh          ecovec24-romimage_defconfig    gcc-14.1.0
sh                      titan_defconfig    gcc-14.1.0
sh                        ul2_defconfig    gcc-14.1.0
sparc                      allmodconfig    gcc-14.1.0
sparc64                       defconfig    gcc-12
um                         allmodconfig    clang-20
um                          allnoconfig    clang-20
um                         allyesconfig    clang-20
um                            defconfig    gcc-12
um                       i386_defconfig    gcc-12
um                     x86_64_defconfig    gcc-12
x86_64                      allnoconfig    clang-18
x86_64                     allyesconfig    clang-18
x86_64                        defconfig    clang-18
x86_64                            kexec    gcc-12
x86_64                         rhel-8.3    gcc-12
x86_64                    rhel-8.3-rust    clang-18
xtensa                      allnoconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
