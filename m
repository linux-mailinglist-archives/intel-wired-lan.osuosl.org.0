Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 092C2A34D30
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 19:12:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ADC3B6088D;
	Thu, 13 Feb 2025 18:12:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S0bpKJVGMxKV; Thu, 13 Feb 2025 18:12:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3F8561AC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739470334;
	bh=4/h3p+3/KqYSKuRgXnZer/y7sW/mGZh/ohtBua26Yxw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WnE8/ltPM2CXUzpna0sz+vge9Ilbad2wsIM0iDTQbon608jbRmyX6bX0XJfS3rfGD
	 6CECLYnAFreuCnY9WK555pmkYdrcc7AOa3VpW7MNmRBOjh/bjLcXcAYbj3sxsvHshX
	 I80GJxmqXEal1d4cLiA66yGF4A+vHaQvAVi9zn5Oeqtu3OHflrREryMRN7wZoud8Yo
	 mbiWPoxZHyzP4DwANVqAdj3HN1qbRB+OixKNyFFTOU3nyJffJD+tfr2RYi5YW1Erh2
	 1rZAncW2KmI5lTPmmKYeVSqaoONghkMkZ/tA/PNoDgWb2KSyL8N95kGkScld/FM18e
	 XgO0PkZdYrFgw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A3F8561AC0;
	Thu, 13 Feb 2025 18:12:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 889DD12D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 18:12:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 76CD660A74
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 18:12:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YncD4aV3PEJ5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 18:12:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5EA3B6088D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EA3B6088D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5EA3B6088D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 18:12:11 +0000 (UTC)
X-CSE-ConnectionGUID: QMo/qCmsQvCaBeRWmosKbQ==
X-CSE-MsgGUID: Pu7DI/WIT7i6J0rNlg8tFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="62660252"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="62660252"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 10:12:11 -0800
X-CSE-ConnectionGUID: aZM1qInpRrWs4gwTwCcGYg==
X-CSE-MsgGUID: 6OqJZ4g2QY+aU6R9qaHpkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113402518"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 13 Feb 2025 10:12:09 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tidh1-0018Y5-1Y
 for intel-wired-lan@lists.osuosl.org; Thu, 13 Feb 2025 18:12:07 +0000
Date: Fri, 14 Feb 2025 02:11:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202502140218.IuuvU1gG-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739470332; x=1771006332;
 h=date:from:to:subject:message-id;
 bh=ilVqdLR5xMuS1Z2ai626IjKKFmJohH8DA5tXThwgMHc=;
 b=avQEhuKsF2kHtfvCGhb3dBuA0LxN2xNT0kZoqA5j4l8zY3BisTSHaQFP
 auc28hAWzkh2yAmMX/7jfqI1UR5wDQ6C1orNSm+yQlDQLzOLvw4JojTyS
 aPsUNqMa+cXpTdmG/XAQoXZe6P5u7d7dIwStY1PG9P7XS6ghnppTUFa9P
 b7xCZCzBun/U10R3SEirQ3zephgT5nxSjB7WMi6pA829/iQL/F192CRqE
 5dK0hVPuk+KeGeu3Ym18D/E0fiqVkKbkPDIMZzhzsAyms6HNJDYRCzfVV
 FYPz4BaUxJUZzG0aRQljmGJphv2mLGbpUtFi+D69zNUyqlgW2FzvYrXW5
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=avQEhuKs
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 dd529eeb4eb8cc6aaee6cb24a7e366a8938df4e2
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
branch HEAD: dd529eeb4eb8cc6aaee6cb24a7e366a8938df4e2  ixgbe: add PTP support for E610 device

elapsed time: 1449m

configs tested: 119
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                          axs103_defconfig    gcc-13.2.0
arc                     haps_hs_smp_defconfig    gcc-13.2.0
arc                   randconfig-001-20250213    gcc-13.2.0
arc                   randconfig-002-20250213    gcc-13.2.0
arm                               allnoconfig    clang-17
arm                              allyesconfig    gcc-14.2.0
arm                       netwinder_defconfig    gcc-14.2.0
arm                   randconfig-001-20250213    clang-17
arm                   randconfig-002-20250213    clang-15
arm                   randconfig-003-20250213    clang-21
arm                   randconfig-004-20250213    gcc-14.2.0
arm                             rpc_defconfig    clang-17
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250213    clang-19
arm64                 randconfig-002-20250213    gcc-14.2.0
arm64                 randconfig-003-20250213    gcc-14.2.0
arm64                 randconfig-004-20250213    clang-21
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250213    gcc-14.2.0
csky                  randconfig-002-20250213    gcc-14.2.0
hexagon                          allmodconfig    clang-21
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-18
hexagon               randconfig-001-20250213    clang-21
hexagon               randconfig-002-20250213    clang-18
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250213    gcc-12
i386        buildonly-randconfig-002-20250213    clang-19
i386        buildonly-randconfig-003-20250213    clang-19
i386        buildonly-randconfig-004-20250213    clang-19
i386        buildonly-randconfig-005-20250213    clang-19
i386        buildonly-randconfig-006-20250213    clang-19
i386                                defconfig    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250213    gcc-14.2.0
loongarch             randconfig-002-20250213    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                        bcm47xx_defconfig    clang-21
mips                           ci20_defconfig    clang-19
mips                         rt305x_defconfig    clang-19
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250213    gcc-14.2.0
nios2                 randconfig-002-20250213    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-14.2.0
parisc                randconfig-001-20250213    gcc-14.2.0
parisc                randconfig-002-20250213    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                    amigaone_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250213    clang-17
powerpc               randconfig-002-20250213    gcc-14.2.0
powerpc               randconfig-003-20250213    gcc-14.2.0
powerpc                     tqm8541_defconfig    clang-15
powerpc64             randconfig-001-20250213    clang-19
powerpc64             randconfig-002-20250213    clang-21
powerpc64             randconfig-003-20250213    gcc-14.2.0
riscv                             allnoconfig    gcc-14.2.0
riscv                               defconfig    clang-19
riscv                 randconfig-001-20250213    clang-19
riscv                 randconfig-002-20250213    clang-17
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250213    gcc-14.2.0
s390                  randconfig-002-20250213    clang-21
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                         ap325rxa_defconfig    gcc-14.2.0
sh                                  defconfig    gcc-14.2.0
sh                        edosk7760_defconfig    gcc-14.2.0
sh                          lboxre2_defconfig    gcc-14.2.0
sh                    randconfig-001-20250213    gcc-14.2.0
sh                    randconfig-002-20250213    gcc-14.2.0
sh                            shmin_defconfig    gcc-14.2.0
sh                             shx3_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250213    gcc-14.2.0
sparc                 randconfig-002-20250213    gcc-14.2.0
sparc64               randconfig-001-20250213    gcc-14.2.0
sparc64               randconfig-002-20250213    gcc-14.2.0
um                               allmodconfig    clang-21
um                                allnoconfig    clang-18
um                               allyesconfig    gcc-12
um                    randconfig-001-20250213    clang-19
um                    randconfig-002-20250213    clang-21
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250213    gcc-11
x86_64      buildonly-randconfig-002-20250213    gcc-12
x86_64      buildonly-randconfig-003-20250213    clang-19
x86_64      buildonly-randconfig-004-20250213    gcc-12
x86_64      buildonly-randconfig-005-20250213    gcc-12
x86_64      buildonly-randconfig-006-20250213    gcc-12
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250213    gcc-14.2.0
xtensa                randconfig-002-20250213    gcc-14.2.0
xtensa                    xip_kc705_defconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
