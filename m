Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 383198B087D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 13:43:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BCE70402E8;
	Wed, 24 Apr 2024 11:43:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VBwbU1Ovp-u1; Wed, 24 Apr 2024 11:43:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A478A404D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713958999;
	bh=L6kb+vm/7pdJVy9ymh/VuxUk0dhed+uIkuQsW1wLMsQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Z7xYvMfPlWu/9/b3Tf3P7bUboLT3iNE3CsTzUEWCczouI+6NFcKe7xlctuvSaYvjz
	 SQ3HWwIp/h4JT3FgzGtkTIXm5j2F5hCuiCK8LJ3I1FtImqNl+gQXjjBy8ttMzwcUaS
	 jDxtbK2Ni90476Z759VPNT4Nze10VsZOqizcIUi4M/Yzb3Ij6uizk2ZTauXdg1tILV
	 RcI7UzzJ5oj4KdzBv4k++GKVw3Q0BMRSWJLaB0t/FcYlJ/Tlazpps7MuS2eY9ONZyt
	 ZCocEvhDerqS4VU5W+w9ZY/ORcOpq9JHJic/rD0EGODasIuFfpKgwWjmColT2ZLvf4
	 7bp0mxMBTYw2w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A478A404D8;
	Wed, 24 Apr 2024 11:43:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3A4A21BF38B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 11:43:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 309F140338
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 11:43:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SCnKXbRpjhe5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 11:43:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9617D4016A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9617D4016A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9617D4016A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 11:43:12 +0000 (UTC)
X-CSE-ConnectionGUID: yXtZ0z+IRgGBcfFFErUkVQ==
X-CSE-MsgGUID: FjLYmhHSTb+QYpB0eIJm9g==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="13374141"
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="13374141"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 04:43:12 -0700
X-CSE-ConnectionGUID: wYwSz2VJSAanEtGZq5EtIA==
X-CSE-MsgGUID: uB35Af8XQka92zxHCWKKBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="29143426"
Received: from lkp-server01.sh.intel.com (HELO e434dd42e5a1) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 24 Apr 2024 04:43:10 -0700
Received: from kbuild by e434dd42e5a1 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rzb1o-0001BG-1G
 for intel-wired-lan@lists.osuosl.org; Wed, 24 Apr 2024 11:43:08 +0000
Date: Wed, 24 Apr 2024 19:42:13 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404241911.CtnL5aae-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713958993; x=1745494993;
 h=date:from:to:subject:message-id;
 bh=medeOuhh2gvc7165vUDSollQCW2Rl10zAAEVlZ0ForY=;
 b=bX/xI1WJgwpjYbcm8I1kthgoLBt0GO4gOkvoTzIeeuptxsqLnBBy7/is
 FaG7661NJJtwrguP3XLtCG3XfqMWEM2A6VPQzCpNf28Vk14PqCC8REmPY
 Wlt7zusy6hEXAydpFv2KVkrAPBpuw5ECLt6zv3/rraw8K39FfNEVahPs6
 /LUPTqPGWl6sImu3Z8BdkgCXBHDk35x4cyWP8yOQpLqkXwe3Au4VuXHaX
 Qg2DyFeanDdku1tdqnQC+HdbsNkVT36oZW1GBg/MFF0tTLxM4SYJBTg0a
 LyrUAZxghL6M8TnhkE7K0TE+C8CwkS/cxj2vQTd09Vv8ElN6cg0jwBxeY
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bX/xI1WJ
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 216abe6123385bfc888c623ec2e8fc799699f23d
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 216abe6123385bfc888c623ec2e8fc799699f23d  ice: fix 200G PHY types to link speed mapping

elapsed time: 1148m

configs tested: 136
configs skipped: 3

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
arc                   randconfig-001-20240424   gcc  
arc                   randconfig-002-20240424   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                          gemini_defconfig   clang
arm                       imx_v6_v7_defconfig   clang
arm                   milbeaut_m10v_defconfig   clang
arm                   randconfig-001-20240424   gcc  
arm                   randconfig-002-20240424   gcc  
arm                   randconfig-003-20240424   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                               defconfig   gcc  
arm64                 randconfig-002-20240424   gcc  
arm64                 randconfig-003-20240424   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240424   gcc  
csky                  randconfig-002-20240424   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386                                defconfig   clang
i386                  randconfig-004-20240424   clang
i386                  randconfig-011-20240424   clang
i386                  randconfig-013-20240424   clang
i386                  randconfig-014-20240424   clang
i386                  randconfig-015-20240424   clang
i386                  randconfig-016-20240424   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240424   gcc  
loongarch             randconfig-002-20240424   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240424   gcc  
nios2                 randconfig-002-20240424   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240424   gcc  
parisc                randconfig-002-20240424   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                 canyonlands_defconfig   clang
powerpc                       holly_defconfig   clang
powerpc               randconfig-002-20240424   gcc  
powerpc               randconfig-003-20240424   gcc  
powerpc64             randconfig-001-20240424   gcc  
powerpc64             randconfig-002-20240424   gcc  
powerpc64             randconfig-003-20240424   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240424   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240424   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240424   gcc  
sh                    randconfig-002-20240424   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240424   gcc  
sparc64               randconfig-002-20240424   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240424   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240424   clang
x86_64       buildonly-randconfig-002-20240424   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240424   clang
x86_64                randconfig-002-20240424   clang
x86_64                randconfig-005-20240424   clang
x86_64                randconfig-006-20240424   clang
x86_64                randconfig-011-20240424   clang
x86_64                randconfig-015-20240424   clang
x86_64                randconfig-071-20240424   clang
x86_64                randconfig-072-20240424   clang
x86_64                randconfig-074-20240424   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240424   gcc  
xtensa                randconfig-002-20240424   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
