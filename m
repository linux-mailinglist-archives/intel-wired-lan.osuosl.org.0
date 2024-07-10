Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ABAF792DC6C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jul 2024 01:12:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3AB95415DD;
	Wed, 10 Jul 2024 23:12:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z7s5wKSpIimR; Wed, 10 Jul 2024 23:12:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6251416C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720653120;
	bh=FiB6YhhxqLNEh1HZcr+KAjr2eYzhuOHB/Bjd7XbhTng=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ZZvzPZCOy2d+u07xd9KpeIiiNnyPSAhrPbUVNdMyJV1TKjLjDAPYQm4Dps+Q5Bmii
	 M6gMv3pbmjS/ZNAXTtV4B48ZjTFpC4UtzSObqT+/A464rAH/sZSYcOVpb0D92wGMWW
	 hlzJ0SZxzUppxg6AgHySajmgjedKa2RpEuO5pM7ET9WV17oBjNhNtt5DZlBGUTCtmR
	 FYWX/+1i0dDzmm0Llkq6LMQocseehbEnhCri4x1WoYMWfYNSfBz2ouA5F8SV7rnfvJ
	 hgxbfXg0ZAgvsPGY7EHAYvMvIzmd9IKVk5Gku3P/81heVeyNspMsH32M98IHeFThIh
	 rsgZOlek90mrA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C6251416C5;
	Wed, 10 Jul 2024 23:12:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8FF811BF588
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 23:11:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 882E7415CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 23:11:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rT1BrM6DYUvV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jul 2024 23:11:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 778CD415C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 778CD415C3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 778CD415C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 23:11:54 +0000 (UTC)
X-CSE-ConnectionGUID: N7UkQty4SfmWolcP4936JA==
X-CSE-MsgGUID: yWVMIdkvRE+DPgy+SHlnLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="28673156"
X-IronPort-AV: E=Sophos;i="6.09,198,1716274800"; d="scan'208";a="28673156"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 16:11:54 -0700
X-CSE-ConnectionGUID: XQXLbua1R2yelSNjyQzjFA==
X-CSE-MsgGUID: 3xG5eFixTCaS2QSwHpqXQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,198,1716274800"; d="scan'208";a="48335259"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 10 Jul 2024 16:11:50 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sRgTU-000YPh-1D
 for intel-wired-lan@lists.osuosl.org; Wed, 10 Jul 2024 23:11:48 +0000
Date: Thu, 11 Jul 2024 07:11:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407110735.qI6Fn2zI-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720653115; x=1752189115;
 h=date:from:to:subject:message-id;
 bh=QuErDN3CbMISKhpCEE8eIOGwM8ejT0fJyL9D9P4ycu4=;
 b=TAFKIMDruLJRsQUCAVLx/sbcgpO3hA7Kxo3mVWnYCN89idwJiUkvz2v+
 0v2XTiprdlSAloMoqex0FrIO/4PlRjsac5D/BkDJajKrfKIXAofk5Mly1
 rWNX4Uwmo+fsnVxZA1ftPHIvskdnhBhvp7tXGZdXXm5XILCu7J1GyHx+L
 VYsrCpJUuDckm316WwQN/e1aFyrM+9vrY/ak5qMTDvtQ/W+EQLG6ypIl8
 yeiTyQpz/rGw7Tb//P0J1u+hJ+RzVGnxYuzdBboZ4AIamf+oXc+qikuIs
 wbQvsqokYrvbVWRFIg+G2Y6gDD9fCfn4u0qHvrh515MSVJdxNqL6j2NRE
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TAFKIMDr
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 e1533b6319ab9c3a97dad314dd88b3783bc41b69
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

tree/branch: git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git main
branch HEAD: e1533b6319ab9c3a97dad314dd88b3783bc41b69  net: ethernet: lantiq_etop: fix double free in detach

elapsed time: 1220m

configs tested: 196
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                          axs103_defconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240710   gcc-13.2.0
arc                   randconfig-002-20240710   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                       aspeed_g4_defconfig   gcc-13.2.0
arm                        clps711x_defconfig   clang-19
arm                          collie_defconfig   gcc-13.3.0
arm                                 defconfig   gcc-13.2.0
arm                            dove_defconfig   gcc-13.3.0
arm                           imxrt_defconfig   gcc-13.3.0
arm                   milbeaut_m10v_defconfig   gcc-13.2.0
arm                            mmp2_defconfig   clang-19
arm                        multi_v5_defconfig   clang-19
arm                       omap2plus_defconfig   clang-19
arm                   randconfig-001-20240710   gcc-13.2.0
arm                   randconfig-002-20240710   gcc-13.2.0
arm                   randconfig-003-20240710   gcc-13.2.0
arm                   randconfig-004-20240710   gcc-13.2.0
arm                           sama7_defconfig   gcc-13.3.0
arm                       versatile_defconfig   clang-19
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240710   gcc-13.2.0
arm64                 randconfig-002-20240710   gcc-13.2.0
arm64                 randconfig-003-20240710   gcc-13.2.0
arm64                 randconfig-004-20240710   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                                defconfig   gcc-13.3.0
csky                  randconfig-001-20240710   gcc-13.2.0
csky                  randconfig-002-20240710   gcc-13.2.0
hexagon                          allmodconfig   clang-19
hexagon                          allyesconfig   clang-19
i386                             allmodconfig   clang-18
i386                              allnoconfig   clang-18
i386                             allyesconfig   clang-18
i386         buildonly-randconfig-001-20240710   clang-18
i386         buildonly-randconfig-001-20240711   gcc-13
i386         buildonly-randconfig-002-20240710   clang-18
i386         buildonly-randconfig-002-20240711   gcc-13
i386         buildonly-randconfig-003-20240710   clang-18
i386         buildonly-randconfig-003-20240711   gcc-13
i386         buildonly-randconfig-004-20240710   clang-18
i386         buildonly-randconfig-004-20240711   gcc-13
i386         buildonly-randconfig-005-20240710   clang-18
i386         buildonly-randconfig-005-20240711   gcc-13
i386         buildonly-randconfig-006-20240710   clang-18
i386         buildonly-randconfig-006-20240711   gcc-13
i386                                defconfig   clang-18
i386                  randconfig-001-20240710   clang-18
i386                  randconfig-001-20240711   gcc-13
i386                  randconfig-002-20240710   clang-18
i386                  randconfig-002-20240711   gcc-13
i386                  randconfig-003-20240710   clang-18
i386                  randconfig-003-20240711   gcc-13
i386                  randconfig-004-20240710   clang-18
i386                  randconfig-004-20240711   gcc-13
i386                  randconfig-005-20240710   clang-18
i386                  randconfig-005-20240711   gcc-13
i386                  randconfig-006-20240710   clang-18
i386                  randconfig-006-20240711   gcc-13
i386                  randconfig-011-20240710   clang-18
i386                  randconfig-011-20240711   gcc-13
i386                  randconfig-012-20240710   clang-18
i386                  randconfig-012-20240711   gcc-13
i386                  randconfig-013-20240710   clang-18
i386                  randconfig-013-20240711   gcc-13
i386                  randconfig-014-20240710   clang-18
i386                  randconfig-014-20240711   gcc-13
i386                  randconfig-015-20240710   clang-18
i386                  randconfig-015-20240711   gcc-13
i386                  randconfig-016-20240710   clang-18
i386                  randconfig-016-20240711   gcc-13
loongarch                        allmodconfig   gcc-13.3.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240710   gcc-13.2.0
loongarch             randconfig-002-20240710   gcc-13.2.0
m68k                             allmodconfig   gcc-13.3.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-13.3.0
m68k                          amiga_defconfig   gcc-13.3.0
m68k                                defconfig   gcc-13.2.0
m68k                       m5249evb_defconfig   gcc-13.2.0
m68k                            q40_defconfig   gcc-13.3.0
microblaze                       alldefconfig   gcc-13.3.0
microblaze                       allmodconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-13.3.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-13.3.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                          eyeq5_defconfig   clang-19
mips                      malta_kvm_defconfig   clang-19
mips                           mtx1_defconfig   gcc-13.3.0
mips                        qi_lb60_defconfig   clang-19
nios2                            allmodconfig   gcc-13.3.0
nios2                             allnoconfig   gcc-13.2.0
nios2                            allyesconfig   gcc-13.3.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240710   gcc-13.2.0
nios2                 randconfig-002-20240710   gcc-13.2.0
openrisc                         allmodconfig   gcc-13.3.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                         allyesconfig   gcc-13.3.0
openrisc                            defconfig   gcc-13.2.0
parisc                           allmodconfig   gcc-13.3.0
parisc                            allnoconfig   gcc-13.2.0
parisc                           allyesconfig   gcc-13.3.0
parisc                              defconfig   gcc-13.2.0
parisc                randconfig-001-20240710   gcc-13.2.0
parisc                randconfig-002-20240710   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                     akebono_defconfig   clang-19
powerpc                          allmodconfig   gcc-13.3.0
powerpc                           allnoconfig   gcc-13.2.0
powerpc                          allyesconfig   gcc-13.3.0
powerpc                     asp8347_defconfig   clang-19
powerpc                      chrp32_defconfig   gcc-13.2.0
powerpc                          g5_defconfig   gcc-13.3.0
powerpc                        icon_defconfig   gcc-13.3.0
powerpc                       maple_defconfig   clang-19
powerpc                       maple_defconfig   gcc-13.3.0
powerpc                   microwatt_defconfig   clang-19
powerpc                     mpc512x_defconfig   gcc-13.3.0
powerpc                  mpc866_ads_defconfig   gcc-13.2.0
powerpc                      pcm030_defconfig   gcc-13.2.0
powerpc                      ppc44x_defconfig   gcc-13.3.0
powerpc               randconfig-001-20240710   gcc-13.2.0
powerpc               randconfig-002-20240710   gcc-13.2.0
powerpc               randconfig-003-20240710   gcc-13.2.0
powerpc                     redwood_defconfig   gcc-13.2.0
powerpc                  storcenter_defconfig   gcc-13.2.0
powerpc                         wii_defconfig   gcc-13.3.0
powerpc64             randconfig-001-20240710   gcc-13.2.0
powerpc64             randconfig-002-20240710   gcc-13.2.0
powerpc64             randconfig-003-20240710   gcc-13.2.0
riscv                            allmodconfig   gcc-13.3.0
riscv                             allnoconfig   gcc-13.2.0
riscv                            allyesconfig   gcc-13.3.0
riscv                               defconfig   gcc-13.2.0
riscv             nommu_k210_sdcard_defconfig   gcc-13.2.0
riscv                 randconfig-001-20240710   gcc-13.2.0
riscv                 randconfig-002-20240710   gcc-13.2.0
s390                             allmodconfig   clang-19
s390                              allnoconfig   gcc-13.2.0
s390                             allyesconfig   clang-19
s390                             allyesconfig   gcc-13.2.0
s390                                defconfig   gcc-13.2.0
s390                  randconfig-001-20240710   gcc-13.2.0
s390                  randconfig-002-20240710   gcc-13.2.0
sh                               allmodconfig   gcc-13.3.0
sh                                allnoconfig   gcc-13.2.0
sh                               allyesconfig   gcc-13.3.0
sh                                  defconfig   gcc-13.2.0
sh                          polaris_defconfig   gcc-13.2.0
sh                    randconfig-001-20240710   gcc-13.2.0
sh                    randconfig-002-20240710   gcc-13.2.0
sh                           se7751_defconfig   gcc-13.2.0
sparc                            allmodconfig   gcc-13.3.0
sparc                            allyesconfig   gcc-13.3.0
sparc64                          allmodconfig   gcc-13.3.0
sparc64                          allyesconfig   gcc-13.3.0
sparc64                             defconfig   gcc-13.2.0
sparc64               randconfig-001-20240710   gcc-13.2.0
sparc64               randconfig-002-20240710   gcc-13.2.0
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   gcc-13.2.0
um                               allyesconfig   gcc-13
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-13.2.0
um                             i386_defconfig   gcc-13.2.0
um                    randconfig-001-20240710   gcc-13.2.0
um                    randconfig-002-20240710   gcc-13.2.0
um                           x86_64_defconfig   gcc-13.2.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64                              defconfig   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                           allyesconfig   gcc-13.3.0
xtensa                  cadence_csp_defconfig   gcc-13.2.0
xtensa                randconfig-001-20240710   gcc-13.2.0
xtensa                randconfig-002-20240710   gcc-13.2.0
xtensa                    smp_lx200_defconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
