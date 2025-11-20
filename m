Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 332AFC75FD6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Nov 2025 20:02:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E1FC4415E0;
	Thu, 20 Nov 2025 19:02:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jKHzxOA8rgn3; Thu, 20 Nov 2025 19:02:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B19D418BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763665327;
	bh=fLOW+yK+BhwE/zW8f84v+iHWUPxrgrCrnU0tpGJIpzs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KgVKIJz5yi9mtyy6UjilmbxVr1QI0x/qyZeQuiqv8dw1bOaBv34t6a+tTZfezOSum
	 VfZePQlaCLv0IExwaKzcJHFPJbz40G5bCBboEVauASCnTXmM7FHZ2+vz9Eo3FsxkW5
	 VRXm39l+zhovK3+eXi2EnhyG5aufzKH6cvkJfbYs5NX6oUWGdP+1ll2h5ZzrrLzp1g
	 BQK7KLzPicDsFXHg7hcVK6aiUGsB7qVTkEWKl12nQrtjqXKSyCC7XlBAYOKUT2FP0j
	 5MLvJfF4KGzpAD+83oG0AsbUg035dmw1FI3BN1tjxgEDTQs52cOsz8+8/TORgr1CT6
	 F33uYnWuqFnRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B19D418BB;
	Thu, 20 Nov 2025 19:02:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 556A0122
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 19:02:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 477998411D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 19:02:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5EH8ujkrPobW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Nov 2025 19:02:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 477F68209E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 477F68209E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 477F68209E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 19:02:03 +0000 (UTC)
X-CSE-ConnectionGUID: iDbWEaW7QTCBpLZSEHoEaQ==
X-CSE-MsgGUID: 3OLPC8uIQM+XT5e5CXR0Aw==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="64757730"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="64757730"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 11:02:04 -0800
X-CSE-ConnectionGUID: FCJiDmr0SOuzdfNUMSegpA==
X-CSE-MsgGUID: Bfq/YPwkTg+68HmWCtC4hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="191271097"
Received: from lkp-server01.sh.intel.com (HELO adf6d29aa8d9) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 20 Nov 2025 11:02:03 -0800
Received: from kbuild by adf6d29aa8d9 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vM9uq-0004Pd-0Z
 for intel-wired-lan@lists.osuosl.org; Thu, 20 Nov 2025 19:02:00 +0000
Date: Fri, 21 Nov 2025 03:01:41 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511210336.5lReyoDD-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763665324; x=1795201324;
 h=date:from:to:subject:message-id;
 bh=iHxawOdw4R+uU6XnXXzfWXLt0PSzaKdBr54DagXfPB0=;
 b=gkfLti7zRw4DEh9By0ptnjLtu8gzVOM+rIOrYktPagcRUCiU/mGDtIXC
 bUrwh0kD2Ed4ES0xamNBrP523+/vgMorwF3Ts7ZRHHHUub1NSW4Ll1rED
 RDPTMi392sXtywGFbH1iFx3v+qE7A89MfeOtDP3hk0xtpCLN2C9emooTA
 xnqe+Ro4P4RFKGBNFDx9kelmH4iwJAyOtACpklQC1zqIpLaUI59q0iVlM
 sOZgHxkjxmysG18grflpRIyZP5sxaKlVxMdhq5+GqzLObTahE9POEDb7w
 K2uoQgdCHZvg8OSba8m4bKJA+07fe3qI3mbyTjzAgNBRWlBBkXWC8Zsd8
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gkfLti7z
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 865a5d1a29be48875ff68c6ba7e8377180ab8e33
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: 865a5d1a29be48875ff68c6ba7e8377180ab8e33  Merge branch 'net-stmmac-sanitise-stmmac_is_jumbo_frm'

elapsed time: 1547m

configs tested: 172
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                              allnoconfig    gcc-15.1.0
arc                                allnoconfig    gcc-15.1.0
arc                             hsdk_defconfig    gcc-15.1.0
arc                    randconfig-001-20251120    gcc-15.1.0
arc                    randconfig-002-20251120    gcc-8.5.0
arm                                allnoconfig    clang-22
arm                       jornada720_defconfig    clang-22
arm                    randconfig-001-20251120    gcc-13.4.0
arm                    randconfig-002-20251120    gcc-14.3.0
arm                    randconfig-003-20251120    clang-17
arm                    randconfig-004-20251120    clang-19
arm64                              allnoconfig    gcc-15.1.0
arm64                 randconfig-6001-20251120    gcc-12.5.0
arm64                 randconfig-6002-20251120    gcc-9.5.0
arm64                 randconfig-6003-20251120    clang-19
arm64                 randconfig-6004-20251120    gcc-13.4.0
csky                               allnoconfig    gcc-15.1.0
csky                  randconfig-6001-20251120    gcc-15.1.0
csky                  randconfig-6002-20251120    gcc-15.1.0
hexagon                            allnoconfig    clang-22
hexagon                randconfig-001-20251120    clang-22
hexagon                randconfig-002-20251120    clang-22
hexagon               randconfig-6001-20251120    clang-20
hexagon               randconfig-6002-20251120    clang-22
i386                               allnoconfig    gcc-14
i386         buildonly-randconfig-001-20251121    gcc-14
i386         buildonly-randconfig-002-20251121    gcc-14
i386         buildonly-randconfig-003-20251121    clang-20
i386         buildonly-randconfig-004-20251121    clang-20
i386         buildonly-randconfig-005-20251121    clang-20
i386         buildonly-randconfig-006-20251121    clang-20
i386        buildonly-randconfig-6001-20251120    clang-20
i386        buildonly-randconfig-6002-20251120    clang-20
i386        buildonly-randconfig-6003-20251120    clang-20
i386        buildonly-randconfig-6004-20251120    gcc-14
i386        buildonly-randconfig-6005-20251120    clang-20
i386        buildonly-randconfig-6006-20251120    clang-20
i386                   randconfig-001-20251120    gcc-14
i386                   randconfig-001-20251121    gcc-14
i386                   randconfig-002-20251120    gcc-14
i386                   randconfig-002-20251121    clang-20
i386                   randconfig-003-20251120    clang-20
i386                   randconfig-003-20251121    gcc-14
i386                   randconfig-004-20251120    clang-20
i386                   randconfig-004-20251121    clang-20
i386                   randconfig-005-20251120    clang-20
i386                   randconfig-005-20251121    clang-20
i386                   randconfig-006-20251120    clang-20
i386                   randconfig-006-20251121    gcc-14
i386                   randconfig-007-20251120    gcc-14
i386                   randconfig-007-20251121    gcc-14
i386                   randconfig-011-20251120    gcc-14
i386                   randconfig-011-20251121    clang-20
i386                   randconfig-012-20251120    gcc-14
i386                   randconfig-012-20251121    clang-20
i386                   randconfig-013-20251120    clang-20
i386                   randconfig-013-20251121    clang-20
i386                   randconfig-014-20251120    gcc-14
i386                   randconfig-014-20251121    clang-20
i386                   randconfig-015-20251120    gcc-14
i386                   randconfig-015-20251121    clang-20
i386                   randconfig-016-20251120    gcc-14
i386                   randconfig-016-20251121    gcc-14
i386                   randconfig-017-20251120    gcc-14
i386                   randconfig-017-20251121    gcc-14
loongarch                          allnoconfig    clang-22
loongarch                            defconfig    clang-19
loongarch              randconfig-001-20251120    clang-22
loongarch              randconfig-002-20251120    gcc-15.1.0
loongarch             randconfig-6001-20251120    clang-20
loongarch             randconfig-6002-20251120    clang-18
m68k                               allnoconfig    gcc-15.1.0
m68k                                 defconfig    gcc-15.1.0
m68k                         stmark2_defconfig    gcc-15.1.0
microblaze                        alldefconfig    gcc-15.1.0
microblaze                         allnoconfig    gcc-15.1.0
microblaze                           defconfig    gcc-15.1.0
mips                               allnoconfig    gcc-15.1.0
mips                         bcm47xx_defconfig    clang-18
mips                       bmips_stb_defconfig    clang-22
mips                         omega2p_defconfig    clang-22
nios2                              allnoconfig    gcc-11.5.0
nios2                                defconfig    gcc-11.5.0
nios2                  randconfig-001-20251120    gcc-9.5.0
nios2                  randconfig-002-20251120    gcc-8.5.0
nios2                 randconfig-6001-20251120    gcc-11.5.0
nios2                 randconfig-6002-20251120    gcc-11.5.0
openrisc                           allnoconfig    gcc-15.1.0
openrisc                             defconfig    gcc-15.1.0
openrisc                        virt_defconfig    gcc-15.1.0
parisc                             allnoconfig    gcc-15.1.0
parisc                               defconfig    gcc-15.1.0
parisc                randconfig-6001-20251120    gcc-9.5.0
parisc                randconfig-6002-20251120    gcc-13.4.0
parisc64                             defconfig    gcc-15.1.0
powerpc                            allnoconfig    gcc-15.1.0
powerpc                       arches_defconfig    gcc-15.1.0
powerpc                       bamboo_defconfig    clang-22
powerpc                  canyonlands_defconfig    clang-22
powerpc                      mpc5200_defconfig    clang-22
powerpc               randconfig-6001-20251120    clang-19
powerpc               randconfig-6002-20251120    clang-22
powerpc                      taishan_defconfig    clang-17
powerpc64             randconfig-6001-20251120    gcc-11.5.0
powerpc64             randconfig-6002-20251120    clang-22
riscv                              allnoconfig    gcc-15.1.0
riscv                                defconfig    clang-22
riscv                  randconfig-001-20251120    gcc-8.5.0
riscv                  randconfig-002-20251120    clang-22
s390                               allnoconfig    clang-22
s390                                 defconfig    clang-22
s390                   randconfig-001-20251120    clang-22
s390                   randconfig-002-20251120    gcc-8.5.0
sh                                 allnoconfig    gcc-15.1.0
sh                         apsh4ad0a_defconfig    gcc-15.1.0
sh                                   defconfig    gcc-15.1.0
sh                         edosk7705_defconfig    gcc-15.1.0
sh                  kfr2r09-romimage_defconfig    gcc-15.1.0
sh                           r7785rp_defconfig    gcc-15.1.0
sh                     randconfig-001-20251120    gcc-12.5.0
sh                     randconfig-002-20251120    gcc-15.1.0
sh                            sh2007_defconfig    gcc-15.1.0
sparc                              allnoconfig    gcc-15.1.0
sparc                                defconfig    gcc-15.1.0
sparc                 randconfig-6001-20251120    gcc-13.4.0
sparc                 randconfig-6002-20251120    gcc-15.1.0
sparc64                              defconfig    clang-20
sparc64               randconfig-6001-20251120    clang-20
sparc64               randconfig-6002-20251120    gcc-13.4.0
um                                 allnoconfig    clang-22
um                                   defconfig    clang-22
um                              i386_defconfig    gcc-14
um                    randconfig-6001-20251120    gcc-14
um                    randconfig-6002-20251120    gcc-14
um                            x86_64_defconfig    clang-22
x86_64                             allnoconfig    clang-20
x86_64       buildonly-randconfig-001-20251120    clang-20
x86_64       buildonly-randconfig-002-20251120    clang-20
x86_64       buildonly-randconfig-003-20251120    clang-20
x86_64       buildonly-randconfig-004-20251120    clang-20
x86_64       buildonly-randconfig-005-20251120    gcc-14
x86_64       buildonly-randconfig-006-20251120    gcc-13
x86_64      buildonly-randconfig-6001-20251120    gcc-14
x86_64      buildonly-randconfig-6002-20251120    clang-20
x86_64      buildonly-randconfig-6003-20251120    clang-20
x86_64      buildonly-randconfig-6004-20251120    clang-20
x86_64      buildonly-randconfig-6005-20251120    clang-20
x86_64      buildonly-randconfig-6006-20251120    clang-20
x86_64                               defconfig    gcc-14
x86_64                 randconfig-011-20251120    clang-20
x86_64                 randconfig-012-20251120    gcc-13
x86_64                 randconfig-013-20251120    gcc-14
x86_64                 randconfig-014-20251120    gcc-14
x86_64                 randconfig-015-20251120    gcc-14
x86_64                 randconfig-016-20251120    clang-20
x86_64                 randconfig-071-20251120    clang-20
x86_64                 randconfig-071-20251121    gcc-14
x86_64                 randconfig-072-20251120    gcc-13
x86_64                 randconfig-072-20251121    gcc-14
x86_64                 randconfig-073-20251120    clang-20
x86_64                 randconfig-073-20251121    gcc-12
x86_64                 randconfig-074-20251120    clang-20
x86_64                 randconfig-074-20251121    clang-20
x86_64                 randconfig-075-20251120    clang-20
x86_64                 randconfig-075-20251121    gcc-14
x86_64                 randconfig-076-20251120    gcc-13
x86_64                 randconfig-076-20251121    clang-20
xtensa                             allnoconfig    gcc-15.1.0
xtensa                 generic_kc705_defconfig    gcc-15.1.0
xtensa                randconfig-6001-20251120    gcc-11.5.0
xtensa                randconfig-6002-20251120    gcc-8.5.0
xtensa                          virt_defconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
