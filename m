Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 785F9615CA2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Nov 2022 08:04:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D8DDC415F1;
	Wed,  2 Nov 2022 07:04:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8DDC415F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667372640;
	bh=fUMdMo3Px/V5QRSevD5bsXiTMRSjQQ2CayjCxE3RMxo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=nqqNTok9yBQ5gWdFR2Jl8Chvb/idU4RjUmTfvSMYquGZsVVk5K6xR3FXCrMY6aV9a
	 d/+RzFHowsGJZm13CEFwHN1ofE8kLeS4M2C8FtXRW/VVGtdUA0Z+CEqAdA/0GiHDPh
	 Nz/aw5N7tt5qwHLb0e4JlGynUovcsjctWZ0qdM3h7dAGSNVXY7o4xg9YyF1JdhCr7J
	 nXMcTRLmzPVALf2pV21bKqi08fFFItVvRBpla8ZGoeNZRgvlhm8/n9+5EDW6IkbAcz
	 QI7oQMp+FRz9lRE1R6DiVK6Ea/DBdeoKVmcVvfiYLqWielwCH3kLiQ3m6Jb81lVK9K
	 91pl5F/XkcqJA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zwPOFL3ArQh6; Wed,  2 Nov 2022 07:03:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D16740941;
	Wed,  2 Nov 2022 07:03:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D16740941
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DBB711BF94D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 07:03:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A6FE540941
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 07:03:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6FE540941
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F5qifcNTVeMO for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Nov 2022 07:03:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5323E4091E
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5323E4091E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 07:03:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="310436654"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="310436654"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 00:03:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="963412980"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="963412980"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 02 Nov 2022 00:03:47 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oq7ms-000EXw-2B;
 Wed, 02 Nov 2022 07:03:46 +0000
Date: Wed, 02 Nov 2022 15:02:53 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6362161d.wbBaX6rf/2IfDF1R%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667372631; x=1698908631;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=/vhSL+RAkrp+p6taQIzMQOdQJCzZeyD17zylExxwcvU=;
 b=nJX/LRFO+d5k9kbWqU0S3+V2WRKJC19eBrUzErddsSmbJW9oIyqTJf08
 67GR1Cd09sCTWoguReBqpFpM98pp6gEqJEl6HL7tWWkkLfFB+UH1g0Wt5
 7A//siOmMirfEtUvSfRjYJX2tG9PRhs/6zpQYBH5bz0Zpw9X2tPjZ4h08
 7iZaAOT0fn87bu9wRgnsrnN5CZkXzzj1u9vXYKjQoV+KvwinlicALUs5+
 JAIC5CtEVQTIZseTfUqHPrYEd7ntwA5Ayskcep/V4h7ip56LJgC+uDM2e
 C/joCPPGA+LXiK61fvmlvNCaQrKQMr7bJVIAJbeJwGWOR0mnhcPyV8dlb
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nJX/LRFO
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 6c412da54c80a54b1a8b7f89677f6e82f0fabec4
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
branch HEAD: 6c412da54c80a54b1a8b7f89677f6e82f0fabec4  sfc: Fix an error handling path in efx_pci_probe()

elapsed time: 868m

configs tested: 136
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
ia64                             allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
i386                             allyesconfig
i386                                defconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                 randconfig-a016-20221031
i386                 randconfig-a012-20221031
i386                 randconfig-a015-20221031
i386                 randconfig-a013-20221031
i386                 randconfig-a014-20221031
i386                 randconfig-a011-20221031
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
powerpc                 linkstation_defconfig
openrisc                            defconfig
mips                    maltaup_xpa_defconfig
arc                      axs103_smp_defconfig
arm                       omap2plus_defconfig
arm                          iop32x_defconfig
riscv                    nommu_k210_defconfig
sh                        sh7757lcr_defconfig
openrisc                    or1ksim_defconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
powerpc                     stx_gp3_defconfig
ia64                        generic_defconfig
sh                          rsk7203_defconfig
sh                      rts7751r2d1_defconfig
x86_64               randconfig-a016-20221031
x86_64               randconfig-a011-20221031
x86_64               randconfig-a013-20221031
x86_64               randconfig-a012-20221031
x86_64               randconfig-a014-20221031
x86_64               randconfig-a015-20221031
x86_64               randconfig-k001-20221031
sparc                             allnoconfig
xtensa                    smp_lx200_defconfig
arm                          gemini_defconfig
sh                 kfr2r09-romimage_defconfig
xtensa                       common_defconfig
i386                 randconfig-c001-20221031
mips                         db1xxx_defconfig
mips                            ar7_defconfig
sh                     sh7710voipgw_defconfig
arm64                            alldefconfig
m68k                        stmark2_defconfig
arm                            mps2_defconfig
i386                          randconfig-c001
mips                 randconfig-c004-20221031
m68k                        m5272c3_defconfig
sh                          r7780mp_defconfig
sh                          r7785rp_defconfig
sparc64                          alldefconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arm                             ezx_defconfig
arm                           sama5_defconfig
ia64                            zx1_defconfig
arm                      footbridge_defconfig
powerpc                     taishan_defconfig
sh                  sh7785lcr_32bit_defconfig
alpha                             allnoconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
x86_64               randconfig-c001-20221031
arm                  randconfig-c002-20221031
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
sparc                       sparc64_defconfig
sh                          lboxre2_defconfig

clang tested configs:
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
riscv                randconfig-r042-20221101
hexagon              randconfig-r041-20221101
hexagon              randconfig-r045-20221101
s390                 randconfig-r044-20221101
mips                        qi_lb60_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
arm                        vexpress_defconfig
powerpc                       ebony_defconfig
powerpc                      obs600_defconfig
arm                       spear13xx_defconfig
riscv                             allnoconfig
x86_64               randconfig-a005-20221031
x86_64               randconfig-a006-20221031
x86_64               randconfig-a004-20221031
x86_64               randconfig-a001-20221031
x86_64               randconfig-a003-20221031
x86_64               randconfig-a002-20221031
i386                 randconfig-a002-20221031
i386                 randconfig-a005-20221031
i386                 randconfig-a004-20221031
i386                 randconfig-a006-20221031
i386                 randconfig-a003-20221031
i386                 randconfig-a001-20221031
arm                        mvebu_v5_defconfig
powerpc                   microwatt_defconfig
arm                         bcm2835_defconfig
mips                           ip28_defconfig
arm                      pxa255-idp_defconfig
mips                      bmips_stb_defconfig
hexagon              randconfig-r041-20221102
hexagon              randconfig-r045-20221102

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
