Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E73155F6505
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Oct 2022 13:13:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EC0B84055E;
	Thu,  6 Oct 2022 11:13:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC0B84055E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665054813;
	bh=jvWnoNzGBd0ltQbRDaaDyQDdiGVUVUUrCaf7JbpBnYQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UFmE+STqG3HTvNBtxewi4salmd/o0feMG+Q0xIjykL0ial0X6ti2UVwffymONO7xU
	 Ul4o3LbLOipQ1IXQnBYMgK0MM9gX686xN7LQ/HpjIijA4U8yCyG1qEchYAYVArPHVT
	 Uu5qYaG6LsHe8ogKIAPoC9BlL3CkfcnhaD8C8hE3Xo/mBCjyvP+qGvzwEVvRHkQ2m7
	 2WC98V6H7/JV8QkRB6xMkJhsOBkTFvehMuKOot5VbGuLprgY/IxrmfzxdWoAn1nud0
	 XZT5LnKzSBhuzSqvb1ix6HSfSI3al8g7Gnj+TPnlNLGAWxTxPmKLmAz3PFaip059y5
	 k/qAM0aqJ+ZsQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4hVPnVX0Wevm; Thu,  6 Oct 2022 11:13:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A7EED40140;
	Thu,  6 Oct 2022 11:13:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A7EED40140
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C21081BF408
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 11:13:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A814B4012E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 11:13:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A814B4012E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Adf1cgBJG8aB for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Oct 2022 11:13:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8FE054003E
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8FE054003E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 11:13:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="302132845"
X-IronPort-AV: E=Sophos;i="5.95,163,1661842800"; d="scan'208";a="302132845"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 04:13:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="624683457"
X-IronPort-AV: E=Sophos;i="5.95,163,1661842800"; d="scan'208";a="624683457"
Received: from lkp-server01.sh.intel.com (HELO 3c15167049b7) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 06 Oct 2022 04:13:20 -0700
Received: from kbuild by 3c15167049b7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ogOoZ-00007Q-2F;
 Thu, 06 Oct 2022 11:13:19 +0000
Date: Thu, 06 Oct 2022 19:12:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <633eb814.exNR+vMl+25CQlGL%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665054804; x=1696590804;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=VEDkMH6vWKUU6xVrFUKJ8qJtwJrZ4s0WBoEOB2GMfGk=;
 b=ZJcsxJ66C7JvE5Q/dcHIr8xhQgUU/AMqxONsCPMYZ/cXEzYY6AAq6tHz
 RPZ/URt/eyHfZo0oHL1lESPTvP1F6AUNeFdCUfUu3+9C1tCYlTt1XJR8/
 mSU3UpltgUZ1b82sDMqYu8P6Bm4EHKij7WOoZphkIUCw8wHJqzoWe3f9C
 69zA7N/ArlHWLb3nlDdBmPcuTkjmlA3KiYGPQ5fSOOym1GqrkWOhO4HSB
 lKHNOed6Bio+Lx/Q6Yk5imHAKlcMiwAWjGcWmPTRq9iaZmD9Cdkc5SDp/
 hkJfAWn8fvYduTZrymu/PJJ5Xms8TQpJh1+0axdXKlpzbxEfRpTqVvCiR
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZJcsxJ66
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 da0e352053f2aeb03d61053d3c98ad9d8a2911ee
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
branch HEAD: da0e352053f2aeb03d61053d3c98ad9d8a2911ee  i40e: Fix flow-type by setting GL_HASH_INSET registers

elapsed time: 723m

configs tested: 97
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
arc                                 defconfig
alpha                               defconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                          rhel-8.3-func
x86_64                              defconfig
x86_64                    rhel-8.3-kselftests
s390                                defconfig
s390                             allmodconfig
x86_64                               rhel-8.3
x86_64               randconfig-a011-20221003
m68k                             allyesconfig
x86_64                           rhel-8.3-syz
x86_64               randconfig-a012-20221003
s390                             allyesconfig
x86_64                           allyesconfig
arm                                 defconfig
x86_64               randconfig-a013-20221003
i386                                defconfig
i386                 randconfig-a011-20221003
x86_64               randconfig-a014-20221003
i386                 randconfig-a012-20221003
x86_64                         rhel-8.3-kunit
x86_64               randconfig-a015-20221003
x86_64               randconfig-a016-20221003
i386                 randconfig-a013-20221003
x86_64                           rhel-8.3-kvm
i386                 randconfig-a015-20221003
i386                             allyesconfig
powerpc                           allnoconfig
i386                 randconfig-a016-20221003
i386                 randconfig-a014-20221003
mips                             allyesconfig
ia64                             allmodconfig
arm                              allyesconfig
riscv                randconfig-r042-20221003
arc                  randconfig-r043-20221003
arc                  randconfig-r043-20221002
s390                 randconfig-r044-20221003
powerpc                          allmodconfig
arm64                            allyesconfig
sh                               allmodconfig
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
powerpc                      cm5200_defconfig
arm                           viper_defconfig

clang tested configs:
x86_64               randconfig-a001-20221003
hexagon              randconfig-r041-20221003
i386                 randconfig-a005-20221003
x86_64               randconfig-a005-20221003
i386                 randconfig-a006-20221003
riscv                randconfig-r042-20221002
hexagon              randconfig-r041-20221002
x86_64               randconfig-a002-20221003
s390                 randconfig-r044-20221002
x86_64               randconfig-a003-20221003
x86_64               randconfig-a004-20221003
hexagon              randconfig-r045-20221002
hexagon              randconfig-r045-20221003
i386                 randconfig-a001-20221003
i386                 randconfig-a002-20221003
i386                 randconfig-a003-20221003
i386                 randconfig-a004-20221003
x86_64               randconfig-a006-20221003
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
