Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9454895D35D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2024 18:28:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47CAB41268;
	Fri, 23 Aug 2024 16:28:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yHUUhMJ3biL9; Fri, 23 Aug 2024 16:28:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82BB641244
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724430519;
	bh=w/EKP+Z/n7QpjUpaZHTI4IxZDCxr7QhjOhn0QkopU5w=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=dbZPqww9B1MPsN3PhBjPIlgvCaHm0B8eYT+dfkLv7uutcgtipK+8I+9LgW5sftZVA
	 ICRfbk4A9uhYnSdXh7otBqwOASxmDIptfjGqLGG4VQWQ7VSGqGmB0PJUXIgto3/MRM
	 vJe5EWnoLnnQqbjTpFXmabTFTv05DNh6tfhmq5Q1Tqvl3RhZForWpGGmF/oh3MHjdL
	 9QbyrpXIfga38ofIyUrQqsaexUHQQ11BxfxFSseggZ8DspC4y2D0yLRuBBkbo8G41w
	 9eJEUinqHYp76SCOl9loiAsg6QHiaSgXHuKThve1Z+Xmx4+XFA/dXX+Psz5F7i9LJK
	 zO2TuGrzoJLIg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82BB641244;
	Fri, 23 Aug 2024 16:28:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 59C1F1BF31F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 16:28:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 43B31840FA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 16:28:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pTGZcZRBRIU5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2024 16:28:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 178E6840D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 178E6840D5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 178E6840D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 16:28:35 +0000 (UTC)
X-CSE-ConnectionGUID: Hv4Rxn/4SC2oTbiPY78R8A==
X-CSE-MsgGUID: aRyg/OjhSOapLiJZKnyzjg==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="40423069"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="40423069"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 09:28:36 -0700
X-CSE-ConnectionGUID: s8+aE9SJTM6eMQKUEmp/pA==
X-CSE-MsgGUID: OvxS7+jDQVeaERjPP50lmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="62142820"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 23 Aug 2024 09:28:34 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1shX9M-000Dsk-0a
 for intel-wired-lan@lists.osuosl.org; Fri, 23 Aug 2024 16:28:32 +0000
Date: Sat, 24 Aug 2024 00:27:41 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408240039.1iTYbjju-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724430516; x=1755966516;
 h=date:from:to:subject:message-id;
 bh=9OE+Hqi3U4PE5/pEPq57FSQ0B4hNQWIDj3se1NUaZfA=;
 b=ARE6VO4oAo+Ng9UQM+9J9rDmGKsXEgrOyIInkNKlu01ao8wST/Aoc0D6
 fwIMTQNNM/CbZiDaJJPdnda6r9n2YIhnCROv24ErXMmejm7j/jrTWK25N
 kKBrl6daoijDnKcvPLfPXHl6WSKtxqRPn8JSXA63Zwj3Pk5PQNFvhKgop
 L58vLIOtS+N11k3kxNskPYaH1GrSQ3jXi6wLhuVixoURXZXtcYBsLuPN1
 fY6AyrlermThYZuyb5K3ANs3jKdAFIRic9xPYCcpdnRThienUZgkwx3Xh
 7zqGydJU7RNOBjX8jOmbmOXRwQUbeBQsr7O+qTu6iXJv3OT52ip77cJ+8
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ARE6VO4o
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 6c8e5a94ef37f532b20155e95015bdf7afa8672d
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
branch HEAD: 6c8e5a94ef37f532b20155e95015bdf7afa8672d  i40e: Add Energy Efficient Ethernet ability for X710 Base-T/KR/KX cards

elapsed time: 1448m

configs tested: 163
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                      axs103_smp_defconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                     haps_hs_smp_defconfig   gcc-13.2.0
arc                     nsimosci_hs_defconfig   gcc-13.2.0
arc                   randconfig-001-20240823   gcc-13.2.0
arc                   randconfig-002-20240823   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                                 defconfig   gcc-13.2.0
arm                         lpc32xx_defconfig   gcc-13.2.0
arm                   randconfig-001-20240823   gcc-13.2.0
arm                   randconfig-002-20240823   gcc-13.2.0
arm                   randconfig-003-20240823   gcc-13.2.0
arm                   randconfig-004-20240823   gcc-13.2.0
arm                             rpc_defconfig   gcc-13.2.0
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240823   gcc-13.2.0
arm64                 randconfig-002-20240823   gcc-13.2.0
arm64                 randconfig-003-20240823   gcc-13.2.0
arm64                 randconfig-004-20240823   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240823   gcc-13.2.0
csky                  randconfig-002-20240823   gcc-13.2.0
i386                             allmodconfig   clang-18
i386                              allnoconfig   clang-18
i386                             allyesconfig   clang-18
i386         buildonly-randconfig-001-20240823   clang-18
i386         buildonly-randconfig-002-20240823   clang-18
i386         buildonly-randconfig-003-20240823   clang-18
i386         buildonly-randconfig-004-20240823   clang-18
i386         buildonly-randconfig-005-20240823   clang-18
i386         buildonly-randconfig-006-20240823   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240823   clang-18
i386                  randconfig-002-20240823   clang-18
i386                  randconfig-003-20240823   clang-18
i386                  randconfig-004-20240823   clang-18
i386                  randconfig-005-20240823   clang-18
i386                  randconfig-006-20240823   clang-18
i386                  randconfig-011-20240823   clang-18
i386                  randconfig-012-20240823   clang-18
i386                  randconfig-013-20240823   clang-18
i386                  randconfig-014-20240823   clang-18
i386                  randconfig-015-20240823   clang-18
i386                  randconfig-016-20240823   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240823   gcc-13.2.0
loongarch             randconfig-002-20240823   gcc-13.2.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
m68k                            q40_defconfig   gcc-13.2.0
m68k                           virt_defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                            gpr_defconfig   gcc-13.2.0
mips                        vocore2_defconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240823   gcc-13.2.0
nios2                 randconfig-002-20240823   gcc-13.2.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240823   gcc-13.2.0
parisc                randconfig-002-20240823   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   gcc-14.1.0
powerpc                      katmai_defconfig   gcc-13.2.0
powerpc                     ksi8560_defconfig   gcc-13.2.0
powerpc                      mgcoge_defconfig   gcc-13.2.0
powerpc               mpc834x_itxgp_defconfig   gcc-13.2.0
powerpc               randconfig-001-20240823   gcc-13.2.0
powerpc               randconfig-002-20240823   gcc-13.2.0
powerpc                     skiroot_defconfig   gcc-13.2.0
powerpc                  storcenter_defconfig   gcc-13.2.0
powerpc                     tqm8560_defconfig   gcc-13.2.0
powerpc64             randconfig-001-20240823   gcc-13.2.0
powerpc64             randconfig-002-20240823   gcc-13.2.0
powerpc64             randconfig-003-20240823   gcc-13.2.0
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240823   gcc-13.2.0
riscv                 randconfig-002-20240823   gcc-13.2.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240823   gcc-13.2.0
s390                  randconfig-002-20240823   gcc-13.2.0
sh                                allnoconfig   gcc-13.2.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240823   gcc-13.2.0
sh                    randconfig-002-20240823   gcc-13.2.0
sh                        sh7757lcr_defconfig   gcc-13.2.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240823   gcc-13.2.0
sparc64               randconfig-002-20240823   gcc-13.2.0
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240823   gcc-13.2.0
um                    randconfig-002-20240823   gcc-13.2.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240823   gcc-12
x86_64       buildonly-randconfig-002-20240823   gcc-12
x86_64       buildonly-randconfig-003-20240823   gcc-12
x86_64       buildonly-randconfig-004-20240823   gcc-12
x86_64       buildonly-randconfig-005-20240823   gcc-12
x86_64       buildonly-randconfig-006-20240823   gcc-12
x86_64                              defconfig   clang-18
x86_64                randconfig-001-20240823   gcc-12
x86_64                randconfig-002-20240823   gcc-12
x86_64                randconfig-003-20240823   gcc-12
x86_64                randconfig-004-20240823   gcc-12
x86_64                randconfig-005-20240823   gcc-12
x86_64                randconfig-006-20240823   gcc-12
x86_64                randconfig-011-20240823   gcc-12
x86_64                randconfig-012-20240823   gcc-12
x86_64                randconfig-013-20240823   gcc-12
x86_64                randconfig-014-20240823   gcc-12
x86_64                randconfig-015-20240823   gcc-12
x86_64                randconfig-016-20240823   gcc-12
x86_64                randconfig-071-20240823   gcc-12
x86_64                randconfig-072-20240823   gcc-12
x86_64                randconfig-073-20240823   gcc-12
x86_64                randconfig-074-20240823   gcc-12
x86_64                randconfig-075-20240823   gcc-12
x86_64                randconfig-076-20240823   gcc-12
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240823   gcc-13.2.0
xtensa                randconfig-002-20240823   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
