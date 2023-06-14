Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA46772F4B7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 08:25:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81B764176F;
	Wed, 14 Jun 2023 06:25:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81B764176F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686723947;
	bh=rRTyCApzScV45u73nGHP+9U822Ge9lcahF3jA/653Qo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0diql1FajnnC+hnaE6xR396usq1n50Q4q4n++6pPrE5NZcUFH0b1fnFX7ZBK5T80j
	 af7BVvHmTZrBMj6ssbtRdUGPk8NHc8Vw2GuvdJzlQro2u/zQ4Uqe+mjEMaF2MUyOgm
	 hBHehJLXn4kRKqkADuahVggQsvbsTCP+i9zidz2zszvoRVQyjxXqRfV5ARyPST1agg
	 jOJUrmJEnQ0BPRyrRWV0DWRDXv5/FIl34Jx8u6OYK8kih8vCJ7ryvLp828U78e7Kac
	 IIl9JX86L5iiJRerCTmqzlwfIEyaP2R0Ug8buZ3T8yZOjCUfZqwzBVVf/Yy7AF/FUz
	 Lk1v18PDBvFGQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AwWS6e9W3-SA; Wed, 14 Jun 2023 06:25:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB81B41778;
	Wed, 14 Jun 2023 06:25:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB81B41778
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 43D4E1BF863
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 06:25:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1AF7A60F2E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 06:25:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1AF7A60F2E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tNZ6OjYamLDR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 06:25:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2388860F1C
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2388860F1C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 06:25:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="444905756"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="444905756"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 23:25:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="715073142"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="715073142"
Received: from lkp-server02.sh.intel.com (HELO d59cacf64e9e) ([10.239.97.151])
 by fmsmga007.fm.intel.com with ESMTP; 13 Jun 2023 23:25:37 -0700
Received: from kbuild by d59cacf64e9e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q9Jwn-0000Iv-0L
 for intel-wired-lan@lists.osuosl.org; Wed, 14 Jun 2023 06:25:37 +0000
Date: Wed, 14 Jun 2023 14:24:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306141452.KKQGfjxj-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686723939; x=1718259939;
 h=date:from:to:subject:message-id;
 bh=UnMfGurs00BmCi+l5L7pB/S5aQexG0oqUXTuWhCt5zk=;
 b=i3MzJSDVH8GbG5j2r7sZQbGYeLMxtS47tmga3jZbO/Nc3a4C18WJRWat
 Y2lPyWOMKXV/4LmCvieFRuk5BRDBHdEF6qJ/M/v/eXt19D3W0SpuI99Sa
 9FrAcANlFoI4njDDprIAhiNzUwn1GZmQHRv3IA04JWq2W73OZR2M9lZkx
 bVvxH9BBnc5OR2WqlYMpBMZ1RYhH+X22hzmCZ+FW3YKEIomRXvPF1kMKj
 n6kguN79RI+u5dym4MUBQkZpPnnicLfQMCR5L/jTA06+adD7mu0UXMIui
 WrZ7lIIOrovFWBpi7jS33Yw5iChUhpOIm+NQ3XcaJYLo/pp5Dfj67c9gk
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i3MzJSDV
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 513b88e1a43f1e15fd2c447a66a526698a6017ad
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
branch HEAD: 513b88e1a43f1e15fd2c447a66a526698a6017ad  ice: Fix tx queue rate limit when TCs are configured

elapsed time: 835m

configs tested: 131
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r015-20230612   gcc  
arc                  randconfig-r043-20230612   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r021-20230612   clang
arm                  randconfig-r046-20230612   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r005-20230612   clang
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r002-20230612   gcc  
hexagon      buildonly-randconfig-r001-20230612   clang
hexagon              randconfig-r003-20230612   clang
hexagon              randconfig-r032-20230612   clang
hexagon              randconfig-r041-20230612   clang
hexagon              randconfig-r045-20230612   clang
i386                             alldefconfig   gcc  
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230612   clang
i386                 randconfig-i002-20230612   clang
i386                 randconfig-i003-20230612   clang
i386                 randconfig-i004-20230612   clang
i386                 randconfig-i005-20230612   clang
i386                 randconfig-i006-20230612   clang
i386                 randconfig-i011-20230612   gcc  
i386                 randconfig-i012-20230612   gcc  
i386                 randconfig-i013-20230612   gcc  
i386                 randconfig-i014-20230612   gcc  
i386                 randconfig-i015-20230612   gcc  
i386                 randconfig-i016-20230612   gcc  
i386                 randconfig-r012-20230612   gcc  
i386                 randconfig-r014-20230612   gcc  
i386                 randconfig-r034-20230612   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                       bvme6000_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r035-20230612   gcc  
m68k                           virt_defconfig   gcc  
microblaze                          defconfig   gcc  
microblaze           randconfig-r003-20230612   gcc  
microblaze           randconfig-r024-20230612   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                       bmips_be_defconfig   gcc  
mips         buildonly-randconfig-r003-20230612   gcc  
mips                      maltasmvp_defconfig   gcc  
mips                    maltaup_xpa_defconfig   gcc  
mips                 randconfig-r001-20230612   gcc  
mips                 randconfig-r011-20230612   clang
mips                 randconfig-r033-20230612   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r004-20230612   gcc  
nios2                randconfig-r023-20230612   gcc  
openrisc             randconfig-r004-20230612   gcc  
openrisc             randconfig-r013-20230612   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230612   gcc  
parisc               randconfig-r022-20230612   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                   currituck_defconfig   gcc  
powerpc                 linkstation_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv        buildonly-randconfig-r002-20230612   gcc  
riscv                               defconfig   gcc  
riscv                    nommu_k210_defconfig   gcc  
riscv                randconfig-r032-20230612   clang
riscv                randconfig-r036-20230612   clang
riscv                randconfig-r042-20230612   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r016-20230612   gcc  
s390                 randconfig-r044-20230612   gcc  
sh                               alldefconfig   gcc  
sh                               allmodconfig   gcc  
sh                         ap325rxa_defconfig   gcc  
sh                        edosk7760_defconfig   gcc  
sh                          polaris_defconfig   gcc  
sh                   randconfig-r021-20230612   gcc  
sh                          sdk7786_defconfig   gcc  
sh                           se7780_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r034-20230612   gcc  
sparc64              randconfig-r006-20230612   gcc  
sparc64              randconfig-r026-20230612   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230612   clang
x86_64               randconfig-a002-20230612   clang
x86_64               randconfig-a003-20230612   clang
x86_64               randconfig-a004-20230612   clang
x86_64               randconfig-a005-20230612   clang
x86_64               randconfig-a006-20230612   clang
x86_64               randconfig-a011-20230612   gcc  
x86_64               randconfig-a012-20230612   gcc  
x86_64               randconfig-a013-20230612   gcc  
x86_64               randconfig-a014-20230612   gcc  
x86_64               randconfig-a015-20230612   gcc  
x86_64               randconfig-a016-20230612   gcc  
x86_64               randconfig-r025-20230612   gcc  
x86_64               randconfig-r031-20230612   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                         virt_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
