Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A18FC33E1B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 05 Nov 2025 04:49:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 978B2807DB;
	Wed,  5 Nov 2025 03:49:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6bguCUWitqhn; Wed,  5 Nov 2025 03:49:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E899E807CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762314592;
	bh=CxTB6BfAytYcxCLGwqcnjs1vQTUcwS6QU02Nh4ayuBU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qyi1MEee+7M3WEQGG4eGxWyAPuPAB9fBC87lLNxraZEiU8cb4gPJP0ReGA/fphzSV
	 FfBpkd2mX6yPjTWetMXiMdcq5y0a1GlrxSjid99Vq/MbBmTs2NICOBrX5XVYZ7GIC3
	 ZYz98A3NaH1IYS0eTqR+cpU4eDRHEoqlBxmtRzP192tF+svGN1e2at+jdWTNdZ06bi
	 aQQ1c98Ck6qttPLMdfaPEKKEls7uhpPpnwxSOhchTEiGugxiCwfaiIGhjVJVg9oGUG
	 McNWSS8NroVDUQM0G//Jm2QI4HENaDXeIiVSVVB8mrQlkpM5S6sNd+nKFeiiCd3IW2
	 YDZYYZQRWEiMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E899E807CA;
	Wed,  5 Nov 2025 03:49:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 13538462
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 03:49:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 04EC740E89
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 03:49:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h8WkiPmEU85w for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Nov 2025 03:49:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CBD70400A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CBD70400A0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CBD70400A0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 03:49:48 +0000 (UTC)
X-CSE-ConnectionGUID: ArV8764BTSqdWNNAmfGrjA==
X-CSE-MsgGUID: 4+nmw6dlRaGcxeDe0xLX+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="68280201"
X-IronPort-AV: E=Sophos;i="6.19,280,1754982000"; d="scan'208";a="68280201"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 19:49:48 -0800
X-CSE-ConnectionGUID: qaNWM/jUSPqAlrCgyNaoag==
X-CSE-MsgGUID: c5pzVwqvSNeRW2KwmXS4jA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,280,1754982000"; d="scan'208";a="191692000"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
 by orviesa004.jf.intel.com with ESMTP; 04 Nov 2025 19:49:47 -0800
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vGUU7-000S82-2i
 for intel-wired-lan@lists.osuosl.org; Wed, 05 Nov 2025 03:49:09 +0000
Date: Wed, 05 Nov 2025 11:45:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511051148.Rfyk5aM4-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762314589; x=1793850589;
 h=date:from:to:subject:message-id;
 bh=3nMhMpEHNbr7U3eIt1MfReSFnbVIx+b7s2FLAaM2rW4=;
 b=HuiK7HspHPYuh01WF9Or7faU+UV54iPbptf78doPtniQ6cauXLXmpPVb
 nmtW9YpUiAof/mPRcnN80KNShE7syruCufE59g+NWEakULJsq633nZsCz
 WAJEz6HTQPIw4KMektUi1XT2/bQdrNX2BHx1qpCjw9AazkRYm/W6GqUSq
 FcqswRyDgta3kczvgFeevOjSmdg3k5bnti3Fwm5d8ER4zqKMpG4kV4s4G
 nZecOirL5Je2bGjab0TnmzJVP71uJf5heF1LrXUH0Mn5mWY1QA2iJ6Rcz
 L4Ycdmc5j+IJpzDdwoEomUPAn6ZcsAA+rEI3aGX0YdveDS/fPatkKh/Y5
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HuiK7Hsp
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 6f0659e5ed798cda605367694314c189335d45b1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 200GbE
branch HEAD: 6f0659e5ed798cda605367694314c189335d45b1  idpf: add support for IDPF PCI programming interface

elapsed time: 1487m

configs tested: 110
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                          axs103_defconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                   randconfig-001-20251104    gcc-12.5.0
arc                   randconfig-002-20251104    gcc-9.5.0
arm                               allnoconfig    clang-22
arm                          gemini_defconfig    clang-20
arm                   randconfig-001-20251104    gcc-14.3.0
arm                   randconfig-002-20251104    gcc-10.5.0
arm                   randconfig-003-20251104    clang-22
arm                   randconfig-004-20251104    gcc-8.5.0
arm                         s5pv210_defconfig    gcc-15.1.0
arm                           sama7_defconfig    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251105    clang-17
arm64                 randconfig-002-20251105    gcc-13.4.0
arm64                 randconfig-003-20251105    gcc-8.5.0
arm64                 randconfig-004-20251105    clang-17
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251105    gcc-15.1.0
csky                  randconfig-002-20251105    gcc-15.1.0
hexagon                           allnoconfig    clang-22
hexagon               randconfig-001-20251104    clang-22
hexagon               randconfig-002-20251104    clang-16
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20251105    gcc-14
i386        buildonly-randconfig-002-20251105    gcc-14
i386        buildonly-randconfig-003-20251105    clang-20
i386        buildonly-randconfig-004-20251105    gcc-14
i386        buildonly-randconfig-005-20251105    gcc-14
i386        buildonly-randconfig-006-20251105    clang-20
i386                  randconfig-001-20251105    clang-20
i386                  randconfig-002-20251105    gcc-14
i386                  randconfig-003-20251105    clang-20
i386                  randconfig-004-20251105    clang-20
i386                  randconfig-005-20251105    clang-20
i386                  randconfig-006-20251105    gcc-13
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251104    gcc-15.1.0
loongarch             randconfig-002-20251104    clang-22
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251104    gcc-8.5.0
nios2                 randconfig-002-20251104    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                randconfig-001-20251104    gcc-8.5.0
parisc                randconfig-002-20251104    gcc-15.1.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                     ppa8548_defconfig    gcc-15.1.0
powerpc               randconfig-001-20251104    gcc-15.1.0
powerpc               randconfig-002-20251104    clang-22
powerpc64             randconfig-001-20251104    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20251104    gcc-8.5.0
riscv                 randconfig-002-20251104    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20251104    clang-22
s390                  randconfig-002-20251104    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20251104    gcc-13.4.0
sh                    randconfig-002-20251104    gcc-11.5.0
sh                          rsk7269_defconfig    gcc-15.1.0
sh                           se7705_defconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20251105    gcc-12.5.0
sparc                 randconfig-002-20251105    gcc-15.1.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251105    clang-22
sparc64               randconfig-002-20251105    gcc-10.5.0
um                                allnoconfig    clang-22
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251105    clang-22
um                    randconfig-002-20251105    gcc-14
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20251105    clang-20
x86_64      buildonly-randconfig-002-20251105    gcc-13
x86_64      buildonly-randconfig-003-20251105    gcc-14
x86_64      buildonly-randconfig-004-20251105    gcc-13
x86_64      buildonly-randconfig-005-20251105    gcc-14
x86_64      buildonly-randconfig-006-20251105    gcc-13
x86_64                              defconfig    gcc-14
x86_64                randconfig-011-20251105    clang-20
x86_64                randconfig-012-20251105    clang-20
x86_64                randconfig-013-20251105    clang-20
x86_64                randconfig-014-20251105    gcc-14
x86_64                randconfig-015-20251105    clang-20
x86_64                randconfig-016-20251105    gcc-14
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251105    gcc-11.5.0
xtensa                randconfig-002-20251105    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
