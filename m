Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C615C23BDAA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Aug 2020 18:00:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 133222002C;
	Tue,  4 Aug 2020 16:00:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0Y7VYT+2lzNh; Tue,  4 Aug 2020 16:00:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7992D203BB;
	Tue,  4 Aug 2020 16:00:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CBADD1BF5A0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Aug 2020 16:00:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C49198558D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Aug 2020 16:00:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AWOGpQoeabst for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Aug 2020 16:00:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5844985039
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Aug 2020 16:00:19 +0000 (UTC)
IronPort-SDR: dD+qfZZZ7WbIazZb7v/F9zezGb8PyPMvmtU/QaO94TBVp3wP3FQfU5+O62SpYxAsylv/f9223X
 BWjBiSJuqwUg==
X-IronPort-AV: E=McAfee;i="6000,8403,9703"; a="170426872"
X-IronPort-AV: E=Sophos;i="5.75,434,1589266800"; d="scan'208";a="170426872"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2020 09:00:16 -0700
IronPort-SDR: gF9IZcnTOw3jJvXWEwGtRp16a+ptBvppd/UILpVhmwGCwRfPRjz12zSxDO/gBLbZJrzNvCyhu+
 LxFpn56JRn7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,434,1589266800"; d="scan'208";a="330657502"
Received: from lkp-server02.sh.intel.com (HELO 37a337f97289) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Aug 2020 09:00:15 -0700
Received: from kbuild by 37a337f97289 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1k2zMM-0000AQ-9n; Tue, 04 Aug 2020 16:00:14 +0000
Date: Tue, 04 Aug 2020 23:59:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5f2985db.8ReD+kPU5GZzyTKl%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 8e94cc412bfec0a9ff51f8d7b876f285f5572c92
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git  dev-queue
branch HEAD: 8e94cc412bfec0a9ff51f8d7b876f285f5572c92  igc: Add new device ID's

elapsed time: 724m

configs tested: 107
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
h8300                     edosk2674_defconfig
arm                        shmobile_defconfig
c6x                                 defconfig
arm                            mmp2_defconfig
arm                         lubbock_defconfig
arc                     nsimosci_hs_defconfig
sh                           se7206_defconfig
arm                           spitz_defconfig
arm                        neponset_defconfig
sh                          rsk7201_defconfig
s390                       zfcpdump_defconfig
c6x                        evmc6457_defconfig
m68k                         apollo_defconfig
mips                           mtx1_defconfig
arm                            pleb_defconfig
m68k                          multi_defconfig
arm                       netwinder_defconfig
c6x                              alldefconfig
powerpc                           allnoconfig
arm                          gemini_defconfig
powerpc                     pq2fads_defconfig
arm                   milbeaut_m10v_defconfig
powerpc                     skiroot_defconfig
sh                         ecovec24_defconfig
sh                        sh7757lcr_defconfig
powerpc                      chrp32_defconfig
s390                          debug_defconfig
parisc                           alldefconfig
parisc                generic-32bit_defconfig
c6x                        evmc6472_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
x86_64               randconfig-a006-20200804
x86_64               randconfig-a001-20200804
x86_64               randconfig-a004-20200804
x86_64               randconfig-a005-20200804
x86_64               randconfig-a002-20200804
x86_64               randconfig-a003-20200804
i386                 randconfig-a005-20200804
i386                 randconfig-a004-20200804
i386                 randconfig-a001-20200804
i386                 randconfig-a003-20200804
i386                 randconfig-a002-20200804
i386                 randconfig-a006-20200804
i386                 randconfig-a004-20200803
i386                 randconfig-a005-20200803
i386                 randconfig-a001-20200803
i386                 randconfig-a002-20200803
i386                 randconfig-a003-20200803
i386                 randconfig-a006-20200803
x86_64               randconfig-a013-20200803
x86_64               randconfig-a011-20200803
x86_64               randconfig-a012-20200803
x86_64               randconfig-a016-20200803
x86_64               randconfig-a015-20200803
x86_64               randconfig-a014-20200803
i386                 randconfig-a011-20200804
i386                 randconfig-a012-20200804
i386                 randconfig-a013-20200804
i386                 randconfig-a014-20200804
i386                 randconfig-a015-20200804
i386                 randconfig-a016-20200804
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
