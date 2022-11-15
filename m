Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 292C8629B51
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Nov 2022 14:59:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 50AF240A87;
	Tue, 15 Nov 2022 13:59:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 50AF240A87
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668520757;
	bh=+9XWqoC14EM/wK2VzowijVpH8sC8yAPRindLW5wxoSs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cIcsL8saQg7cdB2mb7nsCGXB1aj6V6E6yrieReAGFgNrckyJ6LmcSWXLorUl/up5D
	 nj+qtffFXH1T+P0dGrdbfKa0ezCqc2gjlwiy5lP+d8b+GYcudWmpinNHcBzDHrT8BU
	 9CKToi6kzpt1nrR5pVJU/BCiQW3C9VrkKzUc7JNB1QA6BNO0axAnVQmPnIbse2nyi/
	 yZibqBA9YEHllPgxcPPC0eFtbgE64oEVi1oa2vxtHNmfduZGar+lT+2Va1nb9woJR7
	 j1sXb7sLw4LCULGyzIpYA+FCAPqaraEWS+kYoPeL71sA2HwEYgqHq8VtAN10kSsfzZ
	 rd6066MCFjHVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2MbMFqlvK1ud; Tue, 15 Nov 2022 13:59:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3AAE440179;
	Tue, 15 Nov 2022 13:59:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3AAE440179
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4E41B1BF232
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 13:59:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2614760E3A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 13:59:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2614760E3A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rpweHcGi4LXC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Nov 2022 13:59:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 357B760E3D
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 357B760E3D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 13:59:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="292651563"
X-IronPort-AV: E=Sophos;i="5.96,166,1665471600"; d="scan'208";a="292651563"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 05:59:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="813688303"
X-IronPort-AV: E=Sophos;i="5.96,166,1665471600"; d="scan'208";a="813688303"
Received: from lkp-server01.sh.intel.com (HELO ebd99836cbe0) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 15 Nov 2022 05:59:08 -0800
Received: from kbuild by ebd99836cbe0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ouwSx-0001PH-1q;
 Tue, 15 Nov 2022 13:59:07 +0000
Date: Tue, 15 Nov 2022 21:58:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63739b0d.c/lFxblH8MbMS9KB%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668520750; x=1700056750;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=CjAOF1PRX9XTGpFGzywEA6mIS1NYgdUsTrTFBvXod60=;
 b=jB4gICJOD5FFiLpnG3ZJpP5SxF9HdOlvkERm5BOqg2nMxsyIwssQBSK6
 4WKHu0sOJArT/IYLLlWLbNfwod+gDy7mkmqugPXDvTVDzImk/Wj5O4/W7
 /ow3E/MBcbUyxwwv7GSWB8YhdMYgZJOXeuLrWclaKBsHUTsgHFF1OHUje
 a4acm7Ne7085BZURnBnw0gvGEheiVrk+bu39xql9I5/OV+CHCKxVptku/
 B0c/Z9v9KvB3Gszu/ZEEJjfNNhhK8VquVG1gkaougVzJ8eyBQEuQRnhoi
 TUDW9gNiHAhD57sucoOs7JJTmuBIiOzv5hTz7nZmEWpToVBBN5HqAvoLn
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jB4gICJO
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 c1cc97bbd9da07261ab841780768e11a882e8198
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
branch HEAD: c1cc97bbd9da07261ab841780768e11a882e8198  iavf: Do not restart Tx queues after reset task failure

elapsed time: 725m

configs tested: 94
configs skipped: 3

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
arc                  randconfig-r043-20221114
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                                defconfig
x86_64               randconfig-a002-20221114
x86_64                         rhel-8.3-kunit
x86_64               randconfig-a001-20221114
x86_64               randconfig-a004-20221114
x86_64                           rhel-8.3-kvm
i386                             allyesconfig
x86_64                              defconfig
x86_64               randconfig-a003-20221114
x86_64               randconfig-a005-20221114
x86_64               randconfig-a006-20221114
x86_64                           rhel-8.3-syz
i386                 randconfig-a001-20221114
x86_64                               rhel-8.3
ia64                             allmodconfig
x86_64                           allyesconfig
i386                 randconfig-a002-20221114
i386                 randconfig-a003-20221114
i386                 randconfig-a004-20221114
i386                 randconfig-a005-20221114
i386                 randconfig-a006-20221114
x86_64                            allnoconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
xtensa                         virt_defconfig
sh                            shmin_defconfig
xtensa                              defconfig
mips                        vocore2_defconfig
parisc                generic-32bit_defconfig
sh                     magicpanelr2_defconfig
mips                           gcw0_defconfig
powerpc                     stx_gp3_defconfig
sh                           sh2007_defconfig
loongarch                        allmodconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-c001
arm                           sunxi_defconfig
arm                               allnoconfig
loongarch                 loongson3_defconfig
arc                         haps_hs_defconfig
arm                          pxa3xx_defconfig
m68k                       m5475evb_defconfig
sh                            hp6xx_defconfig
mips                  decstation_64_defconfig
powerpc                    sam440ep_defconfig
sparc64                          alldefconfig
sparc64                             defconfig
ia64                         bigsur_defconfig
ia64                             allyesconfig
m68k                          atari_defconfig
powerpc                      ppc6xx_defconfig
powerpc                        cell_defconfig

clang tested configs:
hexagon              randconfig-r045-20221114
hexagon              randconfig-r041-20221114
s390                 randconfig-r044-20221114
riscv                randconfig-r042-20221114
x86_64               randconfig-a012-20221114
x86_64               randconfig-a015-20221114
x86_64               randconfig-a013-20221114
x86_64               randconfig-a011-20221114
x86_64               randconfig-a014-20221114
x86_64               randconfig-a016-20221114
i386                 randconfig-a011-20221114
i386                 randconfig-a014-20221114
i386                 randconfig-a013-20221114
i386                 randconfig-a012-20221114
i386                 randconfig-a015-20221114
i386                 randconfig-a016-20221114
arm                        magician_defconfig
x86_64               randconfig-k001-20221114
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
