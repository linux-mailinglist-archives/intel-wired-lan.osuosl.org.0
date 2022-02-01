Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C43B04A5A18
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Feb 2022 11:34:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED0A140934;
	Tue,  1 Feb 2022 10:34:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3faJeLVe2Dtg; Tue,  1 Feb 2022 10:34:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0D4D40924;
	Tue,  1 Feb 2022 10:34:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DDEAB1BF5DF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Feb 2022 10:34:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D9BD1400C1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Feb 2022 10:34:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6YvH7RD2qu3K for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Feb 2022 10:34:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3138F40126
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Feb 2022 10:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643711674; x=1675247674;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=tJYMMO02lvtmBCve4dWj5Ah4Gz0rmEfP86eTTHv1xo8=;
 b=fVGr54jwjCOiXlDF2a/NetXcbRrs6StP8iHedolj5Vg724EP6ZIi+FFI
 mgQurTZKHKVpIsTEpwcj1hiiUJsitIvmf6wYH9liMIvw0zAbEPeSiPQew
 F6Tj+AyYssDfLDxBzB5q6SWdBIgYTncTfY014wWgECc1LDcmRth0k/QTP
 YuL2voajvJBMS+vq7HlqgiSj3hjOh1JNsjepq/bAiDjTBBe30aRJxpBY6
 pSOgk6e0Iz+SvnFRO2kVqirtAlthc5tq+hzIK48GX4PBfZi5HH2Ht80D9
 hSBWvKKAGcKhivM1rtrwge5/jyqj//xMtMSESYivsHz8CnYEIwu1H2p1s w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="227636347"
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="227636347"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 02:34:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="479635304"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 01 Feb 2022 02:34:31 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nEqUY-000T83-GY; Tue, 01 Feb 2022 10:34:30 +0000
Date: Tue, 01 Feb 2022 18:33:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61f90c81.Wqaq/ORMQgwwn0Vo%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 f322a620be69e95594eda89502b478aa7dbf6ec2
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: f322a620be69e95594eda89502b478aa7dbf6ec2  ixgbe: respect metadata on XSK Rx to skb

elapsed time: 732m

configs tested: 150
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
i386                 randconfig-c001-20220131
powerpc              randconfig-c003-20220131
i386                          randconfig-c001
sh                          rsk7203_defconfig
mips                           xway_defconfig
um                               alldefconfig
powerpc                 mpc834x_mds_defconfig
m68k                       m5475evb_defconfig
powerpc                mpc7448_hpc2_defconfig
sh                            titan_defconfig
m68k                           sun3_defconfig
sh                        sh7763rdp_defconfig
mips                         mpc30x_defconfig
sh                          rsk7269_defconfig
powerpc                    klondike_defconfig
powerpc                      ppc40x_defconfig
powerpc                 mpc837x_rdb_defconfig
parisc                           alldefconfig
m68k                       m5208evb_defconfig
xtensa                           allyesconfig
arc                    vdk_hs38_smp_defconfig
powerpc                 mpc837x_mds_defconfig
arm                           stm32_defconfig
sh                  sh7785lcr_32bit_defconfig
powerpc                     asp8347_defconfig
arm                      footbridge_defconfig
h8300                            allyesconfig
arm                          gemini_defconfig
xtensa                       common_defconfig
powerpc                       eiger_defconfig
powerpc                        cell_defconfig
microblaze                      mmu_defconfig
arc                                 defconfig
sh                               alldefconfig
m68k                          sun3x_defconfig
mips                      maltasmvp_defconfig
powerpc                      bamboo_defconfig
mips                        jmr3927_defconfig
openrisc                         alldefconfig
mips                         db1xxx_defconfig
arm                  randconfig-c002-20220130
arm                  randconfig-c002-20220131
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20220131
x86_64               randconfig-a003-20220131
x86_64               randconfig-a001-20220131
x86_64               randconfig-a006-20220131
x86_64               randconfig-a005-20220131
x86_64               randconfig-a002-20220131
i386                 randconfig-a006-20220131
i386                 randconfig-a005-20220131
i386                 randconfig-a003-20220131
i386                 randconfig-a002-20220131
i386                 randconfig-a001-20220131
i386                 randconfig-a004-20220131
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
riscv                randconfig-c006-20220130
x86_64                        randconfig-c007
arm                  randconfig-c002-20220130
powerpc              randconfig-c003-20220130
mips                 randconfig-c004-20220130
i386                          randconfig-c001
riscv                randconfig-c006-20220201
powerpc              randconfig-c003-20220201
mips                 randconfig-c004-20220201
arm                  randconfig-c002-20220201
powerpc                          allyesconfig
arm                             mxs_defconfig
arm                        spear3xx_defconfig
arm                           sama7_defconfig
powerpc                     kilauea_defconfig
mips                           ip22_defconfig
powerpc                        fsp2_defconfig
arm                           spitz_defconfig
powerpc                          allmodconfig
arm                  colibri_pxa270_defconfig
mips                          rm200_defconfig
powerpc                  mpc866_ads_defconfig
arm                          pcm027_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64               randconfig-a013-20220131
x86_64               randconfig-a015-20220131
x86_64               randconfig-a014-20220131
x86_64               randconfig-a016-20220131
x86_64               randconfig-a011-20220131
x86_64               randconfig-a012-20220131
i386                 randconfig-a011-20220131
i386                 randconfig-a013-20220131
i386                 randconfig-a014-20220131
i386                 randconfig-a012-20220131
i386                 randconfig-a015-20220131
i386                 randconfig-a016-20220131
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
riscv                randconfig-r042-20220131
hexagon              randconfig-r045-20220130
hexagon              randconfig-r045-20220131
hexagon              randconfig-r041-20220130
hexagon              randconfig-r041-20220131

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
