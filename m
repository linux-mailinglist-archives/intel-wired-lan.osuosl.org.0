Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49678754826
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Jul 2023 12:12:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A6AB60BE2;
	Sat, 15 Jul 2023 10:12:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A6AB60BE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689415928;
	bh=ebBmXEsfaC/uZbSLLbKo3I4td3AA75U4LRz4tBxOuH8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=edBBb8YwSrbcPa82vamnfIZ4nD1Pb3hawdnKeKWxvRRSLvyUOZ3Wdrh1nWhl1i3/b
	 iE5YBDhF9CsXI2j+0GA+CgOOAxhXER1BcvNjyH2Le6KDlnKvERadjNgRBHBG10GtaF
	 ozVg7W3+PB4uSTnPF9O4yGvsRK1JiqNSu465ziWzAsVtNq8oCaw9eGArAlmchPOamN
	 OQHuMUFG2bZLldl73Z05fuGVmeHvqoEz9OZr/qqxe0p6IutibH4Dfk1QxXrrZzwf1K
	 HFcfWLiziakkyi67IBJyghzLJ/jCDoQ159yDLATQadhRYQ3jaeiVoKzoxkZGGW5a3h
	 RAwCurThKV9Fw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wx2CwdCw_DWU; Sat, 15 Jul 2023 10:12:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C42E60B1A;
	Sat, 15 Jul 2023 10:12:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C42E60B1A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7FEE51BF301
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jul 2023 10:12:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 575A660B1A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jul 2023 10:12:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 575A660B1A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0E3L1C3VXfpX for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Jul 2023 10:12:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CCD260A99
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2CCD260A99
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jul 2023 10:11:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10771"; a="345959423"
X-IronPort-AV: E=Sophos;i="6.01,208,1684825200"; d="scan'208";a="345959423"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2023 03:11:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10771"; a="752331148"
X-IronPort-AV: E=Sophos;i="6.01,208,1684825200"; d="scan'208";a="752331148"
Received: from lkp-server01.sh.intel.com (HELO c544d7fc5005) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 15 Jul 2023 03:11:57 -0700
Received: from kbuild by c544d7fc5005 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qKcFo-000879-2c
 for intel-wired-lan@lists.osuosl.org; Sat, 15 Jul 2023 10:11:56 +0000
Date: Sat, 15 Jul 2023 18:11:11 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307151809.3zHa6c1z-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689415920; x=1720951920;
 h=date:from:to:subject:message-id;
 bh=ir0Z3VtZRJRu+uCUVlQbPTGhlPc+QN7qkpr7GNvTm/o=;
 b=ZEMMhDTN4Umg/af8i+goYM/HeLf5b53DSjXBFO7YQpDB7kmSaJmfnB4Y
 k8Adj3BdYG1hTTwq9fQQwFGDRfYInAeSSGtwe+CJMlzUmV/9nVXmmsXF0
 ZcNeA4BMtpPS5CINEI4KQ8Spl7vNzBNL0INo6NUCCUCpdffiEFA1QVr0F
 NYyMke9uqp+RK0io+3iuK9/WenrtI60Fa5SAnYCa+nEjTtjvwDr8RjQIG
 W5rQBZ5nH9DJOxqtaUBxhtYK22+7ur4GQK80NEVad141scxSAD/tChLkd
 SW+vFLP5JeiMwCvQ0/4pOCnTaDGBIXCpTzTG4p7H24CbgbLw1P12uQ7Ul
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZEMMhDTN
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 99152d9760d36a5f6bc7d246e881e1827326faf8
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 99152d9760d36a5f6bc7d246e881e1827326faf8  i40e: Fix an NULL vs IS_ERR() bug for debugfs_create_dir()

elapsed time: 720m

configs tested: 128
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                        nsim_700_defconfig   gcc  
arc                        nsimosci_defconfig   gcc  
arc                     nsimosci_hs_defconfig   gcc  
arc                  randconfig-r033-20230714   gcc  
arc                  randconfig-r043-20230714   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                          moxart_defconfig   clang
arm                       omap2plus_defconfig   gcc  
arm                         orion5x_defconfig   clang
arm                          pxa168_defconfig   clang
arm                            qcom_defconfig   gcc  
arm                  randconfig-r013-20230714   gcc  
arm                  randconfig-r046-20230714   gcc  
arm                          sp7021_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r026-20230715   clang
hexagon              randconfig-r041-20230714   clang
hexagon              randconfig-r045-20230714   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230714   gcc  
i386         buildonly-randconfig-r005-20230714   gcc  
i386         buildonly-randconfig-r006-20230714   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230714   gcc  
i386                 randconfig-i002-20230714   gcc  
i386                 randconfig-i003-20230714   gcc  
i386                 randconfig-i004-20230714   gcc  
i386                 randconfig-i005-20230714   gcc  
i386                 randconfig-i006-20230714   gcc  
i386                 randconfig-i011-20230714   clang
i386                 randconfig-i012-20230714   clang
i386                 randconfig-i013-20230714   clang
i386                 randconfig-i014-20230714   clang
i386                 randconfig-i015-20230714   clang
i386                 randconfig-i016-20230714   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230714   gcc  
loongarch            randconfig-r004-20230714   gcc  
loongarch            randconfig-r025-20230715   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        mvme147_defconfig   gcc  
microblaze           randconfig-r003-20230714   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                           ip27_defconfig   clang
mips                      loongson3_defconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r005-20230714   gcc  
openrisc                    or1ksim_defconfig   gcc  
openrisc             randconfig-r035-20230714   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                    klondike_defconfig   gcc  
powerpc                 mpc834x_itx_defconfig   gcc  
powerpc              randconfig-r006-20230714   gcc  
powerpc                     tqm5200_defconfig   clang
riscv                            alldefconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230714   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r012-20230714   clang
s390                 randconfig-r044-20230714   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r002-20230714   gcc  
sh                   randconfig-r032-20230714   gcc  
sh                          rsk7269_defconfig   gcc  
sh                           se7722_defconfig   gcc  
sh                           se7724_defconfig   gcc  
sh                        sh7763rdp_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r014-20230714   gcc  
sparc                randconfig-r031-20230714   gcc  
sparc                randconfig-r034-20230714   gcc  
sparc64              randconfig-r011-20230714   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230714   gcc  
x86_64       buildonly-randconfig-r002-20230714   gcc  
x86_64       buildonly-randconfig-r003-20230714   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r015-20230714   clang
x86_64               randconfig-r021-20230715   gcc  
x86_64               randconfig-x001-20230714   clang
x86_64               randconfig-x002-20230714   clang
x86_64               randconfig-x003-20230714   clang
x86_64               randconfig-x004-20230714   clang
x86_64               randconfig-x005-20230714   clang
x86_64               randconfig-x006-20230714   clang
x86_64               randconfig-x011-20230714   gcc  
x86_64               randconfig-x012-20230714   gcc  
x86_64               randconfig-x013-20230714   gcc  
x86_64               randconfig-x014-20230714   gcc  
x86_64               randconfig-x015-20230714   gcc  
x86_64               randconfig-x016-20230714   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r022-20230715   gcc  
xtensa               randconfig-r036-20230714   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
