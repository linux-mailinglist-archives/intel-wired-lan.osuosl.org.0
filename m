Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 16528937770
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Jul 2024 14:05:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81E7A60EA6;
	Fri, 19 Jul 2024 12:05:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L4KwlULUZ5S6; Fri, 19 Jul 2024 12:05:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D71D560E9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721390722;
	bh=QNOhxrc5Vq4QE+T+XBSfVm5Y1pa174E6vSMydJTifOE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tyQoxAlgi5pNquJepnVDjqOzAqnVyQ6JUSD15lbvho2qQCLx7EqDD4VHKHL5AmCa8
	 xlcttDL936kzg6D+OoXnD80CqOlM2vHsKZSteZZus59teh1ln7D5YIg9rUYCH7msxB
	 7WN201leJxv/03HWu6H5pvPWZ5ppQdPqxPex+nC7Eta0R1BXAIitBimRkcnyChjPnV
	 MzUGGiD5L3atFtNZv6H/eGrj2wCxBwmccoMT7GQXJGQjMqFHxTqZFn/Sf5GIPdXnnR
	 lXyAX915tSyceRY3P6+L+GOWbI5kgpTIEV2O0NKkGgwLEh2cZbNUeAXTt08Ah1ZHzE
	 FJI9OXgYA7ISA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D71D560E9E;
	Fri, 19 Jul 2024 12:05:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 214231BF316
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2024 12:05:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0DB1840186
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2024 12:05:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uI9fLWGq2ULS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Jul 2024 12:05:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5FB7D40102
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5FB7D40102
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5FB7D40102
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2024 12:05:18 +0000 (UTC)
X-CSE-ConnectionGUID: 2tBP/Ow6Rh2HrsbagE1lww==
X-CSE-MsgGUID: Ld94PXj5TLikM55jk+iGYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11138"; a="18811969"
X-IronPort-AV: E=Sophos;i="6.09,220,1716274800"; d="scan'208";a="18811969"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2024 05:05:18 -0700
X-CSE-ConnectionGUID: C+Ca83L1T2iJe8E4Uyg/0Q==
X-CSE-MsgGUID: KbagXB52TY+QewBkm9R+nA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,220,1716274800"; d="scan'208";a="51158702"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 19 Jul 2024 05:05:16 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sUmMM-000i70-1J
 for intel-wired-lan@lists.osuosl.org; Fri, 19 Jul 2024 12:05:14 +0000
Date: Fri, 19 Jul 2024 20:04:56 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407192053.87hwjaM5-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721390719; x=1752926719;
 h=date:from:to:subject:message-id;
 bh=bg6rQNrKQvIneZV4Hdq1v7qKw3OmaNOX1UcV8WKGA4k=;
 b=EgRGxO8JqktbiRffbDaBbV6yW3UGIcfPrvBmtrSXgpud1vc87yoV+yB9
 DT3W0DYHeINj7cU1f8wdCc65rm3wM6sccXbfhFl8i59hxtefAN7E6eA95
 dECSP/2lfbBSIguaYqVjtjMLDz8xCesT/9VbYqf3iPm08PxJpGqtfCAVg
 q2fXT1wLldd3gDH5dowlmbxhejDVsWkVEBEK6IWim15NhV94cFFV3ue4x
 z+FiPWmUXuImpoyeH7DiDz356yzHDXpUQ/1YbxMUhHSL3nqVaD8sxeJVr
 ZHQhg4AlgTt/QwyqJb9m7w75QcsekKfFlGK6RwZmeArY04HyEDnD1Jkph
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EgRGxO8J
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 a1b7dbca149053e4f79a451bebdf0c40c9092896
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: a1b7dbca149053e4f79a451bebdf0c40c9092896  Merge tag 'nf-24-07-17' of git://git.kernel.org/pub/scm/linux/kernel/git/netfilter/nf

elapsed time: 1451m

configs tested: 262
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              alldefconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                         haps_hs_defconfig   gcc-13.2.0
arc                   randconfig-001-20240719   gcc-13.2.0
arc                   randconfig-002-20240719   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-19
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                                 defconfig   gcc-13.2.0
arm                   randconfig-001-20240719   clang-19
arm                   randconfig-001-20240719   gcc-13.2.0
arm                   randconfig-002-20240719   gcc-13.2.0
arm                   randconfig-002-20240719   gcc-14.1.0
arm                   randconfig-003-20240719   gcc-13.2.0
arm                   randconfig-003-20240719   gcc-14.1.0
arm                   randconfig-004-20240719   clang-19
arm                   randconfig-004-20240719   gcc-13.2.0
arm                         s3c6400_defconfig   gcc-13.2.0
arm                           sama5_defconfig   gcc-13.2.0
arm                         socfpga_defconfig   gcc-13.2.0
arm                         wpcm450_defconfig   gcc-13.2.0
arm64                            allmodconfig   clang-19
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240719   gcc-13.2.0
arm64                 randconfig-001-20240719   gcc-14.1.0
arm64                 randconfig-002-20240719   gcc-13.2.0
arm64                 randconfig-002-20240719   gcc-14.1.0
arm64                 randconfig-003-20240719   gcc-13.2.0
arm64                 randconfig-003-20240719   gcc-14.1.0
arm64                 randconfig-004-20240719   gcc-13.2.0
arm64                 randconfig-004-20240719   gcc-14.1.0
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240719   gcc-13.2.0
csky                  randconfig-001-20240719   gcc-14.1.0
csky                  randconfig-002-20240719   gcc-13.2.0
csky                  randconfig-002-20240719   gcc-14.1.0
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
hexagon               randconfig-001-20240719   clang-19
hexagon               randconfig-002-20240719   clang-19
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-13
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240719   clang-18
i386         buildonly-randconfig-002-20240719   clang-18
i386         buildonly-randconfig-003-20240719   clang-18
i386         buildonly-randconfig-003-20240719   gcc-10
i386         buildonly-randconfig-004-20240719   clang-18
i386         buildonly-randconfig-005-20240719   clang-18
i386         buildonly-randconfig-005-20240719   gcc-10
i386         buildonly-randconfig-006-20240719   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240719   clang-18
i386                  randconfig-002-20240719   clang-18
i386                  randconfig-003-20240719   clang-18
i386                  randconfig-004-20240719   clang-18
i386                  randconfig-004-20240719   gcc-13
i386                  randconfig-005-20240719   clang-18
i386                  randconfig-006-20240719   clang-18
i386                  randconfig-011-20240719   clang-18
i386                  randconfig-012-20240719   clang-18
i386                  randconfig-013-20240719   clang-18
i386                  randconfig-014-20240719   clang-18
i386                  randconfig-015-20240719   clang-18
i386                  randconfig-015-20240719   gcc-13
i386                  randconfig-016-20240719   clang-18
i386                  randconfig-016-20240719   gcc-13
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240719   gcc-13.2.0
loongarch             randconfig-001-20240719   gcc-14.1.0
loongarch             randconfig-002-20240719   gcc-13.2.0
loongarch             randconfig-002-20240719   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                          amiga_defconfig   gcc-13.2.0
m68k                                defconfig   gcc-13.2.0
m68k                        m5272c3_defconfig   gcc-13.2.0
m68k                        mvme147_defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                       bmips_be_defconfig   gcc-13.2.0
mips                         cobalt_defconfig   gcc-13.2.0
mips                        maltaup_defconfig   gcc-13.2.0
mips                   sb1250_swarm_defconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240719   gcc-13.2.0
nios2                 randconfig-001-20240719   gcc-14.1.0
nios2                 randconfig-002-20240719   gcc-13.2.0
nios2                 randconfig-002-20240719   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                generic-32bit_defconfig   gcc-13.2.0
parisc                randconfig-001-20240719   gcc-13.2.0
parisc                randconfig-001-20240719   gcc-14.1.0
parisc                randconfig-002-20240719   gcc-13.2.0
parisc                randconfig-002-20240719   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-19
powerpc                          allyesconfig   gcc-14.1.0
powerpc                    amigaone_defconfig   gcc-13.2.0
powerpc                      ep88xc_defconfig   gcc-13.2.0
powerpc                    gamecube_defconfig   gcc-13.2.0
powerpc                 mpc837x_rdb_defconfig   gcc-13.2.0
powerpc                      ppc64e_defconfig   gcc-13.2.0
powerpc               randconfig-001-20240719   gcc-13.2.0
powerpc               randconfig-001-20240719   gcc-14.1.0
powerpc               randconfig-002-20240719   gcc-13.2.0
powerpc               randconfig-002-20240719   gcc-14.1.0
powerpc               randconfig-003-20240719   gcc-13.2.0
powerpc               randconfig-003-20240719   gcc-14.1.0
powerpc                     tqm8555_defconfig   gcc-13.2.0
powerpc64             randconfig-001-20240719   gcc-13.2.0
powerpc64             randconfig-001-20240719   gcc-14.1.0
powerpc64             randconfig-002-20240719   gcc-13.2.0
powerpc64             randconfig-002-20240719   gcc-14.1.0
powerpc64             randconfig-003-20240719   gcc-13.2.0
powerpc64             randconfig-003-20240719   gcc-14.1.0
riscv                            allmodconfig   clang-19
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-19
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   clang-19
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240719   clang-19
riscv                 randconfig-001-20240719   gcc-13.2.0
riscv                 randconfig-002-20240719   clang-19
riscv                 randconfig-002-20240719   gcc-13.2.0
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                             allyesconfig   clang-19
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-19
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240719   clang-19
s390                  randconfig-001-20240719   gcc-13.2.0
s390                  randconfig-002-20240719   clang-19
s390                  randconfig-002-20240719   gcc-13.2.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                          r7785rp_defconfig   gcc-13.2.0
sh                    randconfig-001-20240719   gcc-13.2.0
sh                    randconfig-001-20240719   gcc-14.1.0
sh                    randconfig-002-20240719   gcc-13.2.0
sh                    randconfig-002-20240719   gcc-14.1.0
sh                           sh2007_defconfig   gcc-13.2.0
sh                        sh7757lcr_defconfig   gcc-13.2.0
sh                        sh7763rdp_defconfig   gcc-13.2.0
sh                   sh7770_generic_defconfig   gcc-13.2.0
sh                             shx3_defconfig   gcc-13.2.0
sh                              ul2_defconfig   gcc-13.2.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240719   gcc-13.2.0
sparc64               randconfig-001-20240719   gcc-14.1.0
sparc64               randconfig-002-20240719   gcc-13.2.0
sparc64               randconfig-002-20240719   gcc-14.1.0
um                               allmodconfig   clang-19
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-13
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   clang-19
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-13
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240719   clang-19
um                    randconfig-001-20240719   gcc-13.2.0
um                    randconfig-002-20240719   gcc-13
um                    randconfig-002-20240719   gcc-13.2.0
um                           x86_64_defconfig   clang-15
um                           x86_64_defconfig   gcc-14.1.0
x86_64                           alldefconfig   gcc-13.2.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240719   gcc-13
x86_64       buildonly-randconfig-002-20240719   clang-18
x86_64       buildonly-randconfig-002-20240719   gcc-13
x86_64       buildonly-randconfig-003-20240719   gcc-10
x86_64       buildonly-randconfig-003-20240719   gcc-13
x86_64       buildonly-randconfig-004-20240719   gcc-13
x86_64       buildonly-randconfig-005-20240719   gcc-12
x86_64       buildonly-randconfig-005-20240719   gcc-13
x86_64       buildonly-randconfig-006-20240719   gcc-13
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240719   gcc-13
x86_64                randconfig-002-20240719   clang-18
x86_64                randconfig-002-20240719   gcc-13
x86_64                randconfig-003-20240719   gcc-13
x86_64                randconfig-004-20240719   gcc-13
x86_64                randconfig-004-20240719   gcc-7
x86_64                randconfig-005-20240719   gcc-13
x86_64                randconfig-005-20240719   gcc-7
x86_64                randconfig-006-20240719   clang-18
x86_64                randconfig-006-20240719   gcc-13
x86_64                randconfig-011-20240719   gcc-13
x86_64                randconfig-012-20240719   gcc-13
x86_64                randconfig-013-20240719   gcc-13
x86_64                randconfig-013-20240719   gcc-8
x86_64                randconfig-014-20240719   gcc-13
x86_64                randconfig-015-20240719   clang-18
x86_64                randconfig-015-20240719   gcc-13
x86_64                randconfig-016-20240719   gcc-13
x86_64                randconfig-071-20240719   clang-18
x86_64                randconfig-071-20240719   gcc-13
x86_64                randconfig-072-20240719   gcc-13
x86_64                randconfig-072-20240719   gcc-8
x86_64                randconfig-073-20240719   clang-18
x86_64                randconfig-073-20240719   gcc-13
x86_64                randconfig-074-20240719   gcc-10
x86_64                randconfig-074-20240719   gcc-13
x86_64                randconfig-075-20240719   gcc-10
x86_64                randconfig-075-20240719   gcc-13
x86_64                randconfig-076-20240719   gcc-13
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240719   gcc-13.2.0
xtensa                randconfig-001-20240719   gcc-14.1.0
xtensa                randconfig-002-20240719   gcc-13.2.0
xtensa                randconfig-002-20240719   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
