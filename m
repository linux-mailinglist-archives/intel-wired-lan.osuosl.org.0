Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4926799FC07
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Oct 2024 01:06:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F54C608BE;
	Tue, 15 Oct 2024 23:06:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vcpjLodjdt-W; Tue, 15 Oct 2024 23:06:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D702E608C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729033564;
	bh=aoK2cJTGxyoAEuHqs3KpwHBWTVx3jnlDCllRFTBkjkw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KdlDDz6AgQ80W+R8UDpGyumuT9/lWK9oePSobWAZFIPsBvpSbWfbBtJtxBrVs8wUo
	 tV9wJ6t81p3oVyUBCLNAuGtZcPRktyLFsEXFtuZ9ismA9kWBbIeg6i4j51FnC2GAGF
	 dxVDk+bvkxvSWlHBZkpVjXTtGDomEAbjIxNr+ZlNXLCie6mHC9YpgpyLUtPh/7V54U
	 7Qz/igbribBI01nHUCYVEkzceOS64YAbYdw8v/vs5CcDiMc+bXfH0Iz8yxW2K+skET
	 t1yiy/V093t+p7U7PSgUrQQfDP3L4sC79mVbRkttLMxwVmoOunSKhFQybEm6DFyRcm
	 8vUwQq5DWWnxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D702E608C6;
	Tue, 15 Oct 2024 23:06:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C5B0027E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 23:06:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C039C608B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 23:06:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ncc8DQxG4906 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Oct 2024 23:05:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C9A9A608A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9A9A608A9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C9A9A608A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 23:05:58 +0000 (UTC)
X-CSE-ConnectionGUID: Nb4HRMEKQDmdJgOvzOjPMQ==
X-CSE-MsgGUID: Ti86Jr2hSIKzIBoqMLyEHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28347351"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28347351"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 16:05:57 -0700
X-CSE-ConnectionGUID: J1xco7fBSOWKf71DGmpNZg==
X-CSE-MsgGUID: x++gEXvRTyO6D/YAUKGnFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,206,1725346800"; d="scan'208";a="77667236"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 15 Oct 2024 16:05:56 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t0qby-000K1V-0U
 for intel-wired-lan@lists.osuosl.org; Tue, 15 Oct 2024 23:05:54 +0000
Date: Wed, 16 Oct 2024 07:05:01 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410160751.VdFQlUH2-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729033559; x=1760569559;
 h=date:from:to:subject:message-id;
 bh=MzH1YOsra59nnm2TqEawe7MCxixfdD3MQ4XX/9aybNY=;
 b=lDh4mQF+HYgTNohbFmw91ojJsZD3x72z8NzJAV0IgOzq8Oh6Z2SXKLhs
 PK+nDyoPdyUbsFxAOHro8zKo/PbwQII9QNbxlv8v+u70ehvpIB0GNPdyO
 rgL96j5hcxhMHZ9WavXiOsVrmsVr8MlvuuHzn2O89lGvEaQreKgVrjS4r
 XneE+K5awgWtyE0IitOqlaVBFc4KSjI0ecxsoc41wa4ZJytQOtj22KG3L
 We4clfjqsvL9oFxyyw7ZeWVgJK0JEGRV5NvXfDSOnnx2fwGx694JVmO2M
 5+EKSz+y9mr1w/9E/rGB/8/LvdottnSOw3Zqxdykk0uKNozko5Nr/8EEJ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lDh4mQF+
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 0b84db5d8f258d4b212c05ea0772ee47612d6cfb
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
branch HEAD: 0b84db5d8f258d4b212c05ea0772ee47612d6cfb  MAINTAINERS: add Andrew Lunn as a co-maintainer of all networking drivers

elapsed time: 1872m

configs tested: 98
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                 allnoconfig    gcc-14.1.0
alpha                allyesconfig    clang-20
alpha                   defconfig    gcc-14.1.0
arc                  allmodconfig    clang-20
arc                   allnoconfig    gcc-14.1.0
arc                  allyesconfig    clang-20
arc                     defconfig    gcc-14.1.0
arc         haps_hs_smp_defconfig    clang-20
arc            nsim_700_defconfig    clang-15
arc            vdk_hs38_defconfig    clang-15
arm                  allmodconfig    clang-20
arm                   allnoconfig    gcc-14.1.0
arm                  allyesconfig    clang-20
arm         am200epdkit_defconfig    clang-15
arm             assabet_defconfig    clang-20
arm             bcm2835_defconfig    clang-15
arm            clps711x_defconfig    clang-20
arm                     defconfig    gcc-14.1.0
arm               h3600_defconfig    clang-20
arm                hisi_defconfig    clang-15
arm             nhk8815_defconfig    clang-20
arm               sama5_defconfig    clang-20
arm              sp7021_defconfig    clang-15
arm64                allmodconfig    clang-20
arm64                 allnoconfig    gcc-14.1.0
arm64                   defconfig    gcc-14.1.0
csky                  allnoconfig    gcc-14.1.0
csky                    defconfig    gcc-14.1.0
hexagon              allmodconfig    clang-20
hexagon               allnoconfig    gcc-14.1.0
hexagon              allyesconfig    clang-20
hexagon                 defconfig    gcc-14.1.0
i386                 alldefconfig    clang-15
i386                 allmodconfig    clang-18
i386                  allnoconfig    clang-18
i386                 allyesconfig    clang-18
i386                    defconfig    clang-18
loongarch            allmodconfig    gcc-14.1.0
loongarch             allnoconfig    gcc-14.1.0
loongarch               defconfig    gcc-14.1.0
m68k                 allmodconfig    gcc-14.1.0
m68k                  allnoconfig    gcc-14.1.0
m68k                 allyesconfig    gcc-14.1.0
m68k                    defconfig    gcc-14.1.0
m68k            m5307c3_defconfig    clang-20
m68k              sun3x_defconfig    clang-15
m68k               virt_defconfig    clang-20
microblaze           allmodconfig    gcc-14.1.0
microblaze            allnoconfig    gcc-14.1.0
microblaze           allyesconfig    gcc-14.1.0
microblaze              defconfig    gcc-14.1.0
microblaze          mmu_defconfig    clang-20
mips                  allnoconfig    gcc-14.1.0
mips               ci20_defconfig    clang-20
mips               ip30_defconfig    clang-20
mips            vocore2_defconfig    clang-15
nios2             3c120_defconfig    clang-20
nios2                 allnoconfig    gcc-14.1.0
nios2                   defconfig    gcc-14.1.0
openrisc              allnoconfig    clang-20
openrisc                defconfig    gcc-12
parisc                allnoconfig    clang-20
parisc                  defconfig    gcc-12
parisc64                defconfig    gcc-14.1.0
powerpc               allnoconfig    clang-20
powerpc        ge_imp3a_defconfig    clang-20
powerpc         kmeter1_defconfig    clang-15
powerpc        mvme5100_defconfig    clang-20
powerpc          pcm030_defconfig    clang-15
powerpc         ppa8548_defconfig    clang-15
powerpc          ppc44x_defconfig    clang-15
powerpc             ps3_defconfig    clang-15
riscv                 allnoconfig    clang-20
riscv                   defconfig    gcc-12
s390                 allmodconfig    gcc-14.1.0
s390                  allnoconfig    clang-20
s390                 allyesconfig    gcc-14.1.0
s390                    defconfig    gcc-12
sh                   allmodconfig    gcc-14.1.0
sh                    allnoconfig    gcc-14.1.0
sh                   allyesconfig    gcc-14.1.0
sh                      defconfig    gcc-12
sh               se7750_defconfig    clang-20
sh              urquell_defconfig    clang-15
sparc                allmodconfig    gcc-14.1.0
sparc64                 defconfig    gcc-12
um                   allmodconfig    clang-20
um                    allnoconfig    clang-20
um                   allyesconfig    clang-20
um                      defconfig    gcc-12
um                 i386_defconfig    gcc-12
x86_64                allnoconfig    clang-18
x86_64               allyesconfig    clang-18
x86_64                  defconfig    clang-18
x86_64                      kexec    clang-18
x86_64                   rhel-8.3    gcc-12
xtensa                allnoconfig    gcc-14.1.0
xtensa      cadence_csp_defconfig    clang-20

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
