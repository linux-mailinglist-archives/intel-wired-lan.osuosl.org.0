Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9579D81A7A5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Dec 2023 21:35:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2BE5E436F2;
	Wed, 20 Dec 2023 20:35:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2BE5E436F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703104556;
	bh=7WRGo8jgzLPvRkZmM2zyAu9E0/UwaT2QuJn8AXZYEN4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jbPrhPkRzgFQD+dnsyk7kKToJ57POjYlY2Mty0CaLCbkeauBxO/tG5MrQwAGIJpoV
	 4Bkhs5jNeVEvGTj3o82hd8BU0s74PWdcMPdPjsXTzqB/bqzGQmW/pZSp4iG5COrd8w
	 j3rCNrkQ05pyKNeERaFpHSRC969vjimlwQMLENSXLC3XfMghAizno5C2IX8e2Rp+Qq
	 ltcjM1co3SdJXD992+Sje0hehCknPxjBKs2sqx87kMBRz88chPDzz9RvK1xtrUbIlj
	 6RXtnMiloikiEZ3Q/dJjhzgUwzSzWUX/hf9KL1eFkxlmMTRSsW4PaU7BMZSg27nrbv
	 Lluhfy3vGYrmw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eA8VqwOnVVFv; Wed, 20 Dec 2023 20:35:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 86083436D9;
	Wed, 20 Dec 2023 20:35:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 86083436D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F1F401BF365
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 20:35:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C15378399B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 20:35:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C15378399B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SR2zgPhfTJZE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Dec 2023 20:35:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8BAE183993
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 20:35:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8BAE183993
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="2961674"
X-IronPort-AV: E=Sophos;i="6.04,292,1695711600"; 
   d="scan'208";a="2961674"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 12:35:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,292,1695711600"; d="scan'208";a="10881677"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by fmviesa002.fm.intel.com with ESMTP; 20 Dec 2023 12:35:44 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rG3I6-0007Sm-0a
 for intel-wired-lan@lists.osuosl.org; Wed, 20 Dec 2023 20:35:42 +0000
Date: Thu, 21 Dec 2023 04:35:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202312210401.vV0TzGyh-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703104546; x=1734640546;
 h=date:from:to:subject:message-id;
 bh=6RHogn2F527pR0pYdTHkBSHYyaelnYYHpDZCD65wtyo=;
 b=Tgg/ipRZBmTYvvC9RGHhtLkrJY+PqZD7cFlPtYccbCgMyIFc2e/4Mza0
 WmtgQh3h1pdxK36Mdc5gQNXe6eOGoCFEir+t8vKibrquCFTFeqCB4HJHv
 oIyFr4HFUqI1AK6h+Vsq+yBG46c20zA8dPst0WBBbBEWSEYpdEuzkSbeR
 JXfmjLHpZtQVLTdmD/v9vwQWzChTgwS2G4n0G8I2Y9HrrtKIMhkfLmW+p
 FKSjIQ8BIjpWjeZDD8lcUFWfll5fr3YAheU0GDPOmnn2O1izJFDmZGQ3U
 w9yzLpbRWJzG4U747a6QMPHvPCDJJo0TrJGTNE20oyggQ2SRW28CixzGf
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Tgg/ipRZ
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 087c173e92424354672c296f7164232aa3380bbd
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
branch HEAD: 087c173e92424354672c296f7164232aa3380bbd  ixgbe: Refactor returning internal error codes

elapsed time: 1460m

configs tested: 168
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
arc                   randconfig-001-20231220   gcc  
arc                   randconfig-002-20231220   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                       aspeed_g4_defconfig   clang
arm                                 defconfig   clang
arm                            qcom_defconfig   gcc  
arm                   randconfig-001-20231220   gcc  
arm                   randconfig-002-20231220   gcc  
arm                   randconfig-003-20231220   gcc  
arm                   randconfig-004-20231220   gcc  
arm                        vexpress_defconfig   clang
arm                         vf610m4_defconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231220   gcc  
arm64                 randconfig-002-20231220   gcc  
arm64                 randconfig-003-20231220   gcc  
arm64                 randconfig-004-20231220   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231220   gcc  
csky                  randconfig-002-20231220   gcc  
hexagon                           allnoconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20231220   clang
hexagon               randconfig-002-20231220   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231220   gcc  
i386         buildonly-randconfig-002-20231220   gcc  
i386         buildonly-randconfig-003-20231220   gcc  
i386         buildonly-randconfig-004-20231220   gcc  
i386         buildonly-randconfig-005-20231220   gcc  
i386         buildonly-randconfig-006-20231220   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231220   gcc  
i386                  randconfig-002-20231220   gcc  
i386                  randconfig-003-20231220   gcc  
i386                  randconfig-004-20231220   gcc  
i386                  randconfig-005-20231220   gcc  
i386                  randconfig-006-20231220   gcc  
i386                  randconfig-011-20231220   clang
i386                  randconfig-012-20231220   clang
i386                  randconfig-013-20231220   clang
i386                  randconfig-014-20231220   clang
i386                  randconfig-015-20231220   clang
i386                  randconfig-016-20231220   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231220   gcc  
loongarch             randconfig-002-20231220   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                      bmips_stb_defconfig   clang
mips                  decstation_64_defconfig   gcc  
mips                      loongson3_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231220   gcc  
nios2                 randconfig-002-20231220   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-32bit_defconfig   gcc  
parisc                randconfig-001-20231220   gcc  
parisc                randconfig-002-20231220   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                      pcm030_defconfig   gcc  
powerpc               randconfig-001-20231220   gcc  
powerpc               randconfig-002-20231220   gcc  
powerpc               randconfig-003-20231220   gcc  
powerpc64             randconfig-001-20231220   gcc  
powerpc64             randconfig-002-20231220   gcc  
powerpc64             randconfig-003-20231220   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231220   gcc  
riscv                 randconfig-002-20231220   gcc  
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231220   clang
s390                  randconfig-002-20231220   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20231220   gcc  
sh                    randconfig-002-20231220   gcc  
sparc                            allmodconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231220   gcc  
sparc64               randconfig-002-20231220   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231220   gcc  
um                    randconfig-002-20231220   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231220   gcc  
x86_64       buildonly-randconfig-002-20231220   gcc  
x86_64       buildonly-randconfig-003-20231220   gcc  
x86_64       buildonly-randconfig-004-20231220   gcc  
x86_64       buildonly-randconfig-005-20231220   gcc  
x86_64       buildonly-randconfig-006-20231220   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231220   clang
x86_64                randconfig-002-20231220   clang
x86_64                randconfig-003-20231220   clang
x86_64                randconfig-004-20231220   clang
x86_64                randconfig-005-20231220   clang
x86_64                randconfig-006-20231220   clang
x86_64                randconfig-011-20231220   gcc  
x86_64                randconfig-012-20231220   gcc  
x86_64                randconfig-013-20231220   gcc  
x86_64                randconfig-014-20231220   gcc  
x86_64                randconfig-015-20231220   gcc  
x86_64                randconfig-016-20231220   gcc  
x86_64                randconfig-071-20231220   gcc  
x86_64                randconfig-072-20231220   gcc  
x86_64                randconfig-073-20231220   gcc  
x86_64                randconfig-074-20231220   gcc  
x86_64                randconfig-075-20231220   gcc  
x86_64                randconfig-076-20231220   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20231220   gcc  
xtensa                randconfig-002-20231220   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
