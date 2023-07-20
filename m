Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA5C75AF31
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jul 2023 15:09:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A21F481F7D;
	Thu, 20 Jul 2023 13:09:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A21F481F7D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689858550;
	bh=q6fJ+BNo+NDT0ac08ZzbKyYt6/1YgWpSSVbce45Z1uo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=occCviVy718T66/qlU2L7F/Q10iLDxtnuE5AYKHMWzxRxpn4p0ssQG7KT5TrBAHWP
	 5al10gKJ8t6i5rWJc4nZ/Y/ru6n81hFkRaVmdaUHFQPyUxchGCcpf37KNJn4tKTQLC
	 gGSJLLecK3E73MgeWShFY3ug5fgZtQc71sPQhPJqUzErR0xrY7K3+Kdszk3qhibIds
	 Ccv7aOkmUMM7+3e4FyBaS0XWVtSSJ07TT0qugEi/zrXBSxrW8Fjf6+AixDCemfN99y
	 ghlgYRoTL0OiVys2E2ZzFbp/iPfZg77dIgfzqWvNK3m7zXdqfz8hg32WLIPvhIR78r
	 0OfAH3hrYJ14g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QTek__BCw2SW; Thu, 20 Jul 2023 13:09:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E8CB82199;
	Thu, 20 Jul 2023 13:09:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E8CB82199
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 845841BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 13:09:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 674EB416E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 13:09:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 674EB416E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c4TRUmjRHQuN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jul 2023 13:09:02 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EC0F0401C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 13:09:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC0F0401C0
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="453098108"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="453098108"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 06:07:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="971023679"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="971023679"
Received: from lkp-server02.sh.intel.com (HELO 36946fcf73d7) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 20 Jul 2023 06:07:04 -0700
Received: from kbuild by 36946fcf73d7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qMTN2-00066i-0C
 for intel-wired-lan@lists.osuosl.org; Thu, 20 Jul 2023 13:07:04 +0000
Date: Thu, 20 Jul 2023 21:06:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307202121.8Hr3rQTP-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689858541; x=1721394541;
 h=date:from:to:subject:message-id;
 bh=cGDOPO23dKHar7/Ujr2XwqIcFsuGFS1lXGAbk9wlBzo=;
 b=Ng7jv4igjXmtIb4w6I5JarA5gNZ2KiyGr6EPnPjyeQGNFplWxPqxgeUY
 ClP/kOOfStJt7ylATGRBRnrffX8HrPSj1x3lwtP/xsG238DoOKR0z0L3W
 +VqULlCuZRXoDMcEy1CPYwAQ9U6yPc7DKaxGdbQW/UPakA+PyzVppEX62
 gfo5ljXi+F7gTkNrpLdF3+2LrVrqW7ae9ABlP/rv2HsLmYKujkzzBbDWm
 tiB9gnOijpAiCnhrt+CwXNS1P7KFo5b7CsOVnqgdt1R1q9YgdYKmdX1ms
 aOI8OK1em7IDK2V+jcYySujmhVmGRlGI9+5iM2fNKukB+hMTzu+iMbrAO
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ng7jv4ig
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 70ca4026d2e27fc012fa687a0951d2cc8758035d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 70ca4026d2e27fc012fa687a0951d2cc8758035d  i40e: Fix an NULL vs IS_ERR() bug for debugfs_create_dir()

elapsed time: 725m

configs tested: 138
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230720   gcc  
alpha                randconfig-r013-20230720   gcc  
alpha                randconfig-r033-20230720   gcc  
alpha                randconfig-r036-20230720   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r005-20230720   gcc  
arc                  randconfig-r022-20230720   gcc  
arc                  randconfig-r043-20230720   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                           h3600_defconfig   gcc  
arm                  randconfig-r004-20230720   clang
arm                  randconfig-r011-20230720   gcc  
arm                  randconfig-r046-20230720   gcc  
arm                             rpc_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r014-20230720   clang
arm64                randconfig-r032-20230720   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r032-20230720   clang
hexagon              randconfig-r041-20230720   clang
hexagon              randconfig-r045-20230720   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230720   gcc  
i386         buildonly-randconfig-r005-20230720   gcc  
i386         buildonly-randconfig-r006-20230720   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230720   gcc  
i386                 randconfig-i002-20230720   gcc  
i386                 randconfig-i003-20230720   gcc  
i386                 randconfig-i004-20230720   gcc  
i386                 randconfig-i005-20230720   gcc  
i386                 randconfig-i006-20230720   gcc  
i386                 randconfig-i011-20230720   clang
i386                 randconfig-i012-20230720   clang
i386                 randconfig-i013-20230720   clang
i386                 randconfig-i014-20230720   clang
i386                 randconfig-i015-20230720   clang
i386                 randconfig-i016-20230720   clang
i386                 randconfig-r036-20230720   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r024-20230720   gcc  
loongarch            randconfig-r034-20230720   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                          atari_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r036-20230720   gcc  
microblaze           randconfig-r032-20230720   gcc  
microblaze           randconfig-r035-20230720   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                        bcm63xx_defconfig   clang
mips                 randconfig-r006-20230720   clang
mips                 randconfig-r035-20230720   clang
nios2                               defconfig   gcc  
nios2                randconfig-r002-20230720   gcc  
nios2                randconfig-r023-20230720   gcc  
nios2                randconfig-r025-20230720   gcc  
openrisc             randconfig-r021-20230720   gcc  
openrisc             randconfig-r033-20230720   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230720   gcc  
parisc               randconfig-r012-20230720   gcc  
parisc               randconfig-r035-20230720   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      arches_defconfig   gcc  
powerpc                      chrp32_defconfig   gcc  
powerpc                       holly_defconfig   gcc  
powerpc                      katmai_defconfig   clang
powerpc                    mvme5100_defconfig   clang
powerpc              randconfig-r014-20230720   clang
powerpc                     tqm8548_defconfig   gcc  
powerpc                        warp_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230720   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r016-20230720   clang
s390                 randconfig-r031-20230720   gcc  
s390                 randconfig-r044-20230720   clang
sh                               allmodconfig   gcc  
sh                          rsk7203_defconfig   gcc  
sh                          sdk7786_defconfig   gcc  
sh                           sh2007_defconfig   gcc  
sh                            titan_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sh                          urquell_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r015-20230720   gcc  
sparc                randconfig-r026-20230720   gcc  
sparc64              randconfig-r031-20230720   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r034-20230720   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230720   gcc  
x86_64       buildonly-randconfig-r002-20230720   gcc  
x86_64       buildonly-randconfig-r003-20230720   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r016-20230720   clang
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
xtensa                    xip_kc705_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
