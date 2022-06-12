Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C56D54793A
	for <lists+intel-wired-lan@lfdr.de>; Sun, 12 Jun 2022 09:59:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 945CF40538;
	Sun, 12 Jun 2022 07:59:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ecpzaZimOFvy; Sun, 12 Jun 2022 07:59:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8650140517;
	Sun, 12 Jun 2022 07:59:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 30B581BF215
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Jun 2022 07:59:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2BB26416D0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Jun 2022 07:59:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eih9FMZJD0VI for <intel-wired-lan@lists.osuosl.org>;
 Sun, 12 Jun 2022 07:59:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 03D374167D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Jun 2022 07:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655020744; x=1686556744;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=IPboVLF8Y6ad9IL6ykXN9S+Rz48A9cHdVcjmuGhrEIY=;
 b=Hr/cQcioYxL7M6PulpDhAJ7hlOBwjFv/wawyMrZnXT8o9Ie1C1jO/buf
 ZkJCQIdTe2yDbv/8MY6lxzk+SxcHkZkiKTHgGU4pDhtk9soC21KrlWkn/
 4AppKbn9zGzkyAcqhJ1FZImZFU27q7c2REv2wZWDD7S2WQwKTc/ZAWBbr
 rHmhQlWlxdQysbNAALFCty5ymOayxdqmTGS01Kl0wqWc1YVL4UgLoMl+I
 sbxnacRgLHKDEoITJpKrkv3GNGT1g2MwFjrT7qDuAGoPcXSI0rUHVdpk5
 SWmuv2rUkxLyaKwTvc5RHxe28eeVTWHT3klW3HmYHUFN0SYyT393ruVsO w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10375"; a="339708897"
X-IronPort-AV: E=Sophos;i="5.91,294,1647327600"; d="scan'208";a="339708897"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2022 00:59:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,294,1647327600"; d="scan'208";a="909776726"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 12 Jun 2022 00:59:01 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o0IUv-000JlZ-29;
 Sun, 12 Jun 2022 07:59:01 +0000
Date: Sun, 12 Jun 2022 15:58:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62a59cc3.bmlLxdZGHisYic2I%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 6f0e1efc880ae979df45aa85e3336aac5e58d97a
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
branch HEAD: 6f0e1efc880ae979df45aa85e3336aac5e58d97a  Merge branch 'documentation-add-description-for-a-couple-of-sctp-sysctl-options'

elapsed time: 1542m

configs tested: 96
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
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
nios2                               defconfig
arc                              allyesconfig
alpha                               defconfig
csky                                defconfig
alpha                            allyesconfig
nios2                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allmodconfig
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
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220612
riscv                randconfig-r042-20220611
arc                  randconfig-r043-20220611
s390                 randconfig-r044-20220611
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
riscv                            allmodconfig
riscv                               defconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3

clang tested configs:
x86_64                        randconfig-k001
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r041-20220612
hexagon              randconfig-r045-20220612
riscv                randconfig-r042-20220612
s390                 randconfig-r044-20220612

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
