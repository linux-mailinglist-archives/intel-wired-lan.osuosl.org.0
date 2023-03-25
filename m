Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7922F6C8BF6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Mar 2023 08:02:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 83CAB4016B;
	Sat, 25 Mar 2023 07:02:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 83CAB4016B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679727724;
	bh=7/z/o1tc+X3REK6Ml+tt+NNMGTUQGSLQSRjquLUKbU4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qHfAROCeI5F8xmk7IEGKHNw9q90iEJBJ9zCDageFaeqyJRZYMTLk3FY6EjWa5D0zO
	 XSRXueU87GAilTzCXegWxFqBtnINJX63zKkQVprwhlns8vJsBBTS4nP8NsoSHeqWz4
	 PWSvEFheqVfMhynof3gvd/Nqat3tyOFNI4D54GfoUkYyHy5+YQZ/pLADGwYGDamPKK
	 KYkig1znn8IQzk9jdE5Vw9HMTJmWXVmteNuBXUSE3S2did2PUCok2KTlDfNVyUFQSm
	 gyPIoHn6S+UqQrvqLl8mod22VYrF+47lfDRb5FBou/C9XcD+ujmkWI8z51gxiwhkrS
	 GD9Jc2CXjeAcw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2VEW2G1QFI4D; Sat, 25 Mar 2023 07:02:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1F21740131;
	Sat, 25 Mar 2023 07:02:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F21740131
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0F2B11BF5A0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Mar 2023 07:01:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E31E28233C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Mar 2023 07:01:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E31E28233C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2U0gycguXAuN for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Mar 2023 07:01:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B24518226F
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B24518226F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Mar 2023 07:01:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="323828568"
X-IronPort-AV: E=Sophos;i="5.98,289,1673942400"; d="scan'208";a="323828568"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2023 00:01:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="676417459"
X-IronPort-AV: E=Sophos;i="5.98,289,1673942400"; d="scan'208";a="676417459"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 25 Mar 2023 00:01:52 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pfxuR-000G2t-1V;
 Sat, 25 Mar 2023 07:01:51 +0000
Date: Sat, 25 Mar 2023 15:01:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <641e9c40.97aFebT+/3865WmN%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679727716; x=1711263716;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=m362qfpETSeWxPT3K+AII1JXKRTn7wVZLEPw8JKnN2w=;
 b=MA80yZGpjZqIdaA/1E5EQgqU4xX6UrVcUxFdOkZFQrATdN815MOH5mgQ
 beEQRC6Gz230K9DLCIYi2Co0UbT5dyBtU5v3TQxECORonkigjffq2JKvb
 bEQkGjfmQFNV9Nv2fwrzCCCxSr7UXudCSZzVg4oN1xwPM4oDcFMmkI7wt
 VwV9U0Y9Nv5bBMHoABMK0ZdGf4DvHmt0EcK8U22jeQgAS73xxkvnt5lUV
 jU4vwMTXqkP/RRBQ9BWve25VF33NEKxE9XgUIKabCAObEcWRoDz2KlBf0
 NmIIvjT6TZG7wtCnhdoCFNYPZiWFyLa9s8Agb7u90KGlgUciNr0RucNDf
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MA80yZGp
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 5b3d03b5933e29da27edb3aee3868819127f0c17
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 5b3d03b5933e29da27edb3aee3868819127f0c17  ice: add dynamic interrupt allocation

elapsed time: 732m

configs tested: 160
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r006-20230322   gcc  
alpha                randconfig-r015-20230325   gcc  
alpha                randconfig-r021-20230322   gcc  
alpha                randconfig-r026-20230322   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r005-20230322   gcc  
arc                  randconfig-r012-20230325   gcc  
arc                  randconfig-r023-20230322   gcc  
arc                  randconfig-r023-20230323   gcc  
arc                  randconfig-r034-20230322   gcc  
arc                  randconfig-r043-20230322   gcc  
arc                  randconfig-r043-20230324   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                          moxart_defconfig   clang
arm                  randconfig-r003-20230322   gcc  
arm                  randconfig-r025-20230322   clang
arm                  randconfig-r046-20230322   clang
arm                  randconfig-r046-20230324   clang
arm                           stm32_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r022-20230322   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r011-20230322   gcc  
csky                 randconfig-r012-20230322   gcc  
csky                 randconfig-r016-20230322   gcc  
hexagon                          alldefconfig   clang
hexagon      buildonly-randconfig-r006-20230323   clang
hexagon              randconfig-r006-20230322   clang
hexagon              randconfig-r031-20230322   clang
hexagon              randconfig-r041-20230322   clang
hexagon              randconfig-r041-20230324   clang
hexagon              randconfig-r045-20230322   clang
hexagon              randconfig-r045-20230324   clang
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
ia64         buildonly-randconfig-r005-20230322   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r011-20230322   gcc  
ia64                 randconfig-r015-20230322   gcc  
ia64                 randconfig-r031-20230322   gcc  
ia64                 randconfig-r033-20230322   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r002-20230322   gcc  
loongarch            randconfig-r021-20230322   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r001-20230322   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r012-20230322   gcc  
m68k                 randconfig-r023-20230322   gcc  
microblaze   buildonly-randconfig-r004-20230322   gcc  
microblaze   buildonly-randconfig-r006-20230322   gcc  
microblaze           randconfig-r015-20230322   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r004-20230322   gcc  
mips                 randconfig-r034-20230322   gcc  
mips                 randconfig-r036-20230322   gcc  
nios2        buildonly-randconfig-r005-20230322   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r004-20230322   gcc  
nios2                randconfig-r016-20230322   gcc  
nios2                randconfig-r024-20230323   gcc  
nios2                randconfig-r026-20230322   gcc  
nios2                randconfig-r035-20230322   gcc  
openrisc             randconfig-r001-20230322   gcc  
openrisc             randconfig-r004-20230322   gcc  
openrisc             randconfig-r005-20230322   gcc  
openrisc             randconfig-r015-20230322   gcc  
openrisc             randconfig-r022-20230322   gcc  
openrisc             randconfig-r026-20230323   gcc  
openrisc             randconfig-r032-20230322   gcc  
openrisc             randconfig-r036-20230322   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r014-20230325   gcc  
parisc               randconfig-r021-20230323   gcc  
parisc               randconfig-r024-20230322   gcc  
parisc               randconfig-r031-20230322   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r003-20230322   gcc  
powerpc              randconfig-r013-20230322   gcc  
powerpc              randconfig-r025-20230322   gcc  
powerpc              randconfig-r035-20230322   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r024-20230322   gcc  
riscv                randconfig-r042-20230322   gcc  
riscv                randconfig-r042-20230324   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r005-20230323   clang
s390                                defconfig   gcc  
s390                 randconfig-r014-20230322   gcc  
s390                 randconfig-r016-20230322   gcc  
s390                 randconfig-r044-20230322   gcc  
s390                 randconfig-r044-20230324   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r001-20230322   gcc  
sh                   randconfig-r011-20230325   gcc  
sh                   randconfig-r013-20230322   gcc  
sh                   randconfig-r022-20230323   gcc  
sh                   randconfig-r024-20230322   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230322   gcc  
sparc                randconfig-r011-20230322   gcc  
sparc                randconfig-r013-20230325   gcc  
sparc64      buildonly-randconfig-r002-20230322   gcc  
sparc64                             defconfig   gcc  
sparc64              randconfig-r016-20230325   gcc  
sparc64              randconfig-r026-20230322   gcc  
sparc64              randconfig-r035-20230322   gcc  
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
xtensa                generic_kc705_defconfig   gcc  
xtensa               randconfig-r002-20230322   gcc  
xtensa               randconfig-r013-20230322   gcc  
xtensa               randconfig-r014-20230322   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
