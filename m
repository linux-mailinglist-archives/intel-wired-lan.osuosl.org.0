Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E320807B26
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 23:10:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E94DD41E70;
	Wed,  6 Dec 2023 22:10:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E94DD41E70
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701900605;
	bh=A7jIJKK4N1r+2zodCA0m5e+ClgAYgHhIINXk8m1Ukg4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=8CzqYV/WCzN69qwLXxPZAZtzWuJy/vcG8A3Pu/8tFBeoEEYOkWLq/wm1Jfa7qqOge
	 ZUXlINZUR1M+BcdadbXNgFhnEz7W6Tzq0zu7hDBoROQ/4/99c5UEepR/gG61aQ3TbG
	 H6UEkJDyURbkbX2cemdx9nPD/kqSSBC8IxOuCi8tITjNim7nFIRIA2jcHmU+uWadLS
	 yau3pyUA0X04F04MMjYk4G1sKMbtDcCJzZZItZn5x+eEx6oJk3Z9ZXW7GGS453fq2A
	 xTQZBRgadOxkejdkR0ZNz+5vG0OXiHpJx/svfP7ycuoxLeL6DYN9zs3a346I9+QpNS
	 itK7MlW0vEr4Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aWIzP9z3wyjL; Wed,  6 Dec 2023 22:10:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7993241E64;
	Wed,  6 Dec 2023 22:10:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7993241E64
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3C5D81BF296
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 22:09:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 13C51834DB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 22:09:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13C51834DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QgumaFOZNqpi for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 22:09:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 98B55831F5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 22:09:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 98B55831F5
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="12849640"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="12849640"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 14:09:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="862240471"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="862240471"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Dec 2023 14:09:52 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rB05V-000BTS-0b
 for intel-wired-lan@lists.osuosl.org; Wed, 06 Dec 2023 22:09:49 +0000
Date: Thu, 07 Dec 2023 06:09:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202312070624.XLGkmYiy-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701900597; x=1733436597;
 h=date:from:to:subject:message-id;
 bh=By5DSpS188E8pBjySZNEpgXX5VENqbBLkSArEGj2DC0=;
 b=WGct5P7q4vvSO6Oz7fLYRfKjp0zR1jnZXtFNQ1TEPYZlsu54xt+j/LIV
 BXNebZ/dEt53YvFN5GK5+/WEGxI9tbZYWJItCifpicCxWsukJVprp1X9W
 9gw3zmgxIRJGCgz2g3uedykRVwQw+mZRuAU01VZiFjXlVZdT8j39vncw+
 2oGoui41U9SiZbei7i12VY6TvoMQe/VLprkg6hQ38fB76mugNsYfvHC1P
 KcbEA50UJT+Uki/maNZPdHA1Nzl7EQGr6ulv+eQOMWP9DgWoNxOeJPLvW
 OLGvzR6uZBTj2aK72kw+EVG+NKydoHgwwiF60GiAsivcKyTcsvZifQQVp
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WGct5P7q
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 a206d9959f5ccd0fb2d54a997c993947ae0e881c
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: a206d9959f5ccd0fb2d54a997c993947ae0e881c  iavf: validate tx_coalesce_usecs even if rx_coalesce_usecs is zero

elapsed time: 1460m

configs tested: 187
configs skipped: 2

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
arc                        nsim_700_defconfig   gcc  
arc                   randconfig-001-20231206   gcc  
arc                   randconfig-002-20231206   gcc  
arc                        vdk_hs38_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                         lpc32xx_defconfig   clang
arm                         vf610m4_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231206   gcc  
csky                  randconfig-002-20231206   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231206   clang
i386         buildonly-randconfig-002-20231206   clang
i386         buildonly-randconfig-003-20231206   clang
i386         buildonly-randconfig-004-20231206   clang
i386         buildonly-randconfig-005-20231206   clang
i386         buildonly-randconfig-006-20231206   clang
i386                                defconfig   gcc  
i386                  randconfig-001-20231206   clang
i386                  randconfig-002-20231206   clang
i386                  randconfig-003-20231206   clang
i386                  randconfig-004-20231206   clang
i386                  randconfig-005-20231206   clang
i386                  randconfig-006-20231206   clang
i386                  randconfig-011-20231206   gcc  
i386                  randconfig-011-20231207   clang
i386                  randconfig-012-20231206   gcc  
i386                  randconfig-012-20231207   clang
i386                  randconfig-013-20231206   gcc  
i386                  randconfig-013-20231207   clang
i386                  randconfig-014-20231206   gcc  
i386                  randconfig-014-20231207   clang
i386                  randconfig-015-20231206   gcc  
i386                  randconfig-015-20231207   clang
i386                  randconfig-016-20231206   gcc  
i386                  randconfig-016-20231207   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231206   gcc  
loongarch             randconfig-002-20231206   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5307c3_defconfig   gcc  
m68k                          multi_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                          ath79_defconfig   clang
mips                  decstation_64_defconfig   gcc  
mips                 decstation_r4k_defconfig   gcc  
mips                           ip27_defconfig   gcc  
mips                       lemote2f_defconfig   gcc  
mips                      malta_kvm_defconfig   clang
mips                        omega2p_defconfig   clang
mips                         rt305x_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231206   gcc  
nios2                 randconfig-002-20231206   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231206   gcc  
parisc                randconfig-002-20231206   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                      ep88xc_defconfig   gcc  
powerpc                        icon_defconfig   clang
powerpc                     kilauea_defconfig   clang
powerpc                       maple_defconfig   gcc  
powerpc                     ppa8548_defconfig   gcc  
powerpc                     rainier_defconfig   gcc  
powerpc                     tqm8555_defconfig   gcc  
powerpc                        warp_defconfig   gcc  
powerpc                         wii_defconfig   gcc  
powerpc64                        alldefconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv             nommu_k210_sdcard_defconfig   gcc  
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231206   gcc  
s390                  randconfig-002-20231206   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                         ap325rxa_defconfig   gcc  
sh                                  defconfig   gcc  
sh                ecovec24-romimage_defconfig   gcc  
sh                          kfr2r09_defconfig   gcc  
sh                          landisk_defconfig   gcc  
sh                          lboxre2_defconfig   gcc  
sh                    randconfig-001-20231206   gcc  
sh                    randconfig-002-20231206   gcc  
sh                           se7712_defconfig   gcc  
sh                           se7780_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sparc                            alldefconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231206   gcc  
sparc64               randconfig-002-20231206   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           alldefconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231206   clang
x86_64       buildonly-randconfig-002-20231206   clang
x86_64       buildonly-randconfig-003-20231206   clang
x86_64       buildonly-randconfig-004-20231206   clang
x86_64       buildonly-randconfig-005-20231206   clang
x86_64       buildonly-randconfig-006-20231206   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-011-20231206   clang
x86_64                randconfig-012-20231206   clang
x86_64                randconfig-013-20231206   clang
x86_64                randconfig-014-20231206   clang
x86_64                randconfig-015-20231206   clang
x86_64                randconfig-016-20231206   clang
x86_64                randconfig-071-20231206   clang
x86_64                randconfig-072-20231206   clang
x86_64                randconfig-073-20231206   clang
x86_64                randconfig-074-20231206   clang
x86_64                randconfig-075-20231206   clang
x86_64                randconfig-076-20231206   clang
x86_64                          rhel-8.3-func   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                       common_defconfig   gcc  
xtensa                randconfig-001-20231206   gcc  
xtensa                randconfig-002-20231206   gcc  
xtensa                    smp_lx200_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
