Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 643957FCA6A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 00:03:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E772060D6B;
	Tue, 28 Nov 2023 23:03:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E772060D6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701212633;
	bh=u/9byf+iYy9rwG5hGCT9BVcFEQKO6/oED5kJ+Il/vEo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cHXD1c1UhxYBo0fMotmTZ1i5t83BN2AKurRmuBAqVAua+qChMjwuGqRFur+M3G3Fw
	 qD434KEESLtKnVftNW1yE5s3kpZc9uPYApGPDZywopT0/fPxdYKh4gwKAZ5rfhodBm
	 nlk0RT/VTm2B9ymOUcO4ylMKvk7SaKXo2+aAhnwBQsZVImZMfYV2OJc1yRJwYp367W
	 IKMLl7fPdJ6sBSqMZihr1YUum6F/TLkQ1XdMUefOW4vnVeDUwa/unG7q2s3hrukctc
	 4qDbyeNnn4FkIWhCfBbRM1N2COd0vuGpaw1tparIKaqV/JpXBiXSLWceKHcXYd+9oK
	 Mke8zesVhHGRA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NPhJOSxu3yea; Tue, 28 Nov 2023 23:03:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8465F60BE9;
	Tue, 28 Nov 2023 23:03:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8465F60BE9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E573D1BF379
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 23:03:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BB780801DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 23:03:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB780801DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p1qKc0Obm3GH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Nov 2023 23:03:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 872698002A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 23:03:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 872698002A
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="373232206"
X-IronPort-AV: E=Sophos;i="6.04,234,1695711600"; d="scan'208";a="373232206"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 15:03:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,234,1695711600"; d="scan'208";a="16789975"
Received: from lkp-server01.sh.intel.com (HELO d584ee6ebdcc) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 28 Nov 2023 15:03:42 -0800
Received: from kbuild by d584ee6ebdcc with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r877D-0008GI-2e
 for intel-wired-lan@lists.osuosl.org; Tue, 28 Nov 2023 23:03:39 +0000
Date: Wed, 29 Nov 2023 07:02:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202311290727.HW3tSKg6-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701212623; x=1732748623;
 h=date:from:to:subject:message-id;
 bh=9emzB3bfhN6I46D3h7QFCccqkqXHp61xigVH3e3W7MI=;
 b=NrufcgLB5YL78ZfrLKbfAciQckEelawhfeUwJ5OM+SaHUt2DrlurTxhv
 bbU34lqmeVTboV9xEKFiET2s7E2we3g0AHmNCB3t9BMoYOh01PN4MRp6T
 N08NSaAigo35DNkWgtVEURHJlSgGn0FPOUvJjUgkmyBmWpi5RDhptXpn4
 CYSFwV/uXX+4HdTFetF24Ydp1TsmHG97Q3Dn49+TUhanseWtB8P0iz5XY
 ZmVAI8XvdrIekDPs0qOW+kupE9pTzxucGpRijtntrl1L6vhHaYQP92KJO
 O/5n6IGaCDWEuVFI2ivMWKhytZfmQSOPTgDuM/dDbwE63+lRX+ynOI6eI
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NrufcgLB
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 95260816b489509c1f5b0141d0ae7b65be3c1d39
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: 95260816b489509c1f5b0141d0ae7b65be3c1d39  iavf: use iavf_schedule_aq_request() helper

elapsed time: 1484m

configs tested: 222
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                               defconfig   gcc  
arc                               allnoconfig   gcc  
arc                                 defconfig   gcc  
arc                        nsimosci_defconfig   gcc  
arc                   randconfig-001-20231128   gcc  
arc                   randconfig-002-20231128   gcc  
arm                               allnoconfig   gcc  
arm                       aspeed_g5_defconfig   gcc  
arm                      footbridge_defconfig   gcc  
arm                           imxrt_defconfig   gcc  
arm                      integrator_defconfig   gcc  
arm                      jornada720_defconfig   gcc  
arm                        multi_v7_defconfig   gcc  
arm                        mvebu_v5_defconfig   clang
arm                         nhk8815_defconfig   gcc  
arm                          pxa3xx_defconfig   gcc  
arm                          pxa910_defconfig   gcc  
arm                   randconfig-001-20231128   clang
arm                   randconfig-002-20231128   clang
arm                   randconfig-003-20231128   clang
arm                   randconfig-004-20231128   clang
arm                             rpc_defconfig   gcc  
arm                           sama5_defconfig   gcc  
arm                        spear6xx_defconfig   gcc  
arm                           tegra_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231128   clang
arm64                 randconfig-002-20231128   clang
arm64                 randconfig-003-20231128   clang
arm64                 randconfig-004-20231128   clang
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231128   gcc  
csky                  randconfig-002-20231128   gcc  
hexagon                          allmodconfig   clang
hexagon                          allyesconfig   clang
hexagon               randconfig-001-20231128   clang
hexagon               randconfig-002-20231128   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231128   clang
i386         buildonly-randconfig-002-20231128   clang
i386         buildonly-randconfig-003-20231128   clang
i386         buildonly-randconfig-004-20231128   clang
i386         buildonly-randconfig-005-20231128   clang
i386         buildonly-randconfig-006-20231128   clang
i386                                defconfig   gcc  
i386                  randconfig-001-20231128   clang
i386                  randconfig-002-20231128   clang
i386                  randconfig-003-20231128   clang
i386                  randconfig-004-20231128   clang
i386                  randconfig-005-20231128   clang
i386                  randconfig-006-20231128   clang
i386                  randconfig-011-20231128   gcc  
i386                  randconfig-012-20231128   gcc  
i386                  randconfig-013-20231128   gcc  
i386                  randconfig-014-20231128   gcc  
i386                  randconfig-015-20231128   gcc  
i386                  randconfig-016-20231128   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231128   gcc  
loongarch             randconfig-002-20231128   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                          amiga_defconfig   gcc  
m68k                         apollo_defconfig   gcc  
m68k                       bvme6000_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5307c3_defconfig   gcc  
m68k                        m5407c3_defconfig   gcc  
m68k                        mvme147_defconfig   gcc  
m68k                            q40_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze                      mmu_defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                         bigsur_defconfig   gcc  
mips                       bmips_be_defconfig   gcc  
mips                         cobalt_defconfig   gcc  
mips                      fuloong2e_defconfig   gcc  
mips                      maltaaprp_defconfig   clang
mips                           xway_defconfig   gcc  
nios2                         10m50_defconfig   gcc  
nios2                         3c120_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231128   gcc  
nios2                 randconfig-002-20231128   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-32bit_defconfig   gcc  
parisc                randconfig-001-20231128   gcc  
parisc                randconfig-002-20231128   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                    amigaone_defconfig   gcc  
powerpc                      bamboo_defconfig   gcc  
powerpc                   currituck_defconfig   gcc  
powerpc                      ep88xc_defconfig   gcc  
powerpc                  iss476-smp_defconfig   gcc  
powerpc                      mgcoge_defconfig   gcc  
powerpc                      pcm030_defconfig   gcc  
powerpc                         ps3_defconfig   gcc  
powerpc               randconfig-001-20231128   clang
powerpc               randconfig-002-20231128   clang
powerpc               randconfig-003-20231128   clang
powerpc                     tqm5200_defconfig   clang
powerpc                     tqm8548_defconfig   gcc  
powerpc                      tqm8xx_defconfig   gcc  
powerpc64             randconfig-001-20231128   clang
powerpc64             randconfig-002-20231128   clang
powerpc64             randconfig-003-20231128   clang
riscv                            allmodconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231128   clang
riscv                 randconfig-002-20231128   clang
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231128   gcc  
s390                  randconfig-002-20231128   gcc  
s390                       zfcpdump_defconfig   gcc  
sh                               alldefconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                        apsh4ad0a_defconfig   gcc  
sh                                  defconfig   gcc  
sh                        dreamcast_defconfig   gcc  
sh                        edosk7760_defconfig   gcc  
sh                             espt_defconfig   gcc  
sh                            migor_defconfig   gcc  
sh                    randconfig-001-20231128   gcc  
sh                    randconfig-002-20231128   gcc  
sh                          rsk7201_defconfig   gcc  
sh                          rsk7264_defconfig   gcc  
sh                          sdk7786_defconfig   gcc  
sh                           se7206_defconfig   gcc  
sh                           se7705_defconfig   gcc  
sh                             sh03_defconfig   gcc  
sh                           sh2007_defconfig   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sh                   sh7724_generic_defconfig   gcc  
sh                        sh7763rdp_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231128   gcc  
sparc64               randconfig-002-20231128   gcc  
um                               allmodconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231128   clang
um                    randconfig-002-20231128   clang
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231128   clang
x86_64       buildonly-randconfig-002-20231128   clang
x86_64       buildonly-randconfig-003-20231128   clang
x86_64       buildonly-randconfig-004-20231128   clang
x86_64       buildonly-randconfig-005-20231128   clang
x86_64       buildonly-randconfig-006-20231128   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20231128   gcc  
x86_64                randconfig-002-20231128   gcc  
x86_64                randconfig-003-20231128   gcc  
x86_64                randconfig-004-20231128   gcc  
x86_64                randconfig-005-20231128   gcc  
x86_64                randconfig-006-20231128   gcc  
x86_64                randconfig-011-20231128   clang
x86_64                randconfig-012-20231128   clang
x86_64                randconfig-013-20231128   clang
x86_64                randconfig-014-20231128   clang
x86_64                randconfig-015-20231128   clang
x86_64                randconfig-016-20231128   clang
x86_64                randconfig-071-20231128   clang
x86_64                randconfig-072-20231128   clang
x86_64                randconfig-073-20231128   clang
x86_64                randconfig-074-20231128   clang
x86_64                randconfig-075-20231128   clang
x86_64                randconfig-076-20231128   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                       common_defconfig   gcc  
xtensa                generic_kc705_defconfig   gcc  
xtensa                  nommu_kc705_defconfig   gcc  
xtensa                randconfig-001-20231128   gcc  
xtensa                randconfig-002-20231128   gcc  
xtensa                    smp_lx200_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
