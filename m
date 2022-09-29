Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6A05EFB75
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Sep 2022 19:01:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5DF9640BA9;
	Thu, 29 Sep 2022 17:01:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DF9640BA9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664470861;
	bh=ULuxP6859lsSaVQUAjluqmKJGOGSB2B9Ux/0d2fIcoo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hhB7b3LlwHvcMaziYEvXnuqe7thZ/U8IU3guBEmqK1LATAg730KSctl9eYJ2U2U0U
	 MhXbYEC7ocFIFLlBB49i55dH/IYcPxjFvSuG/BlDqgHKbEQrUnuHdWk++/OGthQGZs
	 JRe7yCcaanYTFm8Xs/3N/6gYFVMsDoKR1vSUUKjkX3iby6wUVB0rErLrSYmbvm2ewc
	 C7dCiti3cMZaIBTTIfeZzfkmhCmiG54hTZOxWXyzrfjAZpRG6SrXnqOdnY/xJ4ADzB
	 rKSdL+mkc14veEJlNMgKnYTKd0bbdHV/u7QmyCpTmpTU8wite3kplPaO3kJegR56vv
	 pNuF2mUX2PrcA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mf66JW5XNDS0; Thu, 29 Sep 2022 17:01:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F3E9C404B3;
	Thu, 29 Sep 2022 17:00:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F3E9C404B3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5746C1BF41D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 17:00:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2C88141B7F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 17:00:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C88141B7F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3zln8AT7oI9l for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Sep 2022 17:00:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B63F41B7B
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9B63F41B7B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 17:00:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="328336931"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="328336931"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 10:00:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="655629288"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="655629288"
Received: from lkp-server01.sh.intel.com (HELO 6126f2790925) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 29 Sep 2022 10:00:07 -0700
Received: from kbuild by 6126f2790925 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1odwtL-0001PK-0G;
 Thu, 29 Sep 2022 17:00:07 +0000
Date: Fri, 30 Sep 2022 00:59:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6335cf0d.FDAMJslp6peDpJNJ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664470853; x=1696006853;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=yY9rrGpS7CB3PJYIRv1OtGI7X3WElOlS5UFsb6695JA=;
 b=dTDq1FVJuozqcmb/yCdwLYlO0989SvHOcsyF8ykxYdD2tmAeE7/e/eGa
 Y5LXLeHAQ/Oug4ToQZuzaL12ifp6b7vef/EDd/4yaVJhF0FjVy+ne+Yxa
 FL+7uRxVYNb4f9Q4/3E0n0g4sc6MeKshZoHCINQOLcNw4QrpsjFsmDTL4
 ZtO/Eh/R/83pyrem04bIGGh6Vpu5OmGPnFYGdl5UXnjG6Wcr80dyskIWG
 8TAMNzjN51kqKU/iGNz3ZvHIFOEyAnXiEtpmdIp2nKEe6py43HUERtFnS
 m4SMK461B2mY9/8QE3vHJQgra3H0ENlJZTJyq0HiXn4W6m8JjsgDQR1n8
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dTDq1FVJ
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 78e20bde226bd899a6cc8e2167fbf0eced27bee2
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: 78e20bde226bd899a6cc8e2167fbf0eced27bee2  i40e: Fix DMA mappings leak

elapsed time: 1173m

configs tested: 142
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
um                             i386_defconfig
s390                             allyesconfig
x86_64                           rhel-8.3-kvm
um                           x86_64_defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
sh                               allmodconfig
powerpc                          allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
mips                             allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                                defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
x86_64                           allyesconfig
arc                  randconfig-r043-20220925
i386                             allyesconfig
riscv                randconfig-r042-20220925
arc                  randconfig-r043-20220926
s390                 randconfig-r044-20220925
i386                 randconfig-a001-20220926
i386                 randconfig-a002-20220926
i386                 randconfig-a003-20220926
i386                 randconfig-a004-20220926
i386                 randconfig-a006-20220926
i386                 randconfig-a005-20220926
x86_64               randconfig-a002-20220926
x86_64               randconfig-a001-20220926
x86_64               randconfig-a004-20220926
x86_64               randconfig-a006-20220926
x86_64               randconfig-a005-20220926
x86_64               randconfig-a003-20220926
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
m68k                         amcore_defconfig
mips                           xway_defconfig
sh                          lboxre2_defconfig
i386                          randconfig-c001
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sh                  sh7785lcr_32bit_defconfig
powerpc                      ppc6xx_defconfig
arm                           tegra_defconfig
powerpc                      tqm8xx_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220925
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
sparc                               defconfig
csky                                defconfig
x86_64                                  kexec
sparc                       sparc32_defconfig
arm                        mvebu_v7_defconfig
sh                     sh7710voipgw_defconfig
xtensa                  audio_kc705_defconfig
sh                         ap325rxa_defconfig
xtensa                generic_kc705_defconfig
sh                          urquell_defconfig
arm                         nhk8815_defconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
m68k                          hp300_defconfig
arc                        vdk_hs38_defconfig
ia64                         bigsur_defconfig
m68k                             alldefconfig
powerpc                   motionpro_defconfig
loongarch                        alldefconfig
sh                        sh7757lcr_defconfig
ia64                             allmodconfig
xtensa                           allyesconfig

clang tested configs:
hexagon              randconfig-r041-20220925
hexagon              randconfig-r041-20220926
hexagon              randconfig-r045-20220925
hexagon              randconfig-r045-20220926
riscv                randconfig-r042-20220926
s390                 randconfig-r044-20220926
x86_64               randconfig-a012-20220926
x86_64               randconfig-a013-20220926
i386                          randconfig-a013
i386                          randconfig-a011
x86_64               randconfig-a011-20220926
x86_64                        randconfig-k001
x86_64               randconfig-a015-20220926
x86_64               randconfig-a014-20220926
x86_64               randconfig-a016-20220926
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a015
i386                 randconfig-a011-20220926
i386                 randconfig-a015-20220926
i386                 randconfig-a014-20220926
i386                 randconfig-a012-20220926
i386                 randconfig-a013-20220926
i386                 randconfig-a016-20220926
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
arm                    vt8500_v6_v7_defconfig
mips                           ip22_defconfig
arm                        mvebu_v5_defconfig
hexagon              randconfig-r041-20220928
hexagon              randconfig-r045-20220928
riscv                randconfig-r042-20220928
s390                 randconfig-r044-20220928
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
powerpc                     akebono_defconfig
hexagon                          alldefconfig
mips                      malta_kvm_defconfig
hexagon                             defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
