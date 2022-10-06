Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3845F64FC
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Oct 2022 13:12:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B03F61038;
	Thu,  6 Oct 2022 11:12:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B03F61038
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665054750;
	bh=+qzisl6QpxWYWZ8IvG1q1zijLuisa4Po0db5/InhKrQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=8tyV6dSYhfD8ktwh47tsKfXsdVgLN7yODZ+3XDds1uCSV6qGeNXFjdsAymVBRoHcx
	 JAevOGDSOd4vV+eAZ0Ml66ylZFf3ID0ROYe/Rz63O2qpCe4VHbobPhlflPxfHfG3+k
	 9r1vT3CgPsE1Kjih2y8Yme66T9hlLHiWWcGvWdwyF0gdEWf3XcIj/+qZ1cB6G/1riY
	 cgQzkFeG86K1kqkd+BakU7hpP85NHtv2pbVU4PgETNAv/mM8mcpge6sErtcQvDxmGE
	 WYKtYIzrLzNf57p7g+9Dci/cNrQg27LvMkpq7KxjAsreZzjDWk/et977NuJfdHgVLR
	 Frf/JCNayw4tg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 92R22S9BpBB9; Thu,  6 Oct 2022 11:12:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5907161037;
	Thu,  6 Oct 2022 11:12:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5907161037
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6A5051BF408
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 11:12:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4557740140
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 11:12:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4557740140
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gqn56Uj0kGWR for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Oct 2022 11:12:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 633DA40571
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 633DA40571
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 11:12:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="329839669"
X-IronPort-AV: E=Sophos;i="5.95,163,1661842800"; d="scan'208";a="329839669"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 04:12:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="575789373"
X-IronPort-AV: E=Sophos;i="5.95,163,1661842800"; d="scan'208";a="575789373"
Received: from lkp-server01.sh.intel.com (HELO 3c15167049b7) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 06 Oct 2022 04:12:20 -0700
Received: from kbuild by 3c15167049b7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ogOnb-00007G-1x;
 Thu, 06 Oct 2022 11:12:19 +0000
Date: Thu, 06 Oct 2022 19:12:17 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <633eb811.SCAUp32GenBkuKiV%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665054742; x=1696590742;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=HWzTakTuHdWEZkX/Ty3/ocs4+6hRrMi8fK9zuI5ZpE0=;
 b=SZU/iw5iB0a7S4aYBTqLZz8RD8bA+fl6f9DOlv3As3hu1LZglIYUDvB+
 qhZf0+WiwPldiXFq1DKjvl2qTu7PrC65QCibanrku0gjB4g2aD2RKkTpX
 bPB5eD37ajIevWqj+1sZMgvCe6xWTfnrMsk22jBuBaa7dZAp5m9Y3LIq/
 WAEqOAn6mRv+aUl1UIc+ZQNL1GVmr8Aamhyc+mXqk0q27Tr8ajfWR0eAC
 +s6upZmlmwYRz+8AZJY4Xiwd12DzXbzpIKA3SHJpwx63di1AytsgjRDvT
 f8XIB52Z2e7W1OwaXCSDDndw9PkTH+bZ+WSPYVfolbA+lUD2o2taOjL1+
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SZU/iw5i
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 f1067cbc5aa228e858780fdffd6d72a0682be369
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: f1067cbc5aa228e858780fdffd6d72a0682be369  i40e: Fix flow-type by setting GL_HASH_INSET registers

elapsed time: 723m

configs tested: 96
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
s390                                defconfig
s390                             allmodconfig
powerpc                           allnoconfig
mips                             allyesconfig
x86_64                           rhel-8.3-syz
powerpc                          allmodconfig
m68k                             allmodconfig
arm                                 defconfig
sh                               allmodconfig
arc                              allyesconfig
x86_64                          rhel-8.3-func
s390                             allyesconfig
riscv                randconfig-r042-20221005
i386                                defconfig
arc                  randconfig-r043-20221005
x86_64                         rhel-8.3-kunit
s390                 randconfig-r044-20221005
alpha                            allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                    rhel-8.3-kselftests
i386                 randconfig-a011-20221003
m68k                             allyesconfig
i386                 randconfig-a012-20221003
x86_64               randconfig-a011-20221003
arm64                            allyesconfig
x86_64               randconfig-a014-20221003
i386                 randconfig-a013-20221003
x86_64               randconfig-a012-20221003
x86_64               randconfig-a013-20221003
arm                              allyesconfig
x86_64               randconfig-a015-20221003
x86_64               randconfig-a016-20221003
i386                 randconfig-a015-20221003
i386                 randconfig-a016-20221003
i386                 randconfig-a014-20221003
i386                             allyesconfig
ia64                             allmodconfig
arm                     eseries_pxa_defconfig
mips                         cobalt_defconfig
openrisc                            defconfig
nios2                            alldefconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
powerpc                     taishan_defconfig
powerpc                       eiger_defconfig
loongarch                        alldefconfig
powerpc                 mpc85xx_cds_defconfig
parisc                generic-64bit_defconfig
i386                          randconfig-c001
mips                 randconfig-c004-20221002
arc                           tb10x_defconfig
um                               alldefconfig
mips                         bigsur_defconfig
mips                        bcm47xx_defconfig
arm                          simpad_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
m68k                            q40_defconfig
mips                  decstation_64_defconfig
powerpc                     tqm8548_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
riscv                randconfig-r042-20221003
arc                  randconfig-r043-20221003
arc                  randconfig-r043-20221002
s390                 randconfig-r044-20221003
powerpc                      cm5200_defconfig
arm                           viper_defconfig

clang tested configs:
hexagon              randconfig-r045-20221005
x86_64               randconfig-a003-20221003
x86_64               randconfig-a005-20221003
hexagon              randconfig-r041-20221005
x86_64               randconfig-a002-20221003
i386                 randconfig-a003-20221003
x86_64               randconfig-a001-20221003
i386                 randconfig-a002-20221003
x86_64               randconfig-a004-20221003
i386                 randconfig-a001-20221003
x86_64               randconfig-a006-20221003
i386                 randconfig-a004-20221003
i386                 randconfig-a005-20221003
i386                 randconfig-a006-20221003
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
