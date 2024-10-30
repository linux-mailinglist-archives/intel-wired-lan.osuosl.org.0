Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D51189B5B79
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Oct 2024 06:55:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4FF4360755;
	Wed, 30 Oct 2024 05:55:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YPmE7mjHrUAy; Wed, 30 Oct 2024 05:55:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 31CD260844
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730267702;
	bh=WLE9wRRO/WVg6BjVxm51pMyEg071BCEOd3YJZTtrkGE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=U9B+k7uFIWyH8JBXBdPrVbLzJlyWEOi94bNq96P4JyhHn4GVcmp5lrkDM9lt4FG9W
	 F6mZlrrXllWjPnnX5CqkNDneKG2tIRSrIcdgR97CiuXRol361buV9Ra+VKZoovQUpY
	 lKicPVBIGxD/fnHqsbtQ2HUKHQoODOdYM5HUWuGdo3QmkbQ8urIuMu8iQTGwfot4Md
	 q0k3+qvBL62t3EBKoeRi2Mlri39AbzyWCy3FZC5A0VJvhsGublR8Q39qM+lUI4qmAv
	 vOQvznVz+tU/wvCZA0AeQfV+oK80FI7TtrLJmnM8MWBaM060/+ngKOCpbtOZP/JUib
	 lSu00t48Bu+Mg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31CD260844;
	Wed, 30 Oct 2024 05:55:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id F17264EC0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 05:54:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D69A881008
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 05:54:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g6uQMyU-lcpz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Oct 2024 05:54:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 13B7081004
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13B7081004
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 13B7081004
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 05:54:57 +0000 (UTC)
X-CSE-ConnectionGUID: HjiiM7Z8TRSsTG+vK1DZIg==
X-CSE-MsgGUID: 00kZEz65SZqNt8VvDI40ow==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="33750353"
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="33750353"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 22:54:57 -0700
X-CSE-ConnectionGUID: Bibkupn5QtO3AEeZs1NKmA==
X-CSE-MsgGUID: xlsAB5A9SL2QbhsPy+pmbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="119682873"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 29 Oct 2024 22:54:56 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t61fR-000eZA-1t
 for intel-wired-lan@lists.osuosl.org; Wed, 30 Oct 2024 05:54:53 +0000
Date: Wed, 30 Oct 2024 13:54:21 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410301308.weWtsBcH-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730267699; x=1761803699;
 h=date:from:to:subject:message-id;
 bh=Vz6FEgPz2GIv505C6udSdfxBhSjNVkRnnRxRUloXCu8=;
 b=HsODHBwPuwz9l7R9mzZotb+H+qmcn6Uq2AB6z0/L6vsAqwP25/aYtJ8q
 r9S/Fihyo9j+H+//8mOBL9nwbIUImMSIEm7tlb+DMBXH20xq+K03fN54l
 f0LMGTFifFh1ZldNLhKVWq8iweusSuQTZDCOMmdX1UFdBF1oAT6gJ1tu4
 LiMUQ7IsXldJQ3hDeh3ScHQF5MJv6SHFzaYtizvhNuY2xU9VklE46jUqh
 VOyapAnBMuROPocW2C+POOUK/N83s42hCwoX8EnQyMn/BRatvJaaZkXqA
 STc3+6Z8sYYJcs5QsLlp4qLF3/60RqGBSGB/G5kBRVNXO/FI74aGrLmUk
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HsODHBwP
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 c093e2b9768b3a5cd7a37ea654cd47094519f843
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: c093e2b9768b3a5cd7a37ea654cd47094519f843  Merge branch 'ibm-emac-more-cleanups'

elapsed time: 880m

configs tested: 76
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha            allnoconfig    gcc-14.1.0
alpha           allyesconfig    clang-20
alpha              defconfig    gcc-14.1.0
arc             allmodconfig    clang-20
arc              allnoconfig    gcc-14.1.0
arc             allyesconfig    clang-20
arc                defconfig    gcc-14.1.0
arm             allmodconfig    clang-20
arm              allnoconfig    gcc-14.1.0
arm             allyesconfig    clang-20
arm                defconfig    gcc-14.1.0
arm64           allmodconfig    clang-20
arm64            allnoconfig    gcc-14.1.0
arm64              defconfig    gcc-14.1.0
csky             allnoconfig    gcc-14.1.0
csky               defconfig    gcc-14.1.0
hexagon         allmodconfig    clang-20
hexagon          allnoconfig    gcc-14.1.0
hexagon         allyesconfig    clang-20
hexagon            defconfig    gcc-14.1.0
i386            allmodconfig    clang-19
i386             allnoconfig    clang-19
i386            allyesconfig    clang-19
i386               defconfig    clang-19
loongarch       allmodconfig    gcc-14.1.0
loongarch        allnoconfig    gcc-14.1.0
loongarch          defconfig    gcc-14.1.0
m68k            allmodconfig    gcc-14.1.0
m68k             allnoconfig    gcc-14.1.0
m68k            allyesconfig    gcc-14.1.0
m68k               defconfig    gcc-14.1.0
microblaze      allmodconfig    gcc-14.1.0
microblaze       allnoconfig    gcc-14.1.0
microblaze      allyesconfig    gcc-14.1.0
microblaze         defconfig    gcc-14.1.0
mips             allnoconfig    gcc-14.1.0
nios2            allnoconfig    gcc-14.1.0
nios2              defconfig    gcc-14.1.0
openrisc         allnoconfig    clang-20
openrisc        allyesconfig    gcc-14.1.0
openrisc           defconfig    gcc-12
parisc          allmodconfig    gcc-14.1.0
parisc           allnoconfig    clang-20
parisc          allyesconfig    gcc-14.1.0
parisc             defconfig    gcc-12
parisc64           defconfig    gcc-14.1.0
powerpc         allmodconfig    gcc-14.1.0
powerpc          allnoconfig    clang-20
powerpc         allyesconfig    gcc-14.1.0
riscv           allmodconfig    gcc-14.1.0
riscv            allnoconfig    clang-20
riscv           allyesconfig    gcc-14.1.0
riscv              defconfig    gcc-12
s390            allmodconfig    gcc-14.1.0
s390             allnoconfig    clang-20
s390            allyesconfig    gcc-14.1.0
s390               defconfig    gcc-12
sh              allmodconfig    gcc-14.1.0
sh               allnoconfig    gcc-14.1.0
sh              allyesconfig    gcc-14.1.0
sh                 defconfig    gcc-12
sparc           allmodconfig    gcc-14.1.0
sparc64            defconfig    gcc-12
um              allmodconfig    clang-20
um               allnoconfig    clang-20
um              allyesconfig    clang-20
um                 defconfig    gcc-12
um            i386_defconfig    gcc-12
um          x86_64_defconfig    gcc-12
x86_64           allnoconfig    clang-19
x86_64          allyesconfig    clang-19
x86_64             defconfig    clang-19
x86_64                 kexec    clang-19
x86_64                 kexec    gcc-12
x86_64              rhel-8.3    gcc-12
xtensa           allnoconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
