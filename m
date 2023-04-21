Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C34B76EA2C7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Apr 2023 06:27:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9DBA8427FD;
	Fri, 21 Apr 2023 04:27:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9DBA8427FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682051236;
	bh=JSGkZyv3Iqvb58u3taGadH/vAxuFEkxf4SEJ0C0O3/8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4FGGcxEQwxB03pImNZ9RjV9BQt7G5zsTvULGGVkBl6FEiYiFKC6efhUdr2/O3jJ8j
	 I0PXv+K+K6NNoXaoEK2pdkO6m4ma22aKfOqj+0sCZ3pGA4zXeUAkSs+Er4rgMd2Mua
	 PXHTgAO6cLZsmiaIMCd+RDMVM6iSpUrY2ev6JneXcliDi4f/VWwg4Kf1LD/lx50pLn
	 YyNxphHcOXPpRf8utqv9foJJ4IIiv/cKIA/ixRV7+ypHyffIrKSDbeEKQu1Vfq+PFd
	 rPHKI2ZXPSNY7SquoBdIqtcvQBQDdA+BF/ICRWXOLgceEz7EnS3NmmW0pqdwjzCaA6
	 xWJkS7N81PjRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cgb2rrH9HC9X; Fri, 21 Apr 2023 04:27:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 09F0042791;
	Fri, 21 Apr 2023 04:27:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09F0042791
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3B9541BF33E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 04:27:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 12C4C61388
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 04:27:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 12C4C61388
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id plBc87Ok9ZPI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Apr 2023 04:27:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBAEA6136B
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CBAEA6136B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 04:27:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="334784504"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="334784504"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 21:27:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="816285584"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="816285584"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 20 Apr 2023 21:27:03 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ppiMQ-000gJe-2S;
 Fri, 21 Apr 2023 04:27:02 +0000
Date: Fri, 21 Apr 2023 12:26:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6442106f.fI0RVV/Q8eJN8shh%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682051227; x=1713587227;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=YDDlvnvhNgmVa/zF/DGdEOZcJMpUKwBuZubVt7fhPaU=;
 b=RvOBu6rdayUPZgcADKxtkotou3tg04FsWCzC4rpi0FOsiaGDaikUyJU0
 BNIkKp+HubQuPsZyYuaXQx7X5cPCB/zzv/+1j6cXqhe7CulosoA827+aZ
 I2olO7sfH76NbxwC3R0lsXh4rDySgtWYhysVkHs89p3h12FSYQbMzwQSJ
 +05bgaeO5Z2vIKA1eK9EDEVMTf2zoTlUyTaLMIHvFfVzJ7DqHpuf4z+MM
 BwXgwmt5Jb8ELdGii3S+HZLDL9evKkHjCLNBxoafZe2e2T7JMYSKqcm/I
 IKq7o2sMJjrjeq6onEhzcYknPOUqtUDb55fjVkX+o+CQeXNGOgzAwD/Gl
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RvOBu6rd
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 927cdea5d2095287ddd5246e5aa68eb5d68db2be
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 927cdea5d2095287ddd5246e5aa68eb5d68db2be  net: bridge: switchdev: don't notify FDB entries with "master dynamic"

elapsed time: 1195m

configs tested: 140
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r004-20230416   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r001-20230420   gcc  
arc                  randconfig-r014-20230416   gcc  
arc                  randconfig-r025-20230420   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r003-20230420   gcc  
arm                  randconfig-r032-20230417   clang
arm                  randconfig-r046-20230416   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r006-20230416   clang
arm64                randconfig-r036-20230416   clang
csky                                defconfig   gcc  
csky                 randconfig-r004-20230418   gcc  
csky                 randconfig-r023-20230417   gcc  
csky                 randconfig-r024-20230417   gcc  
hexagon              randconfig-r033-20230417   clang
hexagon              randconfig-r041-20230416   clang
hexagon              randconfig-r041-20230417   clang
hexagon              randconfig-r041-20230419   clang
hexagon              randconfig-r045-20230416   clang
hexagon              randconfig-r045-20230417   clang
hexagon              randconfig-r045-20230419   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230417   gcc  
i386                 randconfig-a002-20230417   gcc  
i386                 randconfig-a003-20230417   gcc  
i386                 randconfig-a004-20230417   gcc  
i386                 randconfig-a005-20230417   gcc  
i386                 randconfig-a006-20230417   gcc  
i386                 randconfig-a011-20230417   clang
i386                 randconfig-a012-20230417   clang
i386                 randconfig-a013-20230417   clang
i386                 randconfig-a014-20230417   clang
i386                 randconfig-a015-20230417   clang
i386                 randconfig-a016-20230417   clang
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r001-20230417   gcc  
ia64         buildonly-randconfig-r003-20230416   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r006-20230418   gcc  
ia64                 randconfig-r022-20230420   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r004-20230417   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r011-20230420   gcc  
loongarch            randconfig-r013-20230420   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r003-20230417   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r025-20230417   gcc  
microblaze           randconfig-r002-20230417   gcc  
microblaze           randconfig-r005-20230417   gcc  
microblaze           randconfig-r012-20230420   gcc  
microblaze           randconfig-r026-20230416   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r003-20230418   gcc  
mips                 randconfig-r002-20230420   gcc  
mips                 randconfig-r035-20230417   clang
nios2        buildonly-randconfig-r002-20230417   gcc  
nios2                               defconfig   gcc  
openrisc     buildonly-randconfig-r005-20230417   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230416   gcc  
parisc               randconfig-r016-20230420   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r002-20230418   gcc  
powerpc                     mpc512x_defconfig   clang
powerpc              randconfig-r001-20230417   gcc  
powerpc              randconfig-r002-20230416   clang
powerpc              randconfig-r003-20230416   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r015-20230420   gcc  
riscv                randconfig-r021-20230416   gcc  
riscv                randconfig-r024-20230416   gcc  
riscv                randconfig-r032-20230420   clang
riscv                randconfig-r042-20230417   clang
riscv                randconfig-r042-20230419   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r026-20230420   gcc  
s390                 randconfig-r031-20230416   clang
s390                 randconfig-r036-20230418   clang
s390                 randconfig-r044-20230417   clang
s390                 randconfig-r044-20230419   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r002-20230416   gcc  
sh           buildonly-randconfig-r004-20230418   gcc  
sh           buildonly-randconfig-r006-20230416   gcc  
sh           buildonly-randconfig-r006-20230417   gcc  
sh                   randconfig-r002-20230416   gcc  
sh                   randconfig-r006-20230417   gcc  
sh                   randconfig-r014-20230420   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230416   gcc  
sparc64              randconfig-r006-20230420   gcc  
sparc64              randconfig-r013-20230416   gcc  
sparc64              randconfig-r016-20230416   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230417   gcc  
x86_64               randconfig-a002-20230417   gcc  
x86_64               randconfig-a003-20230417   gcc  
x86_64               randconfig-a004-20230417   gcc  
x86_64               randconfig-a005-20230417   gcc  
x86_64               randconfig-a006-20230417   gcc  
x86_64               randconfig-a011-20230417   clang
x86_64               randconfig-a012-20230417   clang
x86_64               randconfig-a013-20230417   clang
x86_64               randconfig-a014-20230417   clang
x86_64               randconfig-a015-20230417   clang
x86_64               randconfig-a016-20230417   clang
x86_64               randconfig-k001-20230417   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r001-20230418   gcc  
xtensa       buildonly-randconfig-r005-20230416   gcc  
xtensa               randconfig-r003-20230418   gcc  
xtensa               randconfig-r021-20230417   gcc  
xtensa               randconfig-r022-20230417   gcc  
xtensa               randconfig-r026-20230417   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
