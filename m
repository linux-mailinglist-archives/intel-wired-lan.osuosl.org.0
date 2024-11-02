Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E5F9BA21D
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Nov 2024 20:15:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D6FBF84179;
	Sat,  2 Nov 2024 19:15:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lf0ZrmBIDSdz; Sat,  2 Nov 2024 19:15:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99D4684166
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730574956;
	bh=dlhKAUIMYyqzeB0WaG26OpJqsYLigogpMaEF8NZg1kk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=m/yO9kb4Rb8aOrMKaIKXuZJhK3gplJXCyDyYhpoY9zNE/EsQcD+0PjcqgWOrV3D10
	 vgoxRxeHQTAvUZmZrcdJy1Udz4zcKZAOYXGhoGWctpgmdr8KIhGMCoWJOEisg/84lP
	 G/1KRxEHHHtcj1SPKpL9xfpL/zVXr876uyrNjfJFn8HGmxJrPlMBhHfC8e7VcSI6jk
	 nPbn7uJ89P65MZqbfCWOefrn2T5lQRbG77EM6F0v2dtzCEki11JNiOFyaJGVAb8bqn
	 nJnoKeSOyaAiY4PV19Mg+ZnutEDNMJbYnBoKDEfAHVpkwD5trKDeA7hJCTx6nETIMc
	 H323lLuaxsvzg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 99D4684166;
	Sat,  2 Nov 2024 19:15:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7EB9827E1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Nov 2024 19:15:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6E1D781DF6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Nov 2024 19:15:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k_i1sFsOVGr3 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Nov 2024 19:15:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4C62B81DEA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C62B81DEA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4C62B81DEA
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Nov 2024 19:15:52 +0000 (UTC)
X-CSE-ConnectionGUID: rF453NePSsSs4jwKI5Goyw==
X-CSE-MsgGUID: rtnlB96gRxqOsZsPrBXSkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11244"; a="41710926"
X-IronPort-AV: E=Sophos;i="6.11,253,1725346800"; d="scan'208";a="41710926"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2024 12:15:52 -0700
X-CSE-ConnectionGUID: ybNNOWJkTI+HiFdQBrXG/g==
X-CSE-MsgGUID: wfe8s+DWR4itZWeMxKT7jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,253,1725346800"; d="scan'208";a="82791750"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 02 Nov 2024 12:15:50 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t7JbA-000jGv-1P
 for intel-wired-lan@lists.osuosl.org; Sat, 02 Nov 2024 19:15:48 +0000
Date: Sun, 03 Nov 2024 03:15:13 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411030302.QIgGUvrx-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730574953; x=1762110953;
 h=date:from:to:subject:message-id;
 bh=3mC8F5237DlpX1vCyk8obJeZYYBDUWd31RJJed3hlw4=;
 b=VCyMRCcm+mtJ7dzP5h5e2cir14Aga0hgwpWMpwCqzl99kP+K+xq59zdk
 LVxFHQjoECyIN3QByuc1ktAvcJo357Pv+prI9vOYM3bWK/YYkcfTrzEno
 vLitF3mNK+7JMjhLprKdfNQTvtvUdtTsUEL65yomJl8J/gb5MX9WZkTZD
 t4mqyPF7g+Gd03x0tONbCTI3ZzudbvyPIFA1bELxKsF/eQFaLn/nWm94K
 6JEmb2C0DJmjOwgyhjr+0QiXBzxPagMkJQ7H2vTrcei95huSXAJqCvxZV
 svwePjrWkGyBVsiPblxrBuQG5ozMtcO5VNUfQGch56PyCsbSOMJGOhIEq
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VCyMRCcm
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 333b8b2188c495a2a1431b5e0d51826383271aad
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 333b8b2188c495a2a1431b5e0d51826383271aad  ice: change q_index variable type to s16 to store -1 value

elapsed time: 1578m

configs tested: 105
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-13.3.0
alpha                            allyesconfig    gcc-13.3.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20241102    gcc-13.2.0
arc                   randconfig-002-20241102    gcc-13.2.0
arm                              allmodconfig    gcc-14.1.0
arm                               allnoconfig    clang-20
arm                              allyesconfig    gcc-14.1.0
arm                   milbeaut_m10v_defconfig    clang-16
arm                        multi_v5_defconfig    gcc-14.1.0
arm                          pxa168_defconfig    clang-20
arm                   randconfig-001-20241102    clang-20
arm                   randconfig-002-20241102    gcc-14.1.0
arm                   randconfig-003-20241102    gcc-14.1.0
arm                   randconfig-004-20241102    clang-20
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                 randconfig-001-20241102    clang-20
arm64                 randconfig-002-20241102    clang-20
arm64                 randconfig-003-20241102    clang-20
arm64                 randconfig-004-20241102    clang-17
csky                              allnoconfig    gcc-14.1.0
csky                  randconfig-001-20241102    gcc-14.1.0
csky                  randconfig-002-20241102    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-20
hexagon               randconfig-001-20241102    clang-20
hexagon               randconfig-002-20241102    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241102    gcc-12
i386        buildonly-randconfig-002-20241102    gcc-11
i386        buildonly-randconfig-003-20241102    clang-19
i386        buildonly-randconfig-004-20241102    clang-19
i386        buildonly-randconfig-005-20241102    gcc-11
i386        buildonly-randconfig-006-20241102    clang-19
i386                                defconfig    clang-19
i386                  randconfig-001-20241102    gcc-12
i386                  randconfig-002-20241102    clang-19
i386                  randconfig-003-20241102    gcc-12
i386                  randconfig-004-20241102    clang-19
i386                  randconfig-005-20241102    gcc-12
i386                  randconfig-006-20241102    gcc-12
i386                  randconfig-011-20241102    clang-19
i386                  randconfig-012-20241102    gcc-12
i386                  randconfig-013-20241102    clang-19
i386                  randconfig-014-20241102    gcc-12
i386                  randconfig-015-20241102    gcc-12
i386                  randconfig-016-20241102    gcc-12
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch             randconfig-001-20241102    gcc-14.1.0
loongarch             randconfig-002-20241102    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
nios2                             allnoconfig    gcc-14.1.0
nios2                 randconfig-001-20241102    gcc-14.1.0
nios2                 randconfig-002-20241102    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
parisc                            allnoconfig    gcc-14.1.0
parisc                randconfig-001-20241102    gcc-14.1.0
parisc                randconfig-002-20241102    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
powerpc               randconfig-001-20241102    clang-20
powerpc               randconfig-002-20241102    gcc-14.1.0
powerpc               randconfig-003-20241102    gcc-14.1.0
riscv                             allnoconfig    gcc-14.1.0
s390                             allmodconfig    clang-20
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                               allyesconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241102    clang-19
x86_64      buildonly-randconfig-002-20241102    gcc-12
x86_64      buildonly-randconfig-003-20241102    clang-19
x86_64      buildonly-randconfig-004-20241102    gcc-12
x86_64      buildonly-randconfig-005-20241102    gcc-12
x86_64      buildonly-randconfig-006-20241102    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20241102    clang-19
x86_64                randconfig-002-20241102    gcc-12
x86_64                randconfig-003-20241102    gcc-12
x86_64                randconfig-004-20241102    clang-19
x86_64                randconfig-005-20241102    gcc-12
x86_64                randconfig-006-20241102    clang-19
x86_64                randconfig-011-20241102    gcc-12
x86_64                               rhel-8.3    gcc-12
xtensa                            allnoconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
