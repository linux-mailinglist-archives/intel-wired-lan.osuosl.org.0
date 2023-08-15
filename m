Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5098E77CB9F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Aug 2023 13:21:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D58D581F3E;
	Tue, 15 Aug 2023 11:21:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D58D581F3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692098487;
	bh=7aBM7DuBkZqgDxxjmEQrE2YUrmdw+tT4nOShEo7pLts=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=My6G46p8+g9MbsYoJT9AyE/v+bJcxOmTCZJzQxzCe8V5yzBu05+KMM3lBszkWZHud
	 0M8rPgYyoG90ERLY9VOO8icdewyIqTmEhrHFoVjMPba/ilEq+Wg+EBn7gxtFyZSraM
	 eUzGDaDTA3zPiKaD8Rel+Fe1hV0l0VbXOlBX3cB2dphd2++W/TXbakH2HqwViuvTOO
	 wqPBVEa9uHY2p23iqDXUyU6JF29pZLeU1RLsflpX12ImSVXT7hw/anQf7BiJK/ppCE
	 80fjOne+Fpuomd98fnqqswFOAPD97ZVy163/zL/AQ/ZTsWCKCZSdvUeemLsACeMpYe
	 nQEqgKbcMA5lQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eZgI91J4Oalj; Tue, 15 Aug 2023 11:21:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F94F81F2A;
	Tue, 15 Aug 2023 11:21:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F94F81F2A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DE8291BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 11:21:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BD9AD81F2A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 11:21:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD9AD81F2A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FjJdiJjEoF-M for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Aug 2023 11:21:20 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8E0AB81EC4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 11:21:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E0AB81EC4
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="436151170"
X-IronPort-AV: E=Sophos;i="6.01,174,1684825200"; d="scan'208";a="436151170"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 04:21:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="1064418503"
X-IronPort-AV: E=Sophos;i="6.01,174,1684825200"; d="scan'208";a="1064418503"
Received: from lkp-server02.sh.intel.com (HELO b5fb8d9e1ffc) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 15 Aug 2023 04:21:18 -0700
Received: from kbuild by b5fb8d9e1ffc with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qVs6w-0000ud-0e
 for intel-wired-lan@lists.osuosl.org; Tue, 15 Aug 2023 11:21:18 +0000
Date: Tue, 15 Aug 2023 19:20:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308151928.im5HzqrE-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692098480; x=1723634480;
 h=date:from:to:subject:message-id;
 bh=CEy4qS4x1NbnOZw2ZJjn/sdhlti0SN4HdxbBfUFB68w=;
 b=cf9fyk7QqngeZfnFJd5r5uDXNcV8Jd6MHGfoDsXL7CFT4g+I1RaVmheo
 PoukeMRZCCRr5WXpjy1N5pwqMJzAkGn20yYCtWj7J8I5B+1FCNI+VHTLG
 /lUlwbm4hCfIwdIk/PPPKx21BDaaLdjjt5l6bKc9wI8vliOHU63W+NAU0
 F0rlLACmJYxmo3UyObixTHIDg1NsacSWeSWioHe/pR57+QljU5ygfXd4X
 FwcXMRu+KTxV2daHettkLwrhTi1nIyOoghYuyZ5dE3J+RRkq79XW0Muz8
 J4QQH+JM6bCrbOAgmjJKDLeAFH/zHZZiK8j9SydgzaAYHqJTfb8db84mG
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cf9fyk7Q
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 383b0e5644ee170b02a46ab458ffd395590b0e16
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 383b0e5644ee170b02a46ab458ffd395590b0e16  i40e: fix potential memory leaks in i40e_remove()

elapsed time: 727m

configs tested: 107
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230815   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230815   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r005-20230815   clang
arm64                randconfig-r024-20230815   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r011-20230815   gcc  
hexagon              randconfig-r023-20230815   clang
hexagon              randconfig-r041-20230815   clang
hexagon              randconfig-r045-20230815   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230815   clang
i386         buildonly-randconfig-r005-20230815   clang
i386         buildonly-randconfig-r006-20230815   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230815   clang
i386                 randconfig-i002-20230815   clang
i386                 randconfig-i003-20230815   clang
i386                 randconfig-i004-20230815   clang
i386                 randconfig-i005-20230815   clang
i386                 randconfig-i006-20230815   clang
i386                 randconfig-i011-20230815   gcc  
i386                 randconfig-i012-20230815   gcc  
i386                 randconfig-i013-20230815   gcc  
i386                 randconfig-i014-20230815   gcc  
i386                 randconfig-i015-20230815   gcc  
i386                 randconfig-i016-20230815   gcc  
i386                 randconfig-r013-20230815   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r016-20230815   gcc  
m68k                 randconfig-r033-20230815   gcc  
microblaze           randconfig-r001-20230815   gcc  
microblaze           randconfig-r025-20230815   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r003-20230815   gcc  
mips                 randconfig-r021-20230815   clang
nios2                               defconfig   gcc  
openrisc             randconfig-r004-20230815   gcc  
openrisc             randconfig-r014-20230815   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r035-20230815   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230815   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r034-20230815   clang
s390                 randconfig-r044-20230815   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r036-20230815   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r002-20230815   gcc  
sparc                randconfig-r015-20230815   gcc  
sparc                randconfig-r031-20230815   gcc  
sparc64              randconfig-r012-20230815   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230815   clang
x86_64       buildonly-randconfig-r002-20230815   clang
x86_64       buildonly-randconfig-r003-20230815   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r006-20230815   clang
x86_64               randconfig-x001-20230815   gcc  
x86_64               randconfig-x002-20230815   gcc  
x86_64               randconfig-x003-20230815   gcc  
x86_64               randconfig-x004-20230815   gcc  
x86_64               randconfig-x005-20230815   gcc  
x86_64               randconfig-x006-20230815   gcc  
x86_64               randconfig-x011-20230815   clang
x86_64               randconfig-x012-20230815   clang
x86_64               randconfig-x013-20230815   clang
x86_64               randconfig-x014-20230815   clang
x86_64               randconfig-x015-20230815   clang
x86_64               randconfig-x016-20230815   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r032-20230815   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
