Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C66E78E60C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Aug 2023 07:58:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBFE5418BC;
	Thu, 31 Aug 2023 05:58:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBFE5418BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693461508;
	bh=F+VcJu/2btRkk+hmY4mOjbLhkVHt2QkFavAKtrW9Opk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fEFJ96yD1ZrYzwCFJgmQPfjBo/BhEOhFC29fB9XMFxyQkJEGok5A6NpaPn4ZwhWDl
	 7n5G997LQw2/aOUOGm0NC6buwI3hahTGRC9uF9H9OsMMtc9h+dkc1fJU//1Nett5r7
	 D6EWDK/3PtygpRsOShdhCZtHhH17cRPaZtRwulMLwWXkXTI3a/D3HhM3q61FM28HU5
	 s6LadGO5MdCfpzqVwqOgq87QzvfUKDjS1gNNm6zsC6/TJHOqQtF/C3MTzeHbkR0duK
	 IhqxRfvabfUxvxpHqFc2+gDaWDzsCRhUg/G8ivlZHpMvUqV6O+QN0UFSeEhrH8RIIt
	 /ompXmuFe3lpw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iMekYqAxI2XW; Thu, 31 Aug 2023 05:58:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A12B417B9;
	Thu, 31 Aug 2023 05:58:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A12B417B9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EDB6E1BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 05:58:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C4BDA417B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 05:58:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4BDA417B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CD6WrG8tBiXi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Aug 2023 05:58:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1995D40856
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 05:58:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1995D40856
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="406817729"
X-IronPort-AV: E=Sophos;i="6.02,215,1688454000"; d="scan'208";a="406817729"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 22:58:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="862890676"
X-IronPort-AV: E=Sophos;i="6.02,215,1688454000"; d="scan'208";a="862890676"
Received: from lkp-server02.sh.intel.com (HELO daf8bb0a381d) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 30 Aug 2023 22:58:09 -0700
Received: from kbuild by daf8bb0a381d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qbagy-000At0-2Y
 for intel-wired-lan@lists.osuosl.org; Thu, 31 Aug 2023 05:58:08 +0000
Date: Thu, 31 Aug 2023 13:57:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308311336.q0isMSzZ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693461499; x=1724997499;
 h=date:from:to:subject:message-id;
 bh=BNF6ycRcIVW6jGfDVLbfDdZ5aC3kXD31BSvj6mmWW0s=;
 b=h/l4LUEbVuOFnpsXIkY/1KoII4u+BhWszp+xcCCrmi/OSDtLIWREyCh7
 FbeFUyZwf+tOiVgs4Y1FmHipJWfylSasTY9/ECEHiDIY+fa2gEZnknrvD
 xa6r5A9UEjT3T6zxoTN/w0qjWE+4IDA/OjB0lslb1uZKUibb7KcneOnc5
 7zTnJGYGTP97MozwKZKJGTMvxjL/DbK+DRtd4KBPKc9Ln417Umi4j71vV
 HWSrrQ8tONQwCLNl9YRhGgUF2T5108OK0N/tc0IKFFOCWGtNA5Lu0r7ka
 JUhtBw1hFQCr2sEs3m4T7t1HO4WYKAw2JJDmzqsJcoKF2k3//FoB4CnWI
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h/l4LUEb
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 4de86939aa2a781ffbd02b9058c70a2588d99352
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
branch HEAD: 4de86939aa2a781ffbd02b9058c70a2588d99352  ice: add drop rule matching on not active lport

elapsed time: 1836m

configs tested: 161
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20230830   gcc  
arc                  randconfig-r033-20230830   gcc  
arc                  randconfig-r036-20230830   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20230830   clang
arm                  randconfig-r011-20230830   clang
arm                  randconfig-r013-20230830   clang
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230830   clang
arm64                randconfig-r002-20230830   clang
arm64                randconfig-r012-20230830   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
hexagon               randconfig-001-20230830   clang
hexagon               randconfig-002-20230830   clang
hexagon              randconfig-r026-20230830   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230830   clang
i386         buildonly-randconfig-002-20230830   clang
i386         buildonly-randconfig-003-20230830   clang
i386         buildonly-randconfig-004-20230830   clang
i386         buildonly-randconfig-005-20230830   clang
i386         buildonly-randconfig-006-20230830   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230830   clang
i386                  randconfig-002-20230830   clang
i386                  randconfig-003-20230830   clang
i386                  randconfig-004-20230830   clang
i386                  randconfig-005-20230830   clang
i386                  randconfig-006-20230830   clang
i386                  randconfig-011-20230830   gcc  
i386                  randconfig-012-20230830   gcc  
i386                  randconfig-013-20230830   gcc  
i386                  randconfig-014-20230830   gcc  
i386                  randconfig-015-20230830   gcc  
i386                  randconfig-016-20230830   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230830   gcc  
loongarch            randconfig-r022-20230830   gcc  
loongarch            randconfig-r035-20230830   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze           randconfig-r003-20230830   gcc  
microblaze           randconfig-r014-20230830   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc             randconfig-r023-20230830   gcc  
openrisc             randconfig-r031-20230830   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r004-20230830   gcc  
parisc               randconfig-r024-20230830   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230830   clang
riscv                randconfig-r025-20230830   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230830   gcc  
s390                 randconfig-r006-20230830   clang
s390                 randconfig-r016-20230830   gcc  
s390                 randconfig-r032-20230830   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                   randconfig-r005-20230830   gcc  
sh                   randconfig-r021-20230830   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r034-20230830   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230830   clang
x86_64       buildonly-randconfig-002-20230830   clang
x86_64       buildonly-randconfig-003-20230830   clang
x86_64       buildonly-randconfig-004-20230830   clang
x86_64       buildonly-randconfig-005-20230830   clang
x86_64       buildonly-randconfig-006-20230830   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20230830   gcc  
x86_64                randconfig-002-20230830   gcc  
x86_64                randconfig-003-20230830   gcc  
x86_64                randconfig-004-20230830   gcc  
x86_64                randconfig-005-20230830   gcc  
x86_64                randconfig-006-20230830   gcc  
x86_64                randconfig-011-20230830   clang
x86_64                randconfig-012-20230830   clang
x86_64                randconfig-013-20230830   clang
x86_64                randconfig-014-20230830   clang
x86_64                randconfig-015-20230830   clang
x86_64                randconfig-016-20230830   clang
x86_64                randconfig-071-20230830   clang
x86_64                randconfig-072-20230830   clang
x86_64                randconfig-073-20230830   clang
x86_64                randconfig-074-20230830   clang
x86_64                randconfig-075-20230830   clang
x86_64                randconfig-076-20230830   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa               randconfig-r015-20230830   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
