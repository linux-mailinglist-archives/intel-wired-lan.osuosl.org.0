Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 568D260343D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Oct 2022 22:48:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD32241B72;
	Tue, 18 Oct 2022 20:48:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD32241B72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666126092;
	bh=ZSqU2HnljjlMpIvWq45RQqINAag8dS6/sBsbkpbdEck=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5CrOeznvVJKbFKEIoMyPG0CNzv2b5iEnmft8LBnGqnwlc+AkVP5v9p+u5kmzwuHz1
	 iHx+n5zWGNgX5vZ1kIrz5qyfWlmF/ouiJg6mRm4t/qCcNxo8OJq6bOwAkeThCBkLCc
	 HhY+ytrT45KLE97XQ1FdQ4wfGcm4UZg+pbZ2gqdMlgXxuOkwfc3q/DryYxZM3Sr7PZ
	 ERPWb5L72/MBHHBaxhrObi/4wciFrR+c23SH6HYJAOGBKTf3nXSwy7T9PH0UMu1EuR
	 G9soMmN/oStKzB7D5LwZBYXdqyvMI8nGwWO1lqaLkQzNb1F6PjPKWSLo1XseeORl4k
	 6V/h0BWirfz7A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gRtYQ4I9KiZc; Tue, 18 Oct 2022 20:48:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3132F40276;
	Tue, 18 Oct 2022 20:48:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3132F40276
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 020AA1BF59D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Oct 2022 20:48:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D0A7083046
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Oct 2022 20:48:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D0A7083046
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1VIyT1yST2Yk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Oct 2022 20:48:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D0BA82FCB
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9D0BA82FCB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Oct 2022 20:48:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="332778534"
X-IronPort-AV: E=Sophos;i="5.95,194,1661842800"; d="scan'208";a="332778534"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 13:48:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="659990421"
X-IronPort-AV: E=Sophos;i="5.95,194,1661842800"; d="scan'208";a="659990421"
Received: from lkp-server01.sh.intel.com (HELO 8381f64adc98) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 18 Oct 2022 13:47:58 -0700
Received: from kbuild by 8381f64adc98 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oktVG-00022g-0B;
 Tue, 18 Oct 2022 20:47:58 +0000
Date: Wed, 19 Oct 2022 04:47:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <634f10de.JbL1u//83MCFZ2df%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666126080; x=1697662080;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=tkfyc6yvZq1ThIKHJvbbSC+4Qs2dMF+/fmqeUACmpxI=;
 b=J++O/+cRw6xc73NZKmaR6RiJqoF3M4P7hgn4y84fI1vKQ+Zvcb1WbORQ
 oZGR0t+jsPZFPlbILPCVorF2zixwFZKAN2N36INplch8FrlxLJctWMDMg
 JpoYIDV4aNgmotxF17xgu9U4GYO/DZHnYfN3QqadZvzYmOyWl+mepL533
 pVoLs6QluWK2+IW2CGVVoZqnj4Grab6j2mxv6jQyZ1rRM7yISmVmLRs8Y
 Xgz2FX98MRmL6fhFbZt86jatg0AnFXks7R0M5JKjtpxCHeARlwLgXe+tc
 iLSvUd9NlerWkeAlebsh9s3OO/tKYjAm5xFLlIsdGBbOsyX5713+Egtk+
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J++O/+cR
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 e765a6c52a2f47b505eb1d6fd88a39c233008493
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
branch HEAD: e765a6c52a2f47b505eb1d6fd88a39c233008493  iavf: Fix VF driver counting VLAN 0 filters

elapsed time: 1259m

configs tested: 207
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
arc                  randconfig-r043-20221017
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64               randconfig-a002-20221017
i386                 randconfig-a001-20221017
i386                             allyesconfig
x86_64               randconfig-a003-20221017
i386                 randconfig-a002-20221017
sh                           se7724_defconfig
x86_64               randconfig-a001-20221017
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
powerpc                      ppc6xx_defconfig
csky                              allnoconfig
i386                                defconfig
loongarch                         allnoconfig
i386                 randconfig-a003-20221017
i386                 randconfig-a004-20221017
x86_64               randconfig-a004-20221017
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                 randconfig-a006-20221017
x86_64               randconfig-a006-20221017
i386                 randconfig-a005-20221017
x86_64               randconfig-a005-20221017
sparc                       sparc32_defconfig
sparc                       sparc64_defconfig
arm                       aspeed_g5_defconfig
arm64                            alldefconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                           tb10x_defconfig
powerpc                  iss476-smp_defconfig
sh                            hp6xx_defconfig
nios2                               defconfig
arc                  randconfig-r043-20221018
s390                 randconfig-r044-20221018
riscv                randconfig-r042-20221018
arc                        vdk_hs38_defconfig
powerpc                      chrp32_defconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
i386                 randconfig-c001-20221017
powerpc                 mpc8540_ads_defconfig
sh                          kfr2r09_defconfig
powerpc                 linkstation_defconfig
arm                        keystone_defconfig
powerpc                        cell_defconfig
parisc                generic-32bit_defconfig
riscv             nommu_k210_sdcard_defconfig
arm                       imx_v6_v7_defconfig
sh                          rsk7203_defconfig
m68k                          amiga_defconfig
m68k                        m5307c3_defconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
riscv                               defconfig
arm                             ezx_defconfig
powerpc                     mpc83xx_defconfig
arm                         lpc18xx_defconfig
powerpc                 mpc85xx_cds_defconfig
ia64                          tiger_defconfig
alpha                            alldefconfig
mips                     loongson1b_defconfig
i386                          randconfig-c001
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
mips                     decstation_defconfig
powerpc                      makalu_defconfig
powerpc                      pcm030_defconfig
arm                        shmobile_defconfig
arm                           h3600_defconfig
arc                            hsdk_defconfig
powerpc                 mpc837x_mds_defconfig
xtensa                    xip_kc705_defconfig
m68k                            q40_defconfig
m68k                           sun3_defconfig
mips                           gcw0_defconfig
mips                      fuloong2e_defconfig
xtensa                  audio_kc705_defconfig
m68k                          atari_defconfig
openrisc                       virt_defconfig
sh                         ap325rxa_defconfig
xtensa                           allyesconfig
mips                           ci20_defconfig
riscv                             allnoconfig
csky                                defconfig
m68k                                defconfig
powerpc                      ppc40x_defconfig
powerpc                         wii_defconfig
arm                            lart_defconfig
sh                   sh7770_generic_defconfig
arc                    vdk_hs38_smp_defconfig
arc                     nsimosci_hs_defconfig
sparc64                             defconfig
powerpc                     taishan_defconfig
sh                        sh7757lcr_defconfig
m68k                       m5208evb_defconfig
arm                         at91_dt_defconfig
microblaze                      mmu_defconfig
sh                           se7343_defconfig
parisc                              defconfig
ia64                            zx1_defconfig
arm                        cerfcube_defconfig
sh                  sh7785lcr_32bit_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                           jazz_defconfig
powerpc                     asp8347_defconfig
mips                  maltasmvp_eva_defconfig
powerpc                     pq2fads_defconfig
arm                         cm_x300_defconfig
sh                           se7751_defconfig
m68k                       m5275evb_defconfig
loongarch                           defconfig
loongarch                        allmodconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
sh                   sh7724_generic_defconfig
openrisc                 simple_smp_defconfig
m68k                          hp300_defconfig
arm                          gemini_defconfig
mips                            gpr_defconfig
sparc                             allnoconfig
powerpc                     tqm8541_defconfig
powerpc                     stx_gp3_defconfig
powerpc                   currituck_defconfig
powerpc                 mpc834x_mds_defconfig
arm                        trizeps4_defconfig
m68k                        mvme16x_defconfig
ia64                                defconfig
arm                        mvebu_v7_defconfig
openrisc                         alldefconfig
arm                      jornada720_defconfig
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r045-20221017
s390                 randconfig-r044-20221017
riscv                randconfig-r042-20221017
hexagon              randconfig-r041-20221017
i386                 randconfig-a011-20221017
i386                 randconfig-a013-20221017
i386                 randconfig-a012-20221017
i386                 randconfig-a014-20221017
i386                 randconfig-a016-20221017
i386                 randconfig-a015-20221017
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64               randconfig-a014-20221017
x86_64               randconfig-a015-20221017
x86_64               randconfig-a012-20221017
x86_64               randconfig-a011-20221017
x86_64               randconfig-a013-20221017
x86_64               randconfig-a016-20221017
mips                        maltaup_defconfig
arm                         s3c2410_defconfig
x86_64               randconfig-k001-20221017
x86_64                        randconfig-c007
mips                 randconfig-c004-20221018
i386                          randconfig-c001
s390                 randconfig-c005-20221018
arm                  randconfig-c002-20221018
riscv                randconfig-c006-20221018
powerpc              randconfig-c003-20221018
powerpc                 mpc832x_mds_defconfig
mips                           rs90_defconfig
mips                          rm200_defconfig
powerpc                      ppc44x_defconfig
riscv                             allnoconfig
powerpc                  mpc866_ads_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
arm                         socfpga_defconfig
arm                       mainstone_defconfig
arm                          sp7021_defconfig
powerpc                    mvme5100_defconfig
arm                      pxa255-idp_defconfig
x86_64                        randconfig-k001
mips                       lemote2f_defconfig
arm                      tct_hammer_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
