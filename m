Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF835F848D
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Oct 2022 11:13:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AF26E40383;
	Sat,  8 Oct 2022 09:13:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF26E40383
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665220427;
	bh=j330kslowIQKVJEZpTmCtpguCOYSytgJdqQHxqnrfxc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qGzY5WgZmZswaQqYurBwst4RwCQMwzN+E5TDERd6QfEchJDTBptS3+EVass9dwxlD
	 Uske7+r/VQP1qhvu30cMJwL3fJZnxpSv0n4vWZSmYnLSgZS81s9MZxKTbpPsPixTxQ
	 M7OAt9gaCWnyABtOFiZz1koxZvn4OomZupuKCmSyPISFszOuS0UPm1W4rbvgMnu2sM
	 n9WOpDU4nxRCvqvy2N5G87mo7eTnmgTaYiHddN0OhzkxNCyThWsiv77EynAUaPiLR6
	 PIuhPoX7CIII2k7/ocw+6xT24qbdiPO6CsRUodvelMy0oTpYC9LKc/o00K6kINwwR4
	 tcI02Mez5UCLQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q0piBoA76gmI; Sat,  8 Oct 2022 09:13:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3C538402DC;
	Sat,  8 Oct 2022 09:13:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3C538402DC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 425331BF589
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Oct 2022 09:13:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 24C71812B8
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Oct 2022 09:13:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 24C71812B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hgn4vzXboX7z for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Oct 2022 09:13:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC847812BD
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EC847812BD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Oct 2022 09:13:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10493"; a="368054495"
X-IronPort-AV: E=Sophos;i="5.95,169,1661842800"; d="scan'208";a="368054495"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2022 02:13:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10493"; a="603156702"
X-IronPort-AV: E=Sophos;i="5.95,169,1661842800"; d="scan'208";a="603156702"
Received: from lkp-server01.sh.intel.com (HELO 3c15167049b7) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 08 Oct 2022 02:13:36 -0700
Received: from kbuild by 3c15167049b7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oh5tn-00020i-39;
 Sat, 08 Oct 2022 09:13:35 +0000
Date: Sat, 08 Oct 2022 17:12:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63413f16.aj9VrKw/MIV76Z1Q%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665220419; x=1696756419;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=yC+pRrg5cJgPlGmKBjA7TS7rjRLyLJP6kd1uDf5y/do=;
 b=m/MMSHK8ynU1dpIqcTELdhNaw2DZuopNANqGcG5gx4yIQKQR5xO/H9bP
 KofQChneIroFPXT4WqY7vyXsJldBxCGPN+DDaIEUKDjZB8VY23/Gv558a
 nNnVPExVLDjx8v7n5vnNc3YE3p25teUH85Snuqi/pO7xTyy9f5r2oCHhZ
 FKXafDq6CuyFNWpnTn0lw2k0p4Oca+3v37xKoybwOl/vD7jzxKMf0wKow
 jARf7bc60tVs9orQ446BNHyFQl7jbKq1pCq2ULMYlq7mfzMYeQsh6GjqU
 KW414f4zXj6Z1kO18QoUnXCN6Dhutw65TCT8RnQCmWimQdrClFkTwOP+b
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m/MMSHK8
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 90f107e4f83b51cab7ba39ed1bbac422de512859
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 90f107e4f83b51cab7ba39ed1bbac422de512859  i40e: Fix flow-type by setting GL_HASH_INSET registers

elapsed time: 722m

configs tested: 124
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
arc                                 defconfig
alpha                               defconfig
sh                               allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
mips                             allyesconfig
x86_64                              defconfig
x86_64                           rhel-8.3-syz
powerpc                          allmodconfig
i386                 randconfig-a011-20221003
arm                                 defconfig
i386                 randconfig-a012-20221003
x86_64               randconfig-a011-20221003
s390                             allmodconfig
i386                                defconfig
x86_64                         rhel-8.3-kunit
x86_64               randconfig-a015-20221003
x86_64                           rhel-8.3-kvm
s390                                defconfig
x86_64               randconfig-a014-20221003
i386                 randconfig-a013-20221003
x86_64               randconfig-a012-20221003
x86_64               randconfig-a013-20221003
i386                 randconfig-a015-20221003
x86_64                               rhel-8.3
x86_64               randconfig-a016-20221003
m68k                             allmodconfig
x86_64                           allyesconfig
i386                 randconfig-a016-20221003
arc                              allyesconfig
i386                 randconfig-a014-20221003
alpha                            allyesconfig
s390                             allyesconfig
arm                              allyesconfig
i386                             allyesconfig
m68k                             allyesconfig
arm64                            allyesconfig
riscv                randconfig-r042-20221003
arc                  randconfig-r043-20221003
arc                  randconfig-r043-20221002
s390                 randconfig-r044-20221003
powerpc                     ep8248e_defconfig
sh                  sh7785lcr_32bit_defconfig
sparc64                          alldefconfig
ia64                             allmodconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
um                               alldefconfig
powerpc                     sequoia_defconfig
sh                          kfr2r09_defconfig
i386                          randconfig-c001
arm                           sunxi_defconfig
sparc                       sparc64_defconfig
parisc                generic-64bit_defconfig
arm                             ezx_defconfig
arm                        realview_defconfig
sh                          polaris_defconfig
sh                     magicpanelr2_defconfig
powerpc                       maple_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arm                       imx_v6_v7_defconfig
powerpc                         wii_defconfig
powerpc                     taishan_defconfig
sh                          landisk_defconfig
sh                        dreamcast_defconfig
s390                          debug_defconfig
powerpc                     asp8347_defconfig
nios2                            alldefconfig
arm                             pxa_defconfig
sh                             sh03_defconfig
arm                         lubbock_defconfig
sparc                            alldefconfig
sh                           se7705_defconfig
riscv                randconfig-r042-20221007
arc                  randconfig-r043-20221007
s390                 randconfig-r044-20221007
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm                  randconfig-c002-20221002
x86_64                        randconfig-c001
arm                           imxrt_defconfig
arm                            zeus_defconfig
arm                           viper_defconfig
sh                          r7780mp_defconfig
ia64                                defconfig
arm                          badge4_defconfig
arc                        nsim_700_defconfig
mips                         db1xxx_defconfig
powerpc                    sam440ep_defconfig
sh                          rsk7269_defconfig
parisc                           alldefconfig
sh                        sh7757lcr_defconfig
ia64                      gensparse_defconfig
arm                          lpd270_defconfig

clang tested configs:
i386                 randconfig-a004-20221003
i386                 randconfig-a005-20221003
i386                 randconfig-a003-20221003
x86_64               randconfig-a003-20221003
i386                 randconfig-a002-20221003
i386                 randconfig-a001-20221003
hexagon              randconfig-r041-20221003
i386                 randconfig-a006-20221003
x86_64               randconfig-a005-20221003
hexagon              randconfig-r041-20221002
x86_64               randconfig-a002-20221003
x86_64               randconfig-a001-20221003
x86_64               randconfig-a004-20221003
hexagon              randconfig-r045-20221002
x86_64               randconfig-a006-20221003
hexagon              randconfig-r045-20221003
riscv                randconfig-r042-20221002
s390                 randconfig-r044-20221002
mips                          ath25_defconfig
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
