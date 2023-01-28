Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC4767F89C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Jan 2023 15:22:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA9C981871;
	Sat, 28 Jan 2023 14:22:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA9C981871
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674915761;
	bh=AQ58olnkMab/noQF748STcggris4gQFofvEazeGAsro=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=NOZWaYy/c0YDvzgps8aSDaU0LuZP7bzaPIiBBgLuJOsi8dzB9jaO0fYvjycMN9kLK
	 dLjE3iky6yQCTPZhjiAwhtQxXGOtO8Z0nxX3QBbXVp+6kCAsSMMQvT79nsAEfyp2FO
	 x9aQzUZO9pvah7+GweMGPReF1KmZlHtizTDwpQ5yh5ci2XO5kJxrqzpsM9sdFlKojP
	 yXB4jzlzTHHh5jgKKXHXKkAg0iW8z1eqxegmo+DcS4T3hu6Ay2HAURjjy3nZTJFzx8
	 6G2vjHfRVBhIs/zLPExSk+iY/B23beGSCw0bmEEEVf3cEquelz0D5c4MQ046QkBHXm
	 wvcuv1ylimbUA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oPL65x8D9Y-P; Sat, 28 Jan 2023 14:22:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 927FA8149E;
	Sat, 28 Jan 2023 14:22:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 927FA8149E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 14CB11BF232
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 14:22:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EEDCF4051D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 14:22:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EEDCF4051D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iNnHkBoMPr81 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Jan 2023 14:22:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CCE34013B
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0CCE34013B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 14:22:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10604"; a="354603803"
X-IronPort-AV: E=Sophos;i="5.97,254,1669104000"; d="scan'208";a="354603803"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2023 06:22:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10604"; a="726996949"
X-IronPort-AV: E=Sophos;i="5.97,254,1669104000"; d="scan'208";a="726996949"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 28 Jan 2023 06:22:33 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pLm6C-0000kL-26;
 Sat, 28 Jan 2023 14:22:32 +0000
Date: Sat, 28 Jan 2023 22:21:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63d52f85.2HGRvNids0BKAEa2%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674915754; x=1706451754;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=pBL4XrD7NdBaPx5F6+hPysqprKGAP1M4H/M2kNdhva8=;
 b=apsYHgl65gP6eMzjzGvw7DVS8RR0wJTTjRBdHWO6KqTi3OeGXuEgjW01
 JLysV4sHjTu7DgOt+o9PrsvWKw143Y2hDKNiCPfhXoUbFBHeqdSEoRNFr
 dXLt2jN4Z7rUjxCYC0SMP8jZR2pwSyI4fTAb1JbXB2PK4CkjwbhtqzH3m
 CAzR3uX35M/PjQ1q9QbLusbMvV2El2gJjDMW2KDl3EMxZN3M4yG3mNBVT
 LvfETR1jsuNPycLYpvHbiShaSKv3IiKb1DngYXEQNPeIBqDAYXWwpuX3p
 aokm1iSW90CTMCn68EP+MwCICac7ecOpIiXvDNeFFHA6pGLg7jrvdxVov
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=apsYHgl6
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 7083df59abbc2b7500db312cac706493be0273ff
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
branch HEAD: 7083df59abbc2b7500db312cac706493be0273ff  net: mdio-mux-meson-g12a: force internal PHY off on mux switch

elapsed time: 736m

configs tested: 94
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                             allyesconfig
i386                                defconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
x86_64               randconfig-a002-20230123
x86_64               randconfig-a005-20230123
x86_64               randconfig-a001-20230123
x86_64               randconfig-a006-20230123
x86_64               randconfig-a003-20230123
x86_64               randconfig-a004-20230123
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                 randconfig-a004-20230123
i386                 randconfig-a006-20230123
i386                 randconfig-a005-20230123
i386                 randconfig-a002-20230123
i386                 randconfig-a003-20230123
i386                 randconfig-a001-20230123
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
um                           x86_64_defconfig
um                             i386_defconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
ia64                             allmodconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
i386                 randconfig-c001-20230123
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                          randconfig-c001
m68k                         amcore_defconfig
powerpc                      makalu_defconfig
m68k                        mvme147_defconfig
m68k                          amiga_defconfig
mips                          rb532_defconfig
sh                        sh7763rdp_defconfig
sh                          rsk7264_defconfig
arm                          exynos_defconfig
xtensa                  nommu_kc705_defconfig
arc                      axs103_smp_defconfig
arc                        nsim_700_defconfig
sh                           se7724_defconfig
sh                            shmin_defconfig

clang tested configs:
x86_64               randconfig-a013-20230123
x86_64               randconfig-a011-20230123
x86_64               randconfig-a016-20230123
x86_64               randconfig-a012-20230123
x86_64               randconfig-a015-20230123
x86_64               randconfig-a014-20230123
riscv                randconfig-r042-20230123
hexagon              randconfig-r041-20230123
hexagon              randconfig-r045-20230123
s390                 randconfig-r044-20230123
i386                 randconfig-a013-20230123
i386                 randconfig-a016-20230123
i386                 randconfig-a012-20230123
i386                 randconfig-a015-20230123
i386                 randconfig-a011-20230123
i386                 randconfig-a014-20230123
powerpc                      walnut_defconfig
arm                        mvebu_v5_defconfig
arm                           sama7_defconfig
powerpc                 mpc832x_mds_defconfig
x86_64                          rhel-8.3-rust
hexagon              randconfig-r041-20230124
hexagon              randconfig-r045-20230124
arm                  randconfig-r046-20230124
mips                        maltaup_defconfig
arm                         palmz72_defconfig
powerpc                    gamecube_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
