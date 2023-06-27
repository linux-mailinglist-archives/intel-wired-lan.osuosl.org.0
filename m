Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CCED573F085
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jun 2023 03:28:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A4A04187A;
	Tue, 27 Jun 2023 01:28:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A4A04187A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687829336;
	bh=P1QzMAKRAXWEY1GuMwqhUOmxKoYjlvWHy5D9jjhTxRE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=lkyqC8fg4+FImm0uJbE9aYjm6XJPqAWi92enOSQ1SyNvoTrFAv/igyxwptMlmb/Yg
	 Y+7QkNjdl0OHeddTpYNBXP7jROgvyax/4WPtVT0sZq/2Bj8XlMPlR5mic5zpoz1QkZ
	 Gz/vzaRPj8pRZf5vDR/F0AVel5/0Z93x9KNbQzUL2FLVNgORnwnfbaqY4O7oeqpeKX
	 DPoxvqjYYcbNgQ3zilmVkJS3lN1lcIuG1gaYou3rLf8SeKKSU8dxBKcYrwxcWQrJmn
	 iPwYgvYYzqgG3+2zz/nUQmPOpvuFG7Bk9PS7Lzv6Hmx8p4owY6lhqyfohwbacSBvc8
	 4gu74FEgt8SgQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UjHp5OHtC-6u; Tue, 27 Jun 2023 01:28:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E593F41619;
	Tue, 27 Jun 2023 01:28:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E593F41619
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 799AA1BF955
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 01:28:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5172A81446
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 01:28:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5172A81446
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f38CtqYINFJH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jun 2023 01:28:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35E568143A
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 35E568143A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 01:28:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="341779975"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="341779975"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 18:28:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="710433396"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="710433396"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 26 Jun 2023 18:28:46 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qDxVd-000BWW-24
 for intel-wired-lan@lists.osuosl.org; Tue, 27 Jun 2023 01:28:45 +0000
Date: Tue, 27 Jun 2023 09:28:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306270936.Sg7rCTtT-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687829328; x=1719365328;
 h=date:from:to:subject:message-id;
 bh=/WAZFYKHISVBPGtqJPe31fLaW8E5CjitexO6xRBwiAo=;
 b=ONYflbCydoXeFVhbR1T5znlANjSGghIILqgz9W+UmxTSrBWAEFqvGruE
 oQ6C3Fkrv/3VBwfmFdmjnHfd9eXm24mq484RZTN5e98E1Y3wirOEXs3wf
 6B6oa0NfKUWRqVK6zDF939dSXYNM2ati9ab5TjHlhPQVLel/pJuevGBoC
 LCYMM6ZOcwttGOQ3WyCZ0A/K7S9PFvi86/Rb8zWV4RbMrqbCWtEt6e0Jx
 Sf8sjyAZOMg/ik4qCHObj7OnSnb4c7FwvpcERsRb52BgWtnK2Pe6n0OCc
 OiViS9HcbNUfw9WpJAxjsj9bG6YuJRJlvTPoN1vrtIaj5RTbSr6plD1/B
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ONYflbCy
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 b7a0345723385c3cc0438cf4266ccc110dc7b583
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
branch HEAD: b7a0345723385c3cc0438cf4266ccc110dc7b583  ice: use ice_down_up() where applicable

elapsed time: 6097m

configs tested: 108
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r036-20230622   gcc  
arc                  randconfig-r043-20230622   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         at91_dt_defconfig   gcc  
arm                        clps711x_defconfig   gcc  
arm                                 defconfig   gcc  
arm                          gemini_defconfig   gcc  
arm                        keystone_defconfig   gcc  
arm                  randconfig-r004-20230622   gcc  
arm                  randconfig-r006-20230622   gcc  
arm                  randconfig-r026-20230622   clang
arm                  randconfig-r046-20230622   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r022-20230622   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r015-20230622   gcc  
csky                 randconfig-r021-20230622   gcc  
hexagon              randconfig-r005-20230622   clang
hexagon              randconfig-r041-20230622   clang
hexagon              randconfig-r045-20230622   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230622   clang
i386         buildonly-randconfig-r005-20230622   clang
i386         buildonly-randconfig-r006-20230622   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230622   clang
i386                 randconfig-i002-20230622   clang
i386                 randconfig-i003-20230622   clang
i386                 randconfig-i004-20230622   clang
i386                 randconfig-i005-20230622   clang
i386                 randconfig-i006-20230622   clang
i386                 randconfig-i011-20230622   gcc  
i386                 randconfig-i012-20230622   gcc  
i386                 randconfig-i013-20230622   gcc  
i386                 randconfig-i014-20230622   gcc  
i386                 randconfig-i015-20230622   gcc  
i386                 randconfig-i016-20230622   gcc  
i386                 randconfig-r012-20230622   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r035-20230622   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                       bvme6000_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r011-20230622   gcc  
m68k                 randconfig-r032-20230622   gcc  
microblaze           randconfig-r003-20230622   gcc  
microblaze           randconfig-r014-20230622   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                        bcm63xx_defconfig   clang
mips                           ci20_defconfig   gcc  
mips                malta_qemu_32r6_defconfig   clang
nios2                               defconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230622   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      cm5200_defconfig   gcc  
powerpc                       holly_defconfig   gcc  
powerpc                  iss476-smp_defconfig   gcc  
powerpc                     mpc512x_defconfig   clang
powerpc                 mpc8315_rdb_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r013-20230622   gcc  
riscv                randconfig-r042-20230622   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230622   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r001-20230622   gcc  
sh                          rsk7264_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r025-20230622   gcc  
sparc64              randconfig-r016-20230622   gcc  
sparc64              randconfig-r023-20230622   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230622   clang
x86_64       buildonly-randconfig-r002-20230622   clang
x86_64       buildonly-randconfig-r003-20230622   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
