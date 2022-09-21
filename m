Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD945BFA3B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Sep 2022 11:08:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8BE0C81337;
	Wed, 21 Sep 2022 09:08:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8BE0C81337
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663751314;
	bh=g2k+ixICREZ4ovPk1n+l1Y6J0QnWWhVzOhSPgxbc82c=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cI70HCYFBXnDR/R7rq68/Ex/9OZ8CxnG312C2U02Ccg1z4g2XDAtKxt4SXg3VHLUf
	 nJ2qFsqEMSajDOCavew0ujk9pEwU/ACMuOv4tFfK3nvyA/6W9d7U3Hzzn3OQfj4UDj
	 tq/RXT+ORwWd7NSdNznfDQlO8BxkSQ9K03BMoF13g3nKAd7XTeseo8fF7nOXwmwirY
	 N7MGOGl03C7Dd971Hw4gEWLAOZ6/X/H/+ulc2scXYoTqCTV758Mh/ndNyBKoGqQ7ay
	 VfQ0Has2fRdKkowZbVwY+RGV1s5KMO2yYWq4J7qK4/qeeZJChpYaMLgF+b+CO4sWV9
	 3W0In4iThiDgg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dsZql2UkbShy; Wed, 21 Sep 2022 09:08:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 518FF81299;
	Wed, 21 Sep 2022 09:08:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 518FF81299
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DCC8A1BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 09:08:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C5E8140C53
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 09:08:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C5E8140C53
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ajKtB0IorXnm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Sep 2022 09:08:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE15E402E7
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BE15E402E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 09:08:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="301346737"
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="301346737"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 02:08:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="723123220"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 21 Sep 2022 02:08:13 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oaviG-0003Rh-2x;
 Wed, 21 Sep 2022 09:08:12 +0000
Date: Wed, 21 Sep 2022 17:08:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <632ad470.oYAc/4GSFLffszh+%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663751304; x=1695287304;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=fildXTjgieKuoooacBaRsueCDajYgzrJ1HoX/W+pXSs=;
 b=W8UoJ4pI7qimjIs0ShmAZFeMfD8deOchGYrMJbgb/5lFtAu+/c4SIo0E
 m5UUBty0HlHZDtQdX3saYtvKvEZXMRDCtElHYIKocRCPK8FGLUb9FH4Wp
 iaAbXX4TeGqSKPnUPAk16FHizB/pk1IX083TjfRqn6bfJnxuVaG09xCrS
 a6ui3XwFRB5NasXLhilLyWCfGaarWVFVo+O2jCRk5UPI3zDcQtQXZngkd
 D+evw1KZg1F187/O6rH6b4qbDuWbS62PBNTswkHuFeJaPmkQC4vf7MLJD
 P6ZWuXlBE1YpFpr1iPmcHVzyMA4cEz2Lomkl5A0xLd3Nm6D3hkNWJ8cZK
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=W8UoJ4pI
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 8ac7132704f3fbd2095abb9459e5303ce8c9e559
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
branch HEAD: 8ac7132704f3fbd2095abb9459e5303ce8c9e559  ice: Fix interface being down after reset with link-down-on-close flag on

elapsed time: 721m

configs tested: 74
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
arc                                 defconfig
alpha                               defconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
i386                             allyesconfig
i386                                defconfig
ia64                        generic_defconfig
sh                   rts7751r2dplus_defconfig
sh                          rsk7203_defconfig
nios2                         3c120_defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
arm                          simpad_defconfig
powerpc                    sam440ep_defconfig
sh                             espt_defconfig
arm                            xcep_defconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
ia64                          tiger_defconfig
powerpc                  iss476-smp_defconfig
m68k                            q40_defconfig
sparc                       sparc64_defconfig
openrisc                         alldefconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
ia64                             allmodconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r041-20220921
hexagon              randconfig-r045-20220921
x86_64                        randconfig-k001
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
