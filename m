Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C76A8B8CE37
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Sep 2025 19:46:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A34540F87;
	Sat, 20 Sep 2025 17:46:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9EIq_-m7Clru; Sat, 20 Sep 2025 17:46:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B440B40FB9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758390393;
	bh=0Kt9koGI1nb9bnBTIuY/OkngtmHPZz+B2h/eCCuGSBM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7/3G6KPWVYWBOFjqDOfjwJd8DfSGV0366bz6+hDGsQJhxKEb6zCbeMAjB4yO6xqZ+
	 T8soP99yJeeG+ClFIVH/DJKi+I4yFkXp66vaX2FEN7m0SuVhvLCenaye8koav2p22V
	 DlIdQ8vdevm6L5F/mq6wyMPOe6/PjnxyoCTbT0HvH/Pi3Th+GsaLKpwsCY9c5hJZhF
	 6pBxrnAuEvdi1rjFS52dA1DNZ3NZdeU+z6irUfup+V5x3T9HtiPnXH/iE6C0O/M8Nx
	 5+mYvxq6A41mOTpARnIplO96Vzqx4+UbbUk8PqhbSeX02ewUZFVE3wCeyMfFre1mxN
	 GiEYsMrtKc4VQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B440B40FB9;
	Sat, 20 Sep 2025 17:46:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 39380E7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 17:46:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2B3C184016
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 17:46:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 31YSJOeigTNt for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Sep 2025 17:46:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3DBEE84008
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3DBEE84008
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3DBEE84008
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 17:46:30 +0000 (UTC)
X-CSE-ConnectionGUID: SGiOsYhDRs6pQWQhm284PA==
X-CSE-MsgGUID: gL7PS6H+Q9+5l7VwxFws6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11559"; a="59928560"
X-IronPort-AV: E=Sophos;i="6.18,281,1751266800"; d="scan'208";a="59928560"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 10:46:30 -0700
X-CSE-ConnectionGUID: zY4N5aM5TRihQzkAVzVAVQ==
X-CSE-MsgGUID: u/3XmwdcTFGcli/uZctGpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,281,1751266800"; d="scan'208";a="180133516"
Received: from lkp-server01.sh.intel.com (HELO 84a20bd60769) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 20 Sep 2025 10:46:29 -0700
Received: from kbuild by 84a20bd60769 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v01fH-0005cF-0F
 for intel-wired-lan@lists.osuosl.org; Sat, 20 Sep 2025 17:46:27 +0000
Date: Sun, 21 Sep 2025 01:45:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202509210135.JoqbBBk0-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758390391; x=1789926391;
 h=date:from:to:subject:message-id;
 bh=7VTxzgRxkwoq6sAxNkrIkDyd91+oqtvudg2at24bjJw=;
 b=XXuGMPE+UPrD0bsZOXUxA+rJiQl2XoV9XE66arPbB36roA1u6wkfpo8C
 vFLVubaZgLPs7UzipkB2LB5UmeT21OZkIofsbsVPb+jgG1fwo9zvT/DdJ
 f/TvfQ88iCYdAZiMa33Bp4OMXKh/Dx1YSaxp+/KZQ9AAJ7McEmsAthidk
 d3qTfEJIK9IERoSj54DxiLCoMIZhtDrEPovLQoiu/g60DoByqGRvDh1Jm
 BY44+FgoKTmanFr7O8U9FzGYi4PfKUDZ2mkXCqywOPpEkEftMSM+XIVGh
 trtoPUkzL6JIeSV/9rF7Pv2J80VWKTe+MRDXd1s6HydPkPeAkvBUHxKev
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XXuGMPE+
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 99e9c5ffbbee0f258a1da4eadf602b943f8c8300
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 99e9c5ffbbee0f258a1da4eadf602b943f8c8300  net: intel: fm10k: Fix parameter idx set but not used

elapsed time: 1481m

configs tested: 104
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250920    gcc-9.5.0
arc                   randconfig-002-20250920    gcc-9.5.0
arm                               allnoconfig    clang-22
arm                   randconfig-001-20250920    gcc-12.5.0
arm                   randconfig-002-20250920    clang-22
arm                   randconfig-003-20250920    clang-22
arm                   randconfig-004-20250920    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250920    clang-20
arm64                 randconfig-002-20250920    clang-22
arm64                 randconfig-003-20250920    clang-18
arm64                 randconfig-004-20250920    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250920    gcc-10.5.0
csky                  randconfig-002-20250920    gcc-15.1.0
hexagon                           allnoconfig    clang-22
hexagon               randconfig-001-20250920    clang-22
hexagon               randconfig-002-20250920    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20250920    clang-20
i386        buildonly-randconfig-002-20250920    clang-20
i386        buildonly-randconfig-003-20250920    clang-20
i386        buildonly-randconfig-004-20250920    gcc-13
i386        buildonly-randconfig-005-20250920    clang-20
i386        buildonly-randconfig-006-20250920    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250920    clang-22
loongarch             randconfig-002-20250920    gcc-12.5.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                       rbtx49xx_defconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250920    gcc-9.5.0
nios2                 randconfig-002-20250920    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250920    gcc-8.5.0
parisc                randconfig-002-20250920    gcc-11.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                       ebony_defconfig    clang-22
powerpc                      katmai_defconfig    clang-22
powerpc                   lite5200b_defconfig    clang-22
powerpc               randconfig-001-20250920    clang-17
powerpc               randconfig-002-20250920    clang-22
powerpc               randconfig-003-20250920    clang-22
powerpc                    sam440ep_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20250920    clang-16
powerpc64             randconfig-002-20250920    gcc-10.5.0
powerpc64             randconfig-003-20250920    gcc-10.5.0
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250920    clang-22
riscv                 randconfig-002-20250920    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250920    clang-20
s390                  randconfig-002-20250920    gcc-8.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                          r7780mp_defconfig    gcc-15.1.0
sh                    randconfig-001-20250920    gcc-14.3.0
sh                    randconfig-002-20250920    gcc-12.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250920    gcc-8.5.0
sparc                 randconfig-002-20250920    gcc-14.3.0
sparc64               randconfig-001-20250920    gcc-8.5.0
sparc64               randconfig-002-20250920    gcc-8.5.0
um                                allnoconfig    clang-22
um                    randconfig-001-20250920    clang-22
um                    randconfig-002-20250920    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250920    clang-20
x86_64      buildonly-randconfig-002-20250920    clang-20
x86_64      buildonly-randconfig-003-20250920    clang-20
x86_64      buildonly-randconfig-004-20250920    clang-20
x86_64      buildonly-randconfig-005-20250920    gcc-14
x86_64      buildonly-randconfig-006-20250920    gcc-14
x86_64                              defconfig    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                  audio_kc705_defconfig    gcc-15.1.0
xtensa                generic_kc705_defconfig    gcc-15.1.0
xtensa                randconfig-001-20250920    gcc-8.5.0
xtensa                randconfig-002-20250920    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
