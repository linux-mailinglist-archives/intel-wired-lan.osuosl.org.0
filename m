Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3199B7176
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Oct 2024 02:04:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9341F81257;
	Thu, 31 Oct 2024 01:04:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U0XDo8X4bhMH; Thu, 31 Oct 2024 01:04:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A1FE81258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730336690;
	bh=0n9O04eRU6Mqq502TbIE/ZWYWxgtM7gH5RRsg/Es1jM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cA+4nOwhxTZzvOZRCHu4c2a5xLnIPKkvtqtCBST5TPigWOojDKRG9IYNeDUWS9gag
	 8C+6BYTKy48agDp4+jHPwX7xBkoKBp40uqqFAnZ8bHINYBKou31R+34Op2KDgUvPP5
	 kniJ6iw5c70jLVjTpZvwydgCOxVU+bpfi0W5jyBQT5E/AzFW74Xs1U9cSua0eeP6iy
	 YpvWhg2gWsBpn+N/TZzsQqmakrvKeA0YJQ4TZ9W3ksYariCk5KsWbU4G8+VF1WPxdW
	 swPWomoQvL2ZLGuvVoAFRkhzNO9r+B6auGTWWHO3OckPbowavYV65ajOHBZ1qQdApH
	 /IvgR9zhCqmxg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A1FE81258;
	Thu, 31 Oct 2024 01:04:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 14753494E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 01:04:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D370B81256
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 01:04:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NI5PDf6td6Ul for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Oct 2024 01:04:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2FBE881255
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2FBE881255
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2FBE881255
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 01:04:45 +0000 (UTC)
X-CSE-ConnectionGUID: wFrHl1FTQQCv7GJIFt9l5A==
X-CSE-MsgGUID: ebj6BUE4TeOqc90Y+mbukw==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="40673387"
X-IronPort-AV: E=Sophos;i="6.11,246,1725346800"; d="scan'208";a="40673387"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 18:04:45 -0700
X-CSE-ConnectionGUID: yVI4BVvORIi3KxfZeInwpg==
X-CSE-MsgGUID: iXBWNErWTwKSFmc8CwqFFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,246,1725346800"; d="scan'208";a="82131792"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 30 Oct 2024 18:04:44 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t6Jc9-000fTs-2y
 for intel-wired-lan@lists.osuosl.org; Thu, 31 Oct 2024 01:04:41 +0000
Date: Thu, 31 Oct 2024 09:03:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410310943.LMYaeikJ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730336686; x=1761872686;
 h=date:from:to:subject:message-id;
 bh=OfTpLFeFqP+Zqf3hsYskviqT2Jm8+bpPeJZ7ZTlo7lY=;
 b=WGNiLB47LSkrM7MglMr/1KHO8ZEt8mHniYFhAdrdaIGXtOrPt2Pm9/4k
 qogELyiq0gLJUZRBWrKBJxDx3JYSBxKaY+90Lxi+iv9RO2Cjgx5Z4BU3T
 g/PmgNEWIl6AqVioMYrFT+iVlo9qp1PQ1dSXrrgj/bzI0uWVzz9h2yZRo
 1+DRSI/664ptXntlQiJwLWcX8Lrish/QXpk34AIUgSQGxvf2NaGFld7xu
 JEUVQw+KGOKtpjGSDziHyu5bEfMKS7//ONCUlK9hNnWFhrAZceASeduSS
 dLmoj0eUq0+sgoWVUSzTp1U1FQc9PrChIlo+sf6jzTqxBDS6AZDeXAz0w
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WGNiLB47
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 ed5f0127248574208cfb9c05e071b38a0824cc75
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: ed5f0127248574208cfb9c05e071b38a0824cc75  ixgbevf: Fix passing 0 to ERR_PTR in ixgbevf_run_xdp()

elapsed time: 1518m

configs tested: 243
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.1.0
alpha                            allyesconfig    clang-20
alpha                               defconfig    gcc-14.1.0
arc                              allmodconfig    clang-20
arc                               allnoconfig    gcc-14.1.0
arc                              allyesconfig    clang-20
arc                          axs101_defconfig    clang-20
arc                                 defconfig    gcc-14.1.0
arc                         haps_hs_defconfig    clang-20
arc                     nsimosci_hs_defconfig    clang-20
arc                   randconfig-001-20241030    gcc-14.1.0
arc                   randconfig-002-20241030    gcc-14.1.0
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.1.0
arm                              allyesconfig    clang-20
arm                     am200epdkit_defconfig    clang-20
arm                         axm55xx_defconfig    clang-20
arm                         bcm2835_defconfig    clang-20
arm                          collie_defconfig    clang-20
arm                     davinci_all_defconfig    clang-15
arm                                 defconfig    gcc-14.1.0
arm                      jornada720_defconfig    clang-20
arm                         lpc32xx_defconfig    clang-20
arm                   milbeaut_m10v_defconfig    clang-15
arm                            mmp2_defconfig    gcc-14.1.0
arm                        mvebu_v7_defconfig    gcc-14.1.0
arm                             mxs_defconfig    clang-15
arm                        neponset_defconfig    gcc-14.1.0
arm                       netwinder_defconfig    clang-20
arm                   randconfig-001-20241030    gcc-14.1.0
arm                   randconfig-002-20241030    gcc-14.1.0
arm                   randconfig-003-20241030    gcc-14.1.0
arm                   randconfig-004-20241030    gcc-14.1.0
arm                        realview_defconfig    clang-20
arm                             rpc_defconfig    clang-20
arm                         s3c6400_defconfig    clang-15
arm                         s3c6400_defconfig    gcc-14.1.0
arm                         socfpga_defconfig    gcc-14.1.0
arm                       spear13xx_defconfig    clang-20
arm                           stm32_defconfig    clang-15
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                               defconfig    gcc-14.1.0
arm64                 randconfig-001-20241030    gcc-14.1.0
arm64                 randconfig-002-20241030    gcc-14.1.0
arm64                 randconfig-003-20241030    gcc-14.1.0
arm64                 randconfig-004-20241030    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                                defconfig    gcc-14.1.0
csky                  randconfig-001-20241030    gcc-14.1.0
csky                  randconfig-002-20241030    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.1.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.1.0
hexagon               randconfig-001-20241030    gcc-14.1.0
hexagon               randconfig-002-20241030    gcc-14.1.0
i386                             allmodconfig    clang-19
i386                              allnoconfig    clang-19
i386                             allyesconfig    clang-19
i386        buildonly-randconfig-001-20241030    gcc-12
i386        buildonly-randconfig-001-20241031    clang-19
i386        buildonly-randconfig-002-20241030    gcc-12
i386        buildonly-randconfig-002-20241031    clang-19
i386        buildonly-randconfig-003-20241030    gcc-12
i386        buildonly-randconfig-003-20241031    clang-19
i386        buildonly-randconfig-004-20241030    gcc-12
i386        buildonly-randconfig-004-20241031    clang-19
i386        buildonly-randconfig-005-20241030    gcc-12
i386        buildonly-randconfig-005-20241031    clang-19
i386        buildonly-randconfig-006-20241030    gcc-12
i386        buildonly-randconfig-006-20241031    clang-19
i386                                defconfig    clang-19
i386                  randconfig-001-20241030    gcc-12
i386                  randconfig-001-20241031    clang-19
i386                  randconfig-002-20241030    gcc-12
i386                  randconfig-002-20241031    clang-19
i386                  randconfig-003-20241030    gcc-12
i386                  randconfig-003-20241031    clang-19
i386                  randconfig-004-20241030    gcc-12
i386                  randconfig-004-20241031    clang-19
i386                  randconfig-005-20241030    gcc-12
i386                  randconfig-005-20241031    clang-19
i386                  randconfig-006-20241030    gcc-12
i386                  randconfig-006-20241031    clang-19
i386                  randconfig-011-20241030    gcc-12
i386                  randconfig-011-20241031    clang-19
i386                  randconfig-012-20241030    gcc-12
i386                  randconfig-012-20241031    clang-19
i386                  randconfig-013-20241030    gcc-12
i386                  randconfig-013-20241031    clang-19
i386                  randconfig-014-20241030    gcc-12
i386                  randconfig-014-20241031    clang-19
i386                  randconfig-015-20241030    gcc-12
i386                  randconfig-015-20241031    clang-19
i386                  randconfig-016-20241030    gcc-12
i386                  randconfig-016-20241031    clang-19
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch                           defconfig    gcc-14.1.0
loongarch             randconfig-001-20241030    gcc-14.1.0
loongarch             randconfig-002-20241030    gcc-14.1.0
m68k                             alldefconfig    clang-20
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                          amiga_defconfig    clang-15
m68k                          amiga_defconfig    clang-20
m68k                          amiga_defconfig    gcc-14.1.0
m68k                                defconfig    gcc-14.1.0
m68k                          hp300_defconfig    clang-15
m68k                       m5475evb_defconfig    clang-20
m68k                        mvme16x_defconfig    clang-20
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
microblaze                          defconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                          ath25_defconfig    clang-15
mips                      bmips_stb_defconfig    gcc-14.1.0
mips                         db1xxx_defconfig    clang-20
mips                           ip30_defconfig    clang-20
mips                           ip32_defconfig    clang-15
mips                          rb532_defconfig    clang-20
mips                       rbtx49xx_defconfig    clang-15
mips                         rt305x_defconfig    gcc-14.1.0
mips                        vocore2_defconfig    clang-15
nios2                         3c120_defconfig    clang-20
nios2                             allnoconfig    gcc-14.1.0
nios2                               defconfig    gcc-14.1.0
nios2                 randconfig-001-20241030    gcc-14.1.0
nios2                 randconfig-002-20241030    gcc-14.1.0
openrisc                          allnoconfig    clang-20
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    clang-20
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20241030    gcc-14.1.0
parisc                randconfig-002-20241030    gcc-14.1.0
parisc64                            defconfig    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    clang-20
powerpc                          allyesconfig    gcc-14.1.0
powerpc                      arches_defconfig    clang-20
powerpc                     asp8347_defconfig    gcc-14.1.0
powerpc                   bluestone_defconfig    clang-20
powerpc                 canyonlands_defconfig    clang-20
powerpc                    gamecube_defconfig    gcc-14.1.0
powerpc                       holly_defconfig    clang-20
powerpc                     kmeter1_defconfig    clang-20
powerpc                      mgcoge_defconfig    gcc-14.1.0
powerpc                 mpc8313_rdb_defconfig    clang-15
powerpc                     mpc83xx_defconfig    clang-20
powerpc                    mvme5100_defconfig    clang-15
powerpc                      pasemi_defconfig    gcc-14.1.0
powerpc                     ppa8548_defconfig    clang-15
powerpc                         ps3_defconfig    gcc-14.1.0
powerpc                     rainier_defconfig    clang-20
powerpc               randconfig-001-20241030    gcc-14.1.0
powerpc               randconfig-002-20241030    gcc-14.1.0
powerpc               randconfig-003-20241030    gcc-14.1.0
powerpc64             randconfig-001-20241030    gcc-14.1.0
powerpc64             randconfig-002-20241030    gcc-14.1.0
powerpc64             randconfig-003-20241030    gcc-14.1.0
riscv                            allmodconfig    gcc-14.1.0
riscv                             allnoconfig    clang-20
riscv                            allyesconfig    gcc-14.1.0
riscv                               defconfig    gcc-12
riscv                    nommu_k210_defconfig    gcc-14.1.0
riscv                 randconfig-001-20241030    gcc-14.1.0
riscv                 randconfig-002-20241030    gcc-14.1.0
s390                             allmodconfig    clang-20
s390                             allmodconfig    gcc-14.1.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20241030    gcc-14.1.0
s390                  randconfig-002-20241030    gcc-14.1.0
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-12
sh                          landisk_defconfig    clang-15
sh                            migor_defconfig    clang-20
sh                    randconfig-001-20241030    gcc-14.1.0
sh                    randconfig-002-20241030    gcc-14.1.0
sh                           se7343_defconfig    clang-20
sh                   secureedge5410_defconfig    clang-15
sh                           sh2007_defconfig    clang-20
sh                   sh7724_generic_defconfig    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20241030    gcc-14.1.0
sparc64               randconfig-002-20241030    gcc-14.1.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20241030    gcc-14.1.0
um                    randconfig-002-20241030    gcc-14.1.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241030    gcc-12
x86_64      buildonly-randconfig-002-20241030    gcc-12
x86_64      buildonly-randconfig-003-20241030    gcc-12
x86_64      buildonly-randconfig-004-20241030    gcc-12
x86_64      buildonly-randconfig-005-20241030    gcc-12
x86_64      buildonly-randconfig-006-20241030    gcc-12
x86_64                              defconfig    clang-19
x86_64                                  kexec    clang-19
x86_64                                  kexec    gcc-12
x86_64                randconfig-001-20241030    gcc-12
x86_64                randconfig-002-20241030    gcc-12
x86_64                randconfig-003-20241030    gcc-12
x86_64                randconfig-004-20241030    gcc-12
x86_64                randconfig-005-20241030    gcc-12
x86_64                randconfig-006-20241030    gcc-12
x86_64                randconfig-011-20241030    gcc-12
x86_64                randconfig-012-20241030    gcc-12
x86_64                randconfig-013-20241030    gcc-12
x86_64                randconfig-014-20241030    gcc-12
x86_64                randconfig-015-20241030    gcc-12
x86_64                randconfig-016-20241030    gcc-12
x86_64                randconfig-071-20241030    gcc-12
x86_64                randconfig-072-20241030    gcc-12
x86_64                randconfig-073-20241030    gcc-12
x86_64                randconfig-074-20241030    gcc-12
x86_64                randconfig-075-20241030    gcc-12
x86_64                randconfig-076-20241030    gcc-12
x86_64                               rhel-8.3    gcc-12
x86_64                           rhel-8.3-bpf    clang-19
x86_64                         rhel-8.3-kunit    clang-19
x86_64                           rhel-8.3-ltp    clang-19
x86_64                          rhel-8.3-rust    clang-19
xtensa                            allnoconfig    gcc-14.1.0
xtensa                  nommu_kc705_defconfig    clang-15
xtensa                randconfig-001-20241030    gcc-14.1.0
xtensa                randconfig-002-20241030    gcc-14.1.0
xtensa                    xip_kc705_defconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
