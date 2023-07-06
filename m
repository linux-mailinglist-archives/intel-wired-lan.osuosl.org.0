Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB4C749DE9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jul 2023 15:38:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56E464182D;
	Thu,  6 Jul 2023 13:38:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56E464182D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688650717;
	bh=yrqBOSidOprIWAuAruQI3K/19ydmc2W+7ixwy22h36U=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JsmBnE7I5RekOxB6d/p/fqh2qPGrkaUl3J4d1DsB2FwmidGBikx4XBMcrXdA9VyAV
	 zxv3prpFZr7A45WiictFPjS3CLVPye+NV57D8Q5Bc7hMMITIcTZMIVJxyiOJCIp9JX
	 tc6ohxjrPLTB1RNmJwY23PaX63Kg8QwWb4oxzytHvXTjyDjIta3DXSEne34vZnEhRl
	 XXBg/R5nNcYgSg5pTypumFbo70zmmn2X4iezc3/mBfwhyLgbsxuTOHkCnz3YD4MV1Y
	 wjbE63z7kpwkH4njniP5qXVCkW3kPP4ZCSEVtgxunOnKT5OiydCwN7pa/l3LE4mf7V
	 3KG6OdGc9gaRA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bSW_lZjDP202; Thu,  6 Jul 2023 13:38:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D9E25417E2;
	Thu,  6 Jul 2023 13:38:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9E25417E2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 007FB1BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 13:38:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CAFCF417E2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 13:38:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CAFCF417E2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B-oEhN44-Pwe for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jul 2023 13:38:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DA414037A
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6DA414037A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 13:38:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="353442650"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="353442650"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 06:38:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="696849160"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="696849160"
Received: from lkp-server01.sh.intel.com (HELO c544d7fc5005) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 06 Jul 2023 06:38:26 -0700
Received: from kbuild by c544d7fc5005 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qHPBh-0001Le-1h
 for intel-wired-lan@lists.osuosl.org; Thu, 06 Jul 2023 13:38:25 +0000
Date: Thu, 06 Jul 2023 21:38:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307062108.N1puWzrW-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688650709; x=1720186709;
 h=date:from:to:subject:message-id;
 bh=O7EE905/aKh3dfG9iFAcEu5urP8hpxd6j8x3VF6yWcQ=;
 b=OCqBNw5/NDS2ulQyqkl4yGAjgJkVIazgBL31e+3RqopJ7Y4vGqAENvfY
 SzDekWvMQBs6Mk8kwOFoJ0WsQh5IaQacl2RN/sTA68Ao/Kn50qBMCOUMA
 nsq+0ek0+BzVwDOZjAG9A2a4Y5rxTkVVXQy1grnozAAPlre0FsPSNRS89
 OUviZxApFNODGuYh11Ms0d0vSmbwmiLIkgIsXwkqnMKYNEnNp4Eq0LBOt
 /4UOjqNcm2U1G0yVNUgV3IOyvCdiff/vRRwIC2SaBuk5RCYCVqoYSTuSb
 ndBIGo/5u1NpHWA6Wj+4X4hiLQPinB620cfZFA+mSPQJz7tNeeRgVLHjS
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OCqBNw5/
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 7a6c68ff6375fe15eae2aea2a21636f7df826a14
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 7a6c68ff6375fe15eae2aea2a21636f7df826a14  igc: Prevent garbled TX queue with XDP ZEROCOPY

elapsed time: 725m

configs tested: 123
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230706   gcc  
alpha                randconfig-r006-20230706   gcc  
alpha                randconfig-r032-20230706   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r034-20230706   gcc  
arc                  randconfig-r036-20230706   gcc  
arc                  randconfig-r043-20230706   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                          exynos_defconfig   gcc  
arm                       imx_v4_v5_defconfig   clang
arm                   milbeaut_m10v_defconfig   clang
arm                         mv78xx0_defconfig   clang
arm                          pxa910_defconfig   gcc  
arm                  randconfig-r046-20230706   clang
arm                         socfpga_defconfig   clang
arm                           tegra_defconfig   gcc  
arm                    vt8500_v6_v7_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r023-20230706   clang
hexagon              randconfig-r041-20230706   clang
hexagon              randconfig-r045-20230706   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230706   clang
i386         buildonly-randconfig-r005-20230706   clang
i386         buildonly-randconfig-r006-20230706   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230706   clang
i386                 randconfig-i002-20230706   clang
i386                 randconfig-i003-20230706   clang
i386                 randconfig-i004-20230706   clang
i386                 randconfig-i005-20230706   clang
i386                 randconfig-i006-20230706   clang
i386                 randconfig-i011-20230706   gcc  
i386                 randconfig-i012-20230706   gcc  
i386                 randconfig-i013-20230706   gcc  
i386                 randconfig-i014-20230706   gcc  
i386                 randconfig-i015-20230706   gcc  
i386                 randconfig-i016-20230706   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                           sun3_defconfig   gcc  
m68k                          sun3x_defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                           ip32_defconfig   gcc  
nios2                               defconfig   gcc  
openrisc             randconfig-r024-20230706   gcc  
openrisc             randconfig-r033-20230706   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r011-20230706   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                   currituck_defconfig   gcc  
powerpc                          g5_defconfig   clang
powerpc                  mpc885_ads_defconfig   clang
powerpc                    socrates_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r015-20230706   gcc  
riscv                randconfig-r042-20230706   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r012-20230706   gcc  
s390                 randconfig-r022-20230706   gcc  
s390                 randconfig-r044-20230706   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r002-20230706   gcc  
sh                   randconfig-r004-20230706   gcc  
sh                        sh7785lcr_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230706   gcc  
sparc                randconfig-r013-20230706   gcc  
sparc64              randconfig-r001-20230706   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r025-20230706   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230706   clang
x86_64       buildonly-randconfig-r002-20230706   clang
x86_64       buildonly-randconfig-r003-20230706   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r016-20230706   gcc  
x86_64               randconfig-r021-20230706   gcc  
x86_64               randconfig-x001-20230706   gcc  
x86_64               randconfig-x002-20230706   gcc  
x86_64               randconfig-x003-20230706   gcc  
x86_64               randconfig-x004-20230706   gcc  
x86_64               randconfig-x005-20230706   gcc  
x86_64               randconfig-x006-20230706   gcc  
x86_64               randconfig-x011-20230706   clang
x86_64               randconfig-x012-20230706   clang
x86_64               randconfig-x013-20230706   clang
x86_64               randconfig-x014-20230706   clang
x86_64               randconfig-x015-20230706   clang
x86_64               randconfig-x016-20230706   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                  cadence_csp_defconfig   gcc  
xtensa               randconfig-r035-20230706   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
