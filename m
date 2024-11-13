Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFFF9C7ED5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 00:34:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9CA6B608C3;
	Wed, 13 Nov 2024 23:34:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id meU51BOqrQAW; Wed, 13 Nov 2024 23:34:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5112B608CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731540897;
	bh=iV76IkAYVkCPWtUXQ6dHXk/EGnuZsCcnN1looKJxjQo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=czkelQqRDL8uj4iit8+NltRqyi0L80MlQklPGEovVRtwNbEndd7kkd3p0AN9rUV4Q
	 9XLLzAdsqwJ83DAmyfDPV3dY/keqcpcksVwKNla+n0xEvFpKin1y89u8YKiGQ108CT
	 XWXiYyBrIUOHA1tKb3rYJf4IlVXd9bJE1ECSZJINAhw0eNMkeHGrN8pDYfCVX4/tnK
	 ulAfVrG1RRJcjmxCk5YMzLihJOrx+pK/3dkHQatx7P+6cIIleY8PamWQIpx0a1mzkT
	 avOGk2JAHJFqUoiitkEDP9Yka1KN/jyOTQNml6IzonL654xajC1Ys05LCgsgt4797+
	 n9Mb7190Op8+w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5112B608CC;
	Wed, 13 Nov 2024 23:34:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 863306C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2024 23:34:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 74AC080F13
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2024 23:34:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ns01_vZlfM1y for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Nov 2024 23:34:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2BADA80E5E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2BADA80E5E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2BADA80E5E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2024 23:34:53 +0000 (UTC)
X-CSE-ConnectionGUID: TTgNi1CzTqqjbK78Q2+Z3Q==
X-CSE-MsgGUID: EFRrcChNR46KmwwbcuXB8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="35168108"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="35168108"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 15:34:52 -0800
X-CSE-ConnectionGUID: uc5gQMmURrW5HG3lWI3aZw==
X-CSE-MsgGUID: oVLRDk7KTTKmfIpWo7/12A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,152,1728975600"; d="scan'208";a="87782770"
Received: from lkp-server01.sh.intel.com (HELO 80bd855f15b3) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 13 Nov 2024 15:34:50 -0800
Received: from kbuild by 80bd855f15b3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tBMsp-0000rd-2i
 for intel-wired-lan@lists.osuosl.org; Wed, 13 Nov 2024 23:34:47 +0000
Date: Thu, 14 Nov 2024 07:34:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411140709.0c03LAyd-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731540894; x=1763076894;
 h=date:from:to:subject:message-id;
 bh=TSZQGPi9BYms2DnE2PnsrMUPKwfE//aeEgpxodF654s=;
 b=Z7QyKDpMZDHkzc13GrruET2Txl2nxpIUDRltvBuGKUE/OHjRtja+cWXX
 p8wkcqGS6cUBRD0WuSk2OfW2jDVIqs0EATRU1s7yP3m4Ynjm/WJslijDZ
 XNhguIqLxdTDjK78jEM10vsG88YtCU0U4kf+x8l4z+BDYzW3uEX4RuOpx
 f6Kn0qHqF6hefHjAADoob2DUAI8XO+QXL+gTs8LpQ787Eo4xGYwK3IRmn
 Yixm7Wh4OtOyDUYc4V7etLT/SXwESgQ0QD/GILcwRr2m1LfjdFtsvWMm7
 2OshGDgQmbskYtX0PkYUJwqSTbm9nm48KG7aKqn5LCIV+VdRq70IMHcsF
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Z7QyKDpM
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 73af53d82076bbe184d9ece9e14b0dc8599e6055
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 73af53d82076bbe184d9ece9e14b0dc8599e6055  net: sched: cls_u32: Fix u32's systematic failure to free IDR entries for hnodes.

elapsed time: 1054m

configs tested: 153
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-20
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-20
arc                      axs103_smp_defconfig    gcc-13.2.0
arc                                 defconfig    gcc-14.2.0
arc                            hsdk_defconfig    gcc-13.2.0
arc                        nsimosci_defconfig    gcc-14.2.0
arm                              alldefconfig    gcc-13.2.0
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-20
arm                                 defconfig    gcc-14.2.0
arm                          gemini_defconfig    gcc-13.2.0
arm                            mmp2_defconfig    gcc-14.2.0
arm                           sama5_defconfig    gcc-13.2.0
arm                        shmobile_defconfig    gcc-14.2.0
arm                        spear6xx_defconfig    gcc-13.2.0
arm                           stm32_defconfig    gcc-14.2.0
arm                           sunxi_defconfig    gcc-13.2.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.2.0
i386                             allmodconfig    clang-19
i386                              allnoconfig    clang-19
i386                             allyesconfig    clang-19
i386        buildonly-randconfig-001-20241113    clang-19
i386        buildonly-randconfig-002-20241113    clang-19
i386        buildonly-randconfig-003-20241113    clang-19
i386        buildonly-randconfig-004-20241113    clang-19
i386        buildonly-randconfig-005-20241113    clang-19
i386        buildonly-randconfig-006-20241113    clang-19
i386                                defconfig    clang-19
i386                  randconfig-001-20241113    clang-19
i386                  randconfig-002-20241113    clang-19
i386                  randconfig-003-20241113    clang-19
i386                  randconfig-004-20241113    clang-19
i386                  randconfig-005-20241113    clang-19
i386                  randconfig-006-20241113    clang-19
i386                  randconfig-011-20241113    clang-19
i386                  randconfig-012-20241113    clang-19
i386                  randconfig-013-20241113    clang-19
i386                  randconfig-014-20241113    clang-19
i386                  randconfig-015-20241113    clang-19
i386                  randconfig-016-20241113    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
m68k                       m5249evb_defconfig    gcc-14.2.0
m68k                           virt_defconfig    gcc-13.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                            gpr_defconfig    gcc-14.2.0
mips                           ip27_defconfig    gcc-13.2.0
mips                       rbtx49xx_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
openrisc                          allnoconfig    clang-20
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc64                            defconfig    gcc-14.2.0
powerpc                    adder875_defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc                          allyesconfig    gcc-14.2.0
powerpc                      bamboo_defconfig    gcc-13.2.0
powerpc                 linkstation_defconfig    gcc-13.2.0
powerpc                   lite5200b_defconfig    gcc-13.2.0
powerpc                 mpc832x_rdb_defconfig    gcc-13.2.0
powerpc                 mpc834x_itx_defconfig    gcc-14.2.0
powerpc               mpc834x_itxgp_defconfig    gcc-13.2.0
powerpc                 mpc837x_rdb_defconfig    gcc-14.2.0
powerpc                  mpc885_ads_defconfig    gcc-14.2.0
powerpc                       ppc64_defconfig    gcc-14.2.0
powerpc                     taishan_defconfig    gcc-14.2.0
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-20
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
riscv                    nommu_virt_defconfig    gcc-14.2.0
s390                             alldefconfig    gcc-14.2.0
s390                             allmodconfig    clang-20
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                          lboxre2_defconfig    gcc-14.2.0
sh                           se7343_defconfig    gcc-13.2.0
sh                     sh7710voipgw_defconfig    gcc-13.2.0
sh                              ul2_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc64                             defconfig    gcc-12
um                               allmodconfig    clang-20
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241113    clang-19
x86_64      buildonly-randconfig-002-20241113    clang-19
x86_64      buildonly-randconfig-003-20241113    clang-19
x86_64      buildonly-randconfig-004-20241113    clang-19
x86_64      buildonly-randconfig-005-20241113    clang-19
x86_64      buildonly-randconfig-006-20241113    clang-19
x86_64                              defconfig    clang-19
x86_64                                  kexec    clang-19
x86_64                                  kexec    gcc-12
x86_64                randconfig-001-20241113    clang-19
x86_64                randconfig-002-20241113    clang-19
x86_64                randconfig-003-20241113    clang-19
x86_64                randconfig-004-20241113    clang-19
x86_64                randconfig-005-20241113    clang-19
x86_64                randconfig-006-20241113    clang-19
x86_64                randconfig-011-20241113    clang-19
x86_64                randconfig-012-20241113    clang-19
x86_64                randconfig-013-20241113    clang-19
x86_64                randconfig-014-20241113    clang-19
x86_64                randconfig-015-20241113    clang-19
x86_64                randconfig-016-20241113    clang-19
x86_64                randconfig-071-20241113    clang-19
x86_64                randconfig-072-20241113    clang-19
x86_64                randconfig-073-20241113    clang-19
x86_64                randconfig-074-20241113    clang-19
x86_64                randconfig-075-20241113    clang-19
x86_64                randconfig-076-20241113    clang-19
x86_64                               rhel-8.3    gcc-12
xtensa                            allnoconfig    gcc-14.2.0
xtensa                generic_kc705_defconfig    gcc-13.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
