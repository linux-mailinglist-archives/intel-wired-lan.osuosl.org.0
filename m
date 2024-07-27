Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8DC93DEB9
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Jul 2024 12:26:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D4C2E811E0;
	Sat, 27 Jul 2024 10:26:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yIiRrB6j8LsM; Sat, 27 Jul 2024 10:26:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 734EB811E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722075989;
	bh=AjzUjPCbmUfCYfaaEUOjOzDdK4wWoI2VDE/91b8u+mU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=sSRPDyjIyRNsQ8nEZLaLntlWJKi/nmfPkD//bn63HMG9tH5nOf8krnb6QRkHykRua
	 awLiDEBkC6/nxlqGfB/ngLSlPbLk2gkk0Z8dOLUsrT1KZ1x+69Mb14/efWR5xQQGhE
	 p92p/hudeTzWnEPYHgK07qvDAAc7YiCHqcrpx5OAHhEtLK22SIgpboo0+LbiQ9tCWb
	 D4ALOTzrNEFbztOQqP0XE3lXk83GMpZ3E3ax/Fp99lgg1hxMhLXjj6wiWCf1Omxjh3
	 chspj3hXSvfoc0qyhEqZUSaGn6w64ZvDW6yFMA3fJTM6zH7z23qolQQfJoteFs4f3D
	 EqK6sa2c+JOlA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 734EB811E7;
	Sat, 27 Jul 2024 10:26:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 68C541BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jul 2024 10:26:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 618464045B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jul 2024 10:26:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2SV2pU0-Do65 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Jul 2024 10:26:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2100540429
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2100540429
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2100540429
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jul 2024 10:26:25 +0000 (UTC)
X-CSE-ConnectionGUID: d5Pql+RKSqCe1/CO+6UAOw==
X-CSE-MsgGUID: AK/qDXpMRDii7C/fy9MMmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11145"; a="22778462"
X-IronPort-AV: E=Sophos;i="6.09,241,1716274800"; d="scan'208";a="22778462"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2024 03:26:25 -0700
X-CSE-ConnectionGUID: aMpmjHCuQ/+IM6i/3t/ahg==
X-CSE-MsgGUID: nIZIaPCjQrWZpi2WFMQ2zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,241,1716274800"; d="scan'208";a="58279332"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 27 Jul 2024 03:26:24 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sXed3-000prY-2T
 for intel-wired-lan@lists.osuosl.org; Sat, 27 Jul 2024 10:26:21 +0000
Date: Sat, 27 Jul 2024 18:25:33 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407271831.Eqb5tzbh-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722075986; x=1753611986;
 h=date:from:to:subject:message-id;
 bh=15I047tLFyqtvh/jWvpVYdpL2XmcbhF3yYiY3Nz3D/k=;
 b=XxucRve1yTxHU5lQ4b/lA6Bzl3ZZ99+Xc1hPPszS+siuLrmjvPuDX9/x
 UfOU0EAYD28RIUO9pwszcuaJ5su54zYCxFFJPi8sQvqm/Wg8XCqIE+onf
 FY+pjDvXzKq/41RLauBdI6YXM3Qg0HB5mNTYm+PovpHBrf8u2DJQnuxDd
 m0kX8CEMkdHmFSWjue/DfvIQW+UV3pTXeNSOcVCT8L9t4tP90PceRKUer
 yxDAAHmGsuCTSPgV6bPlNlHj3G1tcpK+d2ZncxgPQJV3QRcY03mr4BWKT
 1WwH8xXaJqiiE8qOCamUhXL6giha7D2NmEnMRs464lz/6bAgJgSzbYd13
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XxucRve1
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 ab8f141d1bbf9ea63937f7d8d4a0887780e03ac5
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: ab8f141d1bbf9ea63937f7d8d4a0887780e03ac5  ice: xsk: fix txq interrupt mapping

elapsed time: 814m

configs tested: 99
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                          axs103_defconfig   gcc-13.2.0
arc                    vdk_hs38_smp_defconfig   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                          pxa910_defconfig   gcc-13.2.0
arm64                            allmodconfig   clang-20
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-13
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240727   gcc-13
i386         buildonly-randconfig-002-20240727   clang-18
i386         buildonly-randconfig-003-20240727   gcc-8
i386         buildonly-randconfig-004-20240727   gcc-10
i386         buildonly-randconfig-005-20240727   clang-18
i386         buildonly-randconfig-006-20240727   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240727   clang-18
i386                  randconfig-002-20240727   gcc-8
i386                  randconfig-003-20240727   clang-18
i386                  randconfig-004-20240727   clang-18
i386                  randconfig-005-20240727   clang-18
i386                  randconfig-006-20240727   gcc-13
i386                  randconfig-011-20240727   gcc-13
i386                  randconfig-012-20240727   gcc-13
i386                  randconfig-013-20240727   gcc-11
i386                  randconfig-014-20240727   gcc-13
i386                  randconfig-015-20240727   clang-18
i386                  randconfig-016-20240727   gcc-7
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                           sun3_defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
mips                          ath79_defconfig   gcc-13.2.0
mips                     loongson1b_defconfig   gcc-13.2.0
mips                malta_qemu_32r6_defconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc                      bamboo_defconfig   gcc-13.2.0
powerpc                    mvme5100_defconfig   gcc-13.2.0
powerpc                      pmac32_defconfig   gcc-13.2.0
powerpc                     tqm8541_defconfig   gcc-13.2.0
riscv                            allmodconfig   clang-20
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
s390                             alldefconfig   gcc-13.2.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                     magicpanelr2_defconfig   gcc-13.2.0
sh                           se7619_defconfig   gcc-13.2.0
sparc                            allmodconfig   gcc-14.1.0
sparc                       sparc64_defconfig   gcc-13.2.0
um                               allmodconfig   clang-20
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-13
um                               allyesconfig   gcc-13.3.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0
xtensa                  cadence_csp_defconfig   gcc-13.2.0
xtensa                generic_kc705_defconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
