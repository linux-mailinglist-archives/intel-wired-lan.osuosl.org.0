Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A8850CFF6
	for <lists+intel-wired-lan@lfdr.de>; Sun, 24 Apr 2022 08:12:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67DF38299E;
	Sun, 24 Apr 2022 06:12:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b4UTlaxXjQGF; Sun, 24 Apr 2022 06:12:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 548A382404;
	Sun, 24 Apr 2022 06:12:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A3D241BF47F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 06:11:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A05468242D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 06:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HUJ1Qu2RPI5Z for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Apr 2022 06:11:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A88E182404
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 06:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650780714; x=1682316714;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ZHw/jQFFSr83Q89utSH7IIR+z1kNjbyMmLYsVITrQk0=;
 b=EDCbpHn+XviOfYta8RV73zQS4/ek2vDQbyTrscxNBWmNUv9KcD7XQgkY
 olVbBTFTo4TQlldsF0x2WHN9Vfm8ttr2KF/zw8ufVfG5jxisiOcGOZoq+
 UU/LXYN1aSXOowWMwUBgNmInuqaKtR7AwaVOF7ezdnOopJjicbQ5MfT1I
 aj789xN65nHuUYbNMRyUYU0eHADBmTfR1KPeYnbZDUJdWH+9uO6isvQzC
 0+EmYiwqPImZWLIzGzrpkBmPceigj+XD7VjcNrbTDVqE6Wex+5HZ/+URO
 CF1TU+kaHt7teVAbqdWVr9hiGTiy0HA5XBrghcHfv9zouAdDO7ZHoGaug g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10326"; a="245571244"
X-IronPort-AV: E=Sophos;i="5.90,285,1643702400"; d="scan'208";a="245571244"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2022 23:11:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,285,1643702400"; d="scan'208";a="531556224"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 23 Apr 2022 23:11:52 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1niVTM-00016B-65;
 Sun, 24 Apr 2022 06:11:52 +0000
Date: Sun, 24 Apr 2022 14:10:51 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6264e9eb.0tCDFjZ2ByJAWS9i%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 f2714bd3e8156d2e2e78b913095720cccc134489
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
branch HEAD: f2714bd3e8156d2e2e78b913095720cccc134489  ice: fix PTP stale Tx timestamps cleanup

elapsed time: 1935m

configs tested: 89
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
arm                        shmobile_defconfig
powerpc                       holly_defconfig
m68k                        m5407c3_defconfig
m68k                          atari_defconfig
sh                          rsk7203_defconfig
arm                        trizeps4_defconfig
sh                           se7751_defconfig
arc                          axs103_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220422
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
nios2                               defconfig
arc                              allyesconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
riscv                randconfig-c006-20220422
mips                 randconfig-c004-20220422
x86_64                        randconfig-c007
i386                          randconfig-c001
arm                  randconfig-c002-20220422
powerpc              randconfig-c003-20220422
powerpc                 mpc8315_rdb_defconfig
powerpc                       ebony_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r041-20220422
riscv                randconfig-r042-20220422
hexagon              randconfig-r045-20220422

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
