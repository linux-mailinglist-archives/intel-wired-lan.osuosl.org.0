Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE9A5F83E0
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Oct 2022 08:38:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 56CB540386;
	Sat,  8 Oct 2022 06:38:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 56CB540386
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665211121;
	bh=s0oABI1enqrsOcGy6cuCBUkHwXpTQc33nQXYSPniQhY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Ax9gWkR7aQ3oD2HYtMrCehhKblhGq6NKCATfDKnmKI7K2S49YQc/3SeyzdaWqBMZr
	 QXJQejGVuH3SDLSP4bKkk9y7ma/OlTLrB/LnjepK5IuQYQxakmBPVvgvnThPyBVMk5
	 8INI2rduB861k3xjYTsrjLSOoNHS2wkpAhB8p9ukA4iBBdpv0A5ELYIDBnonakFlFX
	 2XRq0V8R+Wj3/qU6hsiXEHfvcAI3pdgA6etHDMMtm3ZX86ynpx8KvHi/ZmI1DGA/ih
	 DSxmKJZEnL7vU4xq/Sl4xiG08iYPADDYvUG0lPuPCWHzT1EgM+OYKVfgSDADD/iOHt
	 OWwo1WBJXGZEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3QUTNMZxlz_T; Sat,  8 Oct 2022 06:38:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0296840119;
	Sat,  8 Oct 2022 06:38:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0296840119
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3E1261BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Oct 2022 06:38:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 158384032A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Oct 2022 06:38:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 158384032A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hi0G_4_7kDtQ for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Oct 2022 06:38:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B6D3402F7
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9B6D3402F7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Oct 2022 06:38:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10493"; a="284277024"
X-IronPort-AV: E=Sophos;i="5.95,169,1661842800"; d="scan'208";a="284277024"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2022 23:38:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10493"; a="954326452"
X-IronPort-AV: E=Sophos;i="5.95,169,1661842800"; d="scan'208";a="954326452"
Received: from lkp-server01.sh.intel.com (HELO 3c15167049b7) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 07 Oct 2022 23:38:30 -0700
Received: from kbuild by 3c15167049b7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oh3Ti-0001uK-0g;
 Sat, 08 Oct 2022 06:38:30 +0000
Date: Sat, 08 Oct 2022 14:37:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63411ac0.A4EBxEFQbhxhwbxJ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665211112; x=1696747112;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=kovEWLVqXqqymmRj5ShvMJJqjQGKTzQ+PzscYMaOw0s=;
 b=kv1tL6524fFwXouYRM7w0u6GOFzrHVycQv3TcqYwz/GU8W/IFUjk2caO
 Sb+wHK9aRHuXt0A+LcWkkDV2NX6pBGPIxR2bIELLQ0Os5vmn7VBJsld9j
 Sse/YQ7jfm7Q0eesq+cqO9H8jbxhc8l0Wpz8gXiBUbCkfvfh7LwMBju88
 TlmPUBuquIyxpX2NliEHDvleIcp5zfNx2dEOk4s8kpG6eBkJwZ7cVac/B
 6f+/YXuVn9YnZYgPvS1iyocXgy9q7hkfXYkPmHwZpUzvzrQb0cSaU+8I/
 1Omd/1JLLxQtJv5/ggTes3Ni6LOv7yUIdjTz02p9RXgOXhYk0EWMEff6H
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kv1tL652
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 9ce3e3f55b18026944714f74a889e059c9b52c1f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 9ce3e3f55b18026944714f74a889e059c9b52c1f  ixgbevf: Add error messages on vlan error

elapsed time: 721m

configs tested: 144
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
s390                             allmodconfig
s390                                defconfig
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
m68k                             allmodconfig
x86_64                              defconfig
i386                                defconfig
x86_64                         rhel-8.3-kunit
arc                              allyesconfig
x86_64                           allyesconfig
x86_64                           rhel-8.3-kvm
alpha                            allyesconfig
x86_64                               rhel-8.3
powerpc                           allnoconfig
m68k                             allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig
s390                             allyesconfig
i386                 randconfig-a011-20221003
i386                 randconfig-a016-20221003
i386                 randconfig-a012-20221003
i386                 randconfig-a014-20221003
i386                 randconfig-a015-20221003
i386                 randconfig-a013-20221003
arm                       imx_v6_v7_defconfig
powerpc                         wii_defconfig
powerpc                     taishan_defconfig
sh                          landisk_defconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                             allyesconfig
arc                        nsim_700_defconfig
mips                         db1xxx_defconfig
powerpc                    sam440ep_defconfig
sh                          rsk7269_defconfig
parisc                           alldefconfig
sh                        sh7757lcr_defconfig
i386                          randconfig-c001
sh                               allmodconfig
riscv                randconfig-r042-20221007
arm                           imxrt_defconfig
arm                            zeus_defconfig
arm                           viper_defconfig
arc                  randconfig-r043-20221007
riscv                randconfig-r042-20221003
arc                  randconfig-r043-20221003
arc                  randconfig-r043-20221002
s390                 randconfig-r044-20221007
x86_64               randconfig-a011-20221003
x86_64               randconfig-a016-20221003
x86_64               randconfig-a014-20221003
x86_64               randconfig-a013-20221003
x86_64               randconfig-a012-20221003
x86_64               randconfig-a015-20221003
s390                 randconfig-r044-20221003
arm                        realview_defconfig
sh                          polaris_defconfig
sh                     magicpanelr2_defconfig
powerpc                       maple_defconfig
arm                             pxa_defconfig
arc                        vdk_hs38_defconfig
powerpc                     redwood_defconfig
nios2                               defconfig
ia64                             allmodconfig
nios2                            alldefconfig
sh                        dreamcast_defconfig
s390                          debug_defconfig
powerpc                     asp8347_defconfig
arm                           sunxi_defconfig
sparc                       sparc64_defconfig
parisc                generic-64bit_defconfig
arm                             ezx_defconfig
powerpc                     ep8248e_defconfig
sh                  sh7785lcr_32bit_defconfig
sparc64                          alldefconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
mips                 randconfig-c004-20221002
powerpc                     sequoia_defconfig
m68k                          multi_defconfig
um                               alldefconfig
sh                          kfr2r09_defconfig
powerpc                        warp_defconfig
m68k                        stmark2_defconfig
powerpc                    klondike_defconfig
arm                        oxnas_v6_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
sh                             sh03_defconfig
arm                         lubbock_defconfig
sparc                            alldefconfig
sh                           se7705_defconfig
sh                      rts7751r2d1_defconfig
arm                            qcom_defconfig
arm                  randconfig-c002-20221002
x86_64                        randconfig-c001
sh                          r7780mp_defconfig
ia64                                defconfig
arm                          badge4_defconfig

clang tested configs:
arm                        mvebu_v5_defconfig
s390                             alldefconfig
hexagon              randconfig-r041-20221003
riscv                randconfig-r042-20221002
hexagon              randconfig-r041-20221002
s390                 randconfig-r044-20221002
hexagon              randconfig-r045-20221002
hexagon              randconfig-r045-20221007
hexagon              randconfig-r041-20221007
hexagon              randconfig-r045-20221003
i386                 randconfig-a001-20221003
i386                 randconfig-a006-20221003
i386                 randconfig-a002-20221003
i386                 randconfig-a003-20221003
i386                 randconfig-a005-20221003
i386                 randconfig-a004-20221003
x86_64               randconfig-a003-20221003
x86_64               randconfig-a005-20221003
x86_64               randconfig-a001-20221003
x86_64               randconfig-a004-20221003
x86_64               randconfig-a002-20221003
x86_64               randconfig-a006-20221003
x86_64                        randconfig-k001
powerpc                 mpc832x_mds_defconfig
mips                          ath25_defconfig
arm                      tct_hammer_defconfig
mips                          rm200_defconfig
mips                   sb1250_swarm_defconfig
arm64                            allyesconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
