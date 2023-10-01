Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 060DC7B4697
	for <lists+intel-wired-lan@lfdr.de>; Sun,  1 Oct 2023 11:36:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 95F6E821CF;
	Sun,  1 Oct 2023 09:36:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95F6E821CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696153012;
	bh=2oEG2G/AIhi2dCPRUeZiSrHGAWXhhHk9VbCZv1Hsp3k=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vZpjmt0WMrwMVi37UPrPeaMRB2iHfocU/DJyZ42ATWyI4PuAQoT/sWIKU+PGdu85+
	 LtITCpdJANJk8ZCnVMbwUF95IG20/KHI3wkNUFkhG6UVBXGmVTOlgxN6042iVSKewn
	 iyx/vtKNMujns03p5MGFe+gESInTc9t46gQx5Gpo3zHIWrPBlm8pO6EOmFG3g7a0Ft
	 HR2/jT4L+2FCS5HU1WciFlZZ3jHPmnzyABUDr2EpemnPu9wlbMytQ+4Ic9yCSfQLJF
	 21FfvBT3ESifqvYofA9ro3i7scK6iDoBxDAzUsZwWZWW3kGrMmZS4+mI8IVmju0Bra
	 6b2QRJUTN9dHg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KzfEuddxeWym; Sun,  1 Oct 2023 09:36:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4924382043;
	Sun,  1 Oct 2023 09:36:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4924382043
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9C8831BF48D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Oct 2023 09:36:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 733F4416C5
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Oct 2023 09:36:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 733F4416C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KhNPGorvCsqV for <intel-wired-lan@lists.osuosl.org>;
 Sun,  1 Oct 2023 09:36:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8BEE3416C2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Oct 2023 09:36:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BEE3416C2
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="468792432"
X-IronPort-AV: E=Sophos;i="6.03,191,1694761200"; d="scan'208";a="468792432"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 02:36:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="866199286"
X-IronPort-AV: E=Sophos;i="6.03,191,1694761200"; d="scan'208";a="866199286"
Received: from lkp-server02.sh.intel.com (HELO c3b01524d57c) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 01 Oct 2023 02:36:41 -0700
Received: from kbuild by c3b01524d57c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qmssR-0004wp-0Z
 for intel-wired-lan@lists.osuosl.org; Sun, 01 Oct 2023 09:36:39 +0000
Date: Sun, 01 Oct 2023 17:36:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202310011721.C6i0ZNaX-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696153004; x=1727689004;
 h=date:from:to:subject:message-id;
 bh=LaNfmlu+aRlMnI7PsI3Q4sfBdMyFeodz/UhZmYKL/uE=;
 b=ggfvUpdwd7gQtrcnBa2RLLpT6sIiHmP2aToDXhHsP800PB7oTzah2L1m
 lUjrMyapM5gGbwPE+7XEUtdT8EVcNXekibc/V0w6278cizOu0jtePi40y
 WsQRGrYZ71dTw2GGTtE5kSrWtPsulkEs0N7RmBb3SVlCVbLH/V81Ix726
 nvy+uAHnEfdhD1gq2+rNajDcbanmAh8vtLUpkfPj1MD0Xu/bB0sWt6yGG
 j6aHdEjfk6vixHDTbGXGsgnur/o0YSu1tmKWPMt3OoO0SQ4KSJ8jvarcE
 j0+hE7l2qBhy6bo2qNVeXr0U6tjBKn2E+B+ThzrBWAC42v5JyVbOHNxUx
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ggfvUpdw
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 16d68c3b24386ec40de86dde4645b0d19e5c0140
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 16d68c3b24386ec40de86dde4645b0d19e5c0140  iavf: Avoid a memory allocation in iavf_print_link_message()

elapsed time: 2485m

configs tested: 128
configs skipped: 2

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
arc                   randconfig-001-20230930   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20230930   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230930   gcc  
i386         buildonly-randconfig-002-20230930   gcc  
i386         buildonly-randconfig-003-20230930   gcc  
i386         buildonly-randconfig-004-20230930   gcc  
i386         buildonly-randconfig-005-20230930   gcc  
i386         buildonly-randconfig-006-20230930   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230930   gcc  
i386                  randconfig-002-20230930   gcc  
i386                  randconfig-003-20230930   gcc  
i386                  randconfig-004-20230930   gcc  
i386                  randconfig-005-20230930   gcc  
i386                  randconfig-006-20230930   gcc  
i386                  randconfig-011-20230930   gcc  
i386                  randconfig-012-20230930   gcc  
i386                  randconfig-013-20230930   gcc  
i386                  randconfig-014-20230930   gcc  
i386                  randconfig-015-20230930   gcc  
i386                  randconfig-016-20230930   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230930   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230930   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230930   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230930   gcc  
x86_64       buildonly-randconfig-002-20230930   gcc  
x86_64       buildonly-randconfig-003-20230930   gcc  
x86_64       buildonly-randconfig-004-20230930   gcc  
x86_64       buildonly-randconfig-005-20230930   gcc  
x86_64       buildonly-randconfig-006-20230930   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20230930   gcc  
x86_64                randconfig-002-20230930   gcc  
x86_64                randconfig-003-20230930   gcc  
x86_64                randconfig-004-20230930   gcc  
x86_64                randconfig-005-20230930   gcc  
x86_64                randconfig-006-20230930   gcc  
x86_64                randconfig-011-20230930   gcc  
x86_64                randconfig-012-20230930   gcc  
x86_64                randconfig-013-20230930   gcc  
x86_64                randconfig-014-20230930   gcc  
x86_64                randconfig-015-20230930   gcc  
x86_64                randconfig-016-20230930   gcc  
x86_64                randconfig-071-20230930   gcc  
x86_64                randconfig-072-20230930   gcc  
x86_64                randconfig-073-20230930   gcc  
x86_64                randconfig-074-20230930   gcc  
x86_64                randconfig-075-20230930   gcc  
x86_64                randconfig-076-20230930   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
