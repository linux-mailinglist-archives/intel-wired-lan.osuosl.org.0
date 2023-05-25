Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A9D710D72
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 May 2023 15:41:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D3A142747;
	Thu, 25 May 2023 13:41:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D3A142747
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685022090;
	bh=9f9ZKOlq/xZC+8aJ0O3NkFmkXj5R30m2gZSCg0OIv4I=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=m7AKI0huXGIoP498QCEMxbI8g8kp6yezpFGUiHuF4R8w3Da6suw0lhB7jvM2l9VLs
	 lYSGUOzcb9etAxokEWc9J9d2keYO1fLlpVqum5bfmnmQQyMXudq2LrZHI/0Q06lkOZ
	 XYxuouIgmPBI/FfrbS4M1rp944lx3rSLWliiax+z7VnijvDQ4NNpcchdwh7JhtVBsK
	 om26tP3H7AQ5VO2TuTHQ1Cx/SgPQJ1Ahcq8OE1V90/xdG7v2kuN4rN9pS363imNV2g
	 EwIj2M6kYlmOC8ChKfA3OqOPIFUBbxBgkPd3QGqjaudE/ZSAY1uEYtL4zyf/ngGRs+
	 9DLpdlnSVksjA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rUOVZXcmvTh4; Thu, 25 May 2023 13:41:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E787402B9;
	Thu, 25 May 2023 13:41:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E787402B9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A47851BF277
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 13:41:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C4FF40127
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 13:41:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C4FF40127
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7NGOwtastKf8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 May 2023 13:41:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 640DB42BAC
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 640DB42BAC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 13:41:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="382134479"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; d="scan'208";a="382134479"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 06:40:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="774673015"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; d="scan'208";a="774673015"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 25 May 2023 06:40:45 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q2BCv-000FlI-0b
 for intel-wired-lan@lists.osuosl.org; Thu, 25 May 2023 13:40:45 +0000
Date: Thu, 25 May 2023 21:39:50 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230525133950.z0Ynp%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685022082; x=1716558082;
 h=date:from:to:subject:message-id;
 bh=MdHk0Qsvc1FD/25NkiimecKPJov38lVWXPoQi9nR/U0=;
 b=WnKHTiXG2F+EtTdX8FQzXekaeF4EYdbhtAwEJVtyYOnLrqRang6iSa3U
 xrFcBpw4MYJ433K7A0FYj5U57NB6+acN+bknmae4gqepZfAdqawUH4xeL
 uFLyBcM3tBJMUf3R23kHn4k2zuzXEcgFELivXRf8LkJwDUj9+cVnFrdfH
 76i1a3Zh3ttaVXxSIYnLfQ6n1uYKfPlB73JEDHXxnaOUkaW0qWNhdPUex
 mm3wX9L/0gHEPQl4r+AII81P0d3CrlrB6+6aNkXiWnP2EBMu7fMO1+55Z
 830qhmxrQkUasuxuACZXsDyzHEXr9wQUDC74cifcHUmyvC7FS5Dwu/HU6
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WnKHTiXG
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 30a7ed5ab8cd2f0490e9793adff75ba3ec7f0bdc
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
branch HEAD: 30a7ed5ab8cd2f0490e9793adff75ba3ec7f0bdc  iavf: use internal state to free traffic IRQs

elapsed time: 1297m

configs tested: 202
configs skipped: 14

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r004-20230524   gcc  
alpha                randconfig-r011-20230524   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r013-20230524   gcc  
arc                  randconfig-r026-20230524   gcc  
arc                  randconfig-r043-20230524   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         at91_dt_defconfig   gcc  
arm          buildonly-randconfig-r001-20230524   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230524   gcc  
arm                  randconfig-r046-20230525   clang
arm                         s5pv210_defconfig   clang
arm                        vexpress_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r004-20230524   gcc  
arm64                randconfig-r011-20230524   clang
arm64                randconfig-r036-20230524   gcc  
csky         buildonly-randconfig-r003-20230524   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230524   gcc  
csky                 randconfig-r033-20230524   gcc  
csky                 randconfig-r035-20230524   gcc  
hexagon      buildonly-randconfig-r004-20230524   clang
hexagon              randconfig-r041-20230524   clang
hexagon              randconfig-r041-20230525   clang
hexagon              randconfig-r045-20230524   clang
hexagon              randconfig-r045-20230525   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r001-20230524   gcc  
i386         buildonly-randconfig-r006-20230524   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230524   gcc  
i386                 randconfig-i002-20230524   gcc  
i386                 randconfig-i003-20230524   gcc  
i386                 randconfig-i004-20230524   gcc  
i386                 randconfig-i005-20230524   gcc  
i386                 randconfig-i006-20230524   gcc  
i386                 randconfig-i011-20230524   clang
i386                 randconfig-i012-20230524   clang
i386                 randconfig-i013-20230524   clang
i386                 randconfig-i014-20230524   clang
i386                 randconfig-i015-20230524   clang
i386                 randconfig-i016-20230524   clang
i386                 randconfig-i051-20230524   gcc  
i386                 randconfig-i052-20230524   gcc  
i386                 randconfig-i053-20230524   gcc  
i386                 randconfig-i054-20230524   gcc  
i386                 randconfig-i055-20230524   gcc  
i386                 randconfig-i056-20230524   gcc  
i386                 randconfig-i061-20230524   gcc  
i386                 randconfig-i062-20230524   gcc  
i386                 randconfig-i063-20230524   gcc  
i386                 randconfig-i064-20230524   gcc  
i386                 randconfig-i065-20230524   gcc  
i386                 randconfig-i066-20230524   gcc  
i386                 randconfig-i071-20230524   clang
i386                 randconfig-i072-20230524   clang
i386                 randconfig-i073-20230524   clang
i386                 randconfig-i074-20230524   clang
i386                 randconfig-i075-20230524   clang
i386                 randconfig-i076-20230524   clang
i386                 randconfig-i081-20230524   clang
i386                 randconfig-i082-20230524   clang
i386                 randconfig-i083-20230524   clang
i386                 randconfig-i084-20230524   clang
i386                 randconfig-i085-20230524   clang
i386                 randconfig-i086-20230524   clang
i386                 randconfig-i091-20230524   gcc  
i386                 randconfig-i092-20230524   gcc  
i386                 randconfig-i093-20230524   gcc  
i386                 randconfig-i094-20230524   gcc  
i386                 randconfig-i095-20230524   gcc  
i386                 randconfig-i096-20230524   gcc  
i386                 randconfig-r003-20230524   gcc  
i386                 randconfig-r013-20230524   clang
i386                 randconfig-r016-20230524   clang
ia64                                defconfig   gcc  
ia64                 randconfig-r004-20230524   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r006-20230524   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r005-20230524   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r021-20230524   gcc  
m68k                 randconfig-r032-20230524   gcc  
microblaze   buildonly-randconfig-r003-20230524   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                  decstation_64_defconfig   gcc  
mips                      malta_kvm_defconfig   clang
mips                      pic32mzda_defconfig   clang
mips                 randconfig-r006-20230524   clang
mips                 randconfig-r015-20230524   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r001-20230524   gcc  
nios2                randconfig-r033-20230524   gcc  
nios2                randconfig-r034-20230524   gcc  
openrisc     buildonly-randconfig-r005-20230524   gcc  
openrisc             randconfig-r002-20230524   gcc  
openrisc             randconfig-r006-20230524   gcc  
openrisc             randconfig-r011-20230524   gcc  
openrisc             randconfig-r015-20230524   gcc  
openrisc             randconfig-r021-20230524   gcc  
openrisc             randconfig-r034-20230524   gcc  
parisc                           alldefconfig   gcc  
parisc       buildonly-randconfig-r004-20230524   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230524   gcc  
parisc               randconfig-r005-20230524   gcc  
parisc               randconfig-r031-20230524   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r023-20230524   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r036-20230524   gcc  
riscv                randconfig-r042-20230524   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r002-20230524   clang
s390                                defconfig   gcc  
s390                 randconfig-r022-20230524   clang
s390                 randconfig-r044-20230524   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r025-20230524   gcc  
sh                           se7724_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r001-20230524   gcc  
sparc                randconfig-r005-20230524   gcc  
sparc                randconfig-r031-20230524   gcc  
sparc                randconfig-r035-20230524   gcc  
sparc64              randconfig-r016-20230524   gcc  
sparc64              randconfig-r023-20230524   gcc  
sparc64              randconfig-r033-20230524   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r004-20230524   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230524   gcc  
x86_64               randconfig-a002-20230524   gcc  
x86_64               randconfig-a003-20230524   gcc  
x86_64               randconfig-a004-20230524   gcc  
x86_64               randconfig-a005-20230524   gcc  
x86_64               randconfig-a006-20230524   gcc  
x86_64               randconfig-a011-20230524   clang
x86_64               randconfig-a012-20230524   clang
x86_64               randconfig-a013-20230524   clang
x86_64               randconfig-a014-20230524   clang
x86_64               randconfig-a015-20230524   clang
x86_64               randconfig-a016-20230524   clang
x86_64               randconfig-k001-20230524   clang
x86_64               randconfig-r014-20230524   clang
x86_64               randconfig-x051-20230524   clang
x86_64               randconfig-x052-20230524   clang
x86_64               randconfig-x053-20230524   clang
x86_64               randconfig-x054-20230524   clang
x86_64               randconfig-x055-20230524   clang
x86_64               randconfig-x056-20230524   clang
x86_64               randconfig-x061-20230524   clang
x86_64               randconfig-x062-20230524   clang
x86_64               randconfig-x063-20230524   clang
x86_64               randconfig-x064-20230524   clang
x86_64               randconfig-x065-20230524   clang
x86_64               randconfig-x066-20230524   clang
x86_64               randconfig-x071-20230524   gcc  
x86_64               randconfig-x072-20230524   gcc  
x86_64               randconfig-x073-20230524   gcc  
x86_64               randconfig-x074-20230524   gcc  
x86_64               randconfig-x075-20230524   gcc  
x86_64               randconfig-x076-20230524   gcc  
x86_64               randconfig-x081-20230524   gcc  
x86_64               randconfig-x082-20230524   gcc  
x86_64               randconfig-x083-20230524   gcc  
x86_64               randconfig-x084-20230524   gcc  
x86_64               randconfig-x085-20230524   gcc  
x86_64               randconfig-x086-20230524   gcc  
x86_64               randconfig-x091-20230524   clang
x86_64               randconfig-x092-20230524   clang
x86_64               randconfig-x093-20230524   clang
x86_64               randconfig-x094-20230524   clang
x86_64               randconfig-x095-20230524   clang
x86_64               randconfig-x096-20230524   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r003-20230524   gcc  
xtensa               randconfig-r014-20230524   gcc  
xtensa               randconfig-r022-20230524   gcc  
xtensa               randconfig-r025-20230524   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
