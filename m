Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 12FF885938A
	for <lists+intel-wired-lan@lfdr.de>; Sun, 18 Feb 2024 00:05:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88C66608E4;
	Sat, 17 Feb 2024 23:05:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tZ_JRjRSFU5y; Sat, 17 Feb 2024 23:05:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E2EB608D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708211132;
	bh=jR8w0DTTEjvDlrwUtS2iYwJnWrWhc/Dt7xQ1KhPlbzQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PqCz7nJ8WnOuZmWCfXDxMaxUEGueWeKrjb7Wcu6o9BbawTEGo5VSGjiwMYWamDT02
	 zbBRu8XR7cbfK9rQdWEauJTbffvVqJmt4DElQjdG6YN8Yh9982MNLCyymJ1GxTXegB
	 agsqXfAq25KdlTld9IHfU6w80/a9Wsi82PUyOHtjHF+eeGa9KMApulIgRMIaq57OkA
	 nKuIJAXCswnRpNC+Ujl+rh1VOv9sk464Tox4lZStQK+x9hFXelkVptESX//Gtb/6iE
	 SIeeKarsgc+XDSPs8G85LT5G7QgvTAl5onDXh3TW1EhqxQtx0KejXtoyJvsdERF0nj
	 Sb2oCzwEe6mVA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E2EB608D7;
	Sat, 17 Feb 2024 23:05:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 57A651BF372
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 23:05:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 50A4E8215B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 23:05:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rXXZ5qOXfFX3 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Feb 2024 23:05:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 34C698212A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34C698212A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 34C698212A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 23:05:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10987"; a="19843604"
X-IronPort-AV: E=Sophos;i="6.06,167,1705392000"; d="scan'208";a="19843604"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2024 15:05:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,167,1705392000"; d="scan'208";a="41639117"
Received: from lkp-server02.sh.intel.com (HELO 3c78fa4d504c) ([10.239.97.151])
 by orviesa001.jf.intel.com with ESMTP; 17 Feb 2024 15:05:26 -0800
Received: from kbuild by 3c78fa4d504c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rbTkJ-0002ZO-27
 for intel-wired-lan@lists.osuosl.org; Sat, 17 Feb 2024 23:05:23 +0000
Date: Sun, 18 Feb 2024 07:05:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202402180708.HiFb49Vt-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708211129; x=1739747129;
 h=date:from:to:subject:message-id;
 bh=iBRtm+Oa21GCvLm2NCvppgkQd6yaShTaaJdVZjb5riU=;
 b=ceJjL5aoDj+D9D3RBiBeoXiiQ0y9RnQsPjnABtf5FDeFL+kXV2UhqBWn
 1NyM6Xlz/iT0PHxBcTSAH2P2yAbxFFcOaqjqz3nqFx80OBbAKuAp7vNXw
 SlwElce7MxGhqMw99o/08DlO/otkcdbanVAdfF9bQiq7lhIqmpxk3whvl
 7sZxW4uYHgkgfG4rAKIC7sW//E5XRMrqZL9CPc+oyj4ZJFuXk1d6dTehr
 Zl2DMXQyHDS9stZH1VyoIjT/URUOUvmLKFK3XvHeWUfQEXGxZ/BxxkV2B
 IyzuZHS6DIni44ec8hcrTf2F9Mxi1yCUVyuaeGwCAXtCRTuX12odPot+9
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ceJjL5ao
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 6cffde791c4f1c276fdfcf068554c3c77de35f40
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
branch HEAD: 6cffde791c4f1c276fdfcf068554c3c77de35f40  intel: make module parameters readable in sys filesystem

elapsed time: 1454m

configs tested: 155
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
arc                   randconfig-001-20240218   gcc  
arc                   randconfig-002-20240218   gcc  
arc                           tb10x_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                         axm55xx_defconfig   clang
arm                                 defconfig   clang
arm                          pxa910_defconfig   gcc  
arm                   randconfig-001-20240218   clang
arm                   randconfig-002-20240218   clang
arm                   randconfig-003-20240218   gcc  
arm                   randconfig-004-20240218   clang
arm                           sama5_defconfig   gcc  
arm                           spitz_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240218   clang
arm64                 randconfig-002-20240218   clang
arm64                 randconfig-003-20240218   clang
arm64                 randconfig-004-20240218   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240218   gcc  
csky                  randconfig-002-20240218   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240218   clang
hexagon               randconfig-002-20240218   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240217   gcc  
i386         buildonly-randconfig-002-20240217   clang
i386         buildonly-randconfig-003-20240217   gcc  
i386         buildonly-randconfig-004-20240217   gcc  
i386         buildonly-randconfig-005-20240217   gcc  
i386         buildonly-randconfig-006-20240217   clang
i386                                defconfig   clang
i386                  randconfig-001-20240217   gcc  
i386                  randconfig-002-20240217   gcc  
i386                  randconfig-003-20240217   clang
i386                  randconfig-004-20240217   gcc  
i386                  randconfig-005-20240217   gcc  
i386                  randconfig-006-20240217   clang
i386                  randconfig-011-20240217   gcc  
i386                  randconfig-012-20240217   gcc  
i386                  randconfig-013-20240217   clang
i386                  randconfig-014-20240217   clang
i386                  randconfig-015-20240217   clang
i386                  randconfig-016-20240217   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240218   gcc  
loongarch             randconfig-002-20240218   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        mvme147_defconfig   gcc  
m68k                            q40_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                  cavium_octeon_defconfig   gcc  
mips                           xway_defconfig   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240218   gcc  
nios2                 randconfig-002-20240218   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-64bit_defconfig   gcc  
parisc                randconfig-001-20240218   gcc  
parisc                randconfig-002-20240218   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                    ge_imp3a_defconfig   gcc  
powerpc                     kilauea_defconfig   clang
powerpc                 mpc836x_rdk_defconfig   clang
powerpc                  mpc866_ads_defconfig   clang
powerpc               randconfig-001-20240218   gcc  
powerpc               randconfig-002-20240218   gcc  
powerpc               randconfig-003-20240218   clang
powerpc64             randconfig-001-20240218   clang
powerpc64             randconfig-002-20240218   gcc  
powerpc64             randconfig-003-20240218   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240218   gcc  
riscv                 randconfig-002-20240218   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240218   gcc  
s390                  randconfig-002-20240218   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                          r7785rp_defconfig   gcc  
sh                    randconfig-001-20240218   gcc  
sh                    randconfig-002-20240218   gcc  
sh                           se7721_defconfig   gcc  
sh                   secureedge5410_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240218   gcc  
sparc64               randconfig-002-20240218   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                    randconfig-001-20240218   gcc  
um                    randconfig-002-20240218   clang
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240218   gcc  
xtensa                randconfig-002-20240218   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
