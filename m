Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF2077DB65
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 09:54:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2E5FF414E9;
	Wed, 16 Aug 2023 07:54:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E5FF414E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692172497;
	bh=RwapJlMswCdZJE0UPPoE6VjnXCmVCT62ZuzonMiyeXw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YGNt1fSIQBaGo2KNxGtvx7Y7GgSF9FZVY33fGxQ5Y0fFYqwx1igOhhDhF0XVTfuyO
	 wDGw8NJ9XOSRK4UcXvqxHVKCNbsxOX3wBwVjXOLckBFz2RhEuvI9XXIO5JeQCLzO2N
	 IyBIt4sE+odWfuBTldOafe6Mmmo965ANtvP73rG0yxBPI9Kc+/ybG/7j0v2P4QBRnl
	 GfPKruDIXafQMCzA5TsmGuwCoEo1QQoLGZxcaCPJJxPjYw0U5HRNHEa8v1Q0sjVnLa
	 mVNfdRuIjDGqC2ODKSMhOT5aOb/LCBOnJWpWlkKoNufJ79ZVqXNv2VWHEvzhu6TzGc
	 aVJHPjgtJ+1RQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MD1WJXZHZor0; Wed, 16 Aug 2023 07:54:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6B56E4038E;
	Wed, 16 Aug 2023 07:54:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B56E4038E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F3A501BF3BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 07:54:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D58C9822A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 07:54:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D58C9822A5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IMlm0SG55OOy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 07:54:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D4A42822A2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 07:54:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4A42822A2
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="458821597"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="458821597"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 00:54:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="877681000"
Received: from lkp-server02.sh.intel.com (HELO a9caf1a0cf30) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 16 Aug 2023 00:54:51 -0700
Received: from kbuild by a9caf1a0cf30 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qWBMc-00006x-26
 for intel-wired-lan@lists.osuosl.org; Wed, 16 Aug 2023 07:54:46 +0000
Date: Wed, 16 Aug 2023 15:48:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308161525.15rNIfl7-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692172488; x=1723708488;
 h=date:from:to:subject:message-id;
 bh=DVIK+JHA+h2wyrhr2H9eG/Qxk0lolJAuljj2d5ui0N4=;
 b=CTFfzosBiRLsM5E7M05BnlpY8NKacywyMdRtl3EgCPjuNxI/f3dozcAR
 9OIqDnnS9WR7bqOvMj15wxy638EnF/mbiO3UHRrnLeRqNQ8ds0TFQUABo
 9Q4tOih4/pM5u5+lkOpw2SXwp72vgzU2VtJ8AedHre1g0WFv3cCBTlUvP
 wbKyJQ/XxUHaXgt3KMrNkq0WE2bAEnMzHsr32c5LT+yZBLArIJZGSlPe+
 siWF3Q7y1dBA0qU9Qk12XKulcD9rjI/yMXt1hjfrzrtLYGOEtA/zNtAHI
 OxfdV6nRknU/hLHci8VcZsKq/sXKEfPpZ0lpO2rohSAoPMB2FNxSrjfft
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CTFfzosB
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 ed75233dd94dfac46fc6a6b0862d2492ffa6a752
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: ed75233dd94dfac46fc6a6b0862d2492ffa6a752  ice: add documentation for FW logging

elapsed time: 837m

configs tested: 145
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r006-20230816   gcc  
alpha                randconfig-r016-20230816   gcc  
alpha                randconfig-r022-20230816   gcc  
alpha                randconfig-r025-20230816   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                 nsimosci_hs_smp_defconfig   gcc  
arc                  randconfig-r006-20230816   gcc  
arc                  randconfig-r021-20230816   gcc  
arc                  randconfig-r043-20230816   gcc  
arm                              alldefconfig   clang
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                       multi_v4t_defconfig   gcc  
arm                  randconfig-r036-20230816   clang
arm                  randconfig-r046-20230816   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r032-20230816   gcc  
csky                 randconfig-r034-20230816   gcc  
hexagon              randconfig-r016-20230816   clang
hexagon              randconfig-r033-20230816   clang
hexagon              randconfig-r041-20230816   clang
hexagon              randconfig-r045-20230816   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230816   gcc  
i386         buildonly-randconfig-r005-20230816   gcc  
i386         buildonly-randconfig-r006-20230816   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230816   gcc  
i386                 randconfig-i002-20230816   gcc  
i386                 randconfig-i003-20230816   gcc  
i386                 randconfig-i004-20230816   gcc  
i386                 randconfig-i005-20230816   gcc  
i386                 randconfig-i006-20230816   gcc  
i386                 randconfig-i011-20230816   clang
i386                 randconfig-i012-20230816   clang
i386                 randconfig-i013-20230816   clang
i386                 randconfig-i014-20230816   clang
i386                 randconfig-i015-20230816   clang
i386                 randconfig-i016-20230816   clang
i386                 randconfig-r023-20230816   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r031-20230816   gcc  
m68k                             alldefconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r013-20230816   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                         cobalt_defconfig   gcc  
mips                        qi_lb60_defconfig   gcc  
mips                 randconfig-r003-20230816   clang
mips                 randconfig-r011-20230816   gcc  
mips                 randconfig-r015-20230816   gcc  
mips                         rt305x_defconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r031-20230816   gcc  
openrisc             randconfig-r002-20230816   gcc  
openrisc             randconfig-r023-20230816   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-64bit_defconfig   gcc  
parisc               randconfig-r004-20230816   gcc  
parisc               randconfig-r024-20230816   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                   bluestone_defconfig   clang
powerpc                     ksi8560_defconfig   clang
powerpc                       maple_defconfig   gcc  
powerpc                 mpc834x_itx_defconfig   gcc  
powerpc                      tqm8xx_defconfig   gcc  
powerpc                 xes_mpc85xx_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r012-20230816   clang
riscv                randconfig-r014-20230816   clang
riscv                randconfig-r026-20230816   clang
riscv                randconfig-r042-20230816   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r032-20230816   gcc  
s390                 randconfig-r044-20230816   clang
s390                       zfcpdump_defconfig   gcc  
sh                               allmodconfig   gcc  
sh                               j2_defconfig   gcc  
sh                          lboxre2_defconfig   gcc  
sh                   randconfig-r001-20230816   gcc  
sh                   randconfig-r002-20230816   gcc  
sh                   randconfig-r021-20230816   gcc  
sh                   randconfig-r025-20230816   gcc  
sh                              ul2_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r021-20230816   gcc  
sparc                randconfig-r023-20230816   gcc  
sparc                randconfig-r025-20230816   gcc  
sparc                randconfig-r026-20230816   gcc  
sparc                randconfig-r036-20230816   gcc  
sparc64              randconfig-r001-20230816   gcc  
sparc64              randconfig-r004-20230816   gcc  
sparc64              randconfig-r035-20230816   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r005-20230816   clang
um                   randconfig-r033-20230816   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230816   gcc  
x86_64       buildonly-randconfig-r002-20230816   gcc  
x86_64       buildonly-randconfig-r003-20230816   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230816   clang
x86_64               randconfig-x002-20230816   clang
x86_64               randconfig-x003-20230816   clang
x86_64               randconfig-x004-20230816   clang
x86_64               randconfig-x005-20230816   clang
x86_64               randconfig-x006-20230816   clang
x86_64               randconfig-x011-20230816   gcc  
x86_64               randconfig-x012-20230816   gcc  
x86_64               randconfig-x013-20230816   gcc  
x86_64               randconfig-x014-20230816   gcc  
x86_64               randconfig-x015-20230816   gcc  
x86_64               randconfig-x016-20230816   gcc  
x86_64                           rhel-8.3-bpf   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
