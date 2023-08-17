Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E11C77F4D4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 13:13:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 538A041835;
	Thu, 17 Aug 2023 11:13:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 538A041835
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692270836;
	bh=axOqSUdcZ+7xZAfW5fj/gKl1ocOhCYRDpmVvflljuD8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=EH1X3jo2Liq5/aSi4FweidWa3738u9PyIvQCGws4phBG7it05fT60Aa+jfTBFZW1X
	 bEKRqhvAvRdCoo6tXbMgrufwR9cJvcTEXFxWWsv+J80NbLCTqQg8S6rXNsOW0xYHCE
	 X7WWnOuIkLeh4tJwAQnXu3WOl6EH1pPIh6lomd+oe33+GlomD4hH5zDN7aApuffxZ5
	 KaWl6flG49CMHnE9bRx+9NSqRPPKV7BiVQ9d7Pg5cwgJuU9BXa5u5T7K44cwP9EjlO
	 nOGGj1ncZaXXz85EmrohCRep3mm16LvAb1GERmKLvjSTVkdhmLkjKDbnHH/M+Uk0k1
	 DpU0h4kHd7zfg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zVcO1z2270HG; Thu, 17 Aug 2023 11:13:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 09D2041831;
	Thu, 17 Aug 2023 11:13:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 09D2041831
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C359D1BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 11:13:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A957141831
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 11:13:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A957141831
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id auFSkV_zUTnM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 11:13:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1AB4541829
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 11:13:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AB4541829
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="362931065"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="362931065"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 04:13:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="804588136"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="804588136"
Received: from lkp-server02.sh.intel.com (HELO a9caf1a0cf30) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 17 Aug 2023 04:13:45 -0700
Received: from kbuild by a9caf1a0cf30 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qWawi-00014S-2d
 for intel-wired-lan@lists.osuosl.org; Thu, 17 Aug 2023 11:13:44 +0000
Date: Thu, 17 Aug 2023 19:13:18 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308171915.Mx5xI3IL-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692270827; x=1723806827;
 h=date:from:to:subject:message-id;
 bh=nFJzgr4wgFsynnuiAyybkkK7Ij8VvHw9WyDTRbwYafI=;
 b=HZxdKvXzd1I/jcRgUzRMintAXpupKI/7aAdpvxMd6Irg3vAiv7m7/dx9
 ZNEI9BEY5xd8kD7mn27v5O1UP6qeNrCfHR5zSKK5hGaV88RuXVQnLcGrz
 Zg3clQanW9iFwL/W2SRMdfM2AE+VSEzyyy8YbZipz60V53aXT3NtxKUPy
 QIHdPDoPldEAYE44ZMKOThcRCcgQdtT0qeWsan6a+1vaJKVUU1D0qEtk/
 xQzrV6iXDM55RKuFp1OfNaAFbteI/cq0XKNDKIdf6X2Q+zt0Yn/sTSNGj
 scVndLYwyFeUtuslgYCiq0BFyjydCUmyv2ZDbXen0Kr2t8wBjHr2SHQfc
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HZxdKvXz
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 b0654e64dbaf62f565b5f2b4fbd92202e88dcba3
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: b0654e64dbaf62f565b5f2b4fbd92202e88dcba3  virtchnl: fix fake 1-elem arrays for structures allocated as `nents`

elapsed time: 732m

configs tested: 114
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230817   gcc  
alpha                randconfig-r036-20230817   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r016-20230817   gcc  
arc                  randconfig-r026-20230817   gcc  
arc                  randconfig-r043-20230817   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230817   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r005-20230817   clang
arm64                randconfig-r021-20230817   gcc  
arm64                randconfig-r031-20230817   clang
csky                                defconfig   gcc  
hexagon              randconfig-r011-20230817   clang
hexagon              randconfig-r024-20230817   clang
hexagon              randconfig-r041-20230817   clang
hexagon              randconfig-r045-20230817   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230817   clang
i386         buildonly-randconfig-r005-20230817   clang
i386         buildonly-randconfig-r006-20230817   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230817   clang
i386                 randconfig-i002-20230817   clang
i386                 randconfig-i003-20230817   clang
i386                 randconfig-i004-20230817   clang
i386                 randconfig-i005-20230817   clang
i386                 randconfig-i006-20230817   clang
i386                 randconfig-i011-20230817   gcc  
i386                 randconfig-i012-20230817   gcc  
i386                 randconfig-i013-20230817   gcc  
i386                 randconfig-i014-20230817   gcc  
i386                 randconfig-i015-20230817   gcc  
i386                 randconfig-i016-20230817   gcc  
i386                 randconfig-r012-20230817   gcc  
i386                 randconfig-r024-20230817   gcc  
i386                 randconfig-r025-20230817   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r006-20230817   gcc  
microblaze           randconfig-r026-20230817   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r002-20230817   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r004-20230817   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r013-20230817   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r003-20230817   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r002-20230817   clang
riscv                randconfig-r042-20230817   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r014-20230817   gcc  
s390                 randconfig-r044-20230817   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r033-20230817   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r023-20230817   gcc  
sparc64              randconfig-r015-20230817   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r004-20230817   gcc  
um                   randconfig-r005-20230817   gcc  
um                   randconfig-r034-20230817   gcc  
um                   randconfig-r035-20230817   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230817   clang
x86_64       buildonly-randconfig-r002-20230817   clang
x86_64       buildonly-randconfig-r003-20230817   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r023-20230817   gcc  
x86_64               randconfig-x001-20230817   gcc  
x86_64               randconfig-x002-20230817   gcc  
x86_64               randconfig-x003-20230817   gcc  
x86_64               randconfig-x004-20230817   gcc  
x86_64               randconfig-x005-20230817   gcc  
x86_64               randconfig-x006-20230817   gcc  
x86_64               randconfig-x011-20230817   clang
x86_64               randconfig-x012-20230817   clang
x86_64               randconfig-x013-20230817   clang
x86_64               randconfig-x014-20230817   clang
x86_64               randconfig-x015-20230817   clang
x86_64               randconfig-x016-20230817   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r001-20230817   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
