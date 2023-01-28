Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0B767F8A7
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Jan 2023 15:24:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E948141701;
	Sat, 28 Jan 2023 14:24:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E948141701
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674915884;
	bh=JW8cHUkThplWGkRculMUc5jQnm0IOTnbaF+D0NuBZM4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FCdt8pIt90LcUs8wpxIBMRHpEmtt4GSdeVmpKfbRF1r9X1EGpQ8q9MPFLnALgLnJV
	 Yxk9WRYNvxa85TPlFI3uizcIcH9HdP4f/4gdjWLwS3TJ6+iPviVOSImcM4yfokReVF
	 ihHTdWwurd89gDkaY2W6TwFWQ7maWpjdsLTfBIplYOc7ywWy9a9WT3flQ1LMS730Sf
	 4Z/CHDzORX4yCougXm8AIv97H9gUPs5au/4WFprbUlDkTA3Ve+g7vVKzVVVfRSiTYi
	 t7uK8qU8LTJo2LtW7w3FNFsBoWt50FfX+8XqAz6V1UFCd3wi/NQdX7LNikPCsYZJTJ
	 RLwdFaMQU7HOg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ShuJniwOpVWN; Sat, 28 Jan 2023 14:24:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82A18416F5;
	Sat, 28 Jan 2023 14:24:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82A18416F5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 58BBC1BF232
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 14:24:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3187060C05
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 14:24:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3187060C05
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QgYZgXz00Ql8 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Jan 2023 14:24:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D1A060BF3
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2D1A060BF3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 14:24:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10604"; a="391848039"
X-IronPort-AV: E=Sophos;i="5.97,254,1669104000"; d="scan'208";a="391848039"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2023 06:24:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10604"; a="908982167"
X-IronPort-AV: E=Sophos;i="5.97,254,1669104000"; d="scan'208";a="908982167"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 28 Jan 2023 06:24:34 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pLm89-0000mK-1Z;
 Sat, 28 Jan 2023 14:24:33 +0000
Date: Sat, 28 Jan 2023 22:23:48 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63d52ff4.OYhX+ZbDWReaQjNN%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674915876; x=1706451876;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=9dDRdeKob91vivb9UM11q4hGRkItPagRK+HRZsFoQU0=;
 b=WuNgQPsEGyvQCtpphqnxrT5txNW1JDYRsCd2dwedj6q03Z/psJPtpoF5
 Eb9rSeGB8mYaFLeFlIhjP3rYz4QZLpX+m8yFQNFwOXYOOGEr0t2yDIWzw
 5fN13bJBukkYaZhXl6goOl6Bg2yI+Mut5H3XSETeI1EhpQk+66oOVHIux
 XaEEfJbEejg4Dxh0YiIolc1Pxkh0spN6BKc03zxrKPQN/7yGQhtEncjBR
 bzjKeeZVG4zeEieFGFgYtpoJrrnK2CwzikudpFpeSDeMsb8YK5vrmuU5V
 rol3MbXrBp/+Ol9uOzOwjs+gAcRuXNUOr1Ap73ZS8F1n34H1wWilXSp5T
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WuNgQPsE
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 0a021a1183900dce2e5ab00c987deabe50f0ad50
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
branch HEAD: 0a021a1183900dce2e5ab00c987deabe50f0ad50  ice: Fix check for weight and priority of a scheduling node

elapsed time: 737m

configs tested: 96
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
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
um                           x86_64_defconfig
um                             i386_defconfig
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
arc                        nsim_700_defconfig
sh                           se7724_defconfig
sh                            shmin_defconfig
sh                        sh7763rdp_defconfig
sh                          rsk7264_defconfig
arm                          exynos_defconfig
xtensa                  nommu_kc705_defconfig
arc                      axs103_smp_defconfig
xtensa                    smp_lx200_defconfig
s390                          debug_defconfig

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
