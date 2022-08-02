Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E460587C6A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Aug 2022 14:27:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 52F0760C09;
	Tue,  2 Aug 2022 12:27:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 52F0760C09
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659443247;
	bh=2xtu5QoE7NMBeY3Bu0sy/o7Xoe4br4jKInftODOxaF8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bbryL+gKlP9dCoevyo500Y1oaO/Fr8VEi0ECsStAiZmymrAxUqMLUxFjdwVrEOMUD
	 bRAMM4RO4kxGyPRN0mJ3hv2nifNqwNjNBalt0mSle+UvRvhr7WFak+NuytJvXTweVp
	 icajNCNIyUd6qSNopVN0OkhmcbZXu9Y72QeEry8lqIzUPhYly5WnzlZ9LsD68HX4Lc
	 8Ig5QCMfiDLtNyqFkKkZBRInd8WCbE176E+GXte6UQnt7UvgGmxZXGCT1SzjdiHBSx
	 0ybF8p3nffq1RkTt1YovESiSLUbvEiZIg+aTcGjq0bIDPHocITCuhw1nO96UAP8/7V
	 lgQE5EnfR4ayg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bo6G7WSJuwoQ; Tue,  2 Aug 2022 12:27:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D7B160C04;
	Tue,  2 Aug 2022 12:27:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D7B160C04
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 579E51BF366
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 12:27:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 32099405B1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 12:27:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 32099405B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3bH_FOAsrz3d for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Aug 2022 12:27:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D87740227
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4D87740227
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 12:27:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="272439949"
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="272439949"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 05:27:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="705357497"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 02 Aug 2022 05:27:18 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oIqzV-000G2e-2e;
 Tue, 02 Aug 2022 12:27:17 +0000
Date: Tue, 02 Aug 2022 20:26:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62e9180f.0jvuS82UhZSnlMkI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659443240; x=1690979240;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=d/r2ADAm+7zqpQvRdjIsgXphmyfLceDmzrJu/fDohqw=;
 b=jgTyWmzWLVYBCrpjdr/wj8byX/ln3Szyr/cnOUXJyoV0BnuENayuWQoM
 cYpGZUdHj0THe1TfEBBmLnsq3jMGMbXFgZryJlvmFq2CrLQAqRZlRI6lI
 YltDAbXh5IwIRiekHKkGKOkr720+8eE5X9xRmLE+9Z/ZbKGde/auy2HiQ
 kmF60xzp6oT2g11t5MTQcuTuWQejk+jjwcHr2hpVT/sahWmWLLJB1oCkM
 74Vr/YfV9VgN62kmLXQuuk4wCUh2ietzNiZUB/DM16ViQ2DOPmF++4qGu
 HlAR8UenpxfGbbdnnzdBJoH/p6OeBmCoR3idpkdCgJQUJuX2p5HypnoXu
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jgTyWmzW
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 269a523f650c7cc4f4109d9cbb255629b298226a
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
branch HEAD: 269a523f650c7cc4f4109d9cbb255629b298226a  i40e: Fix tunnel checksum offload with fragmented traffic

elapsed time: 716m

configs tested: 69
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                              allyesconfig
arc                  randconfig-r043-20220801
x86_64                              defconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
ia64                             allmodconfig
x86_64                               rhel-8.3
s390                 randconfig-r044-20220801
riscv                randconfig-r042-20220801
x86_64                           allyesconfig
i386                                defconfig
i386                             allyesconfig
powerpc                           allnoconfig
arm                                 defconfig
arm                              allyesconfig
x86_64               randconfig-a014-20220801
x86_64               randconfig-a015-20220801
x86_64               randconfig-a011-20220801
x86_64               randconfig-a012-20220801
x86_64               randconfig-a013-20220801
x86_64               randconfig-a016-20220801
arm64                            allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
sh                               allmodconfig
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                      ep88xc_defconfig
sh                           se7721_defconfig
powerpc                     tqm8541_defconfig
sh                           sh2007_defconfig
powerpc                   motionpro_defconfig
xtensa                  nommu_kc705_defconfig
sparc64                          alldefconfig
mips                           xway_defconfig
i386                 randconfig-a016-20220801
i386                 randconfig-a013-20220801
i386                 randconfig-a015-20220801
i386                 randconfig-a012-20220801
i386                 randconfig-a011-20220801
i386                 randconfig-a014-20220801
i386                 randconfig-c001-20220801

clang tested configs:
hexagon              randconfig-r045-20220801
hexagon              randconfig-r041-20220801
i386                 randconfig-a001-20220801
x86_64               randconfig-a002-20220801
i386                 randconfig-a002-20220801
i386                 randconfig-a003-20220801
i386                 randconfig-a005-20220801
i386                 randconfig-a004-20220801
i386                 randconfig-a006-20220801
x86_64               randconfig-a001-20220801
x86_64               randconfig-a003-20220801
x86_64               randconfig-a004-20220801
x86_64               randconfig-a005-20220801
x86_64               randconfig-a006-20220801
powerpc                      obs600_defconfig
powerpc                     akebono_defconfig
arm                   milbeaut_m10v_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
