Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 230078878AB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Mar 2024 13:31:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 06024417DF;
	Sat, 23 Mar 2024 12:31:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id glwHq-PTI1au; Sat, 23 Mar 2024 12:31:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C57441831
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711197065;
	bh=qNkNfuckCITNRnP/PMCSOy01YPWaaUEunRGXJ7+4O84=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ME4190lzpXi6vMncpolD4kKGI2n7Li+CtVFGMAggIUKikd3c4vRLEZEJganH2/k3t
	 WK8LHGVCyP9+A08AxRpEm5a9MOccjrEfO378eIl5rqXOnb1vdNCDaenmJxyeSrVQdL
	 vOrTAxVU0iylRfvo1133OKoQWKEQMNx9YJS7Jm4oUhTMsCSjWHRV3aO7CfbICCXQEy
	 YS6a2kPvTPnvjH9R0YhWgun8SIaIO511k4Atrch1vJ+JIbuWMSpnT1qQoh6nb8UZMS
	 jGAJjPX2PKh6S9nvBiOlt/ZboaqbF4xx1eANJVdlwnvr3y1RdI1PTTU4S5Gln1B8pr
	 FJhMMIH0B2YMw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C57441831;
	Sat, 23 Mar 2024 12:31:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9D0621BF3E1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Mar 2024 12:31:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8892B60654
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Mar 2024 12:31:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HRXPw_XBM6vE for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Mar 2024 12:31:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0FDCC6064A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0FDCC6064A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0FDCC6064A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Mar 2024 12:31:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11021"; a="9193048"
X-IronPort-AV: E=Sophos;i="6.07,149,1708416000"; 
   d="scan'208";a="9193048"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2024 05:30:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,149,1708416000"; d="scan'208";a="15147998"
Received: from lkp-server01.sh.intel.com (HELO b21307750695) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 23 Mar 2024 05:30:59 -0700
Received: from kbuild by b21307750695 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ro0WW-000L9Y-2H
 for intel-wired-lan@lists.osuosl.org; Sat, 23 Mar 2024 12:30:56 +0000
Date: Sat, 23 Mar 2024 20:30:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202403232036.relJ2Ih1-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711197061; x=1742733061;
 h=date:from:to:subject:message-id;
 bh=JvE7nWxgmUjG7mJ433dk/qI7/UxOvHCV8HHO7ajnXjQ=;
 b=VXNs8rgItNYHtJ9hTAWguNxjbI3zAq6dQwEIekkBt8Ea1gEb1IuEKHtt
 1dbqws+Qk5TsTF/z82NaHDiRLjiRuy4YuGKtbtF4/jsKMjNm65Jn92oLh
 YFS/ge6QBc7ZQl2/AVWWdKDg1JXPNRbcdSptsK8Bq8Mb+b4VHfyuLLGO2
 kD3/DSmS6wve9NOFqFqxXYMaR0r+vqIWtJA53EuxZJVPTqUGrP0FyBphF
 dja1il5s+seEpe2a3OUsmpZ0cCVRQNEhD0wz0g5Us/CM2yqNrQhOTOKzV
 3irFRFEQkMM1jnlxM963r31kl5XLpm++j3UX6IT1CFHZ7oGDZuXl3H55j
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VXNs8rgI
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 8ab6a161fded64772a7bcf0745dc13f3cfb04c97
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
branch HEAD: 8ab6a161fded64772a7bcf0745dc13f3cfb04c97  idpf: fix kernel panic on unknown packet types

elapsed time: 850m

configs tested: 169
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
arc                 nsimosci_hs_smp_defconfig   gcc  
arc                   randconfig-001-20240323   gcc  
arc                   randconfig-002-20240323   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                     am200epdkit_defconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240323   clang
arm                   randconfig-002-20240323   clang
arm                   randconfig-003-20240323   clang
arm                   randconfig-004-20240323   gcc  
arm                        vexpress_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240323   gcc  
arm64                 randconfig-002-20240323   gcc  
arm64                 randconfig-003-20240323   clang
arm64                 randconfig-004-20240323   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240323   gcc  
csky                  randconfig-002-20240323   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240323   clang
hexagon               randconfig-002-20240323   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240323   gcc  
i386         buildonly-randconfig-002-20240323   clang
i386         buildonly-randconfig-003-20240323   clang
i386         buildonly-randconfig-004-20240323   gcc  
i386         buildonly-randconfig-005-20240323   gcc  
i386         buildonly-randconfig-006-20240323   clang
i386                                defconfig   clang
i386                  randconfig-001-20240323   clang
i386                  randconfig-002-20240323   clang
i386                  randconfig-003-20240323   gcc  
i386                  randconfig-004-20240323   gcc  
i386                  randconfig-005-20240323   gcc  
i386                  randconfig-006-20240323   gcc  
i386                  randconfig-011-20240323   gcc  
i386                  randconfig-012-20240323   gcc  
i386                  randconfig-013-20240323   clang
i386                  randconfig-014-20240323   gcc  
i386                  randconfig-015-20240323   gcc  
i386                  randconfig-016-20240323   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240323   gcc  
loongarch             randconfig-002-20240323   gcc  
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
mips                  decstation_64_defconfig   gcc  
mips                           rs90_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240323   gcc  
nios2                 randconfig-002-20240323   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240323   gcc  
parisc                randconfig-002-20240323   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                     ep8248e_defconfig   gcc  
powerpc               randconfig-001-20240323   gcc  
powerpc               randconfig-002-20240323   gcc  
powerpc               randconfig-003-20240323   clang
powerpc64             randconfig-001-20240323   clang
powerpc64             randconfig-002-20240323   clang
powerpc64             randconfig-003-20240323   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240323   clang
riscv                 randconfig-002-20240323   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240323   clang
s390                  randconfig-002-20240323   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        dreamcast_defconfig   gcc  
sh                          kfr2r09_defconfig   gcc  
sh                    randconfig-001-20240323   gcc  
sh                    randconfig-002-20240323   gcc  
sh                             sh03_defconfig   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240323   gcc  
sparc64               randconfig-002-20240323   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240323   gcc  
um                    randconfig-002-20240323   clang
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240323   clang
x86_64       buildonly-randconfig-002-20240323   clang
x86_64       buildonly-randconfig-003-20240323   clang
x86_64       buildonly-randconfig-005-20240323   clang
x86_64       buildonly-randconfig-006-20240323   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240323   clang
x86_64                randconfig-003-20240323   clang
x86_64                randconfig-004-20240323   clang
x86_64                randconfig-011-20240323   clang
x86_64                randconfig-013-20240323   clang
x86_64                randconfig-014-20240323   clang
x86_64                randconfig-015-20240323   clang
x86_64                randconfig-016-20240323   clang
x86_64                randconfig-071-20240323   clang
x86_64                randconfig-072-20240323   clang
x86_64                randconfig-073-20240323   clang
x86_64                randconfig-074-20240323   clang
x86_64                randconfig-076-20240323   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                  audio_kc705_defconfig   gcc  
xtensa                randconfig-001-20240323   gcc  
xtensa                randconfig-002-20240323   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
