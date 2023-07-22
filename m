Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E0975DA2D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Jul 2023 07:17:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 07D7760E5C;
	Sat, 22 Jul 2023 05:17:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07D7760E5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690003069;
	bh=zLE8qmq7lFnDeZT7rX4tsO2St/5MoKxXhwBwoJTk90M=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=w1iJ1HewUA2n+nLX72xoVsiGZ+tsfFyUC2LPUWFzOLlx0UMv0bIYxPiPut+UUlLiT
	 t8T2ZMv65p4ftLAaDE5NWZ0enMV8MroYCWTmzOlK44yVavbXLDUW929MXGI1GpZtNU
	 XSFX3LZRF4pbUv9qMFC0EebRqelz72tJhhBA4CtuyXVx3eoWd9/qWE7yZsuxKS96xJ
	 plA1ttA//ZB6rpZy2oIfzfTs9ok+Ribh3ijr481u5i+GAugsQHz/geb0VdoNRbY+Tx
	 NlZvdhXHtqDI6C/GKNHGduykof8mg4FiOtdaLvjUIzDGvBLaQF7WkQ06LgDlrA5qh3
	 NAenlcvxDpK6A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VhCm5wQ57rhN; Sat, 22 Jul 2023 05:17:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C4D5660E4B;
	Sat, 22 Jul 2023 05:17:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4D5660E4B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AA4561BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jul 2023 05:17:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8DB9941DE8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jul 2023 05:17:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8DB9941DE8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OxzuBYljYtsW for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Jul 2023 05:17:41 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 49DEE41B85
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jul 2023 05:17:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49DEE41B85
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="370768257"
X-IronPort-AV: E=Sophos;i="6.01,223,1684825200"; d="scan'208";a="370768257"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 22:17:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="790403002"
X-IronPort-AV: E=Sophos;i="6.01,223,1684825200"; d="scan'208";a="790403002"
Received: from lkp-server02.sh.intel.com (HELO 36946fcf73d7) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 21 Jul 2023 22:17:38 -0700
Received: from kbuild by 36946fcf73d7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qN4zq-0007zr-0Q
 for intel-wired-lan@lists.osuosl.org; Sat, 22 Jul 2023 05:17:38 +0000
Date: Sat, 22 Jul 2023 13:17:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307221322.R1GRwdBv-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690003061; x=1721539061;
 h=date:from:to:subject:message-id;
 bh=1Q1eEv58I0HePcu3vjsJTmOctopZCzKjiEbsRoFryFo=;
 b=g5Z/RduopgSn3G8iEtylFS53ifsY4e1tHbiwx31mUd9ahzIVbtVdLtnw
 uINJFcmlpu05Blb9S1oVzJPCrZ8gW/3lcU9KSd8TzWZ1IcXi1z71XW/TK
 hUtFoUICA6VHsbftQFn8vM5YPdfFZut8WUjookBYLnQgCm3EiSSUqyJzn
 vhKoAWSFfYcBdoLVorblvbO8ZKKBLtj+z1K43PwtDgW2n60lce6UO+4ZU
 k1rslGrToZYhlGZvl2OzC3bF74IEai3zEIy88F6r3TjXLFIufxepTKAgR
 nlq+L6rFa/Fz4aqSpBvbDCDTi4m54gTlIY7hOnsbuwCMGqhG6EgiuWsWb
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g5Z/Rduo
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 91896c8acce23d33ed078cffd46a9534b1f82be5
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: 91896c8acce23d33ed078cffd46a9534b1f82be5  iavf: check for removal state before IAVF_FLAG_PF_COMMS_FAILED

elapsed time: 721m

configs tested: 106
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r011-20230720   gcc  
alpha                randconfig-r021-20230720   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r006-20230720   gcc  
arc                  randconfig-r016-20230720   gcc  
arc                  randconfig-r043-20230720   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230720   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r013-20230720   clang
hexagon              randconfig-r024-20230720   clang
hexagon              randconfig-r041-20230720   clang
hexagon              randconfig-r045-20230720   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230720   gcc  
i386         buildonly-randconfig-r005-20230720   gcc  
i386         buildonly-randconfig-r006-20230720   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230721   clang
i386                 randconfig-i002-20230721   clang
i386                 randconfig-i003-20230721   clang
i386                 randconfig-i004-20230721   clang
i386                 randconfig-i005-20230721   clang
i386                 randconfig-i006-20230721   clang
i386                 randconfig-i011-20230721   gcc  
i386                 randconfig-i012-20230721   gcc  
i386                 randconfig-i013-20230721   gcc  
i386                 randconfig-i014-20230721   gcc  
i386                 randconfig-i015-20230721   gcc  
i386                 randconfig-i016-20230721   gcc  
i386                 randconfig-r031-20230720   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r025-20230720   gcc  
microblaze           randconfig-r001-20230720   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230720   gcc  
nios2                randconfig-r012-20230720   gcc  
nios2                randconfig-r026-20230720   gcc  
openrisc             randconfig-r002-20230720   gcc  
openrisc             randconfig-r022-20230720   gcc  
openrisc             randconfig-r035-20230720   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r033-20230720   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230720   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r015-20230720   clang
s390                 randconfig-r044-20230720   clang
sh                               allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r004-20230720   clang
um                   randconfig-r034-20230720   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230720   gcc  
x86_64       buildonly-randconfig-r002-20230720   gcc  
x86_64       buildonly-randconfig-r003-20230720   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r005-20230720   gcc  
x86_64               randconfig-r032-20230720   gcc  
x86_64               randconfig-x001-20230720   clang
x86_64               randconfig-x002-20230720   clang
x86_64               randconfig-x003-20230720   clang
x86_64               randconfig-x004-20230720   clang
x86_64               randconfig-x005-20230720   clang
x86_64               randconfig-x006-20230720   clang
x86_64               randconfig-x011-20230720   gcc  
x86_64               randconfig-x012-20230720   gcc  
x86_64               randconfig-x013-20230720   gcc  
x86_64               randconfig-x014-20230720   gcc  
x86_64               randconfig-x015-20230720   gcc  
x86_64               randconfig-x016-20230720   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
