Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 57EE56F7C21
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 May 2023 06:57:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E639460EFE;
	Fri,  5 May 2023 04:57:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E639460EFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683262632;
	bh=nUu+99cr+CHkj/VhMNROkMo12lXZpV1/Kzsc6o1M0/U=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2etp5c+o4laXkEoNdaVgiLRQqeovM4rhEcvQNPMwZyYnc0tjWZRQFlp8CO58oCOLL
	 E9iQfNnruW7wTknQNHAWSRpuSopgUi9/KDtPsroYi9xo60H3CdONbBrIqkojHJGF7I
	 XtpN7ut0LCydmaozSD2//JGE6TI629vm6V+Bw37oplbAcrpUAXEBy4gnPBjWlmTLAH
	 VVlZnleyABOcv38N31efTHwdtrFRKer0mkdCKTqJi0jqkoajusBU0hwGn1DnW3N3gH
	 yjyx7WDWPUyTAgcLT9AdY4vs1JhLCDJvMO6gf0Sk9eI9R4MuG5cLUu/8ZKmOocnWvc
	 Buisa8z4nDHIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jHxX9z6z1ad0; Fri,  5 May 2023 04:57:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BC7460D65;
	Fri,  5 May 2023 04:57:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8BC7460D65
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2C7021BF39F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 04:57:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0AE8784167
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 04:57:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0AE8784167
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WxFviw2x3qZD for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 May 2023 04:57:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E8718405B
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E8718405B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 04:57:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="346600365"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="346600365"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 21:56:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="766886276"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="766886276"
Received: from lkp-server01.sh.intel.com (HELO fe5d646e317d) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 04 May 2023 21:56:55 -0700
Received: from kbuild by fe5d646e317d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1punV0-00009a-2a
 for intel-wired-lan@lists.osuosl.org; Fri, 05 May 2023 04:56:54 +0000
Date: Fri, 05 May 2023 12:56:05 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230505045605.BCl8a%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683262625; x=1714798625;
 h=date:from:to:subject:message-id;
 bh=QtS0clQ9aBJ+9Ud5EXEjx1HvTZpfwhj5J/5hxs9z/1M=;
 b=Q7iU7V5jcSGAWD4tgDtyV7wAArxTODdI0opw6grqvw6KocPgYLQGPiXd
 Byd7MD3UHUUtu+HkJYSIujBL4wSwgFRayzxTjawyqVbN51AJgFSZ6G5Dc
 tppspil6uUtSMRBPhVgolH1YBcTAk6bLsYlZxD1wAJdPLga4rGDXUAj5F
 J8GtI4qcyF4420cDWGcTqocM97dcw5ju4S5hFRxZZ3BhMvyvaVvkxDeqm
 iLcCz/lIRLXoyaQcX9fjK/5Y1Ega9IT0IWXON4/zrs6BKpaypEBM+d3ZA
 5etvalq4Mm3i6iwRh1MG62/s2Lt3ZQdXCfAkkgjbHhD4IA7mboBBcdMMa
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q7iU7V5j
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 160517a6c63ee745114d31062aae038e5ede85ab
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
branch HEAD: 160517a6c63ee745114d31062aae038e5ede85ab  iavf: remove mask from iavf_irq_enable_queues()

elapsed time: 723m

configs tested: 158
configs skipped: 18

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r011-20230430   gcc  
alpha                randconfig-r031-20230504   gcc  
alpha                randconfig-r032-20230504   gcc  
alpha                randconfig-r034-20230430   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r001-20230430   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230430   gcc  
arc                  randconfig-r004-20230501   gcc  
arc                  randconfig-r012-20230502   gcc  
arc                  randconfig-r043-20230503   gcc  
arc                  randconfig-r043-20230504   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r013-20230502   clang
arm                  randconfig-r016-20230430   gcc  
arm                  randconfig-r023-20230430   gcc  
arm                  randconfig-r031-20230501   clang
arm                  randconfig-r033-20230430   clang
arm                  randconfig-r035-20230502   gcc  
arm                  randconfig-r046-20230503   gcc  
arm                  randconfig-r046-20230504   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230501   gcc  
arm64                randconfig-r032-20230430   gcc  
csky         buildonly-randconfig-r002-20230430   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230502   gcc  
hexagon      buildonly-randconfig-r005-20230430   clang
hexagon              randconfig-r001-20230501   clang
hexagon              randconfig-r032-20230502   clang
hexagon              randconfig-r041-20230503   clang
hexagon              randconfig-r041-20230504   clang
hexagon              randconfig-r045-20230503   clang
hexagon              randconfig-r045-20230504   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r006-20230501   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230501   gcc  
i386                 randconfig-a002-20230501   gcc  
i386                 randconfig-a003-20230501   gcc  
i386                 randconfig-a004-20230501   gcc  
i386                 randconfig-a005-20230501   gcc  
i386                 randconfig-a006-20230501   gcc  
i386                 randconfig-a011-20230501   clang
i386                 randconfig-a012-20230501   clang
i386                 randconfig-a013-20230501   clang
i386                 randconfig-a014-20230501   clang
i386                 randconfig-a015-20230501   clang
i386                 randconfig-a016-20230501   clang
i386                 randconfig-r034-20230501   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r014-20230430   gcc  
ia64                 randconfig-r021-20230501   gcc  
ia64                 randconfig-r025-20230430   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r005-20230501   gcc  
loongarch            randconfig-r006-20230430   gcc  
loongarch            randconfig-r022-20230501   gcc  
loongarch            randconfig-r025-20230501   gcc  
loongarch            randconfig-r032-20230501   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r004-20230502   gcc  
m68k                 randconfig-r013-20230430   gcc  
m68k                 randconfig-r026-20230430   gcc  
m68k                 randconfig-r033-20230501   gcc  
m68k                 randconfig-r036-20230430   gcc  
microblaze   buildonly-randconfig-r001-20230501   gcc  
microblaze   buildonly-randconfig-r006-20230430   gcc  
microblaze           randconfig-r013-20230501   gcc  
microblaze           randconfig-r016-20230502   gcc  
microblaze           randconfig-r016-20230504   gcc  
microblaze           randconfig-r022-20230430   gcc  
microblaze           randconfig-r036-20230502   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                      maltaaprp_defconfig   clang
mips                 randconfig-r015-20230504   clang
mips                 randconfig-r023-20230501   gcc  
mips                        vocore2_defconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r015-20230430   gcc  
nios2                randconfig-r016-20230501   gcc  
nios2                randconfig-r021-20230430   gcc  
nios2                randconfig-r031-20230430   gcc  
openrisc                    or1ksim_defconfig   gcc  
openrisc             randconfig-r003-20230430   gcc  
openrisc             randconfig-r005-20230430   gcc  
openrisc             randconfig-r033-20230504   gcc  
openrisc             randconfig-r036-20230504   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r035-20230430   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r012-20230501   clang
powerpc              randconfig-r014-20230504   gcc  
powerpc              randconfig-r024-20230501   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r003-20230430   clang
riscv        buildonly-randconfig-r003-20230501   clang
riscv        buildonly-randconfig-r004-20230430   clang
riscv                               defconfig   gcc  
riscv                randconfig-r002-20230430   gcc  
riscv                randconfig-r013-20230504   gcc  
riscv                randconfig-r042-20230503   clang
riscv                randconfig-r042-20230504   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r005-20230501   clang
s390                                defconfig   gcc  
s390                 randconfig-r015-20230502   gcc  
s390                 randconfig-r044-20230503   clang
s390                 randconfig-r044-20230504   gcc  
sh                               allmodconfig   gcc  
sh                          r7780mp_defconfig   gcc  
sh                   randconfig-r001-20230502   gcc  
sh                   randconfig-r011-20230502   gcc  
sh                   randconfig-r026-20230501   gcc  
sh                   randconfig-r035-20230501   gcc  
sh                   randconfig-r035-20230504   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r006-20230502   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230501   gcc  
x86_64               randconfig-a002-20230501   gcc  
x86_64               randconfig-a003-20230501   gcc  
x86_64               randconfig-a004-20230501   gcc  
x86_64               randconfig-a005-20230501   gcc  
x86_64               randconfig-a006-20230501   gcc  
x86_64               randconfig-a011-20230501   clang
x86_64               randconfig-a012-20230501   clang
x86_64               randconfig-a013-20230501   clang
x86_64               randconfig-a014-20230501   clang
x86_64               randconfig-a015-20230501   clang
x86_64               randconfig-a016-20230501   clang
x86_64               randconfig-r003-20230501   gcc  
x86_64               randconfig-r006-20230501   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r001-20230430   gcc  
xtensa               randconfig-r012-20230504   gcc  
xtensa               randconfig-r033-20230502   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
