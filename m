Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C81EB5B89D4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Sep 2022 16:04:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E779381CEF;
	Wed, 14 Sep 2022 14:04:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E779381CEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663164262;
	bh=2w0J14VWxWghPt8ElHpvdN7IQp7OpSgASssSEkYChLA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UZGT0d/UCXslVfkhnl4HQK+BsTxI9kGVEhOCcSb7VgZleWPHxATbzQQMIcB38ehMA
	 dcbyPOQUr6DGbTs2Y7ixrE0BGXPS94CemO5UjGHOqIliS3wFr5h+LnDIZU39POJF5c
	 6/TAB4a4jp5ZOddRSSlYaUKWpKoJRSOC/FNoekJjEpFzM6KaS+92Br4kd64Ol0Ju/o
	 doRi5Pm1CEoYNTtvRe2Ah6pSSnnH8GpZZ+JpDcB+uiZ5INYcOZ7faDEWYTulToO/rS
	 PUL3q8Zh1X5H88CrdpVLFPbEo6XlWayJeztyyzjvPYBLzIbKL710M5wWuYgTZqgg4F
	 MoSxdvnY1IyOA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l89_szKINcmU; Wed, 14 Sep 2022 14:04:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9C09C81B84;
	Wed, 14 Sep 2022 14:04:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C09C81B84
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 538CC1BF3BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Sep 2022 14:04:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2ACA881B84
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Sep 2022 14:04:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2ACA881B84
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aVeYQyOpZ3-E for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Sep 2022 14:04:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C7BF81B53
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1C7BF81B53
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Sep 2022 14:04:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="298435412"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="298435412"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 07:04:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="594396029"
Received: from lkp-server01.sh.intel.com (HELO d6e6b7c4e5a2) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 14 Sep 2022 07:04:07 -0700
Received: from kbuild by d6e6b7c4e5a2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oYSzm-0000GZ-3B;
 Wed, 14 Sep 2022 14:04:06 +0000
Date: Wed, 14 Sep 2022 22:03:43 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6321df3f.rcKF4TxkrMbj8CkJ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663164255; x=1694700255;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=B8NqczCe+2rG4WlZV2h+h9nYdcTjuzDj67F6GA/JxoQ=;
 b=XU4pD8RKqrG4Tj6XdIEjL6W2PLpDdmyOPuyo0Zbvfd1dftJwBRN3pntn
 A3zA7nq9uusnNOX2RwnOozKG3VO8YItnnQW/DULZR5O72y8ANiqjW34MQ
 hLJk6ladbrzbUe6oE/6xixjBm2mZf0QqFaMi0ezB3qF4n6lVrxFpvg0Am
 HZzN3qg0wzx+j6Q1OniZOSIv4LQ4Jrr98gop3lRHpXeZCeTYTGgOGADeZ
 ukCGhKYeOMj91nhiFtEuYAZMBgsc6I/uIgwrJK934Mgibwg3m9ggc430e
 +KPHuPJ8vc2R59EYB+YmKh/9iip3wXWjcxuH9W0xoUCu3OvEifzQuzoMI
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XU4pD8RK
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 c9ae520ac3faf2f272b5705b085b3778c7997ec8
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
branch HEAD: c9ae520ac3faf2f272b5705b085b3778c7997ec8  r8169: remove rtl_wol_shutdown_quirk()

elapsed time: 1734m

configs tested: 97
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
m68k                             allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig
alpha                            allyesconfig
m68k                             allmodconfig
sh                               allmodconfig
arc                              allyesconfig
x86_64                    rhel-8.3-kselftests
i386                 randconfig-a002-20220912
i386                 randconfig-a003-20220912
i386                 randconfig-a006-20220912
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
arc                  randconfig-r043-20220912
arc                  randconfig-r043-20220911
s390                 randconfig-r044-20220911
riscv                randconfig-r042-20220911
x86_64               randconfig-a004-20220912
x86_64               randconfig-a005-20220912
x86_64               randconfig-a001-20220912
i386                                defconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
i386                             allyesconfig
sparc                               defconfig
xtensa                  cadence_csp_defconfig
powerpc                    adder875_defconfig
arm                           viper_defconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
powerpc                       eiger_defconfig
nios2                         3c120_defconfig
sh                          landisk_defconfig
sh                   sh7770_generic_defconfig
arm                          iop32x_defconfig
s390                          debug_defconfig
i386                          randconfig-c001
x86_64                              defconfig
arm                      footbridge_defconfig
arc                          axs101_defconfig
powerpc                       holly_defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
arc                  randconfig-r043-20220914
i386                          randconfig-a014
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a012
i386                          randconfig-a016
sh                     magicpanelr2_defconfig
xtensa                         virt_defconfig
m68k                       bvme6000_defconfig
ia64                             allmodconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
x86_64                        randconfig-c001
arm                  randconfig-c002-20220914
riscv                            allyesconfig
loongarch                           defconfig
loongarch                         allnoconfig
arc                        vdk_hs38_defconfig
ia64                          tiger_defconfig

clang tested configs:
s390                 randconfig-r044-20220912
hexagon              randconfig-r045-20220911
hexagon              randconfig-r045-20220912
riscv                randconfig-r042-20220912
hexagon              randconfig-r041-20220911
hexagon              randconfig-r041-20220912
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64                        randconfig-k001
i386                          randconfig-a013
hexagon              randconfig-r041-20220914
i386                          randconfig-a015
riscv                randconfig-r042-20220914
s390                 randconfig-r044-20220914
i386                          randconfig-a011
hexagon              randconfig-r045-20220914
x86_64                        randconfig-a016
x86_64                        randconfig-a012
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a014

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
