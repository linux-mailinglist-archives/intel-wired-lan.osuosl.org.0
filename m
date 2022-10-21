Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD0460759C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Oct 2022 13:08:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B2DF740990;
	Fri, 21 Oct 2022 11:08:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2DF740990
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666350499;
	bh=J+YvV6Xez8KtpNqxawJdoMdvWfy6KiNd0hcVIm7+KvE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oq1X+6moZRotmb1T1NTjL8s2WkSrDdpgRLQRphe/2prKeLo0B6C7kkUQlKGlMxzLy
	 hqkHpc4VEijL9JZevPynUB2BlZ6GowDDICZiI0fdYNsaiFW8LWbBg1bpXZfdyd5T4X
	 1JxjKLOw5yuAIBxge19r7LStzc3KYIYVoCNXhlqhYAoGX8cILP0hBrYpUWaA2DW05f
	 y+ETEM3rDuvfHoxR3JVBFMr8JtugtnvSLJ2ESAzpq7kgN/9GB+9QqtJpBc5PLsAKeH
	 iRTSAu7Ruvp+jK0nKIs4lluWKea9EjYfr3cO7J59pNaUTahbUeLUlsZQxXLE2VJ8SD
	 sXVH2u2H2joYQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nu8Pya7S-7Kh; Fri, 21 Oct 2022 11:08:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 438F940123;
	Fri, 21 Oct 2022 11:08:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 438F940123
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1A42B1BF311
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Oct 2022 11:08:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E592C40502
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Oct 2022 11:08:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E592C40502
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0KfeZWM4g5zs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Oct 2022 11:08:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DBE9B40123
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DBE9B40123
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Oct 2022 11:08:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="304590355"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="304590355"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 04:08:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="630436816"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="630436816"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 21 Oct 2022 04:08:05 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1olpsj-0002Wp-0S;
 Fri, 21 Oct 2022 11:08:05 +0000
Date: Fri, 21 Oct 2022 19:07:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63527d74.rbnpLDTkr1kw95oV%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666350489; x=1697886489;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=mtGUZNa1GPoJh31BzNoi9EFZ9tF/CnSwowF8hZ76Dik=;
 b=CZNNbFRCu/OT5rKTBJPFB2a/wawj5UJNcEv4Ju+aYU2/1L/iOhrA0qwe
 avqU+QDQuxhhZ5cTWzfDkI1Pq0illOhdHmMZyjVLlPHpe/FWHr+h5A1n+
 fDACUJnTtk5GrfI+Gl+sxZw6xiljHh2ubVurbVmG48HJU0lITsBgkg11R
 Q/S1jIF94AdulPc/Yz5tIMXC7/LyZmVgWyz7E4hS022eyrOg9T3r1alzB
 kccpIs3IGIHb4wgAW9ov8j6YPtuzufoTEOz8pHtGA0vrs3CzGygrRvu7Q
 586flAb3mwfL0bXBwI7PkoWmq5oOXhlLiHu5UsnTXFcr/GCe3eHQuWw8Z
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CZNNbFRC
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 36875a063b5e3618b42f7bace850473bb88a7c24
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: 36875a063b5e3618b42f7bace850473bb88a7c24  net: ipa: Proactively round up to kmalloc bucket size

elapsed time: 1555m

configs tested: 176
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
s390                             allyesconfig
arc                  randconfig-r043-20221019
arc                  randconfig-r043-20221020
s390                 randconfig-r044-20221020
riscv                randconfig-r042-20221020
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
i386                             allyesconfig
i386                                defconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
sh                        sh7763rdp_defconfig
mips                           gcw0_defconfig
openrisc                            defconfig
ia64                          tiger_defconfig
m68k                       m5475evb_defconfig
xtensa                              defconfig
powerpc                       maple_defconfig
arm                          pxa3xx_defconfig
m68k                          sun3x_defconfig
openrisc                       virt_defconfig
m68k                           virt_defconfig
xtensa                          iss_defconfig
arc                  randconfig-r043-20221018
s390                 randconfig-r044-20221018
riscv                randconfig-r042-20221018
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                        vdk_hs38_defconfig
arm                         assabet_defconfig
nios2                            alldefconfig
i386                          randconfig-c001
mips                 randconfig-c004-20221020
xtensa                         virt_defconfig
powerpc                     sequoia_defconfig
arm                           h3600_defconfig
arm                         cm_x300_defconfig
powerpc                      ppc6xx_defconfig
sh                   rts7751r2dplus_defconfig
powerpc                   currituck_defconfig
sh                          rsk7269_defconfig
s390                          debug_defconfig
sh                     sh7710voipgw_defconfig
sh                ecovec24-romimage_defconfig
arm                      footbridge_defconfig
sh                     magicpanelr2_defconfig
arm                          gemini_defconfig
mips                  maltasmvp_eva_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
um                               alldefconfig
powerpc                  iss476-smp_defconfig
sh                         apsh4a3a_defconfig
csky                                defconfig
sh                             shx3_defconfig
openrisc                         alldefconfig
powerpc                       holly_defconfig
m68k                         apollo_defconfig
sh                           se7712_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
x86_64                        randconfig-c001
arm                  randconfig-c002-20221019
arm                        oxnas_v6_defconfig
m68k                            q40_defconfig
powerpc                     tqm8541_defconfig
arm                           stm32_defconfig
powerpc                      chrp32_defconfig
sparc                            alldefconfig
arm                          badge4_defconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
sh                           se7750_defconfig
sh                           se7343_defconfig
nios2                         10m50_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
mips                           ci20_defconfig
m68k                        mvme147_defconfig
mips                       bmips_be_defconfig
mips                      loongson3_defconfig
xtensa                generic_kc705_defconfig
arm                     eseries_pxa_defconfig
powerpc                  storcenter_defconfig
arm                  randconfig-c002-20221020

clang tested configs:
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
i386                 randconfig-a013-20221017
i386                 randconfig-a015-20221017
i386                 randconfig-a016-20221017
i386                 randconfig-a011-20221017
i386                 randconfig-a014-20221017
i386                 randconfig-a012-20221017
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
powerpc                     ksi8560_defconfig
powerpc                      pmac32_defconfig
powerpc                     tqm8540_defconfig
s390                 randconfig-r044-20221019
hexagon              randconfig-r045-20221019
hexagon              randconfig-r041-20221020
riscv                randconfig-r042-20221019
hexagon              randconfig-r045-20221020
hexagon              randconfig-r041-20221019
x86_64                        randconfig-c007
mips                 randconfig-c004-20221019
i386                          randconfig-c001
s390                 randconfig-c005-20221019
arm                  randconfig-c002-20221019
riscv                randconfig-c006-20221019
powerpc              randconfig-c003-20221019
hexagon              randconfig-r045-20221018
hexagon              randconfig-r041-20221018
x86_64                        randconfig-k001
powerpc                    gamecube_defconfig
mips                          ath79_defconfig
arm                         shannon_defconfig
mips                     cu1830-neo_defconfig
arm                          ep93xx_defconfig
powerpc                 mpc836x_rdk_defconfig
mips                       lemote2f_defconfig
powerpc                    socrates_defconfig
arm                         orion5x_defconfig
powerpc                     tqm8560_defconfig
powerpc                     kmeter1_defconfig
arm                           omap1_defconfig
mips                      malta_kvm_defconfig
arm                                 defconfig
arm                        magician_defconfig
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
arm                       mainstone_defconfig
arm                  colibri_pxa300_defconfig
powerpc                 mpc8560_ads_defconfig
mips                           rs90_defconfig
mips                          ath25_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
