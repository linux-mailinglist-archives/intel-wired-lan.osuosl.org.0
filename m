Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C26409E15D9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Dec 2024 09:33:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6ED2B605A1;
	Tue,  3 Dec 2024 08:33:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4pCMdBSUWssd; Tue,  3 Dec 2024 08:33:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CCD7F606C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733214793;
	bh=Z2+/43B5icsng8rjQtF0IegaBfVzrA42Qcb1Iq1HW4U=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0aPfTu+63L9VNsNVXiYJPMC/nXsFlO1d7WshmC8HapLWNG5kkMXRbFqQlbJub35zG
	 ivs5E49ONfgvNGANp57okN9RdLBC58rCA4J160tXUdPQ/XpugZau6WbJ9MBhVc3Vs7
	 /4WQPcQaA+4zkCeVPm5BlX9WRX1wEAeHeR4ktK0WKspzP07yHBTZJUCok3T+hKfjT/
	 uNtp9do1yC99aWk76xMfLG6Xzc1Dt1AGHWdNT78ZSe7xT3dyZLwY50RXeYr2mXvmuj
	 q7nhRBi0WQM2pZ0YsAiIE6ukWwfzry1aFBjlmnTCt9Oo5Jo9AM1YHikffwiOoPe2Sh
	 tbg+v9Hq4OI2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCD7F606C1;
	Tue,  3 Dec 2024 08:33:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 032E02365
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 08:33:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D3CFF400BD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 08:33:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gfKpMWwNJarP for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Dec 2024 08:33:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 45C11400E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45C11400E5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 45C11400E5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 08:33:10 +0000 (UTC)
X-CSE-ConnectionGUID: ZbmgBhZRSOywfGDhowThSw==
X-CSE-MsgGUID: Ov2f8KhtQa+rOX7TJI/Spw==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="33565297"
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="33565297"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 00:33:09 -0800
X-CSE-ConnectionGUID: wQ9xdyJDSV6yPiCvfcf2iQ==
X-CSE-MsgGUID: BrVAGJjMSACCDwasI3yESA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="98137650"
Received: from lkp-server01.sh.intel.com (HELO 388c121a226b) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 03 Dec 2024 00:33:08 -0800
Received: from kbuild by 388c121a226b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tIOLC-0000OH-1X
 for intel-wired-lan@lists.osuosl.org; Tue, 03 Dec 2024 08:33:06 +0000
Date: Tue, 03 Dec 2024 16:30:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202412031619.mHJ6YnQA-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733214790; x=1764750790;
 h=date:from:to:subject:message-id;
 bh=a6GCasyoz+mRQF6ISmsbLrWb8zwbSG0MBhc2RCg0ZB4=;
 b=b+3e4kHxmMvn2wagfEWIyDCLrWNoVKvdAwpXFkcvWdm5WYDkx4q9Irki
 VHHwE/oSkwXVtmXEJYPnHPvu7Ut/FtqEnYYpKahMXqG8ywfOHYSQOSUtA
 uA3JQKn10OGl6uxGIFfqqcqWiG6L9q6JInDEKJKNeFgRCBqlABrx9ZlAF
 iURnAW5ZyOcJHLEIooexsViKrpUGi+6sf1GVnrsIvQbJpRN3BAUy3btlj
 E4vpYYP7jrgeym5OYLgXqQnuk7ThY/FKoDeIqsfXjhFq3JsS8y2tJb9bd
 N7Gs3+WD20/wZG3AKyGeHv0MvuGfDdekZpopg9OS+QQAprcAopfo09IBr
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b+3e4kHx
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 b3dc167c157570c23a712a06c742a5f6232f828d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: b3dc167c157570c23a712a06c742a5f6232f828d  idpf: add read memory barrier when checking descriptor done bit

elapsed time: 728m

configs tested: 129
configs skipped: 13

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    clang-20
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-20
arc                            hsdk_defconfig    gcc-14.2.0
arc                        nsim_700_defconfig    clang-14
arc                   randconfig-001-20241203    clang-20
arc                   randconfig-001-20241203    gcc-13.2.0
arc                   randconfig-002-20241203    clang-20
arc                   randconfig-002-20241203    gcc-13.2.0
arc                    vdk_hs38_smp_defconfig    gcc-14.2.0
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-20
arm                         at91_dt_defconfig    clang-20
arm                   milbeaut_m10v_defconfig    clang-14
arm                         mv78xx0_defconfig    gcc-14.2.0
arm                            qcom_defconfig    clang-14
arm                   randconfig-001-20241203    clang-20
arm                   randconfig-002-20241203    clang-20
arm                   randconfig-002-20241203    gcc-14.2.0
arm                   randconfig-003-20241203    clang-20
arm                   randconfig-004-20241203    clang-20
arm                        realview_defconfig    clang-14
arm                           stm32_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20241203    clang-20
arm64                 randconfig-001-20241203    gcc-14.2.0
arm64                 randconfig-002-20241203    clang-20
arm64                 randconfig-002-20241203    gcc-14.2.0
arm64                 randconfig-003-20241203    clang-20
arm64                 randconfig-003-20241203    gcc-14.2.0
arm64                 randconfig-004-20241203    clang-20
csky                             alldefconfig    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-20
i386        buildonly-randconfig-001-20241203    clang-19
i386        buildonly-randconfig-001-20241203    gcc-12
i386        buildonly-randconfig-002-20241203    clang-19
i386        buildonly-randconfig-002-20241203    gcc-12
i386        buildonly-randconfig-003-20241203    clang-19
i386        buildonly-randconfig-004-20241203    clang-19
i386        buildonly-randconfig-005-20241203    clang-19
i386        buildonly-randconfig-006-20241203    clang-19
i386        buildonly-randconfig-006-20241203    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                       m5275evb_defconfig    clang-14
m68k                        stmark2_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                  cavium_octeon_defconfig    gcc-14.2.0
mips                           ip28_defconfig    gcc-14.2.0
mips                      maltaaprp_defconfig    clang-14
mips                        qi_lb60_defconfig    clang-20
nios2                             allnoconfig    gcc-14.2.0
openrisc                         alldefconfig    gcc-14.2.0
openrisc                          allnoconfig    clang-20
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                generic-32bit_defconfig    clang-14
parisc                generic-64bit_defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    gcc-14.2.0
powerpc                     asp8347_defconfig    gcc-14.2.0
powerpc                   currituck_defconfig    gcc-14.2.0
powerpc                       eiger_defconfig    gcc-14.2.0
powerpc                        fsp2_defconfig    clang-14
powerpc                  iss476-smp_defconfig    gcc-14.2.0
powerpc                   motionpro_defconfig    gcc-14.2.0
powerpc                     mpc5200_defconfig    clang-14
powerpc                     tqm8541_defconfig    gcc-14.2.0
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    gcc-14.2.0
s390                             allmodconfig    clang-20
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                        edosk7705_defconfig    gcc-14.2.0
sh                        edosk7760_defconfig    gcc-14.2.0
sh                               j2_defconfig    gcc-14.2.0
sh                            migor_defconfig    gcc-14.2.0
sh                          r7780mp_defconfig    gcc-14.2.0
sh                          rsk7203_defconfig    clang-14
sh                           se7705_defconfig    clang-14
sh                           se7724_defconfig    gcc-14.2.0
sh                        sh7785lcr_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc64                          alldefconfig    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                               allyesconfig    gcc-12
x86_64      buildonly-randconfig-001-20241203    clang-19
x86_64      buildonly-randconfig-001-20241203    gcc-11
x86_64      buildonly-randconfig-002-20241203    clang-19
x86_64      buildonly-randconfig-002-20241203    gcc-11
x86_64      buildonly-randconfig-003-20241203    clang-19
x86_64      buildonly-randconfig-003-20241203    gcc-11
x86_64      buildonly-randconfig-004-20241203    gcc-11
x86_64      buildonly-randconfig-005-20241203    gcc-11
x86_64      buildonly-randconfig-005-20241203    gcc-12
x86_64      buildonly-randconfig-006-20241203    clang-19
x86_64      buildonly-randconfig-006-20241203    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                  cadence_csp_defconfig    clang-14
xtensa                         virt_defconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
