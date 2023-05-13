Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7CB70157C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 May 2023 11:06:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7413A42EAC;
	Sat, 13 May 2023 09:06:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7413A42EAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683968781;
	bh=N1iHFXbcogEv13QLZ5hpQDP7he9cUIxLDpOtnnk5iL4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Koj1FBgKkPh+ZITfbPRfHzJ6WOSLvzCuIgrfZ2yscKVW7Jp8xrNEtHWS6Dya0u5DC
	 RGyqH+0BCnFQNO7+mJnlWZoaypCzfTJhbN471KcRUNfjs/1gbUVpEKdJ5DkAtmvdfD
	 oO8MKJ6OB2+cl8kEP9ODuwLm3/Um+g1sXB/gJ3NMInq0qA8LQZCxxQD25DrQYIoArg
	 33ocjM+0UMUk7HVsN0TUTYk19ZJ9A8RyBpU30FFt/XAJNw3QNKFB96JpcLEwOUx3ER
	 4cZUk/5+PHJK3kIE1k8XR8zzT6Hlyh/gKnDG8SkFOqzyaisC1gkL65O6LjJTJfR+K6
	 FzNTEgo/5O3YA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xf05-G-hecYS; Sat, 13 May 2023 09:06:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 04DF241FA9;
	Sat, 13 May 2023 09:06:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04DF241FA9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 757731BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 May 2023 09:06:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E1434011F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 May 2023 09:06:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E1434011F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eeOwEY2qE_Pb for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 May 2023 09:06:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0BCFF400AB
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0BCFF400AB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 May 2023 09:06:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="335468887"
X-IronPort-AV: E=Sophos;i="5.99,271,1677571200"; d="scan'208";a="335468887"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2023 02:06:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="844685130"
X-IronPort-AV: E=Sophos;i="5.99,271,1677571200"; d="scan'208";a="844685130"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 13 May 2023 02:06:08 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pxlCZ-0005Pw-22
 for intel-wired-lan@lists.osuosl.org; Sat, 13 May 2023 09:06:07 +0000
Date: Sat, 13 May 2023 17:05:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230513090537.46r8f%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683968770; x=1715504770;
 h=date:from:to:subject:message-id;
 bh=JIF33ULn7S+Mc3CsnLORcguPZoWyewyubO0bGfGehQA=;
 b=H7tQoKdekAQsoFqbd1MX1lGc/vbR5Txum5mDY9AqUoTcWvSAWeaE2tyo
 PmLh3NrvKC/IhNt2TgZ9vBjw0vN3NoBMp3mNNPW0o9yfepqeWmoN6+7SU
 RHJNaBQuz/rQN7JfVCefnCm0NlAHQVymROnfSbr2DK9iQ765I8kiYy80B
 jjKmlvkQ+vrz3NZ7b6T/fucUSWEX+FK1FkzTX1Y7Vlndc61fFlMXf3J7d
 JcNGXFB57wQxIREdFwgyKq6Iv7Sr6TMHsCo8EE6ouuYrwzJid/FBRnuFq
 oT9tGB9AH8ZPZmu03w9prC2XEmcivED6zSP9Yfgwhwx1r0j1f+esQLNcu
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H7tQoKde
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 5bb40c514c3011a58f8ec66a0c53146d19569648
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 5bb40c514c3011a58f8ec66a0c53146d19569648  ice: Remove LAG+SRIOV mutual exclusion

elapsed time: 861m

configs tested: 137
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r035-20230511   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r036-20230509   gcc  
arc                  randconfig-r043-20230509   gcc  
arc                  randconfig-r043-20230511   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r001-20230512   gcc  
arm                                 defconfig   clang
arm                                 defconfig   gcc  
arm                  randconfig-r001-20230509   clang
arm                  randconfig-r002-20230509   clang
arm                  randconfig-r005-20230511   gcc  
arm                  randconfig-r024-20230512   gcc  
arm                  randconfig-r025-20230509   gcc  
arm                  randconfig-r046-20230509   gcc  
arm                  randconfig-r046-20230511   clang
arm                         s3c6400_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r013-20230513   gcc  
csky                 randconfig-r015-20230513   gcc  
csky                 randconfig-r022-20230512   gcc  
hexagon              randconfig-r005-20230509   clang
hexagon              randconfig-r021-20230511   clang
hexagon              randconfig-r032-20230511   clang
hexagon              randconfig-r041-20230509   clang
hexagon              randconfig-r041-20230511   clang
hexagon              randconfig-r045-20230509   clang
hexagon              randconfig-r045-20230511   clang
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
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r021-20230512   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r003-20230512   gcc  
loongarch    buildonly-randconfig-r005-20230512   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                          hp300_defconfig   gcc  
m68k                 randconfig-r034-20230509   gcc  
microblaze           randconfig-r026-20230509   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                            ar7_defconfig   gcc  
mips                         bigsur_defconfig   gcc  
mips                        qi_lb60_defconfig   clang
mips                 randconfig-r006-20230511   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r012-20230513   gcc  
nios2                randconfig-r022-20230511   gcc  
nios2                randconfig-r023-20230509   gcc  
nios2                randconfig-r033-20230509   gcc  
openrisc                  or1klitex_defconfig   gcc  
openrisc             randconfig-r033-20230511   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230511   gcc  
parisc               randconfig-r003-20230511   gcc  
parisc               randconfig-r035-20230509   gcc  
parisc64                            defconfig   gcc  
powerpc                    adder875_defconfig   gcc  
powerpc                     akebono_defconfig   clang
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                     asp8347_defconfig   gcc  
powerpc                   bluestone_defconfig   clang
powerpc      buildonly-randconfig-r002-20230512   clang
powerpc      buildonly-randconfig-r004-20230512   clang
powerpc                 mpc834x_itx_defconfig   gcc  
powerpc                 xes_mpc85xx_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r021-20230509   clang
riscv                randconfig-r036-20230511   clang
riscv                randconfig-r042-20230509   clang
riscv                randconfig-r042-20230511   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r026-20230511   gcc  
s390                 randconfig-r026-20230512   clang
s390                 randconfig-r031-20230511   clang
s390                 randconfig-r044-20230509   clang
s390                 randconfig-r044-20230511   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r002-20230511   gcc  
sh                   randconfig-r004-20230509   gcc  
sh                   randconfig-r023-20230512   gcc  
sh                   randconfig-r024-20230509   gcc  
sh                   randconfig-r032-20230509   gcc  
sh                           se7722_defconfig   gcc  
sparc        buildonly-randconfig-r006-20230512   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230509   gcc  
sparc                randconfig-r022-20230509   gcc  
sparc64              randconfig-r006-20230509   gcc  
sparc64              randconfig-r025-20230511   gcc  
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

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
