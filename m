Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C497C5479E3
	for <lists+intel-wired-lan@lfdr.de>; Sun, 12 Jun 2022 13:19:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9E1B40936;
	Sun, 12 Jun 2022 11:19:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vxbl3DKL5N1j; Sun, 12 Jun 2022 11:19:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A21C40922;
	Sun, 12 Jun 2022 11:19:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 799DD1BF28F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Jun 2022 11:19:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 660DF60B2C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Jun 2022 11:19:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Btv-89xfEglG for <intel-wired-lan@lists.osuosl.org>;
 Sun, 12 Jun 2022 11:19:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3BC3660E00
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Jun 2022 11:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655032748; x=1686568748;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ZY4nLyokPfwDpJ4dd9nmoBPLgOripwlSNbkpv9e1oRI=;
 b=ETCRsnAQV9irgppG9cceDD0u0ZT4sDveb5nFCTU1hCoFYVxikn/N6Umg
 ob0H9Vwgp6sziLxYH9p2HduzL0XvnlURivHk18Tkl6gC7dyPY2ZFmEywl
 1ZdJd7vhUW35iZ+yGjost9WX8pigIZAPdlO501bnNMQHtcfIYJsQZ8ujM
 gUkmgAuFIntpQWFRNQwsoEv8Sfz1MXOw5pfWjNqaMNb2cz8N+9NmLCgIh
 u9YQym6UqdqpSvkVBx5VuxwO2Z5sO0fiRBKk0Hn0fii0bGXdCke4HeG6N
 UV4X+J+M+E4zZe7qLO7umFZGbIJowgcvWJdSvnXXzloo/s4yNtwfl0+6N A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10375"; a="278067722"
X-IronPort-AV: E=Sophos;i="5.91,294,1647327600"; d="scan'208";a="278067722"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2022 04:19:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,294,1647327600"; d="scan'208";a="829168522"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 12 Jun 2022 04:19:05 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o0LcX-000Js3-3t;
 Sun, 12 Jun 2022 11:19:05 +0000
Date: Sun, 12 Jun 2022 19:18:36 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62a5cb8c.CfqxXe3wWyBoMml2%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 27f2533bcc6e909b85d3c1b738fa1f203ed8a835
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
branch HEAD: 27f2533bcc6e909b85d3c1b738fa1f203ed8a835  nfp: flower: support to offload pedit of IPv6 flowinto fields

elapsed time: 1742m

configs tested: 93
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm                              allmodconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
i386                          randconfig-c001
h8300                            allyesconfig
arm                           h5000_defconfig
mips                       capcella_defconfig
riscv             nommu_k210_sdcard_defconfig
sh                   secureedge5410_defconfig
powerpc                      ep88xc_defconfig
powerpc                       maple_defconfig
sh                         microdev_defconfig
arm                             pxa_defconfig
powerpc                      ppc40x_defconfig
xtensa                           alldefconfig
mips                          rb532_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220611
riscv                             allnoconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
csky                                defconfig
alpha                            allyesconfig
alpha                               defconfig
nios2                            allyesconfig
arc                                 defconfig
xtensa                           allyesconfig
sh                               allmodconfig
nios2                               defconfig
arc                              allyesconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
parisc64                            defconfig
s390                                defconfig
s390                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
sparc                               defconfig
i386                              debian-10.3
i386                             allyesconfig
i386                   debian-10.3-kselftests
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220611
arc                  randconfig-r043-20220611
s390                 randconfig-r044-20220611
arc                  randconfig-r043-20220612
riscv                            allyesconfig
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                           allyesconfig

clang tested configs:
x86_64                        randconfig-k001
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r041-20220612
riscv                randconfig-r042-20220612
s390                 randconfig-r044-20220612
hexagon              randconfig-r045-20220612

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
