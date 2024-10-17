Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4339A2D25
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2024 21:03:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90D3660AAE;
	Thu, 17 Oct 2024 19:03:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o-GzD_UE1Mgv; Thu, 17 Oct 2024 19:03:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3829760AA8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729191832;
	bh=D9s9sTK6fZjoZswsr275WIQEUJrUNO1HCd45b68JFk8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=n+OZLg07w94QXSMopWJ26azbnqcUw+0WwDhQN8FWyucwpB9tEAxMUsMZZEZEDOrGb
	 KcxTD4DJaWMKkyAWRUNRBFU6WSBlOFxiZrMxD+1lAY9hHVY3D8AzSNnRgyH8vKzRW8
	 xeL6hwitLg/hOIJD/Dw81CJ4GTeKAiACg5MXdGcP4YnntWH1v8dynN2fTP9pXUKoUz
	 LZGzdRIuiGWbKaWwrMHEzWGotT93b2MoseBJZYAenjOEAJdCOtB8nGHohluyE6Ui60
	 eJ9soXwSlzlAxXmppAawFbSyq+tVokXEkciOr80n0Mq3WK4yF7ztduOsbYaAUTZPXf
	 9RrMN6vXeVQag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3829760AA8;
	Thu, 17 Oct 2024 19:03:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 38852712
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 19:03:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0FB11407D9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 19:03:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iVtvlaW6SKYZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Oct 2024 19:03:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AAED7407CF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AAED7407CF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AAED7407CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 19:03:44 +0000 (UTC)
X-CSE-ConnectionGUID: 6xZcYFX5Q8CsEx2vxN5Tdg==
X-CSE-MsgGUID: nD3Sn7wATR2M8cjj7eRGMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11228"; a="31565046"
X-IronPort-AV: E=Sophos;i="6.11,211,1725346800"; d="scan'208";a="31565046"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 12:03:44 -0700
X-CSE-ConnectionGUID: EZG9EJWlTwShZohzWD/DiA==
X-CSE-MsgGUID: o1ByK3CmQaOgEPd0PZYJ2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,211,1725346800"; d="scan'208";a="83197437"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 17 Oct 2024 12:03:42 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t1Vmd-000MmJ-2j
 for intel-wired-lan@lists.osuosl.org; Thu, 17 Oct 2024 19:03:39 +0000
Date: Fri, 18 Oct 2024 03:03:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410180312.UY4qVhoo-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729191825; x=1760727825;
 h=date:from:to:subject:message-id;
 bh=fKPIUWieMlD8Izb0Hxf5owYlGpP65HbF/0DocvWNTw8=;
 b=ddOVkTT5md7HZv8FrDwVcbHE9upfnKzUIG2CT//PECn+KDte/SLS1lbo
 aKqVYpLwQwO0nVZriJ28vGJ3Kif7tIJJAvmhVPPSdeXvcvHrLbLhZvyiB
 Zs9UmtqNqXZgitmT1b0EQmEFuLpgMW77eGz18yVAfPZk8mX5y/a9csb9y
 5rwpdpn/OQxTQGy1IFVmxcAvF6QmeQ542exMSsrcyRa1cEHeiGPY/T56A
 pxLb3n91ftu07RN84P8g66vLvw9b5LnupSx+SNHrXSi6+jGxhgpqCHmNX
 ZKlIiP+HGmo1vcPasqH7s3vwf14zmzOeUi9VUm3SkCoPquoik0IPM7pIv
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ddOVkTT5
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 53bac8330865417332d4cf80cb671b15956b049d
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
branch HEAD: 53bac8330865417332d4cf80cb671b15956b049d  Merge branch 'rtnetlink-use-rtnl_register_many'

elapsed time: 2432m

configs tested: 187
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
arc                                 defconfig    gcc-14.1.0
arc                         haps_hs_defconfig    clang-14
arc                     haps_hs_smp_defconfig    clang-20
arc                   randconfig-001-20241017    gcc-14.1.0
arc                   randconfig-002-20241017    gcc-14.1.0
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.1.0
arm                              allyesconfig    clang-20
arm                                 defconfig    gcc-14.1.0
arm                            hisi_defconfig    clang-20
arm                           imxrt_defconfig    clang-20
arm                        mvebu_v7_defconfig    clang-20
arm                         nhk8815_defconfig    clang-20
arm                   randconfig-001-20241017    gcc-14.1.0
arm                   randconfig-002-20241017    gcc-14.1.0
arm                   randconfig-003-20241017    gcc-14.1.0
arm                   randconfig-004-20241017    gcc-14.1.0
arm                         socfpga_defconfig    clang-20
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                               defconfig    gcc-14.1.0
arm64                 randconfig-001-20241017    gcc-14.1.0
arm64                 randconfig-002-20241017    gcc-14.1.0
arm64                 randconfig-003-20241017    gcc-14.1.0
arm64                 randconfig-004-20241017    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                                defconfig    gcc-14.1.0
csky                  randconfig-001-20241017    gcc-14.1.0
csky                  randconfig-002-20241017    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.1.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.1.0
hexagon               randconfig-001-20241017    gcc-14.1.0
hexagon               randconfig-002-20241017    gcc-14.1.0
i386                             allmodconfig    clang-18
i386                              allnoconfig    clang-18
i386                             allyesconfig    clang-18
i386        buildonly-randconfig-001-20241017    clang-18
i386        buildonly-randconfig-002-20241017    clang-18
i386        buildonly-randconfig-003-20241017    clang-18
i386        buildonly-randconfig-004-20241017    clang-18
i386        buildonly-randconfig-005-20241017    clang-18
i386        buildonly-randconfig-006-20241017    clang-18
i386                                defconfig    clang-18
i386                  randconfig-001-20241017    clang-18
i386                  randconfig-002-20241017    clang-18
i386                  randconfig-003-20241017    clang-18
i386                  randconfig-004-20241017    clang-18
i386                  randconfig-005-20241017    clang-18
i386                  randconfig-006-20241017    clang-18
i386                  randconfig-011-20241017    clang-18
i386                  randconfig-012-20241017    clang-18
i386                  randconfig-013-20241017    clang-18
i386                  randconfig-014-20241017    clang-18
i386                  randconfig-015-20241017    clang-18
i386                  randconfig-016-20241017    clang-18
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch                           defconfig    gcc-14.1.0
loongarch             randconfig-001-20241017    gcc-14.1.0
loongarch             randconfig-002-20241017    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                                defconfig    gcc-14.1.0
m68k                       m5208evb_defconfig    clang-14
m68k                        mvme16x_defconfig    clang-20
m68k                           virt_defconfig    clang-14
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
microblaze                          defconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                           ip28_defconfig    clang-14
mips                           jazz_defconfig    clang-14
mips                      maltaaprp_defconfig    clang-14
mips                          rb532_defconfig    clang-14
nios2                             allnoconfig    gcc-14.1.0
nios2                               defconfig    gcc-14.1.0
nios2                 randconfig-001-20241017    gcc-14.1.0
nios2                 randconfig-002-20241017    gcc-14.1.0
openrisc                          allnoconfig    clang-20
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    clang-20
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20241017    gcc-14.1.0
parisc                randconfig-002-20241017    gcc-14.1.0
parisc64                            defconfig    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    clang-20
powerpc                          allyesconfig    gcc-14.1.0
powerpc                      bamboo_defconfig    clang-14
powerpc                      cm5200_defconfig    clang-20
powerpc                     ksi8560_defconfig    clang-14
powerpc                       maple_defconfig    clang-14
powerpc                      pasemi_defconfig    clang-20
powerpc                      pmac32_defconfig    clang-20
powerpc               randconfig-001-20241017    gcc-14.1.0
powerpc               randconfig-002-20241017    gcc-14.1.0
powerpc               randconfig-003-20241017    gcc-14.1.0
powerpc                         wii_defconfig    clang-20
powerpc64             randconfig-002-20241017    gcc-14.1.0
powerpc64             randconfig-003-20241017    gcc-14.1.0
riscv                            allmodconfig    gcc-14.1.0
riscv                             allnoconfig    clang-20
riscv                            allyesconfig    gcc-14.1.0
riscv                               defconfig    gcc-12
riscv                    nommu_virt_defconfig    clang-14
riscv                 randconfig-001-20241017    gcc-14.1.0
riscv                 randconfig-002-20241017    gcc-14.1.0
s390                             allmodconfig    gcc-14.1.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20241017    gcc-14.1.0
s390                  randconfig-002-20241017    gcc-14.1.0
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-12
sh                        edosk7760_defconfig    clang-14
sh                    randconfig-001-20241017    gcc-14.1.0
sh                    randconfig-002-20241017    gcc-14.1.0
sh                           se7705_defconfig    clang-14
sh                           se7750_defconfig    clang-14
sh                  sh7785lcr_32bit_defconfig    clang-14
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20241017    gcc-14.1.0
sparc64               randconfig-002-20241017    gcc-14.1.0
um                               alldefconfig    clang-20
um                               allmodconfig    clang-20
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20241017    gcc-14.1.0
um                    randconfig-002-20241017    gcc-14.1.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64      buildonly-randconfig-001-20241017    gcc-12
x86_64      buildonly-randconfig-002-20241017    gcc-12
x86_64      buildonly-randconfig-003-20241017    gcc-12
x86_64      buildonly-randconfig-004-20241017    gcc-12
x86_64      buildonly-randconfig-005-20241017    gcc-12
x86_64      buildonly-randconfig-006-20241017    gcc-12
x86_64                              defconfig    clang-18
x86_64                                  kexec    gcc-12
x86_64                randconfig-001-20241017    gcc-12
x86_64                randconfig-002-20241017    gcc-12
x86_64                randconfig-003-20241017    gcc-12
x86_64                randconfig-004-20241017    gcc-12
x86_64                randconfig-005-20241017    gcc-12
x86_64                randconfig-006-20241017    gcc-12
x86_64                randconfig-011-20241017    gcc-12
x86_64                randconfig-012-20241017    gcc-12
x86_64                randconfig-013-20241017    gcc-12
x86_64                randconfig-014-20241017    gcc-12
x86_64                randconfig-015-20241017    gcc-12
x86_64                randconfig-016-20241017    gcc-12
x86_64                randconfig-071-20241017    gcc-12
x86_64                randconfig-072-20241017    gcc-12
x86_64                randconfig-073-20241017    gcc-12
x86_64                randconfig-074-20241017    gcc-12
x86_64                randconfig-075-20241017    gcc-12
x86_64                randconfig-076-20241017    gcc-12
x86_64                               rhel-8.3    gcc-12
x86_64                           rhel-8.3-bpf    clang-18
x86_64                         rhel-8.3-kunit    clang-18
x86_64                           rhel-8.3-ltp    clang-18
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0
xtensa                  cadence_csp_defconfig    clang-20
xtensa                generic_kc705_defconfig    clang-14
xtensa                randconfig-001-20241017    gcc-14.1.0
xtensa                randconfig-002-20241017    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
