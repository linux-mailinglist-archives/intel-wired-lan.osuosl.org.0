Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E886FD4E4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 May 2023 06:04:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6183427C0;
	Wed, 10 May 2023 04:04:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6183427C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683691466;
	bh=F7lBk0TTNMEr5yqQbxgAH9a88NfIVEEqoMLLUOhBB3k=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rtune93dsVrVbNVrmjAUuZ/0ZBNfW+iUrhd9TA9D+HzAnZ9QzSNtt+sG1dkKG8k3i
	 Vg4iCNrMJxvHqnyodnCNbU1TlMy1Ii9mWn+TICFX4emk4G+nKwi/N+/GMyhPrN1j9u
	 wrWYFzZSjdc2eQSO0ov7YXSJ17kQm3FYRZrVAW/C836deIjz91kxjMb+fDdmxpq28h
	 /ycM5kHUsddGYKIYl7xOF0uPQwEgBdMHXgBCDXQkDQYoSRivR2kirlUzixDVj8hmRH
	 VVi0i/lQBIDMfhmrA6YF6yPUC30GZxnaJSpn0HDLRPa9dWe3uoUiqU7yUhtfEKEv/A
	 DpC+Yg1zS1i7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zajM-9aEXf86; Wed, 10 May 2023 04:04:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E5C57427CA;
	Wed, 10 May 2023 04:04:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E5C57427CA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 806F01BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 May 2023 04:04:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0EC3F41299
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 May 2023 04:04:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0EC3F41299
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0P_itPGE-O42 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 May 2023 04:04:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B65C3427C0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B65C3427C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 May 2023 04:04:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="378218186"
X-IronPort-AV: E=Sophos;i="5.99,263,1677571200"; d="scan'208";a="378218186"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 21:04:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="699141351"
X-IronPort-AV: E=Sophos;i="5.99,263,1677571200"; d="scan'208";a="699141351"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 09 May 2023 21:04:09 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pwb3g-0002rM-2p
 for intel-wired-lan@lists.osuosl.org; Wed, 10 May 2023 04:04:08 +0000
Date: Wed, 10 May 2023 12:03:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230510040344.A-COm%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683691451; x=1715227451;
 h=date:from:to:subject:message-id;
 bh=xgrxua11MCfL+t8cKTlpenO+qd42LwAkX6MpEWZDMBI=;
 b=jLuu3rlWdpUx1zE5acgy/YBukXEjLN4Amc4Njj3Pm6TEU3rQGjv8tbP3
 phetlvhzOZSlPEd47V60UyF+rP+i4qRO8sISgxf345JpeHXmZ8T86qGSV
 9jsNH6/Z1wm9nNnvgrlW8fY+C1fkPpYIp/3NgW1AzlVxIC6Yv4GnT313t
 eYR1JD42vPU4+kx0vLtYLhwOLjzENizbG8zhif/GmuRhqem+IxaryY0dj
 mm9XyjwbtpuVBuW6XH4wxvvUDvLDewywue/nG4sjfwjwvKsi//kILctcv
 q5wL1L8jmAIFr1DWV3jLqLGS6WFJqCmzCDXfotPm+BOYlv4hcEkcM2MwP
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jLuu3rlW
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 162bd18eb55adf464a0fa2b4144b8d61c75ff7c2
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 162bd18eb55adf464a0fa2b4144b8d61c75ff7c2  linux/dim: Do nothing if no time delta between samples

elapsed time: 1114m

configs tested: 171
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r005-20230509   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230509   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r004-20230509   gcc  
arc          buildonly-randconfig-r005-20230509   gcc  
arc          buildonly-randconfig-r006-20230509   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r011-20230509   gcc  
arc                  randconfig-r014-20230509   gcc  
arc                  randconfig-r023-20230509   gcc  
arc                  randconfig-r031-20230509   gcc  
arc                  randconfig-r036-20230509   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                          gemini_defconfig   gcc  
arm                          moxart_defconfig   clang
arm                        neponset_defconfig   clang
arm                  randconfig-r024-20230509   gcc  
arm                           sama5_defconfig   gcc  
arm                          sp7021_defconfig   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r006-20230509   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r003-20230509   gcc  
arm64                randconfig-r004-20230509   gcc  
arm64                randconfig-r015-20230509   clang
csky                                defconfig   gcc  
csky                 randconfig-r014-20230509   gcc  
csky                 randconfig-r032-20230509   gcc  
hexagon              randconfig-r024-20230509   clang
hexagon              randconfig-r041-20230509   clang
hexagon              randconfig-r041-20230510   clang
hexagon              randconfig-r045-20230509   clang
hexagon              randconfig-r045-20230510   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a004   clang
i386                          randconfig-a006   clang
i386                 randconfig-a011-20230508   gcc  
i386                 randconfig-a012-20230508   gcc  
i386                          randconfig-a012   gcc  
i386                 randconfig-a013-20230508   gcc  
i386                 randconfig-a014-20230508   gcc  
i386                          randconfig-a014   gcc  
i386                 randconfig-a015-20230508   gcc  
i386                 randconfig-a016-20230508   gcc  
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                      gensparse_defconfig   gcc  
ia64                 randconfig-r012-20230509   gcc  
ia64                 randconfig-r013-20230509   gcc  
ia64                 randconfig-r015-20230509   gcc  
ia64                 randconfig-r023-20230509   gcc  
ia64                 randconfig-r025-20230509   gcc  
ia64                 randconfig-r035-20230509   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r005-20230509   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r013-20230509   gcc  
loongarch            randconfig-r021-20230509   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r021-20230509   gcc  
m68k                 randconfig-r023-20230509   gcc  
m68k                 randconfig-r025-20230509   gcc  
m68k                 randconfig-r034-20230509   gcc  
m68k                           virt_defconfig   gcc  
microblaze   buildonly-randconfig-r002-20230509   gcc  
microblaze   buildonly-randconfig-r003-20230509   gcc  
microblaze           randconfig-r001-20230509   gcc  
microblaze           randconfig-r003-20230509   gcc  
microblaze           randconfig-r036-20230509   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r001-20230509   clang
mips                           gcw0_defconfig   gcc  
mips                 randconfig-r031-20230509   clang
mips                 randconfig-r031-20230510   clang
mips                 randconfig-r035-20230509   clang
nios2        buildonly-randconfig-r001-20230509   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230509   gcc  
nios2                randconfig-r006-20230509   gcc  
nios2                randconfig-r021-20230509   gcc  
nios2                randconfig-r026-20230509   gcc  
nios2                randconfig-r033-20230509   gcc  
openrisc             randconfig-r004-20230509   gcc  
openrisc             randconfig-r022-20230509   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r015-20230509   gcc  
parisc               randconfig-r022-20230509   gcc  
parisc               randconfig-r024-20230509   gcc  
parisc               randconfig-r035-20230509   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                       eiger_defconfig   gcc  
powerpc                      makalu_defconfig   gcc  
powerpc                 mpc8560_ads_defconfig   clang
powerpc              randconfig-r005-20230509   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r002-20230509   clang
riscv        buildonly-randconfig-r004-20230509   clang
riscv                               defconfig   gcc  
riscv                randconfig-r021-20230509   clang
riscv                randconfig-r042-20230509   clang
riscv                randconfig-r042-20230510   clang
riscv                          rv32_defconfig   gcc  
s390                             alldefconfig   clang
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r005-20230509   clang
s390                                defconfig   gcc  
s390                 randconfig-r002-20230509   gcc  
s390                 randconfig-r011-20230509   clang
s390                 randconfig-r034-20230509   gcc  
s390                 randconfig-r044-20230509   clang
s390                 randconfig-r044-20230510   clang
sh                               allmodconfig   gcc  
sh                          landisk_defconfig   gcc  
sh                          r7780mp_defconfig   gcc  
sh                   randconfig-r014-20230509   gcc  
sh                   randconfig-r032-20230509   gcc  
sh                   secureedge5410_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sparc        buildonly-randconfig-r004-20230509   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230509   gcc  
sparc                randconfig-r012-20230509   gcc  
sparc                randconfig-r015-20230509   gcc  
sparc                randconfig-r016-20230509   gcc  
sparc                randconfig-r024-20230509   gcc  
sparc                randconfig-r026-20230509   gcc  
sparc64      buildonly-randconfig-r003-20230509   gcc  
sparc64              randconfig-r006-20230509   gcc  
sparc64              randconfig-r016-20230509   gcc  
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
x86_64                        randconfig-k001   clang
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r001-20230509   gcc  
xtensa                generic_kc705_defconfig   gcc  
xtensa               randconfig-r004-20230509   gcc  
xtensa               randconfig-r022-20230509   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
