Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 432BD5AB935
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Sep 2022 22:15:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C81F827AA;
	Fri,  2 Sep 2022 20:15:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C81F827AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662149757;
	bh=u7d1899t7V1HaoYt7rqStBXW4ehvqMiSGLdILuAOLvs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Zdj4J3HjPgvIs0LFR6OaLO8q/sxtQXn2z02xcZvHgX4sEMsiXjCMDp5s99T49+HAy
	 lCb//xrmmJ0B8nHJeSzuClOW4nFyHN0jKRaNxbG5HnKK0Fkw/8FIqJwHNfIewar+Ji
	 C7hCqfkMZBKOCM0kf2UNlaHSWlyDWxjObzGj2obvRMC7OrN/d0y9Pv7fRrXTq5Nit+
	 oSx/8Lprs91aRkM5qasImFEmZP4tKAIygxiwqAiz+WO9piqQ3dHx5IJTbXIzhrIQoG
	 uHsjbybH82w8zMZ8nnh2+RxnerK1a+tjdfhEmLx96Cai5LkGb6dLK6kfM6/cnjiBB/
	 Auan3VUy7FdMg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bPSdIK31S3zh; Fri,  2 Sep 2022 20:15:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A583A82778;
	Fri,  2 Sep 2022 20:15:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A583A82778
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 82DC21BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Sep 2022 20:15:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5C3DA827A5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Sep 2022 20:15:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C3DA827A5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tcDn1HbCpUQj for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Sep 2022 20:15:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 650B381497
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 650B381497
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Sep 2022 20:15:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10458"; a="276469354"
X-IronPort-AV: E=Sophos;i="5.93,285,1654585200"; d="scan'208";a="276469354"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 12:33:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,285,1654585200"; d="scan'208";a="755358741"
Received: from lkp-server02.sh.intel.com (HELO 95dfd251caa2) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 02 Sep 2022 12:33:18 -0700
Received: from kbuild by 95dfd251caa2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oUCPl-0000Vk-29;
 Fri, 02 Sep 2022 19:33:17 +0000
Date: Sat, 03 Sep 2022 03:32:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63125a56.8EuEQK6BwMtaL1Ua%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662149750; x=1693685750;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=vbrXNrgWOYUHbO5DSRKzxGHHWiC9oiqqJyhxCQjqdBw=;
 b=doGXWvRXrEMfRKewqDBLhi7XuMGjAIxE6/1doxrcZTyKrOjo09nqXw72
 Pr7uU6K/79sjUIqWrL0HOfTNTQJmnGD3qEBzIYuutRksygcmmwrVE+XAZ
 SbeE+CvoUMPDEQbdST7bdh+BRz65Ejh5gHRb/FuD2BexwM0VXYe4z96zi
 qpdseGc0U84V2Wqb+gMB7eC9UvmD8ujN71sGsQ5W/pgUMuVyUp/kUMfS5
 dPBlqB7naYFdcu2pdMGLzcI+cb18mg5mUDdbMhLVobOSe/11EHgrJyTtq
 MXBiiYjth1tQGVRUjGHeK3kH6XUpKY0rNbtZ1iGfxU4GhrTeJqZ82NLqP
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=doGXWvRX
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 a8424a9b4522a3ab9f32175ad6d848739079071f
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
branch HEAD: a8424a9b4522a3ab9f32175ad6d848739079071f  net/smc: Remove redundant refcount increase

elapsed time: 2108m

configs tested: 125
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
powerpc                           allnoconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                             allyesconfig
i386                                defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                              allyesconfig
arm                                 defconfig
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
arm                           stm32_defconfig
powerpc                     pq2fads_defconfig
arc                               allnoconfig
mips                       bmips_be_defconfig
arm                        oxnas_v6_defconfig
mips                             allyesconfig
csky                              allnoconfig
alpha                             allnoconfig
riscv                             allnoconfig
sh                            shmin_defconfig
sh                             espt_defconfig
sparc                            alldefconfig
mips                 randconfig-c004-20220901
i386                          randconfig-c001
alpha                            allyesconfig
arc                  randconfig-r043-20220901
m68k                             allmodconfig
m68k                             allyesconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
arm                              allyesconfig
m68k                         apollo_defconfig
sh                          rsk7264_defconfig
sh                           se7751_defconfig
arm                            hisi_defconfig
sh                         apsh4a3a_defconfig
powerpc                  storcenter_defconfig
powerpc                      cm5200_defconfig
mips                            ar7_defconfig
powerpc                      tqm8xx_defconfig
alpha                            alldefconfig
mips                     decstation_defconfig
arm                         lubbock_defconfig
sh                           se7750_defconfig
m68k                          amiga_defconfig
powerpc                     mpc83xx_defconfig
arm                          badge4_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
x86_64                        randconfig-c001
microblaze                      mmu_defconfig
m68k                        m5272c3_defconfig
sparc                               defconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
sparc                       sparc64_defconfig
mips                           ip32_defconfig
mips                            gpr_defconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arm                          pxa3xx_defconfig
mips                           ci20_defconfig
sh                          lboxre2_defconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
powerpc                     ep8248e_defconfig
sh                   sh7724_generic_defconfig
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
s390                       zfcpdump_defconfig
powerpc                     tqm8541_defconfig
sh                          r7785rp_defconfig
mips                     loongson1b_defconfig
arm                  randconfig-c002-20220901
powerpc                          allyesconfig
riscv                               defconfig
arm64                            allyesconfig
ia64                             allmodconfig

clang tested configs:
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
riscv                randconfig-r042-20220901
hexagon              randconfig-r041-20220901
hexagon              randconfig-r045-20220901
s390                 randconfig-r044-20220901
powerpc                      katmai_defconfig
powerpc                     mpc5200_defconfig
x86_64                        randconfig-k001
arm                        vexpress_defconfig
powerpc                     mpc512x_defconfig
arm                        neponset_defconfig
mips                          ath79_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
