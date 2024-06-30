Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA7F91D426
	for <lists+intel-wired-lan@lfdr.de>; Sun, 30 Jun 2024 23:27:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C1D481172;
	Sun, 30 Jun 2024 21:27:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dxIkcSGG0MV3; Sun, 30 Jun 2024 21:27:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1284281214
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719782854;
	bh=5/vXwGm0mWs4r1s62IC4tS/TOB9/TCAgW4NXS7CJVWY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rc2L8o4aAVXdEBp6wv8EejQ43/fXeT3t+/vJhQ1ggLQIczMkDQ7bxQX8+CYRSEspn
	 Ktk4eRdHijNuz6QCdinODQf6nv6UksgxNtjj78+Ut7cVR3FafQFqlL00MPvFPzKbJ8
	 aE0WXpSAbW295oFV/Dod/+QUiKu9tUet0HEdF8T3s3Nj8dLAOGUAV1bRfCerda+400
	 nRV7fR3uAT1qH4ymWcKbRNMwEy5lJiO4Snqe+WF6sRMS5U4739bhPFeWy6AMM5QxBO
	 GiNjhnu3Rbw9qPMUMUJ91lme8nH0KhZ5Ttu6d3Mz/wIfciU+ts766hGBsIdIkc7Kyw
	 Ek9haqiRInkBA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1284281214;
	Sun, 30 Jun 2024 21:27:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B5AE11BF34A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Jun 2024 21:27:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A0FED40297
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Jun 2024 21:27:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A2rxd33Ht-C2 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 30 Jun 2024 21:27:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5A5CE4013B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A5CE4013B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5A5CE4013B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Jun 2024 21:27:29 +0000 (UTC)
X-CSE-ConnectionGUID: Wvy3jWB6Q767i/4SveJ+XQ==
X-CSE-MsgGUID: p/zRWvAwT6ykKJoYjVA5qA==
X-IronPort-AV: E=McAfee;i="6700,10204,11119"; a="28290241"
X-IronPort-AV: E=Sophos;i="6.09,174,1716274800"; d="scan'208";a="28290241"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2024 14:27:30 -0700
X-CSE-ConnectionGUID: YPhPQBixRiudjJGrqHzybg==
X-CSE-MsgGUID: r2srVqwsSO6D1RR4W7TYWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,174,1716274800"; d="scan'208";a="45721257"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 30 Jun 2024 14:27:29 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sO250-000M0T-1F
 for intel-wired-lan@lists.osuosl.org; Sun, 30 Jun 2024 21:27:26 +0000
Date: Mon, 01 Jul 2024 05:26:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407010525.jGukIKGW-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719782850; x=1751318850;
 h=date:from:to:subject:message-id;
 bh=n+WgcVJywONAi4RYkTvqwdNo8VmIOlIW8z3yw7fYpRs=;
 b=d8ClUXYkPEJtPM1wphf/5CCD8pcIyQ6W1t7oC7jd5ka43ckRRrpfSIBt
 4VHbE9kZprUqEXYF9gzUkq7PQlOfGvW4CJwT+6+IasBWFgS7Q66emmiqd
 7Dh+M8rgWh3ygVZisuHCOcIG64fv6G98vVVPgKFIAZBe7d27FTxiz9Ze8
 YSH7gR2Kq+3ipYG5imR2B2IXzgOqZxBpRD2M+UTJuDXvNA9cQbWisECpB
 N/IBed7DeEXr/f3Ue/EYPR0hYS3D8I8JSLKQUqeiIR6vdM4EknwyacfTa
 KzlhpIcMgaM/oMJpGW8iHDJzZeURb/z/m85cPY2WxVxCYHuMbXaa5UOKC
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=d8ClUXYk
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 d16b10e67ef6bff18ea62282bd5adfd238fb36ed
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: d16b10e67ef6bff18ea62282bd5adfd238fb36ed  ice: Fix lldp packets dropping after changing the number of channels

elapsed time: 2729m

configs tested: 83
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                          axs101_defconfig   gcc-13.2.0
arc                   randconfig-001-20240701   gcc-13.2.0
arc                   randconfig-002-20240701   gcc-13.2.0
arm                               allnoconfig   clang-19
arm                             mxs_defconfig   clang-19
arm                            qcom_defconfig   clang-19
arm                   randconfig-001-20240701   gcc-13.2.0
arm                   randconfig-002-20240701   gcc-13.2.0
arm                   randconfig-003-20240701   clang-19
arm                   randconfig-004-20240701   clang-15
arm64                             allnoconfig   gcc-13.2.0
arm64                 randconfig-001-20240701   gcc-13.2.0
arm64                 randconfig-002-20240701   clang-19
arm64                 randconfig-003-20240701   gcc-13.2.0
arm64                 randconfig-004-20240701   clang-19
csky                              allnoconfig   gcc-13.2.0
csky                  randconfig-001-20240701   gcc-13.2.0
csky                  randconfig-002-20240701   gcc-13.2.0
hexagon                           allnoconfig   clang-19
hexagon               randconfig-001-20240701   clang-19
hexagon               randconfig-002-20240701   clang-19
i386         buildonly-randconfig-001-20240630   clang-18
i386         buildonly-randconfig-002-20240630   clang-18
i386         buildonly-randconfig-003-20240630   clang-18
i386         buildonly-randconfig-004-20240630   clang-18
i386         buildonly-randconfig-004-20240630   gcc-7
i386         buildonly-randconfig-005-20240630   clang-18
i386         buildonly-randconfig-006-20240630   clang-18
i386         buildonly-randconfig-006-20240630   gcc-13
i386                  randconfig-001-20240630   clang-18
i386                  randconfig-001-20240630   gcc-13
i386                  randconfig-002-20240630   clang-18
i386                  randconfig-002-20240630   gcc-13
i386                  randconfig-003-20240630   clang-18
i386                  randconfig-004-20240630   clang-18
i386                  randconfig-004-20240630   gcc-13
i386                  randconfig-005-20240630   clang-18
i386                  randconfig-006-20240630   clang-18
i386                  randconfig-011-20240630   clang-18
i386                  randconfig-011-20240630   gcc-13
i386                  randconfig-012-20240630   clang-18
i386                  randconfig-013-20240630   clang-18
i386                  randconfig-013-20240630   gcc-8
i386                  randconfig-014-20240630   clang-18
i386                  randconfig-014-20240630   gcc-8
i386                  randconfig-015-20240630   clang-18
i386                  randconfig-015-20240630   gcc-10
i386                  randconfig-016-20240630   clang-18
i386                  randconfig-016-20240630   gcc-13
loongarch                         allnoconfig   gcc-13.2.0
loongarch             randconfig-001-20240701   gcc-13.2.0
loongarch             randconfig-002-20240701   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                           ci20_defconfig   clang-19
nios2                             allnoconfig   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
powerpc                      bamboo_defconfig   clang-19
powerpc                     ep8248e_defconfig   gcc-13.2.0
powerpc                  iss476-smp_defconfig   gcc-13.2.0
powerpc                     ksi8560_defconfig   gcc-13.2.0
powerpc                     ppa8548_defconfig   gcc-13.2.0
powerpc                     tqm8560_defconfig   gcc-13.2.0
powerpc                      walnut_defconfig   gcc-13.2.0
riscv                             allnoconfig   gcc-13.2.0
riscv             nommu_k210_sdcard_defconfig   gcc-13.2.0
s390                              allnoconfig   clang-19
s390                              allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-13.2.0
sh                           se7780_defconfig   gcc-13.2.0
sh                           sh2007_defconfig   gcc-13.2.0
sh                   sh7724_generic_defconfig   gcc-13.2.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-13.2.0
x86_64                                  kexec   clang-18
x86_64                               rhel-8.3   clang-18
xtensa                           alldefconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
