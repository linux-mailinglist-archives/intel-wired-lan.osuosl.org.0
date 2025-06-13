Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D31AD93AD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 19:20:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86111404C7;
	Fri, 13 Jun 2025 17:20:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 646eSGThTZQe; Fri, 13 Jun 2025 17:20:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A77A140467
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749835203;
	bh=08SIrVS0pgWM39kzRQMQv8sp2QMup8+a0dWvo0SFBWE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AeF+8cID/vfBJJopr/j8pIa8FKng1PoOKbFV+7Cskd3cFI9tNnvJEmM9vVZ77mHBb
	 dZuYo2fcaPrbg7g60ZHCwl+N+G+qTUsP3G6sdbkbY85mZt2cPoluniA8CkGKgjMG8q
	 gZJioPayewh+MBiK8uf1QgKMsHT7aZnIWawBqJhQqCEPIVxu/GW/ivkw+MqNF7nZLP
	 soI/uZSfxnZBT7bxFQvLiUBPVujz5ZMACnrkLV8wGkzK276Eekc/6uZqI0SvQN/Gis
	 oe5pgzNo/LBtNOdtsR/sgUWAjrjwRWwhoXI+pyA3f860shCcDk3nOuVx/aF50e+h3j
	 lRRHE8Zeoo+IA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A77A140467;
	Fri, 13 Jun 2025 17:20:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B55BE151
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 17:20:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A700C60DAB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 17:20:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xn_VhysvG6AZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 17:20:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C326D60BE9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C326D60BE9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C326D60BE9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 17:20:00 +0000 (UTC)
X-CSE-ConnectionGUID: VllhjHfcSMOJKEAwyCwzjw==
X-CSE-MsgGUID: +yfqzKvYTTmrQgFzgua8Yg==
X-IronPort-AV: E=McAfee;i="6800,10657,11463"; a="55854959"
X-IronPort-AV: E=Sophos;i="6.16,234,1744095600"; d="scan'208";a="55854959"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 10:20:00 -0700
X-CSE-ConnectionGUID: XogeZ8UDSSWNDrzdto5TnQ==
X-CSE-MsgGUID: Hqbvq83aSxKFuUE1oyPZVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,234,1744095600"; d="scan'208";a="147725420"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 13 Jun 2025 10:19:58 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uQ84K-000Cr0-2C
 for intel-wired-lan@lists.osuosl.org; Fri, 13 Jun 2025 17:19:56 +0000
Date: Sat, 14 Jun 2025 01:19:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506140115.Got1OqHp-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749835201; x=1781371201;
 h=date:from:to:subject:message-id;
 bh=+E6xjpq3/yqU/rj+VkcRtCDgWCY2xAKYMvyY9eTS6oU=;
 b=g0JYstBVceTGhZ6feiW9cEMDFGco08buacBXm9mL9WgSg06fJvcnTVVw
 vJgxdv0BGxH+Z+C6uk9pGm10Wmzef3+nk/m4NlLiT3f7nfWhM0uT+i3cB
 lH3YGZJ0JVu1yAPzhxvk8H3NeVfWGoBqa5V6heOdQZBBil6BEloR65Nk1
 JhsMvqS86shd+RFt1FBgWvnoA8R+ML/f2M8jyNMJDBta+5T7Jr7/BrEiX
 3BhXlI9ThhvtnS5s4sycKOX5s10ND8/LT3wWkDAPxncKqMfY51ku0Ky3e
 c2iVQdhHG2QBEP2tjDHFz8TcgTLCJPeW7XKroyDhfAdvK0OYnhnyHg41o
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=g0JYstBV
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 9058ba8cdc822c8b1799d10db1b0f019048f032d
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
branch HEAD: 9058ba8cdc822c8b1799d10db1b0f019048f032d  e1000: Move cancel_work_sync to avoid deadlock

Unverified Warning (likely false positive, kindly check if interested):

    drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:1120 idpf_send_config_tx_queues_msg() error: uninitialized symbol 'buf_sz'.
    drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:1121 idpf_send_config_tx_queues_msg() error: uninitialized symbol 'ctq'.
    drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:1276 idpf_send_config_rx_queues_msg() error: uninitialized symbol 'buf_sz'.
    drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:1277 idpf_send_config_rx_queues_msg() error: uninitialized symbol 'crq'.

Warning ids grouped by kconfigs:

recent_errors
`-- x86_64-randconfig-161-20250612
    |-- drivers-net-ethernet-intel-idpf-idpf_virtchnl.c-idpf_send_config_rx_queues_msg()-error:uninitialized-symbol-buf_sz-.
    |-- drivers-net-ethernet-intel-idpf-idpf_virtchnl.c-idpf_send_config_rx_queues_msg()-error:uninitialized-symbol-crq-.
    |-- drivers-net-ethernet-intel-idpf-idpf_virtchnl.c-idpf_send_config_tx_queues_msg()-error:uninitialized-symbol-buf_sz-.
    `-- drivers-net-ethernet-intel-idpf-idpf_virtchnl.c-idpf_send_config_tx_queues_msg()-error:uninitialized-symbol-ctq-.

elapsed time: 1449m

configs tested: 102
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                          axs103_defconfig    gcc-15.1.0
arc                   randconfig-001-20250613    gcc-12.4.0
arc                   randconfig-002-20250613    gcc-12.4.0
arm                               allnoconfig    clang-21
arm                        clps711x_defconfig    clang-21
arm                      jornada720_defconfig    clang-21
arm                          pxa3xx_defconfig    clang-21
arm                   randconfig-001-20250613    clang-21
arm                   randconfig-002-20250613    clang-20
arm                   randconfig-003-20250613    gcc-8.5.0
arm                   randconfig-004-20250613    clang-21
arm                             rpc_defconfig    clang-18
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250613    gcc-15.1.0
arm64                 randconfig-002-20250613    clang-21
arm64                 randconfig-003-20250613    clang-21
arm64                 randconfig-004-20250613    gcc-15.1.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250613    gcc-15.1.0
csky                  randconfig-002-20250613    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250613    clang-21
hexagon               randconfig-002-20250613    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250613    gcc-12
i386        buildonly-randconfig-002-20250613    gcc-11
i386        buildonly-randconfig-003-20250613    gcc-12
i386        buildonly-randconfig-004-20250613    clang-20
i386        buildonly-randconfig-005-20250613    clang-20
i386        buildonly-randconfig-006-20250613    gcc-12
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch             randconfig-001-20250613    gcc-15.1.0
loongarch             randconfig-002-20250613    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                        m5307c3_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250613    gcc-11.5.0
nios2                 randconfig-002-20250613    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                randconfig-001-20250613    gcc-8.5.0
parisc                randconfig-002-20250613    gcc-13.3.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                 mpc8315_rdb_defconfig    clang-21
powerpc               randconfig-001-20250613    clang-21
powerpc               randconfig-002-20250613    gcc-8.5.0
powerpc               randconfig-003-20250613    gcc-9.3.0
powerpc64             randconfig-001-20250613    gcc-8.5.0
powerpc64             randconfig-002-20250613    gcc-8.5.0
powerpc64             randconfig-003-20250613    gcc-10.5.0
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250613    gcc-8.5.0
riscv                 randconfig-002-20250613    clang-21
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250613    clang-21
s390                  randconfig-002-20250613    clang-21
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250613    gcc-15.1.0
sh                    randconfig-002-20250613    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250613    gcc-10.3.0
sparc                 randconfig-002-20250613    gcc-13.3.0
sparc64               randconfig-001-20250613    gcc-15.1.0
sparc64               randconfig-002-20250613    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250613    gcc-12
um                    randconfig-002-20250613    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250613    clang-20
x86_64      buildonly-randconfig-002-20250613    gcc-12
x86_64      buildonly-randconfig-003-20250613    gcc-12
x86_64      buildonly-randconfig-004-20250613    gcc-12
x86_64      buildonly-randconfig-005-20250613    clang-20
x86_64      buildonly-randconfig-006-20250613    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250613    gcc-8.5.0
xtensa                randconfig-002-20250613    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
