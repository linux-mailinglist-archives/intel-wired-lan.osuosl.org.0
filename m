Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DAB584B0F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jul 2022 07:24:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1A574183B;
	Fri, 29 Jul 2022 05:24:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1A574183B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659072274;
	bh=7/UMwz9mkXFTfEqN1fesvf6ZldWzlVmkAJnjjCcKIK4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=36AKhLGV44DR/V4P/Ar/vraJoNM09dcyf33/hQqNnyTMw5dT8SuEVJGVZggcEpKOC
	 YYJM3WYGeYyk0PAkUMWsV1lN4JK3FOHIiydTW1CZyXz7PTG7NVXxiY1ve06luvaamR
	 KUctunYBPuHKPgTo6o2d3TpOalVCxJyYcG8UWOceZgCsYQIPnHb9O6PNe5P4a77Vr4
	 oWiSc/D63N/00e/eyTPerzr2l8heGJ1RJa36lMEhbPJx0JNA96ivUPSEUTW50OYAAu
	 x2PnFwCUC00bK0cLYI+aWVakJmud373tS5MH3yb0bbpxdagHFdWddzy99BRMW/jT90
	 3K3skhJuOO7AQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z-tdwoTWyRTO; Fri, 29 Jul 2022 05:24:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 55EA141586;
	Fri, 29 Jul 2022 05:24:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55EA141586
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9584D1BF34A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 05:24:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6E6B660E9F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 05:24:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E6B660E9F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id js5itgi3ejDZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jul 2022 05:24:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81E8760E96
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 81E8760E96
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 05:24:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="268458228"
X-IronPort-AV: E=Sophos;i="5.93,200,1654585200"; d="scan'208";a="268458228"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 22:24:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,200,1654585200"; d="scan'208";a="777432421"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 28 Jul 2022 22:24:23 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oHIU2-000B8q-3C;
 Fri, 29 Jul 2022 05:24:22 +0000
Date: Fri, 29 Jul 2022 13:23:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62e36ed4.jjZJRrrwH9z/LYuE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659072265; x=1690608265;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=okPGoqb3N5Ihyhlo/9i6CBfTiWvA4UUwDxLyjQ+zvPI=;
 b=VCPCYoR5eWngdgSQTWCtGkJ+IlaXf236YJi/nWCiSR/iRVNddtduT7ou
 U+JyEzF2lM6zmMj5sZgSj2xU++eq3B06gmYeODPuBz0bjA2U5OvntgIl5
 JdMZO3VJ6tocyEtCvSJSsQ4wOcMStDV75DgOCKRlqK3srmNqHkNX9N/KQ
 bVi+wipnZ2ZM2PTAnatDe4FvZB+1EB32Hm7kreVbqBhgnAI+XHJAc7zMw
 FKPhpDWlrLXAfZ5TwqdsSoO838Bryz8RNSE+kxEhQaaX7x7XOzFuf9gxQ
 ikcGnMkba+ThmsG9g4vXstJoEd8dvGDUCSzfC923aRNB76YhiHAarHE9q
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VCPCYoR5
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 51a83391d77bb0f7ff0aef06ca4c7f5aa9e80b4c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: 51a83391d77bb0f7ff0aef06ca4c7f5aa9e80b4c  net/funeth: Fix fun_xdp_tx() and XDP packet reclaim

elapsed time: 1057m

configs tested: 111
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                             allyesconfig
i386                                defconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
s390                       zfcpdump_defconfig
openrisc                         alldefconfig
i386                          randconfig-c001
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
ia64                        generic_defconfig
sh                           se7343_defconfig
arm                            mps2_defconfig
openrisc                    or1ksim_defconfig
xtensa                  cadence_csp_defconfig
mips                           ip32_defconfig
arc                            hsdk_defconfig
sh                 kfr2r09-romimage_defconfig
sh                     sh7710voipgw_defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
loongarch                           defconfig
loongarch                         allnoconfig
m68k                        m5407c3_defconfig
powerpc                     taishan_defconfig
sh                         ap325rxa_defconfig
powerpc                      tqm8xx_defconfig
arm                          lpd270_defconfig
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig
arc                  randconfig-r043-20220728
riscv                randconfig-r042-20220728
s390                 randconfig-r044-20220728
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
mips                 randconfig-c004-20220728
powerpc              randconfig-c003-20220728
nios2                               defconfig
m68k                            mac_defconfig
nios2                            allyesconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220728
ia64                          tiger_defconfig
microblaze                          defconfig
arm                         axm55xx_defconfig
nios2                         10m50_defconfig
alpha                               defconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
s390                             allyesconfig

clang tested configs:
powerpc                 mpc836x_mds_defconfig
riscv                             allnoconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
hexagon              randconfig-r041-20220728
hexagon              randconfig-r045-20220728
x86_64                        randconfig-k001
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
powerpc                     tqm5200_defconfig
powerpc                        fsp2_defconfig
powerpc                      katmai_defconfig
powerpc                   microwatt_defconfig
powerpc                      ppc64e_defconfig
mips                          rm200_defconfig
arm                  colibri_pxa270_defconfig
arm                      pxa255-idp_defconfig
powerpc                  mpc885_ads_defconfig
arm                         hackkit_defconfig
powerpc                      ppc44x_defconfig
arm                  colibri_pxa300_defconfig
arm                        magician_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
