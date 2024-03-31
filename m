Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1721C892E24
	for <lists+intel-wired-lan@lfdr.de>; Sun, 31 Mar 2024 01:43:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 529F482321;
	Sun, 31 Mar 2024 00:43:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u_zfFP238Zie; Sun, 31 Mar 2024 00:43:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 404238219C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711845792;
	bh=U054tacVhHMaiswiMhni+W7uUQUDt6W2CVd9YFamPP0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=G4FQGq7HK0g39ojyAtrc+NL3Zbr9pf1BKOlGpLg/UPICmMRwwMsFeXISnkJ2GN/4u
	 YJH5Rso2q27O8zhSk6vNh2Yj59Zgr4VT+VLYAYI6MJfIv0BulbcHZaFcjwa22ZAdr/
	 F26/3IKJrpngyXJFcr9Natz3uDTWexoSJWYxAZ0z9PTFGp/dM7A+WMmEeyDoZJlhwp
	 8/6E6leVj2vJzw+7S7KK9H4PjX2ffeJebHKL6kHkgmghPzh4c8F3iGWonnTTOXXK5J
	 SFdjzSJHrpPzw1B47S6HV85w8t0OyS8V6GveNYAKq7zH46gmfDYSyqJXnd56qEaibP
	 p4TfNDU08ILmg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 404238219C;
	Sun, 31 Mar 2024 00:43:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0D9991BF947
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 00:43:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 06952401CE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 00:43:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NtqqVqXMtd6g for <intel-wired-lan@lists.osuosl.org>;
 Sun, 31 Mar 2024 00:43:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A3512401FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3512401FE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A3512401FE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 00:43:08 +0000 (UTC)
X-CSE-ConnectionGUID: aDKhQuBFQG64knNtJhoLhg==
X-CSE-MsgGUID: 83tyw1JaSWmqQqvkadelKA==
X-IronPort-AV: E=McAfee;i="6600,9927,11029"; a="7125681"
X-IronPort-AV: E=Sophos;i="6.07,169,1708416000"; 
   d="scan'208";a="7125681"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2024 17:43:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,169,1708416000"; d="scan'208";a="54784218"
Received: from lkp-server01.sh.intel.com (HELO 3d808bfd2502) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 30 Mar 2024 17:43:07 -0700
Received: from kbuild by 3d808bfd2502 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rqjHs-0000Z4-2B
 for intel-wired-lan@lists.osuosl.org; Sun, 31 Mar 2024 00:43:04 +0000
Date: Sun, 31 Mar 2024 08:43:01 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202403310800.MY9ZPtHl-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711845789; x=1743381789;
 h=date:from:to:subject:message-id;
 bh=5zjc51Yh/9yK5J1uHWzp4g/B3hNoVW/E9qMJuDoz3Kg=;
 b=bGwmlnbq+nalZwbOw0wJFxxNNjiWEuYvMdLSlS7VZvdID/2GCBXU0j8n
 RRWlA+9MnWM9SVlGR6RUZ/FAGL54pD4qXZCjIEoUk4bJ7OXuUrhG206x9
 dEUHpsZX1YiBZ9Rmsmz50/rfBUxb9E1EiFKgRjpheTE1S0z9Nipe5BRki
 Rx33ysLvwRkat9bbSMNeVMolah/u3FW+yeDhgYc89h1hDAlT6gSLDF/0y
 3JtsCtjhS7ZALZliXwUpji32gpMSEezK4v1kpklp2ZBL8rAaKaR7E4K6D
 a91sA47pA2Qf3H5J+U8xIyI11npFqkl3HAPrqxDdnVpZvba8NqGh6QcTy
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bGwmlnbq
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 f018240f20e060fa5c0e76107cb303ecad42e1f8
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: f018240f20e060fa5c0e76107cb303ecad42e1f8  ice: update E830 device ids and comments

elapsed time: 1451m

configs tested: 130
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240330   gcc  
arc                   randconfig-002-20240330   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240330   clang
arm                   randconfig-002-20240330   clang
arm                   randconfig-003-20240330   gcc  
arm                   randconfig-004-20240330   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240330   clang
arm64                 randconfig-002-20240330   clang
arm64                 randconfig-003-20240330   clang
arm64                 randconfig-004-20240330   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240330   gcc  
csky                  randconfig-002-20240330   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240330   clang
hexagon               randconfig-002-20240330   clang
i386         buildonly-randconfig-001-20240331   clang
i386         buildonly-randconfig-002-20240331   clang
i386         buildonly-randconfig-003-20240331   clang
i386         buildonly-randconfig-004-20240331   gcc  
i386         buildonly-randconfig-005-20240331   gcc  
i386         buildonly-randconfig-006-20240331   gcc  
i386                  randconfig-001-20240331   gcc  
i386                  randconfig-002-20240331   gcc  
i386                  randconfig-003-20240331   clang
i386                  randconfig-004-20240331   gcc  
i386                  randconfig-005-20240331   gcc  
i386                  randconfig-006-20240331   gcc  
i386                  randconfig-011-20240331   clang
i386                  randconfig-012-20240331   gcc  
i386                  randconfig-013-20240331   gcc  
i386                  randconfig-014-20240331   gcc  
i386                  randconfig-015-20240331   clang
i386                  randconfig-016-20240331   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240330   gcc  
loongarch             randconfig-002-20240330   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240330   gcc  
nios2                 randconfig-002-20240330   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240330   gcc  
parisc                randconfig-002-20240330   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20240330   gcc  
powerpc               randconfig-002-20240330   clang
powerpc               randconfig-003-20240330   clang
powerpc64             randconfig-001-20240330   gcc  
powerpc64             randconfig-002-20240330   gcc  
powerpc64             randconfig-003-20240330   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                               defconfig   clang
riscv                 randconfig-001-20240330   gcc  
riscv                 randconfig-002-20240330   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240330   clang
s390                  randconfig-002-20240330   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240330   gcc  
sh                    randconfig-002-20240330   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240330   gcc  
sparc64               randconfig-002-20240330   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240330   clang
um                    randconfig-002-20240330   gcc  
um                           x86_64_defconfig   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240330   gcc  
xtensa                randconfig-002-20240330   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
