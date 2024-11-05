Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5019F9BCD57
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Nov 2024 14:06:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C927D607BE;
	Tue,  5 Nov 2024 13:06:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f5rSGabU5LAe; Tue,  5 Nov 2024 13:06:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 509BC607C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730811994;
	bh=sFBw8x98Vmy6i90alctRvLYZdEQblyrwcTsFc103OYk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=kQAEX32dfnx9irdjEPfKUVKpt4N/QAhX13hy6k3+VMxvejjue/1YioZ0MLzX55aT/
	 nLA0AwAFg8DUW+NTsh2V10r2WgNut+eNoYrrobg0x/MgPeN1shGl22MZArpcb6OCpP
	 4mHzNOO5Yht6ko2duAeWbcZljntBwa9IRUcMVyiWITho+myCi+xQ2G+6wnh0LD/6JX
	 R/Sfamt8Z8tfzqPv+kCjiIGbUCXqeHGHyDQuACPFfmaN9sdDioMQylDqziSOx1VoM9
	 rtpzeCyzKpYQ0PByvYaL2buUMiuD7hIK5lTp7GNGlchu0BGeavQ9A6mue0eb9WW/PY
	 Nx7aSiU2vh90A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 509BC607C2;
	Tue,  5 Nov 2024 13:06:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3C797B8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 13:06:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3592560769
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 13:06:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xK8sEAifaHaj for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2024 13:06:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1452860745
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1452860745
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1452860745
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 13:06:30 +0000 (UTC)
X-CSE-ConnectionGUID: 8RXmV2vnTkSkVMYOxI02VA==
X-CSE-MsgGUID: fCyLGDPaTlq89x6By9ZSmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="30673516"
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="30673516"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 05:06:31 -0800
X-CSE-ConnectionGUID: 4KMOT72LSeSaX96fQAgoJg==
X-CSE-MsgGUID: lHE2d/9QT8GQw2kUfvudPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="114792088"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 05 Nov 2024 05:06:30 -0800
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t8JGN-000m4F-0q
 for intel-wired-lan@lists.osuosl.org; Tue, 05 Nov 2024 13:06:27 +0000
Date: Tue, 05 Nov 2024 21:05:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411052143.IopWSxpT-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730811992; x=1762347992;
 h=date:from:to:subject:message-id;
 bh=62IEvEES+6bsOlHo7Wf1X8vTkdAWY+9ID698eCNtVrs=;
 b=Z8Maly6yntGVbKT0YjxKinX3aup+JCDPy89ihUXu+mOv/dlx2rmAwaBR
 X0ywkRGy+dzlWZyQH+SF98CFNXRQf3p3TYgPazIZIMqmpSH+7i6TCdTRi
 oXM1ta8xoExalZ+g9fZD2blW6DEdIhv1yoeBDeUMSBYV1z1HFd5jrUjna
 /XTbGrw0fHrYQAIBB1kQ3odi9bz06m+xjTdza3J7AmoJecURI0jkBGFO8
 sMiIj8du1FlXnp7shcGs9S7OsQyP1aO8hzUSZ12MndfSzEjmsw95T7qwE
 Bl7jlZ/MykfXyvE3S+/5J22hS2hPB8ExZgSAuDWbFqrEseY+0RqfZKajH
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z8Maly6y
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD REGRESSION
 676d779106de51fc4e2685ca8de610ee5a70d35f
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
branch HEAD: 676d779106de51fc4e2685ca8de610ee5a70d35f  igc: Link queues to NAPI instances

Error/Warning (recently discovered and may have been fixed):

    https://lore.kernel.org/oe-kbuild-all/202411050805.cfj4ObQq-lkp@intel.com
    https://lore.kernel.org/oe-kbuild-all/202411051123.n3qTi2f2-lkp@intel.com
    https://lore.kernel.org/oe-kbuild-all/202411051410.QeBCuZ5y-lkp@intel.com

    drivers/net/ethernet/intel/iavf/iavf_txrx.c:1111:(.text+0x185c): undefined reference to `iavf_ptp_extend_32b_timestamp'
    drivers/net/ethernet/intel/iavf/iavf_virtchnl.c:2618:(.text+0x4634): undefined reference to `iavf_ptp_process_caps'
    drivers/net/ethernet/intel/iavf/iavf_virtchnl.c:381:(.text+0xf08): undefined reference to `iavf_ptp_cap_supported'
    iavf_main.c:(.text+0x1924): undefined reference to `iavf_ptp_set_ts_config'
    iavf_main.c:(.text+0x61ac): undefined reference to `iavf_ptp_cap_supported'
    iavf_main.c:(.text+0x72bc): undefined reference to `iavf_ptp_release'
    iavf_main.c:(.text+0x8484): undefined reference to `iavf_ptp_init'

Error/Warning ids grouped by kconfigs:

recent_errors
`-- parisc-randconfig-001-20241105
    |-- drivers-net-ethernet-intel-iavf-iavf_txrx.c:(.text):undefined-reference-to-iavf_ptp_extend_32b_timestamp
    |-- drivers-net-ethernet-intel-iavf-iavf_virtchnl.c:(.text):undefined-reference-to-iavf_ptp_cap_supported
    |-- drivers-net-ethernet-intel-iavf-iavf_virtchnl.c:(.text):undefined-reference-to-iavf_ptp_process_caps
    |-- iavf_main.c:(.text):undefined-reference-to-iavf_ptp_cap_supported
    |-- iavf_main.c:(.text):undefined-reference-to-iavf_ptp_init
    |-- iavf_main.c:(.text):undefined-reference-to-iavf_ptp_release
    `-- iavf_main.c:(.text):undefined-reference-to-iavf_ptp_set_ts_config

elapsed time: 1132m

configs tested: 152
configs skipped: 3

tested configs:
alpha                             allnoconfig    gcc-13.3.0
alpha                            allyesconfig    gcc-13.3.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20241105    gcc-13.2.0
arc                   randconfig-002-20241105    gcc-13.2.0
arm                              allmodconfig    gcc-14.1.0
arm                               allnoconfig    clang-20
arm                              allyesconfig    gcc-14.1.0
arm                      footbridge_defconfig    clang-20
arm                           imxrt_defconfig    clang-20
arm                   randconfig-001-20241105    gcc-14.1.0
arm                   randconfig-002-20241105    clang-20
arm                   randconfig-003-20241105    gcc-14.1.0
arm                   randconfig-004-20241105    clang-16
arm                        shmobile_defconfig    gcc-14.1.0
arm                         wpcm450_defconfig    gcc-14.1.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                 randconfig-001-20241105    gcc-14.1.0
arm64                 randconfig-002-20241105    gcc-14.1.0
arm64                 randconfig-003-20241105    gcc-14.1.0
arm64                 randconfig-004-20241105    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                  randconfig-001-20241105    gcc-14.1.0
csky                  randconfig-002-20241105    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-20
hexagon               randconfig-001-20241105    clang-20
hexagon               randconfig-002-20241105    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241105    clang-19
i386        buildonly-randconfig-002-20241105    gcc-12
i386        buildonly-randconfig-003-20241105    clang-19
i386        buildonly-randconfig-004-20241105    gcc-12
i386        buildonly-randconfig-005-20241105    clang-19
i386        buildonly-randconfig-006-20241105    gcc-12
i386                                defconfig    clang-19
i386                  randconfig-001-20241105    gcc-12
i386                  randconfig-002-20241105    clang-19
i386                  randconfig-003-20241105    gcc-12
i386                  randconfig-004-20241105    clang-19
i386                  randconfig-005-20241105    clang-19
i386                  randconfig-006-20241105    gcc-12
i386                  randconfig-011-20241105    clang-19
i386                  randconfig-012-20241105    clang-19
i386                  randconfig-013-20241105    gcc-12
i386                  randconfig-014-20241105    gcc-12
i386                  randconfig-015-20241105    gcc-12
i386                  randconfig-016-20241105    gcc-12
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch             randconfig-001-20241105    gcc-14.1.0
loongarch             randconfig-002-20241105    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                          sun3x_defconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                          ath79_defconfig    gcc-14.1.0
mips                           ip27_defconfig    gcc-14.1.0
mips                     loongson1b_defconfig    clang-15
nios2                             allnoconfig    gcc-14.1.0
nios2                 randconfig-001-20241105    gcc-14.1.0
nios2                 randconfig-002-20241105    gcc-14.1.0
openrisc                          allnoconfig    clang-20
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    clang-20
parisc                            allnoconfig    gcc-14.1.0
parisc                           allyesconfig    gcc-14.1.0
parisc                randconfig-001-20241105    gcc-14.1.0
parisc                randconfig-002-20241105    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    clang-20
powerpc                           allnoconfig    gcc-14.1.0
powerpc                          allyesconfig    clang-20
powerpc                    ge_imp3a_defconfig    gcc-14.1.0
powerpc                      mgcoge_defconfig    clang-20
powerpc               randconfig-001-20241105    gcc-14.1.0
powerpc               randconfig-002-20241105    gcc-14.1.0
powerpc               randconfig-003-20241105    gcc-14.1.0
powerpc                  storcenter_defconfig    gcc-14.1.0
powerpc64             randconfig-001-20241105    gcc-14.1.0
powerpc64             randconfig-002-20241105    clang-14
powerpc64             randconfig-003-20241105    gcc-14.1.0
riscv                            allmodconfig    clang-20
riscv                             allnoconfig    clang-20
riscv                             allnoconfig    gcc-14.1.0
riscv                            allyesconfig    clang-20
riscv                 randconfig-001-20241105    gcc-14.1.0
riscv                 randconfig-002-20241105    clang-20
s390                             allmodconfig    clang-20
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                  randconfig-001-20241105    clang-20
s390                  randconfig-002-20241105    clang-20
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                             espt_defconfig    gcc-14.1.0
sh                    randconfig-001-20241105    gcc-14.1.0
sh                    randconfig-002-20241105    gcc-14.1.0
sh                           se7712_defconfig    gcc-14.1.0
sh                           se7722_defconfig    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
sparc64               randconfig-001-20241105    gcc-14.1.0
sparc64               randconfig-002-20241105    gcc-14.1.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                                allnoconfig    clang-20
um                               allyesconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20241105    gcc-12
um                    randconfig-002-20241105    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241105    gcc-12
x86_64      buildonly-randconfig-002-20241105    gcc-12
x86_64      buildonly-randconfig-003-20241105    gcc-12
x86_64      buildonly-randconfig-004-20241105    gcc-12
x86_64      buildonly-randconfig-005-20241105    clang-19
x86_64      buildonly-randconfig-006-20241105    gcc-12
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20241105    gcc-12
x86_64                randconfig-002-20241105    gcc-12
x86_64                randconfig-003-20241105    clang-19
x86_64                randconfig-004-20241105    clang-19
x86_64                randconfig-005-20241105    gcc-12
x86_64                randconfig-006-20241105    gcc-12
x86_64                randconfig-011-20241105    gcc-12
x86_64                randconfig-012-20241105    gcc-12
x86_64                randconfig-013-20241105    clang-19
x86_64                randconfig-014-20241105    gcc-12
x86_64                randconfig-015-20241105    clang-19
x86_64                randconfig-016-20241105    gcc-12
x86_64                randconfig-071-20241105    clang-19
x86_64                randconfig-072-20241105    clang-19
x86_64                randconfig-073-20241105    gcc-12
x86_64                randconfig-074-20241105    gcc-12
x86_64                               rhel-8.3    gcc-12
xtensa                            allnoconfig    gcc-14.1.0
xtensa                randconfig-002-20241105    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
