Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A7E967163
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Aug 2024 13:45:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E4B341DB0;
	Sat, 31 Aug 2024 11:45:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TBSP9QZNXFIg; Sat, 31 Aug 2024 11:45:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 25BE541DCE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725104707;
	bh=xygmhQlDkolRNHctWv5mqCNBR5QqUdVUCc8V8xP2RzM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KLy172Y32+uGXuyqrDWAOrkHsBvWBxiK4pmUfDAn+4Ad2jk+lB0VjXEDCnoaOogGR
	 J7FKh2pXYgUEpuK/1FOr3FeyUvTR30Qy8nrG7NHiI0DBIHWeDB8WjjAyzgd1atJ0Z1
	 i8nPwTSJymi0JJwwtedjaSbVo726kAxXCAuf9HfkZEGOmlSCofn2evSqbnQrSSGJme
	 q8EDxGEo23f8BQhp9GwGN/XawqMFI9Zbsjc1iQXUQWZiFA1/DITD50tc4C6Yfn6CqV
	 NtesTuW+IqEEcJPwRuJs4Of6TgB4ru/jsGqEhuAjwO/cxF63rYOhN+4eqUMkF8ZPGz
	 rFbd/mh7QwXEA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25BE541DCE;
	Sat, 31 Aug 2024 11:45:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7CEE81BF484
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Aug 2024 11:45:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6830D80E93
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Aug 2024 11:45:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fixhvo1X8qQY for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 Aug 2024 11:45:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 47C9A80E68
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47C9A80E68
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 47C9A80E68
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Aug 2024 11:45:03 +0000 (UTC)
X-CSE-ConnectionGUID: PjeOuecTSlCgjglVBHN7WA==
X-CSE-MsgGUID: rNMYBTFdSgmvYgExIOeHHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11180"; a="34407242"
X-IronPort-AV: E=Sophos;i="6.10,191,1719903600"; d="scan'208";a="34407242"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2024 04:45:03 -0700
X-CSE-ConnectionGUID: I9xX8EO+Se272UxnJ0P3Tg==
X-CSE-MsgGUID: sEGtLWEARCOWPDHIuG14cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,191,1719903600"; d="scan'208";a="69038773"
Received: from lkp-server01.sh.intel.com (HELO 9c6b1c7d3b50) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 31 Aug 2024 04:45:02 -0700
Received: from kbuild by 9c6b1c7d3b50 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1skMXM-0002ha-0c
 for intel-wired-lan@lists.osuosl.org; Sat, 31 Aug 2024 11:45:00 +0000
Date: Sat, 31 Aug 2024 19:44:50 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408311948.PImArDL0-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725104704; x=1756640704;
 h=date:from:to:subject:message-id;
 bh=7XMSqENusoMIq//oXAE/nCgJvruVJ+tmSb6GVuFB2UA=;
 b=cPZXcJSxCyMhPidwJCkS7PBvUEfiZTzq9422MW6OOuSRBiisxMHy0qkn
 gW0zGO2OSBCA0+YE61NyXqWAdF7hUUBW5sJVeUm57QNJjZm3d/hhzooOf
 gyGmijMrcjnNKxY/4gxJ12OdDjyRoI4dRDizgp5jjc06dmhRmjXjCyRzv
 vKszaJu1eeAE03lQYYFzlp1L+aggn674ApUoPkS7MdTWjFNzmrA+Q30lR
 72cekecwz4Jk5li+wLiBGKWdbdUNjIRwT/7IBkk46F0CUqJI4//zhFDPn
 p+K2ZeUl89LBWrjwYuGaliWVnJvZ2247nrcImMOkBCCL3eD9mCd+xlqA9
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cPZXcJSx
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 0568ee1198f8645864f55671b82e5175b08d8c83
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 1GbE
branch HEAD: 0568ee1198f8645864f55671b82e5175b08d8c83  i40e: Add Energy Efficient Ethernet ability for X710 Base-T/KR/KX cards

elapsed time: 916m

configs tested: 110
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-14.1.0
alpha                            allyesconfig   clang-20
alpha                               defconfig   gcc-14.1.0
arc                              allmodconfig   clang-20
arc                               allnoconfig   gcc-14.1.0
arc                              allyesconfig   clang-20
arc                                 defconfig   gcc-14.1.0
arc                        nsimosci_defconfig   clang-20
arm                              allmodconfig   clang-20
arm                               allnoconfig   gcc-14.1.0
arm                              allyesconfig   clang-20
arm                                 defconfig   gcc-14.1.0
arm                          gemini_defconfig   clang-20
arm                      jornada720_defconfig   clang-20
arm                         nhk8815_defconfig   clang-20
arm                         vf610m4_defconfig   clang-20
arm                    vt8500_v6_v7_defconfig   clang-20
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-14.1.0
hexagon                          alldefconfig   clang-20
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   gcc-14.1.0
hexagon                          allyesconfig   clang-20
hexagon                             defconfig   gcc-14.1.0
i386                             allmodconfig   clang-18
i386                              allnoconfig   clang-18
i386                             allyesconfig   clang-18
i386         buildonly-randconfig-001-20240831   clang-18
i386         buildonly-randconfig-002-20240831   clang-18
i386         buildonly-randconfig-003-20240831   clang-18
i386         buildonly-randconfig-004-20240831   clang-18
i386         buildonly-randconfig-005-20240831   clang-18
i386         buildonly-randconfig-006-20240831   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240831   clang-18
i386                  randconfig-002-20240831   clang-18
i386                  randconfig-003-20240831   clang-18
i386                  randconfig-004-20240831   clang-18
i386                  randconfig-005-20240831   clang-18
i386                  randconfig-006-20240831   clang-18
i386                  randconfig-011-20240831   clang-18
i386                  randconfig-012-20240831   clang-18
i386                  randconfig-013-20240831   clang-18
i386                  randconfig-014-20240831   clang-18
i386                  randconfig-015-20240831   clang-18
i386                  randconfig-016-20240831   clang-18
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
mips                          malta_defconfig   clang-20
mips                        omega2p_defconfig   clang-20
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-14.1.0
openrisc                          allnoconfig   clang-20
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-12
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   clang-20
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-12
parisc64                            defconfig   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   clang-20
powerpc                          allyesconfig   gcc-14.1.0
powerpc                 canyonlands_defconfig   clang-20
powerpc                       ebony_defconfig   clang-20
powerpc                    mvme5100_defconfig   clang-20
powerpc                  storcenter_defconfig   clang-20
powerpc                     tqm8540_defconfig   clang-20
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
sh                        sh7763rdp_defconfig   clang-20
sh                        sh7785lcr_defconfig   clang-20
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-12
um                               allmodconfig   clang-20
um                                allnoconfig   clang-20
um                               allyesconfig   clang-20
um                                  defconfig   gcc-12
um                             i386_defconfig   gcc-12
um                           x86_64_defconfig   gcc-12
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64                              defconfig   clang-18
x86_64                                  kexec   gcc-12
x86_64                          rhel-8.3-rust   clang-18
x86_64                               rhel-8.3   gcc-12
xtensa                            allnoconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
