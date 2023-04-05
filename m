Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E706D7E63
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Apr 2023 16:02:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8312882042;
	Wed,  5 Apr 2023 14:02:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8312882042
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680703357;
	bh=QR05+9wiNM/neUt8UUPm/4xNi7rnWKDzMcx3uhN85ag=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cAJEJZ+OrdusD1Qaa4sN+KVatBsKxN6vp8kVGyca9wQsfOQSEiqRZz8L6UHivjsXT
	 EyBxEOcvky6BaTmPCbApW7ui6+feKrrbc9ZdPZingc4sT4CbsdQo5YPxTW8eDf4p7p
	 WDyeNcPc8PQBzzVYck136zMTazvW84GFMb4LLEYtt7nmbIqUE9cLBUv7bC+P3LYxY8
	 GhNWJwYADF7hq+yIipAUDXFieXhkfUmMCOErVEdlvgZArAVr4zDvgYsHIHF+9O2Kia
	 U/LcNrtskPSxmApn4mNy7uVV44zvJPbWvKuJ/QcqRNfKXm00XMeGjXZPY+xp67Gsih
	 4hZkFFrkcwQgA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9PhSF8mbEJH8; Wed,  5 Apr 2023 14:02:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DC4682044;
	Wed,  5 Apr 2023 14:02:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DC4682044
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1FC331C2AF5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Apr 2023 14:02:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 01CE540185
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Apr 2023 14:02:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01CE540185
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EPYYpZ6OoBYC for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Apr 2023 14:02:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A51D140170
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A51D140170
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Apr 2023 14:02:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="331062043"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="331062043"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 07:02:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="680303602"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="680303602"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 05 Apr 2023 07:02:15 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pk3iI-000QZ4-2g;
 Wed, 05 Apr 2023 14:02:14 +0000
Date: Wed, 05 Apr 2023 22:01:16 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <642d7f2c./WboOTIRSW0fBKeq%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680703349; x=1712239349;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=/MCHUPcOsdm/gCvDQiPKNm8bwIP0UkTqtghOVTu715g=;
 b=Srn9tfqZlNKGfRL5Ws4V8eR0+ldYlEgJWyMd0LpjmEovKDNZ4cSBZS98
 lUTvvTziaPqZ5HF4cG1ZEynBhsHGC0e+vCeJeIEUqSuQlzEf8kCmBQem6
 2P53c/XKOLatppv4BONE13Qn/FDpRF7nHb9xGLHNnHCNf5oDNr9zY+1wS
 TROx/57tZamw0MF/TaGKVFh3nJjdqBsH3kexSUlKWADQwrN/Y8ZhjAg/U
 I+LqrXbLiAadec3QgzUzPayRh0CbdrWKFE/sSjkZFQcnsGsj+hyCQxAFZ
 8eiirJ1Xgp4GgHLVkzWC5TxmsYQNsXb/aIjMNpOYobUJl2A/M4IvRvAq1
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Srn9tfqZ
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 b35acff4cbac48f6dbd8c3cb4b071a6c9bf0eb46
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
branch HEAD: b35acff4cbac48f6dbd8c3cb4b071a6c9bf0eb46  i40e: fix i40e_setup_misc_vector() error handling

elapsed time: 1295m

configs tested: 160
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r002-20230403   gcc  
alpha                randconfig-r015-20230403   gcc  
alpha                randconfig-r021-20230403   gcc  
alpha                randconfig-r023-20230403   gcc  
alpha                randconfig-r024-20230403   gcc  
alpha                randconfig-r026-20230403   gcc  
alpha                randconfig-r036-20230403   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r006-20230403   gcc  
arc                  randconfig-r022-20230403   gcc  
arc                  randconfig-r023-20230403   gcc  
arc                  randconfig-r033-20230403   gcc  
arc                  randconfig-r034-20230403   gcc  
arc                  randconfig-r043-20230403   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r002-20230403   gcc  
arm                  randconfig-r031-20230403   gcc  
arm                  randconfig-r034-20230403   gcc  
arm                  randconfig-r035-20230403   gcc  
arm                  randconfig-r046-20230403   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r004-20230403   clang
arm64                randconfig-r021-20230403   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r006-20230403   gcc  
csky                 randconfig-r012-20230403   gcc  
csky                 randconfig-r021-20230403   gcc  
csky                 randconfig-r031-20230403   gcc  
hexagon      buildonly-randconfig-r003-20230403   clang
hexagon              randconfig-r024-20230403   clang
hexagon              randconfig-r041-20230403   clang
hexagon              randconfig-r045-20230403   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230403   clang
i386                 randconfig-a002-20230403   clang
i386                 randconfig-a003-20230403   clang
i386                 randconfig-a004-20230403   clang
i386                 randconfig-a005-20230403   clang
i386                 randconfig-a006-20230403   clang
i386                 randconfig-a011-20230403   gcc  
i386                 randconfig-a012-20230403   gcc  
i386                 randconfig-a013-20230403   gcc  
i386                 randconfig-a014-20230403   gcc  
i386                 randconfig-a015-20230403   gcc  
i386                 randconfig-a016-20230403   gcc  
i386                 randconfig-r014-20230403   gcc  
i386                 randconfig-r015-20230403   gcc  
i386                 randconfig-r016-20230403   gcc  
i386                 randconfig-r021-20230403   gcc  
i386                 randconfig-r022-20230403   gcc  
i386                 randconfig-r023-20230403   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r011-20230403   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r004-20230403   gcc  
loongarch            randconfig-r013-20230403   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r006-20230403   gcc  
m68k                 randconfig-r012-20230403   gcc  
m68k                 randconfig-r016-20230403   gcc  
m68k                 randconfig-r022-20230403   gcc  
m68k                 randconfig-r024-20230403   gcc  
m68k                 randconfig-r032-20230403   gcc  
microblaze           randconfig-r001-20230403   gcc  
microblaze           randconfig-r011-20230403   gcc  
microblaze           randconfig-r023-20230403   gcc  
microblaze           randconfig-r031-20230403   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r004-20230403   gcc  
mips                 randconfig-r014-20230403   clang
mips                 randconfig-r034-20230403   gcc  
mips                 randconfig-r035-20230403   gcc  
mips                 randconfig-r036-20230403   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r001-20230403   gcc  
nios2                randconfig-r014-20230403   gcc  
nios2                randconfig-r023-20230403   gcc  
nios2                randconfig-r033-20230403   gcc  
nios2                randconfig-r034-20230403   gcc  
openrisc     buildonly-randconfig-r001-20230403   gcc  
openrisc             randconfig-r011-20230403   gcc  
openrisc             randconfig-r016-20230403   gcc  
openrisc             randconfig-r026-20230403   gcc  
openrisc             randconfig-r035-20230403   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230403   gcc  
parisc               randconfig-r013-20230403   gcc  
parisc               randconfig-r022-20230403   gcc  
parisc               randconfig-r025-20230403   gcc  
parisc               randconfig-r035-20230403   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r004-20230403   gcc  
powerpc              randconfig-r012-20230403   gcc  
powerpc              randconfig-r014-20230403   gcc  
powerpc              randconfig-r025-20230403   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r003-20230403   clang
riscv                randconfig-r042-20230403   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r001-20230403   clang
s390                 randconfig-r006-20230403   clang
s390                 randconfig-r044-20230403   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r013-20230403   gcc  
sh                   randconfig-r026-20230403   gcc  
sparc        buildonly-randconfig-r002-20230403   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r015-20230403   gcc  
sparc                randconfig-r032-20230403   gcc  
sparc64      buildonly-randconfig-r006-20230403   gcc  
sparc64              randconfig-r005-20230403   gcc  
sparc64              randconfig-r014-20230403   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230403   clang
x86_64               randconfig-a002-20230403   clang
x86_64               randconfig-a003-20230403   clang
x86_64               randconfig-a004-20230403   clang
x86_64               randconfig-a005-20230403   clang
x86_64               randconfig-a006-20230403   clang
x86_64               randconfig-a011-20230403   gcc  
x86_64               randconfig-a012-20230403   gcc  
x86_64               randconfig-a013-20230403   gcc  
x86_64               randconfig-a014-20230403   gcc  
x86_64               randconfig-a015-20230403   gcc  
x86_64               randconfig-a016-20230403   gcc  
x86_64               randconfig-k001-20230403   gcc  
x86_64               randconfig-r001-20230403   clang
x86_64               randconfig-r013-20230403   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r005-20230403   gcc  
xtensa               randconfig-r012-20230403   gcc  
xtensa               randconfig-r016-20230403   gcc  
xtensa               randconfig-r025-20230403   gcc  
xtensa               randconfig-r026-20230403   gcc  
xtensa               randconfig-r033-20230403   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
