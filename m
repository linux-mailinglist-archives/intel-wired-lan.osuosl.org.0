Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E07C4F5A12
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Apr 2022 11:34:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AD93940B2A;
	Wed,  6 Apr 2022 09:34:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DT0vVDfibebe; Wed,  6 Apr 2022 09:34:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 650474060C;
	Wed,  6 Apr 2022 09:34:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2F57D1BF95F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Apr 2022 09:34:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2640A81323
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Apr 2022 09:34:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tsKh4XCEwn8x for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Apr 2022 09:33:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 921FA812D6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Apr 2022 09:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649237638; x=1680773638;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=2MPCx9C2XDFB2iwxu1So3hFi+S752/24cCm1DUmAkA0=;
 b=VIbV9ePlUgK7xJ7qTIDB+c05WyZLMLMORdtnIQB+RjaTB3llcMSce5C6
 pDBH0S6IUWdua/PI6269s2cvL1Wls/S0zvkmrwLRSwWNLp0EJqMzfrhhx
 QsBZob9H8Bf5wqCTcjKBGwwGAEuPMg7buXP8MjTSCTmH7/WQ+4RbgU4vN
 zOBRPMyjJqn1IPfo6pzVEfYCrAeNIzxLhSNRdI/KD8uoY+jwh3lUczoCY
 zFUFa4GGV04oIAPzUyz2fyl/ZxSTE8skoI3F68/ItacWdxeiGVHAaw1Ra
 LQUGHwwxZtsI/ovgGwkNVMOHn+qchhOG2EMuvDI6jOkzUOQAZMWuZPx+s A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="260991590"
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="260991590"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 02:33:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="524393751"
Received: from lkp-server02.sh.intel.com (HELO a44fdfb70b94) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 06 Apr 2022 02:33:56 -0700
Received: from kbuild by a44fdfb70b94 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nc232-0004Gv-31;
 Wed, 06 Apr 2022 09:33:56 +0000
Date: Wed, 06 Apr 2022 17:33:33 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <624d5e6d.datvXdVf/Z8T7AGV%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 fb4f0492fef6adc1bbf935650d7fa1f59fe76e52
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: fb4f0492fef6adc1bbf935650d7fa1f59fe76e52  ice: return proper error code in ice_add_adv_rule

elapsed time: 2035m

configs tested: 104
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                              allyesconfig
arm64                               defconfig
i386                          randconfig-c001
m68k                        m5407c3_defconfig
sparc64                          alldefconfig
powerpc                     pq2fads_defconfig
arm                       imx_v6_v7_defconfig
openrisc                  or1klitex_defconfig
mips                        vocore2_defconfig
sh                     magicpanelr2_defconfig
ia64                        generic_defconfig
m68k                       m5249evb_defconfig
arm                           viper_defconfig
arm                          iop32x_defconfig
riscv             nommu_k210_sdcard_defconfig
sparc                       sparc64_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220405
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nios2                               defconfig
arc                              allyesconfig
alpha                               defconfig
csky                                defconfig
nios2                            allyesconfig
alpha                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
parisc64                            defconfig
s390                             allmodconfig
s390                                defconfig
parisc                           allyesconfig
s390                             allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220405
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                                  kexec
x86_64                          rhel-8.3-func
x86_64                               rhel-8.3
x86_64                         rhel-8.3-kunit

clang tested configs:
arm                           sama7_defconfig
powerpc                 mpc836x_rdk_defconfig
mips                          malta_defconfig
mips                          ath79_defconfig
powerpc                      obs600_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220405
hexagon              randconfig-r045-20220405
s390                 randconfig-r044-20220405
riscv                randconfig-r042-20220405

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
