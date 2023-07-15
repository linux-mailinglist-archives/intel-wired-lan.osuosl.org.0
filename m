Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF0175478E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Jul 2023 10:57:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D9A664031E;
	Sat, 15 Jul 2023 08:57:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D9A664031E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689411429;
	bh=Uk5SjDvuHvszGh8HmbmvhZNqx4r6cR8u6WAgfFZz10s=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BdnepSHcokgKM19BFTg+DvDcIMot74dAa9Z5BiLQRAjWEyerr9R5zi0F1Ib52Ez2/
	 NzHx/ETnqzbC0m7DA6xDh8VoD5H+gLIAaYeKyu+xPiGOiyreXYxbx6hGAmEdHfpmXB
	 jsVdOtUp4GIQgz25lxCu/HW+Z/ISbVs5GqsZSxtMztcqFNnTCIsmKBN3LggQS5pUDD
	 BwM1mcEkakp5f6pJT9KruG7EgnFXI42D7HvXS0nfyrPgB+Ldk1BUtDf4RimUJ0grOa
	 gMuGIz1eVkWgeDJnIl9oXmxsGful+Ys7UhVDFyLApTA11JJTwijJ6YaWsJUl1DV0SS
	 vT7p74CKDJrwg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y46Y3OmgTHlk; Sat, 15 Jul 2023 08:57:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ABD41400CB;
	Sat, 15 Jul 2023 08:57:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ABD41400CB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8A0451BF5A0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jul 2023 08:57:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 63A804021C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jul 2023 08:57:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 63A804021C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0tAe3QFlPT6i for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Jul 2023 08:56:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E5D23400CB
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E5D23400CB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jul 2023 08:56:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10771"; a="365686897"
X-IronPort-AV: E=Sophos;i="6.01,207,1684825200"; d="scan'208";a="365686897"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2023 01:56:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10771"; a="752320531"
X-IronPort-AV: E=Sophos;i="6.01,207,1684825200"; d="scan'208";a="752320531"
Received: from lkp-server01.sh.intel.com (HELO c544d7fc5005) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 15 Jul 2023 01:56:56 -0700
Received: from kbuild by c544d7fc5005 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qKb5D-00084F-10
 for intel-wired-lan@lists.osuosl.org; Sat, 15 Jul 2023 08:56:55 +0000
Date: Sat, 15 Jul 2023 16:56:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307151613.Sj25f0lb-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689411417; x=1720947417;
 h=date:from:to:subject:message-id;
 bh=2zhDJ69nEkh5H6Xn/LEZBM781P+G8diwLHgzOTHv9tA=;
 b=mFUPHgUVy4gAitH7VZmHpsYRrw+xFuOYXdNd3CtowjbyKyfGMMFQvEzs
 cZc2wRrx3FfuDLcFc7+1Fm76hncTBoFsK1o5ZFC1jLC5kZpeNgjXLSga1
 CzxEu1N0yCnCcMSBri623IGdDtgpmVox7lfige8FYPqLh4eCHcqMIDPl2
 Fn5XJPreQCSsbTmzfcdAnVVK3BIH/2cFBUhlYQbqGk4d//Zs3ltv3AA/Z
 T6r+rJSSrTFpR6kpNTqdNf44Y0zR3wxGTN3gn2H0EYQ2QPnWq24SnPz1/
 uZdJOMCbe7y0368xSuryP0OHc/cZx2zmK6PynvSCq9215K/OqLWFRk+62
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mFUPHgUV
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 b3e7b3a6ee92ab927f750a6b19615ce88ece808f
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
branch HEAD: b3e7b3a6ee92ab927f750a6b19615ce88ece808f  ice: prevent NULL pointer deref during reload

elapsed time: 721m

configs tested: 134
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r022-20230715   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230714   gcc  
arc                  randconfig-r011-20230714   gcc  
arc                  randconfig-r034-20230714   gcc  
arc                  randconfig-r043-20230714   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                          moxart_defconfig   clang
arm                       omap2plus_defconfig   gcc  
arm                         orion5x_defconfig   clang
arm                          pxa168_defconfig   clang
arm                  randconfig-r001-20230714   clang
arm                  randconfig-r046-20230714   gcc  
arm64                            alldefconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r013-20230714   gcc  
csky                 randconfig-r032-20230714   gcc  
hexagon              randconfig-r025-20230715   clang
hexagon              randconfig-r041-20230714   clang
hexagon              randconfig-r045-20230714   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230714   gcc  
i386         buildonly-randconfig-r005-20230714   gcc  
i386         buildonly-randconfig-r006-20230714   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230714   gcc  
i386                 randconfig-i002-20230714   gcc  
i386                 randconfig-i003-20230714   gcc  
i386                 randconfig-i004-20230714   gcc  
i386                 randconfig-i005-20230714   gcc  
i386                 randconfig-i006-20230714   gcc  
i386                 randconfig-i011-20230714   clang
i386                 randconfig-i012-20230714   clang
i386                 randconfig-i013-20230714   clang
i386                 randconfig-i014-20230714   clang
i386                 randconfig-i015-20230714   clang
i386                 randconfig-i016-20230714   clang
i386                 randconfig-r003-20230714   gcc  
i386                 randconfig-r005-20230714   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r014-20230714   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        mvme16x_defconfig   gcc  
m68k                 randconfig-r015-20230714   gcc  
m68k                 randconfig-r036-20230714   gcc  
microblaze           randconfig-r031-20230714   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                     decstation_defconfig   gcc  
mips                 randconfig-r012-20230714   gcc  
mips                 randconfig-r033-20230714   clang
nios2                               defconfig   gcc  
openrisc                    or1ksim_defconfig   gcc  
openrisc             randconfig-r016-20230714   gcc  
openrisc             randconfig-r021-20230715   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                         alldefconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      katmai_defconfig   clang
powerpc                    klondike_defconfig   gcc  
powerpc                     mpc5200_defconfig   clang
powerpc                 mpc834x_itx_defconfig   gcc  
powerpc               mpc834x_itxgp_defconfig   clang
powerpc                  mpc885_ads_defconfig   clang
powerpc              randconfig-r024-20230715   gcc  
powerpc                  storcenter_defconfig   gcc  
powerpc                     tqm5200_defconfig   clang
powerpc                     tqm8548_defconfig   gcc  
powerpc                      tqm8xx_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r006-20230714   gcc  
riscv                randconfig-r042-20230714   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r002-20230714   gcc  
s390                 randconfig-r044-20230714   clang
sh                               allmodconfig   gcc  
sh                          rsk7269_defconfig   gcc  
sh                           se7722_defconfig   gcc  
sh                        sh7763rdp_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                       sparc32_defconfig   gcc  
sparc                       sparc64_defconfig   gcc  
sparc64              randconfig-r035-20230714   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230714   gcc  
x86_64       buildonly-randconfig-r002-20230714   gcc  
x86_64       buildonly-randconfig-r003-20230714   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230714   clang
x86_64               randconfig-x002-20230714   clang
x86_64               randconfig-x003-20230714   clang
x86_64               randconfig-x004-20230714   clang
x86_64               randconfig-x005-20230714   clang
x86_64               randconfig-x006-20230714   clang
x86_64               randconfig-x011-20230714   gcc  
x86_64               randconfig-x012-20230714   gcc  
x86_64               randconfig-x013-20230714   gcc  
x86_64               randconfig-x014-20230714   gcc  
x86_64               randconfig-x015-20230714   gcc  
x86_64               randconfig-x016-20230714   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r026-20230715   gcc  
xtensa                    smp_lx200_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
