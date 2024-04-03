Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F248962F5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 05:29:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08CD5812CF;
	Wed,  3 Apr 2024 03:29:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 27HZxd7d2cwT; Wed,  3 Apr 2024 03:29:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99D69812EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712114984;
	bh=xh3aoZSXkk2sKqwYRrKAVOM8asTpv1DkiP6FU4n0bY4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qYUEYUmHehxeSLgp0Ja1iF+j8WjXJmGnzF7s/Yxl2fDIRGhsdTn0GR2dVofYV6Dg1
	 fYCRIlcaIS7BWV+izG1VRXVPxi19JI+iwW0grD4anWYi8iLwnhAdbX7MldTXE5IuLM
	 nfw7xarpeq0QkCGwQti+S9afdFkYT1Lfw2kxyoQMxlaw4N4t67NtInouqxxVfhUMQy
	 XTcb/sV7KZLy8T76FHPgMNFw21mnppEKFDx+k0eVRDkYPSb+DcK1ZNc53wbijQQhUd
	 mXVuk7du8SKNWDm03LvDV1LtcGFKW0wakG8AOn2Rj8JkHVN8B8z0NnfOv9yDG6St0n
	 ShxtBW5LkJFTQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 99D69812EE;
	Wed,  3 Apr 2024 03:29:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 090B71BF401
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 03:29:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0125C409E0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 03:29:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1N_FfAeV703K for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 03:29:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 83B1A4080F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83B1A4080F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 83B1A4080F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 03:29:40 +0000 (UTC)
X-CSE-ConnectionGUID: USaXZ0TEQU6qtFE3qIpKyA==
X-CSE-MsgGUID: RugM+dc+QyiaUlTD2MIltQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7169198"
X-IronPort-AV: E=Sophos;i="6.07,176,1708416000"; 
   d="scan'208";a="7169198"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 20:29:40 -0700
X-CSE-ConnectionGUID: C4Oke9rTRsKZPt+CUousUA==
X-CSE-MsgGUID: hQni9iskSj6OzbDHLgkFkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,176,1708416000"; d="scan'208";a="23035536"
Received: from lkp-server02.sh.intel.com (HELO 90ee3aa53dbd) ([10.239.97.151])
 by orviesa004.jf.intel.com with ESMTP; 02 Apr 2024 20:29:34 -0700
Received: from kbuild by 90ee3aa53dbd with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rrrJY-0001oL-1k
 for intel-wired-lan@lists.osuosl.org; Wed, 03 Apr 2024 03:29:28 +0000
Date: Wed, 03 Apr 2024 11:28:48 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404031147.da90EIdj-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712114980; x=1743650980;
 h=date:from:to:subject:message-id;
 bh=qG4dfGMORS2lionuXeg46YRYTkTiHgvI9eRDtu3xnGM=;
 b=lbZRjh/tMBqdWCe2maWniDh6c3KZ3FMDTL2EWCbeu8xzv04oxOP8MeFl
 0RY9qpldqJdhR8Y+zNtQn94clUDkvgWQCiF/+DXuvLXmRQLdHttRqgxdA
 fDEyIh2uuQ4pwKOhm4XhpRrzGi3NbaRDBTWSCxQo+QaZWkB6M/51OdKct
 lB7VtlVojmTGRNY5jyFeSGgpIugaGLEwFV015PWHNNaWt6a+N0EC8LYz2
 JnUSeb2dkivYbogzQucPFCNKSbSrnQMZ11ldsuz4p6XQ8tZ3ahE8yka95
 Y3CiPPtqYdXax/w2OuALH6T+NXdBjS55l+g6EZsxW0WX5gPM0ES22eLol
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lbZRjh/t
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 5fc68320c1fb3c7d456ddcae0b4757326a043e6f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 5fc68320c1fb3c7d456ddcae0b4757326a043e6f  ipv6: remove RTNL protection from inet6_dump_fib()

elapsed time: 1322m

configs tested: 226
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
arc                   randconfig-001-20240402   gcc  
arc                   randconfig-001-20240403   gcc  
arc                   randconfig-002-20240402   gcc  
arc                   randconfig-002-20240403   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                            dove_defconfig   gcc  
arm                   randconfig-001-20240402   gcc  
arm                   randconfig-001-20240403   gcc  
arm                   randconfig-002-20240403   gcc  
arm                   randconfig-003-20240403   clang
arm                   randconfig-004-20240403   gcc  
arm                         s5pv210_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240403   clang
arm64                 randconfig-002-20240403   clang
arm64                 randconfig-003-20240403   gcc  
arm64                 randconfig-004-20240402   gcc  
arm64                 randconfig-004-20240403   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240402   gcc  
csky                  randconfig-001-20240403   gcc  
csky                  randconfig-002-20240402   gcc  
csky                  randconfig-002-20240403   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240403   clang
hexagon               randconfig-002-20240403   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240402   gcc  
i386         buildonly-randconfig-001-20240403   gcc  
i386         buildonly-randconfig-002-20240402   gcc  
i386         buildonly-randconfig-002-20240403   clang
i386         buildonly-randconfig-003-20240403   clang
i386         buildonly-randconfig-004-20240403   clang
i386         buildonly-randconfig-005-20240403   gcc  
i386         buildonly-randconfig-006-20240403   clang
i386                                defconfig   clang
i386                  randconfig-001-20240402   gcc  
i386                  randconfig-001-20240403   gcc  
i386                  randconfig-002-20240403   clang
i386                  randconfig-003-20240403   gcc  
i386                  randconfig-004-20240403   gcc  
i386                  randconfig-005-20240403   clang
i386                  randconfig-006-20240403   gcc  
i386                  randconfig-011-20240402   gcc  
i386                  randconfig-011-20240403   gcc  
i386                  randconfig-012-20240403   clang
i386                  randconfig-013-20240403   gcc  
i386                  randconfig-014-20240403   clang
i386                  randconfig-015-20240402   gcc  
i386                  randconfig-015-20240403   gcc  
i386                  randconfig-016-20240402   gcc  
i386                  randconfig-016-20240403   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240402   gcc  
loongarch             randconfig-001-20240403   gcc  
loongarch             randconfig-002-20240402   gcc  
loongarch             randconfig-002-20240403   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                       bvme6000_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                        mvme147_defconfig   gcc  
m68k                          sun3x_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze                      mmu_defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                           ip28_defconfig   gcc  
mips                           rs90_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240402   gcc  
nios2                 randconfig-001-20240403   gcc  
nios2                 randconfig-002-20240402   gcc  
nios2                 randconfig-002-20240403   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                    or1ksim_defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240402   gcc  
parisc                randconfig-001-20240403   gcc  
parisc                randconfig-002-20240402   gcc  
parisc                randconfig-002-20240403   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                     ep8248e_defconfig   gcc  
powerpc                     kmeter1_defconfig   gcc  
powerpc                         ps3_defconfig   gcc  
powerpc               randconfig-001-20240403   gcc  
powerpc               randconfig-002-20240402   gcc  
powerpc               randconfig-002-20240403   gcc  
powerpc               randconfig-003-20240403   clang
powerpc64             randconfig-001-20240402   gcc  
powerpc64             randconfig-001-20240403   gcc  
powerpc64             randconfig-002-20240402   gcc  
powerpc64             randconfig-002-20240403   clang
powerpc64             randconfig-003-20240402   gcc  
powerpc64             randconfig-003-20240403   gcc  
riscv                            alldefconfig   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240403   clang
riscv                 randconfig-002-20240403   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240402   gcc  
s390                  randconfig-001-20240403   clang
s390                  randconfig-002-20240402   gcc  
s390                  randconfig-002-20240403   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                 kfr2r09-romimage_defconfig   gcc  
sh                          kfr2r09_defconfig   gcc  
sh                          lboxre2_defconfig   gcc  
sh                    randconfig-001-20240402   gcc  
sh                    randconfig-001-20240403   gcc  
sh                    randconfig-002-20240402   gcc  
sh                    randconfig-002-20240403   gcc  
sh                           se7724_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240402   gcc  
sparc64               randconfig-001-20240403   gcc  
sparc64               randconfig-002-20240402   gcc  
sparc64               randconfig-002-20240403   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240402   gcc  
um                    randconfig-001-20240403   gcc  
um                    randconfig-002-20240402   gcc  
um                    randconfig-002-20240403   clang
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240402   clang
x86_64       buildonly-randconfig-001-20240403   gcc  
x86_64       buildonly-randconfig-002-20240402   clang
x86_64       buildonly-randconfig-002-20240403   gcc  
x86_64       buildonly-randconfig-003-20240402   clang
x86_64       buildonly-randconfig-004-20240402   clang
x86_64       buildonly-randconfig-004-20240403   gcc  
x86_64       buildonly-randconfig-005-20240402   clang
x86_64       buildonly-randconfig-006-20240402   clang
x86_64       buildonly-randconfig-006-20240403   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240402   clang
x86_64                randconfig-001-20240403   gcc  
x86_64                randconfig-002-20240402   clang
x86_64                randconfig-003-20240403   gcc  
x86_64                randconfig-004-20240402   clang
x86_64                randconfig-004-20240403   gcc  
x86_64                randconfig-005-20240403   gcc  
x86_64                randconfig-011-20240403   gcc  
x86_64                randconfig-012-20240403   gcc  
x86_64                randconfig-013-20240402   clang
x86_64                randconfig-013-20240403   gcc  
x86_64                randconfig-014-20240403   gcc  
x86_64                randconfig-015-20240402   clang
x86_64                randconfig-015-20240403   gcc  
x86_64                randconfig-016-20240403   gcc  
x86_64                randconfig-071-20240402   clang
x86_64                randconfig-072-20240402   clang
x86_64                randconfig-072-20240403   gcc  
x86_64                randconfig-073-20240402   clang
x86_64                randconfig-074-20240403   gcc  
x86_64                randconfig-075-20240402   clang
x86_64                randconfig-075-20240403   gcc  
x86_64                randconfig-076-20240402   clang
x86_64                randconfig-076-20240403   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                  audio_kc705_defconfig   gcc  
xtensa                randconfig-001-20240402   gcc  
xtensa                randconfig-001-20240403   gcc  
xtensa                randconfig-002-20240402   gcc  
xtensa                randconfig-002-20240403   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
