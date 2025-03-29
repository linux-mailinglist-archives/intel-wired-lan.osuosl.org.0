Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 286CAA7572B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 Mar 2025 17:27:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 38CA684035;
	Sat, 29 Mar 2025 16:27:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L3HezBdUttdk; Sat, 29 Mar 2025 16:27:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B7CE84034
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743265639;
	bh=E2HPh3vlm3mEo20KAAG4M2vlHV3fFsZN8zoGlGXwaY0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=uXXV9+D30nwsW3mKGzBD50jaAR3hlZICAAVaI5O4Q4HJc9kAKmHNoxOsCBhOXjM64
	 F4Xq2ZTcGACRfAqtNze4qQUywPcv8vYKinQFnJbSWGrsQoSxqPaZxE18Vtv0zlO1jJ
	 +mAKANT6xZpuZfVt4yEQWvSntdMyof1i6j7Izzi8ElAKg5pcjJdue56N3y40cZ/32c
	 NmvO/ueMlS2b9IVG4Zy8afJECrwn3dyYdD567Jd3wndpG8OT7uSX4bh6H7n6JuCXkH
	 Jv8L8uFsTXjapYfk1WYjYTfK58yRwqBgP5dMkVk/JCKQbNDlP4nRZmOqu6ewwsckR9
	 Fb7O4x9SghM7Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B7CE84034;
	Sat, 29 Mar 2025 16:27:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8AD2A12A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Mar 2025 16:27:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7CDAD40438
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Mar 2025 16:27:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x28pd8Hxt9kz for <intel-wired-lan@lists.osuosl.org>;
 Sat, 29 Mar 2025 16:27:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 659324027F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 659324027F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 659324027F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Mar 2025 16:27:16 +0000 (UTC)
X-CSE-ConnectionGUID: d/Plwv9MRTaBjb62UNLn9Q==
X-CSE-MsgGUID: xZ1JuSmgShyr1plqrmuTCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11388"; a="44619459"
X-IronPort-AV: E=Sophos;i="6.14,286,1736841600"; d="scan'208";a="44619459"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2025 09:27:15 -0700
X-CSE-ConnectionGUID: +UYwmuYqSPWH+VnVRsavAg==
X-CSE-MsgGUID: nKCO0L+1SxeqQYCxQcFi0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,286,1736841600"; d="scan'208";a="125531293"
Received: from lkp-server02.sh.intel.com (HELO e98e3655d6d2) ([10.239.97.151])
 by fmviesa006.fm.intel.com with ESMTP; 29 Mar 2025 09:27:14 -0700
Received: from kbuild by e98e3655d6d2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tyZ1c-0008E3-1G
 for intel-wired-lan@lists.osuosl.org; Sat, 29 Mar 2025 16:27:12 +0000
Date: Sun, 30 Mar 2025 00:26:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202503300017.jBJdqveH-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743265637; x=1774801637;
 h=date:from:to:subject:message-id;
 bh=SQwn58McoELRZVsTnf19hUouD7zJswMansuiNOQ5bXQ=;
 b=R2XpYM9uVvRB+DtHaNf2AMWQsXJXRq99fc+6nQyf8CW1RuIBXKJy2fW4
 upaxFZUKYNDRC43evhzpas5JFZmCLk+I7f19+iaLauxqRWrGilkCogLbm
 QuTXEckZySGouKMJz618BBjklrv26qfoqUP176/pdF52CEZ51Ephq+y2k
 LRjav0CVvIRUHpJWw0noZoz3GCsnGi2P/cs51s2pb2kAjBR51CGYpVYeE
 yJ8X82/TdvrCfhhZGx8w9AdqEwj526hyjzDy4xEq8105OTR6xtjn6G+SD
 Nbsu1952qU3tW68D17uPFMzhLUmbStDWOF/qDOGRx2ryC3l1jkcQYOSTM
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=R2XpYM9u
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 e3cb4610cd4e000804df2336249d70b5dac25703
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
branch HEAD: e3cb4610cd4e000804df2336249d70b5dac25703  ice: Check VF VSI Pointer Value in ice_vc_add_fdir_fltr()

elapsed time: 1447m

configs tested: 130
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    gcc-14.2.0
arc                   randconfig-001-20250329    gcc-14.2.0
arc                   randconfig-002-20250329    gcc-14.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-14.2.0
arm                     am200epdkit_defconfig    gcc-14.2.0
arm                      integrator_defconfig    clang-21
arm                          moxart_defconfig    gcc-14.2.0
arm                        multi_v7_defconfig    gcc-14.2.0
arm                   randconfig-001-20250329    gcc-9.3.0
arm                   randconfig-002-20250329    clang-17
arm                   randconfig-003-20250329    clang-21
arm                   randconfig-004-20250329    clang-21
arm                             rpc_defconfig    clang-18
arm                         socfpga_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250329    gcc-7.5.0
arm64                 randconfig-002-20250329    gcc-9.5.0
arm64                 randconfig-003-20250329    gcc-5.5.0
arm64                 randconfig-004-20250329    gcc-5.5.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250329    gcc-11.5.0
csky                  randconfig-002-20250329    gcc-13.3.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250329    clang-21
hexagon               randconfig-002-20250329    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250329    gcc-12
i386        buildonly-randconfig-002-20250329    gcc-12
i386        buildonly-randconfig-003-20250329    clang-20
i386        buildonly-randconfig-004-20250329    gcc-11
i386        buildonly-randconfig-005-20250329    gcc-12
i386        buildonly-randconfig-006-20250329    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250329    gcc-14.2.0
loongarch             randconfig-002-20250329    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                          multi_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                          eyeq5_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250329    gcc-7.5.0
nios2                 randconfig-002-20250329    gcc-7.5.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-14.2.0
parisc                randconfig-001-20250329    gcc-6.5.0
parisc                randconfig-002-20250329    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-21
powerpc                        fsp2_defconfig    gcc-14.2.0
powerpc                      ppc44x_defconfig    clang-21
powerpc               randconfig-001-20250329    gcc-5.5.0
powerpc               randconfig-002-20250329    gcc-5.5.0
powerpc               randconfig-003-20250329    gcc-9.3.0
powerpc64             randconfig-001-20250329    gcc-9.3.0
powerpc64             randconfig-002-20250329    gcc-9.3.0
powerpc64             randconfig-003-20250329    clang-21
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-21
riscv                    nommu_k210_defconfig    clang-21
riscv                 randconfig-001-20250329    gcc-14.2.0
riscv                 randconfig-002-20250329    gcc-14.2.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-15
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    clang-15
s390                  randconfig-001-20250329    gcc-8.5.0
s390                  randconfig-002-20250329    gcc-6.5.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-14.2.0
sh                            hp6xx_defconfig    gcc-14.2.0
sh                          kfr2r09_defconfig    gcc-14.2.0
sh                          r7785rp_defconfig    gcc-14.2.0
sh                    randconfig-001-20250329    gcc-5.5.0
sh                    randconfig-002-20250329    gcc-11.5.0
sh                   sh7770_generic_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250329    gcc-8.5.0
sparc                 randconfig-002-20250329    gcc-8.5.0
sparc64                             defconfig    gcc-14.2.0
sparc64               randconfig-001-20250329    gcc-6.5.0
sparc64               randconfig-002-20250329    gcc-14.2.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                                  defconfig    clang-21
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250329    gcc-12
um                    randconfig-002-20250329    gcc-12
um                           x86_64_defconfig    clang-15
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250329    clang-20
x86_64      buildonly-randconfig-002-20250329    gcc-12
x86_64      buildonly-randconfig-003-20250329    gcc-12
x86_64      buildonly-randconfig-004-20250329    clang-20
x86_64      buildonly-randconfig-005-20250329    clang-20
x86_64      buildonly-randconfig-006-20250329    gcc-12
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250329    gcc-10.5.0
xtensa                randconfig-002-20250329    gcc-12.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
