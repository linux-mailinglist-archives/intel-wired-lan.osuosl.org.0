Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE9AA9069A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 16:37:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4081883848;
	Wed, 16 Apr 2025 14:37:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5Wm__HBexV5e; Wed, 16 Apr 2025 14:37:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1695083868
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744814235;
	bh=YEJyaqrS6LV5nPW6QikQEqB0JEoEnI+wUlzjIBJfY+M=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=phOG4cV1NeK7OqwKeikfqIrIS/QZDZe+6dJTvv+1/CdT2ucr8qABmJleNP1anABQl
	 0d5ac2SFIfAaKCZKckNnJ1Cm5qh0S8zzEZLNU8HmfsdpfDGaW3giVHDM2Yg8Kj2NsA
	 qSntZoruNHeXLzQ5Fj9xZWHqhXQERZ/VmNRTsXmOGjjugQY6vX6tFS7lff9w4WgMIb
	 5Irm38xKfSNXTrRHFwXwcwurvUpGG/3EP8igIl+aLXnUbMYjfRyeppgzcKuy9f8mJj
	 +GLDUkE4XmFAiE64xTmOf60azIVOuPLOdrXrM9ywaPulg6DbpMbhqkhyDQiv7bLLmU
	 V/twEPPVCuy4Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1695083868;
	Wed, 16 Apr 2025 14:37:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A694DE83
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 14:37:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 856D160884
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 14:37:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a9HM781_jw4j for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 14:37:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EC7B56073C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC7B56073C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EC7B56073C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 14:37:09 +0000 (UTC)
X-CSE-ConnectionGUID: q8WOlz0xQF6K4Kn5DEr9Ug==
X-CSE-MsgGUID: zASii0oTQt2Bg3F6dQqHmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="45501448"
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="45501448"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 07:37:08 -0700
X-CSE-ConnectionGUID: 6ofS1+qCRheSlFGSSfQSsg==
X-CSE-MsgGUID: KGaA6348RySp1BYYyPOEww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="135302371"
Received: from lkp-server01.sh.intel.com (HELO b207828170a5) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 16 Apr 2025 07:37:07 -0700
Received: from kbuild by b207828170a5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1u53su-000JtE-2N
 for intel-wired-lan@lists.osuosl.org; Wed, 16 Apr 2025 14:37:04 +0000
Date: Wed, 16 Apr 2025 22:36:34 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202504162228.tZk38aPM-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744814230; x=1776350230;
 h=date:from:to:subject:message-id;
 bh=/cI5AHZQU37pOH2kN0yNtx3EfBnj5WQ1iTxJNZprENA=;
 b=mNAkDge/h2+pLlAnqVwdotHQ+xWKdCNUokbkzzi2T2dLetHFM0pynjSo
 uvl4BJ/db/KmBg3VPgUp6FOcZXTM/DiYbpvqSXsaqJzsOVx8kfz//hcp1
 N2Ajpjaqpwm4SLZesXaDuXZc+ZononxdULevGRqb4gfc4tt+lbRblU7+k
 YbLdKkKkzQZYxrr5Wk3IWopTHfEtTg0r9xS6LLU2G2Ec9rFOU0OoFyUP0
 Y8NeByr4lIRA9lLZKdtkpnOo0tOBeacwM9PTDo0DO7IphEJU4TO4YJ/Sy
 MT7IhjxnKfpjqFFxoxJwn6mT/QLmV0d+whcbEfS9A6rW+auGEuynassk7
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mNAkDge/
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 88fa80021b77732bc98f73fb69d69c7cc37b9f0d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: 88fa80021b77732bc98f73fb69d69c7cc37b9f0d  net: ngbe: fix memory leak in ngbe_probe() error path

elapsed time: 1444m

configs tested: 188
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-14.2.0
arc                   randconfig-001-20250416    gcc-12.4.0
arc                   randconfig-002-20250416    gcc-10.5.0
arc                           tb10x_defconfig    clang-21
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-14.2.0
arm                         bcm2835_defconfig    clang-21
arm                     davinci_all_defconfig    gcc-14.2.0
arm                             mxs_defconfig    clang-21
arm                   randconfig-001-20250416    clang-17
arm                   randconfig-002-20250416    gcc-7.5.0
arm                   randconfig-003-20250416    clang-21
arm                   randconfig-004-20250416    clang-19
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                            allyesconfig    gcc-14.2.0
arm64                 randconfig-001-20250416    gcc-8.5.0
arm64                 randconfig-002-20250416    clang-21
arm64                 randconfig-003-20250416    gcc-6.5.0
arm64                 randconfig-004-20250416    gcc-8.5.0
csky                             allmodconfig    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                             allyesconfig    gcc-14.2.0
csky                  randconfig-001-20250416    gcc-14.2.0
csky                  randconfig-002-20250416    gcc-14.2.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250416    clang-21
hexagon               randconfig-002-20250416    clang-21
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250416    clang-20
i386        buildonly-randconfig-002-20250416    clang-20
i386        buildonly-randconfig-002-20250416    gcc-12
i386        buildonly-randconfig-003-20250416    clang-20
i386        buildonly-randconfig-003-20250416    gcc-12
i386        buildonly-randconfig-004-20250416    clang-20
i386        buildonly-randconfig-004-20250416    gcc-11
i386        buildonly-randconfig-005-20250416    clang-20
i386        buildonly-randconfig-006-20250416    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20250415    clang-20
i386                  randconfig-001-20250416    clang-20
i386                  randconfig-002-20250415    clang-20
i386                  randconfig-002-20250416    clang-20
i386                  randconfig-003-20250415    gcc-12
i386                  randconfig-003-20250416    clang-20
i386                  randconfig-004-20250415    gcc-12
i386                  randconfig-004-20250416    clang-20
i386                  randconfig-005-20250415    clang-20
i386                  randconfig-005-20250416    clang-20
i386                  randconfig-006-20250415    gcc-12
i386                  randconfig-006-20250416    clang-20
i386                  randconfig-007-20250415    clang-20
i386                  randconfig-007-20250416    clang-20
i386                  randconfig-011-20250416    gcc-12
i386                  randconfig-012-20250416    gcc-12
i386                  randconfig-013-20250416    gcc-12
i386                  randconfig-014-20250416    gcc-12
i386                  randconfig-015-20250416    gcc-12
i386                  randconfig-016-20250416    gcc-12
i386                  randconfig-017-20250416    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                        allyesconfig    gcc-14.2.0
loongarch             randconfig-001-20250416    gcc-14.2.0
loongarch             randconfig-002-20250416    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                            mac_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                             allmodconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                             allyesconfig    gcc-14.2.0
mips                          ath79_defconfig    gcc-14.2.0
mips                          eyeq5_defconfig    clang-21
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250416    gcc-6.5.0
nios2                 randconfig-002-20250416    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20250416    gcc-11.5.0
parisc                randconfig-002-20250416    gcc-7.5.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-21
powerpc                          allyesconfig    gcc-14.2.0
powerpc                 mpc834x_itx_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250416    gcc-8.5.0
powerpc               randconfig-002-20250416    clang-21
powerpc               randconfig-003-20250416    clang-21
powerpc64             randconfig-001-20250416    clang-21
powerpc64             randconfig-002-20250416    clang-21
powerpc64             randconfig-003-20250416    gcc-6.5.0
riscv                            allmodconfig    clang-21
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-16
riscv                            allyesconfig    gcc-14.2.0
riscv                    nommu_k210_defconfig    clang-21
riscv                 randconfig-001-20250416    clang-20
riscv                 randconfig-002-20250416    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250416    clang-21
s390                  randconfig-002-20250416    gcc-6.5.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                             espt_defconfig    gcc-14.2.0
sh                    randconfig-001-20250416    gcc-14.2.0
sh                    randconfig-002-20250416    gcc-6.5.0
sh                           se7721_defconfig    clang-21
sh                        sh7785lcr_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250416    gcc-11.5.0
sparc                 randconfig-002-20250416    gcc-11.5.0
sparc                       sparc64_defconfig    clang-21
sparc64               randconfig-001-20250416    gcc-5.5.0
sparc64               randconfig-002-20250416    gcc-11.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
um                    randconfig-001-20250416    clang-21
um                    randconfig-002-20250416    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250416    gcc-12
x86_64      buildonly-randconfig-002-20250416    gcc-12
x86_64      buildonly-randconfig-003-20250416    gcc-12
x86_64      buildonly-randconfig-004-20250416    clang-20
x86_64      buildonly-randconfig-005-20250416    clang-20
x86_64      buildonly-randconfig-006-20250416    clang-20
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250416    gcc-12
x86_64                randconfig-002-20250416    gcc-12
x86_64                randconfig-003-20250416    gcc-12
x86_64                randconfig-004-20250416    gcc-12
x86_64                randconfig-005-20250416    gcc-12
x86_64                randconfig-006-20250416    gcc-12
x86_64                randconfig-007-20250416    gcc-12
x86_64                randconfig-008-20250416    gcc-12
x86_64                randconfig-071-20250416    gcc-12
x86_64                randconfig-072-20250416    gcc-12
x86_64                randconfig-073-20250416    gcc-12
x86_64                randconfig-074-20250416    gcc-12
x86_64                randconfig-075-20250416    gcc-12
x86_64                randconfig-076-20250416    gcc-12
x86_64                randconfig-077-20250416    gcc-12
x86_64                randconfig-078-20250416    gcc-12
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    clang-18
x86_64                         rhel-9.4-kunit    clang-18
x86_64                           rhel-9.4-ltp    clang-18
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-14.2.0
xtensa                generic_kc705_defconfig    gcc-14.2.0
xtensa                randconfig-001-20250416    gcc-7.5.0
xtensa                randconfig-002-20250416    gcc-9.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
