Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3968C4EE8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 May 2024 12:23:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D21F401CF;
	Tue, 14 May 2024 10:23:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5ekQviX8NQTE; Tue, 14 May 2024 10:23:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7837F401F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715682210;
	bh=BUBGU6m05kRFadl5H5V0aZ9JpMclJIlkDEOaeFAHmrU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=llgGVpTsTgNpTGIBuYflGw0DD8XyM/YwzzMnJsfIkLE/VueNvs/U2Ras7gCfjdxaZ
	 dyOUjDig6zl8GS1trxOdXlGq93VMwMhWWB6M0IH/Oh31HHr+QI7fegMPWcv8z/NGIC
	 Sya0byNQopLhOgdnxc2MvwmitjlnuCyhElqKIBqlbujf63o70N+bP3il6M9Zw8KhMA
	 BmJw0a6rztnaMOXCD6cVyqWSZPRnRus5O6QD8N0Hsh89iB/+Bk+aLQeBcrjVeXmH7H
	 v0CGWRecCXfJSYvc+UaS5FltjadLEzLkspImCkn3cQuQkHJxy4KeDqe9SUl80YXrHL
	 OvQI8b/B4mwQQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7837F401F2;
	Tue, 14 May 2024 10:23:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 295981BF292
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 10:23:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 147E0405C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 10:23:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UudJJebNNWhx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 May 2024 10:23:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A9E22400AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9E22400AC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A9E22400AC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 10:23:26 +0000 (UTC)
X-CSE-ConnectionGUID: 3ZWpFqpfQVybdBMjxzMG5Q==
X-CSE-MsgGUID: Jx2JbBFQSqmXcAG6yoLvVA==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="11820458"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="11820458"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 03:23:25 -0700
X-CSE-ConnectionGUID: sHc8VJ+VRG+/j5/uMSXIXg==
X-CSE-MsgGUID: Rrmz7zk1T2iW8Bpx5PeQGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="35400475"
Received: from lkp-server01.sh.intel.com (HELO f8b243fe6e68) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 14 May 2024 03:23:25 -0700
Received: from kbuild by f8b243fe6e68 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1s6pJa-000BNh-0s
 for intel-wired-lan@lists.osuosl.org; Tue, 14 May 2024 10:23:22 +0000
Date: Tue, 14 May 2024 18:22:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202405141836.DTaGWfYg-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715682206; x=1747218206;
 h=date:from:to:subject:message-id;
 bh=XHMQPmi0lwu7zMvIRcAp7NQQhIWU7bg0If5FnuTSh94=;
 b=QVisKVvpZF+ApUkNxKXfIOI79eIXTTKzMXMaAiugzlQyVUnlbgQ07od6
 tAkULuB0Z7cmJfz6ho3z+ju3tctk9OJ8f62Nkfg5AyXJyzjEfUwxKe67w
 mFta2ikoSy3zDc9vumM46S0sMkvbjZKqJhLDTrCvTQ1g/J/z0+s4EC1Wp
 JCUK2xvmhhFBM1otf4cnq4dE+iGun4s+JYsVMfbPxp9/SgcsUUu8O9IWU
 0ynnaygpYZYFvrNw2PKbj5wVkmGLcLXPFcl+G/maTgfCdPVhQpAyZRX/Y
 Tqg2o+XgritEthw9Twbx+pCx1VI34k+PDkdKnpzZJKj7pIg86tWqlWxIe
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QVisKVvp
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 804915ed01746be53a409449e33c254332fe4d6f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 804915ed01746be53a409449e33c254332fe4d6f  idpf: Interpret .set_channels() input differently

elapsed time: 741m

configs tested: 174
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240514   gcc  
arc                   randconfig-002-20240514   gcc  
arc                           tb10x_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                          pxa168_defconfig   clang
arm                   randconfig-001-20240514   clang
arm                   randconfig-002-20240514   gcc  
arm                   randconfig-003-20240514   gcc  
arm                   randconfig-004-20240514   gcc  
arm                        realview_defconfig   clang
arm                             rpc_defconfig   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240514   clang
arm64                 randconfig-002-20240514   clang
arm64                 randconfig-003-20240514   gcc  
arm64                 randconfig-004-20240514   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240514   gcc  
csky                  randconfig-002-20240514   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240514   clang
hexagon               randconfig-002-20240514   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240514   clang
i386         buildonly-randconfig-002-20240514   clang
i386         buildonly-randconfig-003-20240514   gcc  
i386         buildonly-randconfig-004-20240514   clang
i386         buildonly-randconfig-005-20240514   gcc  
i386         buildonly-randconfig-006-20240514   clang
i386                                defconfig   clang
i386                  randconfig-001-20240514   gcc  
i386                  randconfig-002-20240514   clang
i386                  randconfig-003-20240514   gcc  
i386                  randconfig-004-20240514   clang
i386                  randconfig-005-20240514   clang
i386                  randconfig-006-20240514   clang
i386                  randconfig-011-20240514   clang
i386                  randconfig-012-20240514   gcc  
i386                  randconfig-013-20240514   gcc  
i386                  randconfig-014-20240514   clang
i386                  randconfig-015-20240514   gcc  
i386                  randconfig-016-20240514   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240514   gcc  
loongarch             randconfig-002-20240514   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                          hp300_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                            gpr_defconfig   clang
mips                          malta_defconfig   gcc  
mips                      pic32mzda_defconfig   gcc  
nios2                            alldefconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240514   gcc  
nios2                 randconfig-002-20240514   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240514   gcc  
parisc                randconfig-002-20240514   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                    gamecube_defconfig   clang
powerpc                      mgcoge_defconfig   clang
powerpc               randconfig-001-20240514   gcc  
powerpc               randconfig-002-20240514   gcc  
powerpc               randconfig-003-20240514   clang
powerpc64             randconfig-001-20240514   clang
powerpc64             randconfig-002-20240514   clang
powerpc64             randconfig-003-20240514   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240514   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240514   gcc  
s390                  randconfig-002-20240514   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240514   gcc  
sh                    randconfig-002-20240514   gcc  
sh                           se7619_defconfig   gcc  
sh                             shx3_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240514   gcc  
sparc64               randconfig-002-20240514   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240514   clang
um                    randconfig-002-20240514   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240514   clang
x86_64       buildonly-randconfig-002-20240514   clang
x86_64       buildonly-randconfig-003-20240514   gcc  
x86_64       buildonly-randconfig-004-20240514   clang
x86_64       buildonly-randconfig-005-20240514   clang
x86_64       buildonly-randconfig-006-20240514   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240514   gcc  
x86_64                randconfig-002-20240514   gcc  
x86_64                randconfig-003-20240514   clang
x86_64                randconfig-004-20240514   clang
x86_64                randconfig-005-20240514   gcc  
x86_64                randconfig-006-20240514   gcc  
x86_64                randconfig-011-20240514   clang
x86_64                randconfig-012-20240514   gcc  
x86_64                randconfig-013-20240514   gcc  
x86_64                randconfig-014-20240514   clang
x86_64                randconfig-015-20240514   gcc  
x86_64                randconfig-016-20240514   gcc  
x86_64                randconfig-071-20240514   clang
x86_64                randconfig-072-20240514   clang
x86_64                randconfig-073-20240514   gcc  
x86_64                randconfig-074-20240514   gcc  
x86_64                randconfig-075-20240514   clang
x86_64                randconfig-076-20240514   clang
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                  nommu_kc705_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
