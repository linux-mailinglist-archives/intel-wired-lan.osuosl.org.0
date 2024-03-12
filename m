Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D825987916F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Mar 2024 10:52:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F62681766;
	Tue, 12 Mar 2024 09:52:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rQRurmXb4EcN; Tue, 12 Mar 2024 09:52:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 127598186B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710237152;
	bh=oN4IrJVsQ4kmhd0MJZjsgwJdMNhsbWin5SA1qPFlJ3k=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=RiGatT1juB8oIEN0HFL571R7KNkoA8vtvGA6pzbMVsOxywSRJ1UpQifLekGLDaW7B
	 N3PhrmzvTZkoAdIEAbP4YhYU2CovGAVS9ZwZNBMtNnmZdjgsvgy4pWq0N+USkZr3eS
	 SwXyS6CWex3TQwwXJkS3XyNks496mYU7euv5W3VunQM//+4YW7ycHzVO4U1WFo2leA
	 1ytLxBmoU3cYE8/bQfTyyibm9Mk/2MQIe79CFt72UeiLgD+47Prh2eBN1MRtH8uG6c
	 CMNENcVRQHiMX6zNUZS1BjTfijMGNqobI/7iISC8BS0lX/tRurgEM7oteRWSirQDXb
	 UQWddRCoM1fEw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 127598186B;
	Tue, 12 Mar 2024 09:52:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DD0E31BF286
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 09:52:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D5EAF40332
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 09:52:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XRZHl--r24W6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Mar 2024 09:52:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A70974016D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A70974016D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A70974016D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 09:52:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="16339554"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16339554"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 02:52:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="11401801"
Received: from lkp-server01.sh.intel.com (HELO b21307750695) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 12 Mar 2024 02:52:26 -0700
Received: from kbuild by b21307750695 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rjyo4-000A0n-0O
 for intel-wired-lan@lists.osuosl.org; Tue, 12 Mar 2024 09:52:24 +0000
Date: Tue, 12 Mar 2024 17:51:36 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202403121733.Ek3KRFy5-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710237149; x=1741773149;
 h=date:from:to:subject:message-id;
 bh=8axTr66GC2RFsjsrd7AllxPAVuAAOi4nXQkFZ8+7iMo=;
 b=PPNNiY7FJPC6rFFtia3hGZYTSHZkeZWu7VDlpQ/3zwJxQFN0p88oCeEl
 X87tBAmCAwPIWDOml1Xqk4FH7sZTr7A6n1aFtaWoevo3RZPI4J4ipmCg6
 aUorwcmL3jcwIFEOLY+4bEUqbbJuig6wDng5nZTvJQqkVt72YgmRItaR+
 3g3qwLNH0rmkCHc890W3osTd5BVUsmyDKqWDq1MJWV5UWi4Z9uIgC5BL4
 9z3t4Jvw6z9l7VJg2gMu1GKytuvN/vfHcepxg0tPkuugsNXwpDKiXGdcu
 NoYOR5fx/2EaOY4R6ayK9i3jYso1LS8Ius6GwJgz94x/3jSasZjMy5fU5
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PPNNiY7F
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 44208f59362e7099877f9ba79e1472f6bd321e2e
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: 44208f59362e7099877f9ba79e1472f6bd321e2e  netlink: specs: support unterminated-ok

elapsed time: 742m

configs tested: 182
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
arc                          axs101_defconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240312   gcc  
arc                   randconfig-002-20240312   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                          ixp4xx_defconfig   gcc  
arm                   randconfig-001-20240312   clang
arm                   randconfig-002-20240312   gcc  
arm                   randconfig-003-20240312   gcc  
arm                   randconfig-004-20240312   clang
arm                       versatile_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240312   gcc  
arm64                 randconfig-002-20240312   gcc  
arm64                 randconfig-003-20240312   gcc  
arm64                 randconfig-004-20240312   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240312   gcc  
csky                  randconfig-002-20240312   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240312   clang
hexagon               randconfig-002-20240312   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240312   gcc  
i386         buildonly-randconfig-002-20240312   gcc  
i386         buildonly-randconfig-003-20240312   gcc  
i386         buildonly-randconfig-004-20240312   gcc  
i386         buildonly-randconfig-005-20240312   clang
i386         buildonly-randconfig-006-20240312   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240312   gcc  
i386                  randconfig-002-20240312   clang
i386                  randconfig-003-20240312   gcc  
i386                  randconfig-004-20240312   gcc  
i386                  randconfig-005-20240312   gcc  
i386                  randconfig-006-20240312   gcc  
i386                  randconfig-011-20240312   gcc  
i386                  randconfig-012-20240312   gcc  
i386                  randconfig-013-20240312   clang
i386                  randconfig-014-20240312   clang
i386                  randconfig-015-20240312   gcc  
i386                  randconfig-016-20240312   clang
loongarch                        alldefconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240312   gcc  
loongarch             randconfig-002-20240312   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        stmark2_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240312   gcc  
nios2                 randconfig-002-20240312   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240312   gcc  
parisc                randconfig-002-20240312   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                        fsp2_defconfig   gcc  
powerpc                      ppc64e_defconfig   gcc  
powerpc               randconfig-001-20240312   gcc  
powerpc               randconfig-002-20240312   clang
powerpc               randconfig-003-20240312   gcc  
powerpc64             randconfig-001-20240312   clang
powerpc64             randconfig-002-20240312   clang
powerpc64             randconfig-003-20240312   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240312   clang
riscv                 randconfig-002-20240312   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240312   clang
s390                  randconfig-002-20240312   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                     magicpanelr2_defconfig   gcc  
sh                    randconfig-001-20240312   gcc  
sh                    randconfig-002-20240312   gcc  
sh                          rsk7201_defconfig   gcc  
sh                          sdk7780_defconfig   gcc  
sh                           se7712_defconfig   gcc  
sh                           se7724_defconfig   gcc  
sh                           se7780_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240312   gcc  
sparc64               randconfig-002-20240312   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240312   gcc  
um                    randconfig-002-20240312   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240312   clang
x86_64       buildonly-randconfig-002-20240312   clang
x86_64       buildonly-randconfig-003-20240312   clang
x86_64       buildonly-randconfig-004-20240312   clang
x86_64       buildonly-randconfig-005-20240312   gcc  
x86_64       buildonly-randconfig-006-20240312   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240312   clang
x86_64                randconfig-002-20240312   clang
x86_64                randconfig-003-20240312   gcc  
x86_64                randconfig-004-20240312   gcc  
x86_64                randconfig-005-20240312   gcc  
x86_64                randconfig-006-20240312   clang
x86_64                randconfig-011-20240312   gcc  
x86_64                randconfig-012-20240312   clang
x86_64                randconfig-013-20240312   gcc  
x86_64                randconfig-014-20240312   gcc  
x86_64                randconfig-015-20240312   clang
x86_64                randconfig-016-20240312   clang
x86_64                randconfig-071-20240312   gcc  
x86_64                randconfig-072-20240312   gcc  
x86_64                randconfig-073-20240312   clang
x86_64                randconfig-074-20240312   gcc  
x86_64                randconfig-075-20240312   gcc  
x86_64                randconfig-076-20240312   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                randconfig-001-20240312   gcc  
xtensa                randconfig-002-20240312   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
