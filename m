Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C689C8A93FA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 09:26:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6371E81F32;
	Thu, 18 Apr 2024 07:26:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mthEnY-TMake; Thu, 18 Apr 2024 07:26:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4EA2781F35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713425195;
	bh=OVkWS2KmXXI291nhcVFtfnxIXaVwKFG5bZygrJsgDaE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fbAr7Z06Cyb0aslD+KgERlXj5evcLzWrk7O4bLIYBnYVAdnD8sSdtjV8n9JhpxPGX
	 D0whPlCmbK28GeUMjnjFao1/k0Nvf+PClbPo5n28kk7adaDNbNo5ec2c5r490V8lSy
	 PGK+gLg9JaJ94JBnPlbN0wOu10VQSD0qRsd+J3WAIV6qfkiUL4nzGAnmKkbnbyl2xO
	 a02XjCH04Ty/NvRAKddiPSiyL9CdUq9Du7ZoiXsm77hQEL3XALjEXNxZL/AxJvarAN
	 SPK5YURNEiBgqUuUguc2ujSqDHVfpBPhF3QsCnrlGRz4JJQWKgeq7jPIlCeO3lIfTn
	 VeuF5z00lvapg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4EA2781F35;
	Thu, 18 Apr 2024 07:26:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 812B01BF31E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 07:26:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6D72881F31
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 07:26:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3IVw-k4fCLK2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 07:26:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7518681EF8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7518681EF8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7518681EF8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 07:26:32 +0000 (UTC)
X-CSE-ConnectionGUID: n2W2q5LZS0er8fuwP3f/nA==
X-CSE-MsgGUID: SbS+8wKQQSmADJsETre8qw==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="12736976"
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="12736976"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 00:26:32 -0700
X-CSE-ConnectionGUID: 8z/UWw4MSrOHlcWGWs8yzA==
X-CSE-MsgGUID: f+3yXbxmTbSPrHgjHZMlMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="23495446"
Received: from unknown (HELO 23c141fc0fd8) ([10.239.97.151])
 by orviesa008.jf.intel.com with ESMTP; 18 Apr 2024 00:26:31 -0700
Received: from kbuild by 23c141fc0fd8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rxMA8-0007OO-1R
 for intel-wired-lan@lists.osuosl.org; Thu, 18 Apr 2024 07:26:28 +0000
Date: Thu, 18 Apr 2024 15:25:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404181529.8qHoXI2k-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713425192; x=1744961192;
 h=date:from:to:subject:message-id;
 bh=p6Ezop8Wbpkwisgt23JFab0m/iabvc1se7AIKcRT66w=;
 b=N5PR/X19tpWVmOcHCh67qN96PR8OR3jKa4FuTxBSoRGMWHcZeG9vWWb+
 I2lf0I1kk+2YvKUSOutLOAW9x+8Sz46by159dGVht1xhLkcZz27fwbd1/
 9QBU1J/iSXxU368Pf4YlIKFfDPqd9Vr8EllaXoeZdF+SFAdG/EWgHY366
 a7xFMS7njH2C7ZKzWIi0ZCfD/EgC9URVhDd6MPRODPNHS4KwG7WbuLDPW
 fo5vOEx9KSdZjgFL2Xxk4nhCHnXGIyHOjs89nZP8MUMZ5wIhpaBkI6m0D
 iyHtSTqQ/K9YxU2DBpg6xkOPJdHAyB/uOmhqbntBH14l0Msbj+9ao6JMO
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=N5PR/X19
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 41355365d252e666e1c757f4252317625d03359c
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
branch HEAD: 41355365d252e666e1c757f4252317625d03359c  ice: Remove ndo_get_phys_port_name

elapsed time: 826m

configs tested: 98
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
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240418   gcc  
i386         buildonly-randconfig-002-20240418   gcc  
i386         buildonly-randconfig-003-20240418   clang
i386         buildonly-randconfig-004-20240418   gcc  
i386         buildonly-randconfig-005-20240418   clang
i386         buildonly-randconfig-006-20240418   clang
i386                                defconfig   clang
i386                  randconfig-001-20240418   gcc  
i386                  randconfig-002-20240418   gcc  
i386                  randconfig-003-20240418   clang
i386                  randconfig-004-20240418   gcc  
i386                  randconfig-005-20240418   gcc  
i386                  randconfig-006-20240418   gcc  
i386                  randconfig-012-20240418   clang
i386                  randconfig-013-20240418   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
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
powerpc                          allyesconfig   clang
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
