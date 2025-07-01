Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3C2AEFC26
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Jul 2025 16:25:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA1FF611D3;
	Tue,  1 Jul 2025 14:25:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DDImufzS39JR; Tue,  1 Jul 2025 14:25:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B90B660DD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751379953;
	bh=sGv80Cezh86vmcKndS+vYpmmM1YWDZPgIkX4aq3uwfs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Czc+qvUyoU/RCPLdW3Pmzf0citenlNjH7S4PoeCZX64tMYI0bKKTQ3sYnrRYPuKlb
	 fk89KWY0Y9gRd+Xc2es3+tDeEitaeEf3uJUeBBpQ/N9whbrDRAJcd6bM3mVo5wViQ2
	 LwRuZN7439eK6sTbONFZj8Syf4Ku/D3R0EEiwPuTW3/DdtDfN+ONanbCy5QiNaHnoU
	 mCExU7U3fx2iKeOcn4cFCevwjKlhsfwtIxGoxaZ41w18ZiWDQOovIdYvFYsQy6yHvj
	 7rHMnaS+ZMwrI2fp5BaEgYe3FdxhVfPNMVgDaetK1f1YnBv/52kn+T6AMbOc7hP5zh
	 hQmPMWgK2aytg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B90B660DD3;
	Tue,  1 Jul 2025 14:25:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C59BD197
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 14:25:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C162360DB8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 14:25:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nZLFMktVSWlq for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Jul 2025 14:25:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EB00060DB6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB00060DB6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB00060DB6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 14:25:50 +0000 (UTC)
X-CSE-ConnectionGUID: rh+rsUfQSgeEfDyfF0fB/Q==
X-CSE-MsgGUID: 70T+RVxoRu20HPh4WjTDiQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="71209853"
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="71209853"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 07:25:50 -0700
X-CSE-ConnectionGUID: P4v6sHTpREODB4RKG+/EJA==
X-CSE-MsgGUID: mUgDT7UoRW+ddk7JMnoSDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="153254929"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 01 Jul 2025 07:25:49 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uWbve-000aHm-26
 for intel-wired-lan@lists.osuosl.org; Tue, 01 Jul 2025 14:25:46 +0000
Date: Tue, 01 Jul 2025 22:24:49 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507012237.MJ9RVC4T-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751379951; x=1782915951;
 h=date:from:to:subject:message-id;
 bh=1BKwb6RyQ+W8ahMnVoV4E0nKFbwi9toGb1I4J3YY3ic=;
 b=moq2XmL6b6Ig7ErMpDbctffjLTdlOkp0Co5o/DESUj/wXhruZyR8OoLB
 JtzIg1KLmt8oJG5HdZNsiUAAuZIBJXNh9L0RtJnjXKS1XrtsJOctm7uDZ
 kuH9oE5St5LZsUikuFcnkukwbjgV9iHffHpW+zbKLhwX8ir5m+p9L5LSE
 Bqzm3/pX4WmaBW42N2GicMj8cRiXaXTOZIwwfG0GvAYI8nSIc8MDrnWk0
 gxBiPs1LINyspmRb4cFGftD7AZRoOMPJ5cRfG4XV5E39UH8/vlgFUOhNy
 Yv2zKMMEfUPIaI75vBBEbQqsHPETlG4MM5sGxIIgr157USMWo48LioEjW
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=moq2XmL6
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 6f44a98be8d95c6bb42a3d6ac5c133ff6b93df9a
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
branch HEAD: 6f44a98be8d95c6bb42a3d6ac5c133ff6b93df9a  i40e: When removing VF MAC filters, only check PF-set MAC

elapsed time: 1344m

configs tested: 124
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig    gcc-15.1.0
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250701    gcc-13.3.0
arc                   randconfig-002-20250701    gcc-15.1.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250701    clang-17
arm                   randconfig-002-20250701    gcc-8.5.0
arm                   randconfig-003-20250701    clang-21
arm                   randconfig-004-20250701    clang-21
arm                         vf610m4_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250701    clang-21
arm64                 randconfig-002-20250701    gcc-15.1.0
arm64                 randconfig-003-20250701    clang-18
arm64                 randconfig-004-20250701    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250701    gcc-11.5.0
csky                  randconfig-002-20250701    gcc-10.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250701    clang-21
hexagon               randconfig-002-20250701    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250701    gcc-12
i386        buildonly-randconfig-002-20250701    gcc-12
i386        buildonly-randconfig-003-20250701    gcc-12
i386        buildonly-randconfig-004-20250701    gcc-12
i386        buildonly-randconfig-005-20250701    gcc-12
i386        buildonly-randconfig-006-20250701    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch             randconfig-001-20250701    gcc-13.3.0
loongarch             randconfig-002-20250701    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                        m5307c3_defconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250701    gcc-14.2.0
nios2                 randconfig-002-20250701    gcc-13.3.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250701    gcc-14.3.0
parisc                randconfig-002-20250701    gcc-10.5.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-21
powerpc                 mpc8315_rdb_defconfig    clang-21
powerpc                    mvme5100_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250701    gcc-13.3.0
powerpc               randconfig-002-20250701    clang-21
powerpc               randconfig-003-20250701    clang-21
powerpc                     tqm8540_defconfig    gcc-15.1.0
powerpc64                        alldefconfig    clang-21
powerpc64             randconfig-001-20250701    clang-21
powerpc64             randconfig-002-20250701    clang-21
powerpc64             randconfig-003-20250701    gcc-10.5.0
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-21
riscv                    nommu_virt_defconfig    clang-21
riscv                 randconfig-001-20250701    gcc-14.3.0
riscv                 randconfig-002-20250701    gcc-10.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250701    gcc-9.3.0
s390                  randconfig-002-20250701    clang-17
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20250701    gcc-15.1.0
sh                    randconfig-002-20250701    gcc-13.3.0
sh                          sdk7786_defconfig    gcc-15.1.0
sh                           se7343_defconfig    gcc-15.1.0
sh                            titan_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250701    gcc-10.3.0
sparc                 randconfig-002-20250701    gcc-15.1.0
sparc64               randconfig-001-20250701    gcc-8.5.0
sparc64               randconfig-002-20250701    gcc-12.4.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250701    gcc-12
um                    randconfig-002-20250701    gcc-12
um                           x86_64_defconfig    clang-21
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250701    gcc-12
x86_64      buildonly-randconfig-002-20250701    gcc-12
x86_64      buildonly-randconfig-003-20250701    gcc-12
x86_64      buildonly-randconfig-004-20250701    gcc-12
x86_64      buildonly-randconfig-005-20250701    clang-20
x86_64      buildonly-randconfig-006-20250701    clang-20
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-15.1.0
xtensa                  nommu_kc705_defconfig    gcc-15.1.0
xtensa                randconfig-001-20250701    gcc-15.1.0
xtensa                randconfig-002-20250701    gcc-13.3.0
xtensa                         virt_defconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
