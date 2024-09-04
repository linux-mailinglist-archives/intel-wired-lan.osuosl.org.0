Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA8E96BFA8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 16:07:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03010811D1;
	Wed,  4 Sep 2024 14:07:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xiu17jWJa0GH; Wed,  4 Sep 2024 14:07:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DDC1C811EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725458842;
	bh=ptk89L62ia/y10eR2/QDId1zAxHVXwszKKLCBozFkPY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BPKqyhKRjcEiNVrXi4NfcagvnnImZk0x0kzR/vtcIRguVZ+ssYaDtfpai9kHe90uf
	 TJxq+Xv5IpGkE4Ihhic8LIhgFmbRXSE0RUdUXMHp4a8HoPJDZ+HZSAIXPbavaGizGw
	 6zTUCXPQ2wnMPshtDH7gg3sLwqJ5XfZYXToPPnl33VnknRlVka8v149E8rUbSTOTkh
	 tP+gxNh3aK+HGMlOcqRXSZm4venXS4/3f+8aTlmvMKvDusebmxnNelWVuwhVyroDUj
	 I0gl4pQOb7tFwEf4qvxLetV5oG4/IwLhfnR3oQij2MvOP6ZbB2m5oHv107TIM0xzWk
	 mgPbr64WR9U0w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DDC1C811EC;
	Wed,  4 Sep 2024 14:07:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C24CB1BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 14:07:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC31D811D9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 14:07:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E140CVswGYtT for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 14:07:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 80368811D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80368811D1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 80368811D1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 14:07:20 +0000 (UTC)
X-CSE-ConnectionGUID: PdoYzxVATti8chDoiQivyA==
X-CSE-MsgGUID: Qzj6ysJaTjespgk/n0oB3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="24263777"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="24263777"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 07:07:20 -0700
X-CSE-ConnectionGUID: ffP/B2BfSkGb21d3g2nySg==
X-CSE-MsgGUID: vB3s9eavSXiJSjs8wkKwuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="65121052"
Received: from lkp-server01.sh.intel.com (HELO 9c6b1c7d3b50) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 04 Sep 2024 07:07:19 -0700
Received: from kbuild by 9c6b1c7d3b50 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1slqfE-00089H-2j
 for intel-wired-lan@lists.osuosl.org; Wed, 04 Sep 2024 14:07:16 +0000
Date: Wed, 04 Sep 2024 22:06:45 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202409042243.prG5zvYb-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725458841; x=1756994841;
 h=date:from:to:subject:message-id;
 bh=JiqKILvxvMT7IoYzIN1jAlkMYOAhquUQQD/0dKYDw1c=;
 b=Ztl27qGEfBCx0JlhhIeWL4MtiAhMsXJSCqj6M91Fno1UAG0znKcRZ+6G
 8ZUdseshYnmK1kbSoqBcETXuxM0VqE1zcBZfotOhl8zoBJXTQOTxUoAEJ
 j0wLN7cmm/Sq7UI0auQjzXNRISBMPWltbM0K/eYDyueMwHsFVC0o7bMuu
 S79esndEUtV4Epg3u7vj//1+nyHwS2wd0k+7Suxddbg9uyH5/qWnkkfgf
 5C4qpkIBowkF6TP+431xR9x/7vCv3zYB89/ma6FlfVASx/2PYIFghj1h8
 QXx4GBAhH4+w1vbOKPPkWeCDrLiy0HwLEcyWKIORrjg5LThXj0GEaBMY6
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ztl27qGE
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 33f339a1ba54e56bba57ee9a77c71e385ab4825c
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 33f339a1ba54e56bba57ee9a77c71e385ab4825c  bpf, net: Fix a potential race in do_sock_getsockopt()

elapsed time: 1057m

configs tested: 110
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-14.1.0
alpha                            allyesconfig   clang-20
alpha                               defconfig   gcc-14.1.0
arc                              allmodconfig   clang-20
arc                               allnoconfig   gcc-14.1.0
arc                              allyesconfig   clang-20
arc                                 defconfig   gcc-14.1.0
arm                              allmodconfig   clang-20
arm                               allnoconfig   gcc-14.1.0
arm                              allyesconfig   clang-20
arm                                 defconfig   gcc-14.1.0
arm                        neponset_defconfig   gcc-14.1.0
arm                         socfpga_defconfig   gcc-14.1.0
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-14.1.0
csky                             alldefconfig   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   gcc-14.1.0
hexagon                          allyesconfig   clang-20
hexagon                             defconfig   gcc-14.1.0
i386                             allmodconfig   clang-18
i386                              allnoconfig   clang-18
i386                             allyesconfig   clang-18
i386         buildonly-randconfig-001-20240904   gcc-12
i386         buildonly-randconfig-002-20240904   gcc-12
i386         buildonly-randconfig-003-20240904   gcc-12
i386         buildonly-randconfig-004-20240904   gcc-12
i386         buildonly-randconfig-005-20240904   gcc-12
i386         buildonly-randconfig-006-20240904   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240904   gcc-12
i386                  randconfig-002-20240904   gcc-12
i386                  randconfig-004-20240904   gcc-12
i386                  randconfig-005-20240904   gcc-12
i386                  randconfig-006-20240904   gcc-12
i386                  randconfig-011-20240904   gcc-12
i386                  randconfig-012-20240904   gcc-12
i386                  randconfig-013-20240904   gcc-12
i386                  randconfig-014-20240904   gcc-12
i386                  randconfig-015-20240904   gcc-12
i386                  randconfig-016-20240904   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-14.1.0
m68k                          multi_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
mips                           gcw0_defconfig   gcc-14.1.0
mips                           ip28_defconfig   gcc-14.1.0
mips                           jazz_defconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-14.1.0
openrisc                          allnoconfig   clang-20
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-12
openrisc                 simple_smp_defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   clang-20
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-12
parisc64                            defconfig   gcc-14.1.0
powerpc                     akebono_defconfig   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   clang-20
powerpc                          allyesconfig   gcc-14.1.0
powerpc                      ep88xc_defconfig   gcc-14.1.0
powerpc                          g5_defconfig   gcc-14.1.0
powerpc                    ge_imp3a_defconfig   gcc-14.1.0
powerpc                 xes_mpc85xx_defconfig   gcc-14.1.0
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   clang-20
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-12
s390                             allmodconfig   gcc-14.1.0
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-12
s390                                defconfig   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-12
sh                          sdk7786_defconfig   gcc-14.1.0
sh                           se7724_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc                       sparc32_defconfig   gcc-14.1.0
sparc64                             defconfig   gcc-12
um                               allmodconfig   clang-20
um                                allnoconfig   clang-20
um                               allyesconfig   clang-20
um                                  defconfig   gcc-12
um                             i386_defconfig   gcc-12
um                           x86_64_defconfig   gcc-12
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64                              defconfig   clang-18
x86_64                                  kexec   gcc-12
x86_64                          rhel-8.3-rust   clang-18
x86_64                               rhel-8.3   gcc-12
xtensa                            allnoconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
