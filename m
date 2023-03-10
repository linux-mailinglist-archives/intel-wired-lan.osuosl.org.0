Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6171A6B3C05
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 11:28:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F272260B20;
	Fri, 10 Mar 2023 10:28:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F272260B20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678444104;
	bh=0oFZcx+jPGoKtXdAA0uSmS7aTMnUwWOtrvK2Qqul+eA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wAYNsQrs5UMuGcRfZu8HIbqYPEpmdh4Bq5tOVCtDWTFHDytlA2MekQdMsoR4Cc4Uq
	 H/feKONglJvfYGbSqbvDrD5N8bam0cKnvRQ6zK8ktNFi+K0of2qdhf8uZBgKrDHXQ9
	 MseX+VjK3N6ZMpKM4D+HdaG/KNWErgj5asvSjQO/+C01Sskra7HZLBcEreBtxP7r31
	 ZgmOi8UDrXxxGQCH59TVUPGwFFvyl07S8/Sb/TvgKtlW5FMrfIIYLSbe7x0eZOa6yK
	 n/3MUpzfhmUNL23kdkGZrrWMjHSBWOTPueBcDDkp9ezOwHDWikDvdzoZd5TnZ/WaQe
	 /U2IWvySUtfXw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HwUJSVjwb8qz; Fri, 10 Mar 2023 10:28:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D1C0460AFB;
	Fri, 10 Mar 2023 10:28:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1C0460AFB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EEB701BF29A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 10:28:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D29C960AFB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 10:28:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D29C960AFB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 87lRbxpsbzl7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 10:28:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D264660AA4
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D264660AA4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 10:28:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="336716972"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="336716972"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 02:28:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="801530704"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="801530704"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 10 Mar 2023 02:28:14 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1paZyv-0003l8-1d;
 Fri, 10 Mar 2023 10:28:13 +0000
Date: Fri, 10 Mar 2023 18:27:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <640b0628.7ZIGjiGztyb+STwd%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678444096; x=1709980096;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=EAdYGAf8Tw9wI+S6nn/RovuSsB+MVlz9UtA7Lr8smOc=;
 b=UEinHCuc3KXhZyv/e2UOW7co7jmNmAO55iDfETltuUgT9ReT2V/DXFh5
 2ntkZFdPiQCiCiDQkJo4brJ8/zGBjQYvr+IUcFL5/C4DyrDkq3c90plGO
 NKRfY0iEkiM+eOit/ktTxkimjPa29VBqUQaNKplTfwiopG2Lllsx0QzK0
 gU5ZZll6lW/duttCzX7phhQ/IXDdwwiQtUij+V3uToQS+lhGV5OO7N6bQ
 CR5uvCSLj2ISLofzPPosSB0liaTHRn24PDyLnNk+xY84NesDChSV6QMnN
 PkbGDuW3x3GdxGY6VuwmcSBeQl6b0nRUdaEYspzt/y++BBx1/lDjvcje+
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UEinHCuc
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 e213ced19befc09d6d6913799053b67896596cd1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: e213ced19befc09d6d6913799053b67896596cd1  i40e: add support for XDP multi-buffer Rx

elapsed time: 724m

configs tested: 109
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r035-20230308   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r004-20230308   gcc  
arc          buildonly-randconfig-r005-20230308   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r023-20230308   gcc  
arc                  randconfig-r043-20230308   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                          ep93xx_defconfig   clang
arm                        mvebu_v5_defconfig   clang
arm                  randconfig-r001-20230308   clang
arm                  randconfig-r006-20230308   clang
arm                  randconfig-r011-20230308   gcc  
arm                  randconfig-r016-20230308   gcc  
arm                  randconfig-r046-20230308   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r041-20230308   clang
hexagon              randconfig-r045-20230308   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
i386                          randconfig-c001   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r002-20230308   gcc  
ia64                 randconfig-r033-20230308   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r024-20230308   gcc  
m68k                 randconfig-r036-20230308   gcc  
microblaze           randconfig-r014-20230308   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r026-20230308   gcc  
nios2        buildonly-randconfig-r003-20230308   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r013-20230308   gcc  
openrisc             randconfig-r022-20230308   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r012-20230308   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                     ep8248e_defconfig   gcc  
powerpc              randconfig-r004-20230308   gcc  
powerpc                    sam440ep_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r015-20230308   clang
riscv                randconfig-r042-20230308   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r021-20230308   clang
s390                 randconfig-r025-20230308   clang
s390                 randconfig-r031-20230308   gcc  
s390                 randconfig-r044-20230308   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r001-20230308   gcc  
sh           buildonly-randconfig-r006-20230308   gcc  
sh                   randconfig-r003-20230308   gcc  
sh                           se7705_defconfig   gcc  
sparc        buildonly-randconfig-r002-20230308   gcc  
sparc                               defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                               rhel-8.3   gcc  
xtensa                              defconfig   gcc  
xtensa               randconfig-r005-20230308   gcc  
xtensa               randconfig-r032-20230308   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
