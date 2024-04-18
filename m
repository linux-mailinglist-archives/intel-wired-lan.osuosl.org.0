Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D91658A9659
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 11:38:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 870F5415B9;
	Thu, 18 Apr 2024 09:38:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k0puP5ZaStED; Thu, 18 Apr 2024 09:38:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80DFC415B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713433104;
	bh=C/h9Zk7cs4oVWhngXxii1uyn8VXDDXPcmO5nbN9G3fI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=U9nYR3uLSh29uUW2fYsQ+2/AlgONDEucJtgoULNYaQ1kyr20/MY/llAy5tfJ8TeZF
	 CM1QnIIQsE0q/i5mzK0FSAPVAFTCmAF5K4/VuCjOBzrL2t6N7jXgPq/3n35ut8tv0X
	 WldHDxUWXxu5pSd/5exzNOGFQ3lquIQq6AALBZBin1tREu7W0BWl20BuLqs/28D5lJ
	 51j63BbLCW3IuN6S5Za4/GtvI1qF770V9hQewXzXfJRlZ6svnWjs4cqy4stS1Fq3ip
	 s8s6PIEAlM5qKL0oFdbxIUmAyaSUz+HdojZwpvKlrElH3BqLqqMkKsaN8WhMScnUBv
	 XSLpdMXo9AUnA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 80DFC415B3;
	Thu, 18 Apr 2024 09:38:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 334261BF32E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 09:38:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2B3354092F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 09:38:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R64ONylSaZoM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 09:38:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B40184092B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B40184092B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B40184092B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 09:38:21 +0000 (UTC)
X-CSE-ConnectionGUID: Lxx0DflESqqcLJuBV1/QWg==
X-CSE-MsgGUID: 3vNHoKfmTZmmd9fMtYxiUg==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="12806796"
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="12806796"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 02:38:20 -0700
X-CSE-ConnectionGUID: 4EyXiqVhRwaSfkGEp83w2w==
X-CSE-MsgGUID: m1GhJQfmRDOqHEtkcS3EVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="23532155"
Received: from unknown (HELO 23c141fc0fd8) ([10.239.97.151])
 by orviesa008.jf.intel.com with ESMTP; 18 Apr 2024 02:38:18 -0700
Received: from kbuild by 23c141fc0fd8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rxODg-0007TX-0Y
 for intel-wired-lan@lists.osuosl.org; Thu, 18 Apr 2024 09:38:16 +0000
Date: Thu, 18 Apr 2024 17:36:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404181750.kGSqygRT-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713433102; x=1744969102;
 h=date:from:to:subject:message-id;
 bh=nxMMmth4LsYAedCC8Z3pZ+fsh3Lxo/TYFFkwUj9/mBQ=;
 b=fcVVdqqJO60HH3hnQPezSlPlU/dKqEpldh5bEaor1bErqkOwtkWeVQMZ
 vWZ631I2Kejl+1Xc0wsksVVX4YrWuylZ8cow/uTBsceZ+kHamf5BOHY4I
 pqCqQqjXgpFk2SuSuyHJNeg9CCvK5xJNs40sVm9OaAI2IfkNITV5h7HhI
 oL+uZrj52UdDtXLXVwilQzSq4MV+o+VdlPHg4/8KHHHniFhuUquKuDq6f
 QM0Zuq7B1tEsCMEO6YbCJ66s03BTpbrxF77uKL3aNKvicC4dAEh2kYmcg
 tjxXcv2XWMGCJMSV0O+KznBveT4wnvp2CVZdxGnV0UYweOIYRplSF1yUb
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fcVVdqqJ
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 cf68a8f9ca600ef1ef773f2ce10d84c1f711c6bf
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: cf68a8f9ca600ef1ef773f2ce10d84c1f711c6bf  e1000e: move force SMBUS near the end of enable_ulp function

elapsed time: 741m

configs tested: 101
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
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240418   gcc  
i386         buildonly-randconfig-002-20240418   gcc  
i386         buildonly-randconfig-003-20240418   clang
i386         buildonly-randconfig-004-20240418   gcc  
i386         buildonly-randconfig-005-20240418   clang
i386         buildonly-randconfig-006-20240418   clang
i386                                defconfig   clang
i386                  randconfig-001-20240418   gcc  
i386                  randconfig-002-20240418   gcc  
i386                  randconfig-003-20240418   clang
i386                  randconfig-004-20240418   gcc  
i386                  randconfig-005-20240418   gcc  
i386                  randconfig-006-20240418   gcc  
i386                  randconfig-011-20240418   clang
i386                  randconfig-012-20240418   clang
i386                  randconfig-013-20240418   gcc  
i386                  randconfig-014-20240418   gcc  
i386                  randconfig-015-20240418   gcc  
i386                  randconfig-016-20240418   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
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
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
