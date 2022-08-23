Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4EA59D0A2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Aug 2022 07:41:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1F1224036F;
	Tue, 23 Aug 2022 05:41:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F1224036F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661233285;
	bh=ye5w+bag/LfPFJwqZ/vx6nFMNoQPa1rr/3l0TI5wccg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=8l9pL7gXrfN0542iOH5e7mOZf+TXAjvJBhRaFKreFK9ZUQmZGqHtFLNxA/YM8zStg
	 Oss/APaKKffCWsACkJKJQvtuyVdJFmDgSSzkw0jnixkooSuhl1rnb3uWKnolD5eey5
	 /qNbyUcmwSRxsxQQIjqG57v0l0IhypFF6cD+YQyht0cMqtKJ2gs957yJRCwCLogg+b
	 /HnwQAwSHOPxl9rCaoM/6fNJUAoB9RLxtNkIGAFWvh4FkVC9WBssVfdOvFDc9IX0M7
	 H2tgofFeeC6v3wA1+EuJdc/+yJpUcVlisgrdQBIcJkJMsqqAHPdTdwFZOFKOF9TbRO
	 AmUV28A9z5TpQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ugSAiVWY-YYx; Tue, 23 Aug 2022 05:41:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DB2A540323;
	Tue, 23 Aug 2022 05:41:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB2A540323
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B26F31BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 05:41:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 963B981463
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 05:41:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 963B981463
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DoLBIjKy56_i for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Aug 2022 05:41:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D6F481457
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9D6F481457
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 05:41:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="292338433"
X-IronPort-AV: E=Sophos;i="5.93,256,1654585200"; d="scan'208";a="292338433"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 22:41:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,256,1654585200"; d="scan'208";a="669868890"
Received: from lkp-server01.sh.intel.com (HELO 5b31f6010e99) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 22 Aug 2022 22:41:07 -0700
Received: from kbuild by 5b31f6010e99 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oQMex-00001j-0v;
 Tue, 23 Aug 2022 05:41:07 +0000
Date: Tue, 23 Aug 2022 13:40:45 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6304685d.mSeMf4BlyqTDSU4M%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661233277; x=1692769277;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=SuMV4nvvkyqPueCbVfQdnsdBN5RUCLdFNlshz7KS4C8=;
 b=FFfWWFAYz9AGdgx6/U+wdUClhXikTSmKEk5h877WrYzFPsrPGjmrhJt4
 XKO0x8quIp6lGYfLIO+ZdNSDCokHXdd3nV/TrhEuEaiINaLAtkFInhwDk
 RxhRgrzan5KLIvfsQ6mg46cySjh7YQ4x7GvFS3Cr8KDze3hfAjFa8rhUT
 ali2UaRRxIqf9lYEriIR/OapkmoA2zrSqJ4NEgwoPEqqElN1rSATXp7wf
 v9NDIumMSA3BKuR6YuNHVndZK+jTt0BVABwZ9OJcIU5PvLjuP96YSBaV5
 fX6hWsNUqbFg5/eBp/NCM5dxhi0FRkl4SbVn7ai/p93gpAz71Dz+kpsMq
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FFfWWFAY
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 9ead7e74bfd6dd54db12ef133b8604add72511de
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 9ead7e74bfd6dd54db12ef133b8604add72511de  ice: xsk: use Rx ring's XDP ring when picking NAPI context

elapsed time: 727m

configs tested: 134
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
arc                  randconfig-r043-20220821
arc                  randconfig-r043-20220822
riscv                randconfig-r042-20220822
s390                 randconfig-r044-20220822
x86_64               randconfig-a012-20220822
x86_64               randconfig-a013-20220822
x86_64               randconfig-a011-20220822
x86_64               randconfig-a016-20220822
x86_64               randconfig-a014-20220822
x86_64               randconfig-a015-20220822
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
i386                             allyesconfig
i386                                defconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
m68k                             allmodconfig
alpha                            allyesconfig
arc                              allyesconfig
i386                 randconfig-a015-20220822
i386                 randconfig-a016-20220822
i386                 randconfig-a011-20220822
i386                 randconfig-a013-20220822
i386                 randconfig-a014-20220822
i386                 randconfig-a012-20220822
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
m68k                             allyesconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
powerpc                    amigaone_defconfig
arc                           tb10x_defconfig
arc                 nsimosci_hs_smp_defconfig
m68k                          amiga_defconfig
sparc                               defconfig
powerpc                      ppc6xx_defconfig
sh                          rsk7269_defconfig
arm                          exynos_defconfig
ia64                            zx1_defconfig
arm                        oxnas_v6_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
i386                          randconfig-c001
powerpc                        cell_defconfig
sh                                  defconfig
sh                          rsk7264_defconfig
powerpc                    sam440ep_defconfig
xtensa                  audio_kc705_defconfig
sh                               j2_defconfig
m68k                        mvme147_defconfig
xtensa                  nommu_kc705_defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
sh                   sh7724_generic_defconfig
arm                      footbridge_defconfig
arm                         axm55xx_defconfig
powerpc                 mpc85xx_cds_defconfig
loongarch                 loongson3_defconfig
mips                           xway_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arm                         assabet_defconfig
powerpc                     asp8347_defconfig
powerpc                     tqm8548_defconfig
openrisc                    or1ksim_defconfig
arc                              alldefconfig
arc                                 defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220823
ia64                             allmodconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3

clang tested configs:
hexagon              randconfig-r041-20220822
hexagon              randconfig-r045-20220822
hexagon              randconfig-r045-20220821
hexagon              randconfig-r041-20220821
riscv                randconfig-r042-20220821
s390                 randconfig-r044-20220821
x86_64               randconfig-a002-20220822
x86_64               randconfig-a004-20220822
x86_64               randconfig-a003-20220822
x86_64               randconfig-a001-20220822
x86_64               randconfig-a005-20220822
x86_64               randconfig-a006-20220822
i386                 randconfig-a002-20220822
i386                 randconfig-a005-20220822
i386                 randconfig-a001-20220822
i386                 randconfig-a006-20220822
i386                 randconfig-a003-20220822
i386                 randconfig-a004-20220822
x86_64                        randconfig-k001
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
arm                     am200epdkit_defconfig
powerpc                 mpc8313_rdb_defconfig
powerpc                     mpc5200_defconfig
powerpc                        fsp2_defconfig
arm                          sp7021_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                    gamecube_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
powerpc                     tqm5200_defconfig
arm                          pxa168_defconfig
arm                          ixp4xx_defconfig
arm                         palmz72_defconfig
mips                malta_qemu_32r6_defconfig
mips                           rs90_defconfig
arm                         s3c2410_defconfig
arm                                 defconfig
arm                   milbeaut_m10v_defconfig
arm                        neponset_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
