Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6326B8C32
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Mar 2023 08:48:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBE3781339;
	Tue, 14 Mar 2023 07:48:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBE3781339
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678780113;
	bh=sWIwSGeSN+HuLYj8x9nzGqGG7YIfGg8Y1ru9mPx+Wbs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DH5CxQLwUOtJH95JHHCdU0sC4ihzXiEFsi/XTKrdvD32VhWuaXAFO4/2bfQVwwqwE
	 qjrd3r8/cbpH3mYxkUj1ZrGYcML3LiH2w4CbNpmg4hp7J7E9v+ZdSEq+0tTbigIST5
	 rDffXlaYgjSQHLFg0B9vEepJu3aL31DVawUpjPlvjn0/h5lRgVzpaC87764h3eNEgv
	 qT9LlD3/Nvq9uxCQfh5w9R/CINupiol5xQ6BgmtYjrFMHSojfB5EbClSGX/aRJ4Hoc
	 PvbcGQhPH1k2nRIs+EUrHseOU2qzz5W339Rf9p7q+/lOms2NBpH6hcH+vVW9drszJH
	 d4Es/WOEKgnGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dqxz4CRHGLub; Tue, 14 Mar 2023 07:48:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA1768132D;
	Tue, 14 Mar 2023 07:48:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA1768132D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5B6611BF2CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 07:48:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 30CD5410B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 07:48:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30CD5410B0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YTEE3Ryp1Bph for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Mar 2023 07:48:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D5A5940AB9
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D5A5940AB9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 07:48:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="423625390"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="423625390"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 00:48:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="628950026"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="628950026"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 14 Mar 2023 00:48:23 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pbzOR-0006go-0Z;
 Tue, 14 Mar 2023 07:48:23 +0000
Date: Tue, 14 Mar 2023 15:47:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <641026ae.4HSuH2whmAJ4662j%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678780105; x=1710316105;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=eMZqYjCvkbPgyJ46pg725TNCOeTn2nDuSvaiuKCJlbo=;
 b=ivFZRf3ZR3AVJgKyMXJv6kk+tXKhtqvBJJLF5V2Ge4fbEelBxnDFxxgx
 Q/VUykV6cOTWW9hLsNdt1Feq6YB3nI8a6gdpmQ4oClvG6hN+cWlHmwOM/
 yDmbKYPRDl6rK+t3fXJKaLAwmWlG3VUqBFkADcGRXdKVgXUtNuUR14RtP
 TZRlAV6HsYtEwvHhzAES5pTbWc8j9yu/unPS9+FVTMxTHtX1CbwQGrwVH
 DFfwROzYIiNg4/fBn3qTKgvwTrVq+NPj7itFbgAkDLJHBWpeKTjQQZnA3
 d8BqNYzQu7cWY7OIFeQbxyBj2zTr0FzTFLUVL9TGQT0JtlKBfJveJcg2n
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ivFZRf3Z
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 4241400eafaf420f61a78baf14e4ef2b29efee05
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
branch HEAD: 4241400eafaf420f61a78baf14e4ef2b29efee05  ice: check if VF exists before mode check

elapsed time: 728m

configs tested: 128
configs skipped: 14

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r013-20230312   gcc  
alpha                randconfig-r021-20230312   gcc  
alpha                randconfig-r024-20230312   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r001-20230312   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r002-20230313   gcc  
arc                  randconfig-r006-20230313   gcc  
arc                  randconfig-r043-20230312   gcc  
arc                  randconfig-r043-20230313   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r004-20230313   clang
arm                  randconfig-r014-20230312   clang
arm                  randconfig-r014-20230313   gcc  
arm                  randconfig-r021-20230313   gcc  
arm                  randconfig-r025-20230313   gcc  
arm                  randconfig-r046-20230312   clang
arm                  randconfig-r046-20230313   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r005-20230312   clang
arm64                randconfig-r016-20230313   clang
csky                                defconfig   gcc  
csky                 randconfig-r015-20230312   gcc  
csky                 randconfig-r033-20230313   gcc  
csky                 randconfig-r036-20230312   gcc  
hexagon      buildonly-randconfig-r001-20230313   clang
hexagon              randconfig-r001-20230313   clang
hexagon              randconfig-r012-20230313   clang
hexagon              randconfig-r013-20230313   clang
hexagon              randconfig-r026-20230313   clang
hexagon              randconfig-r031-20230313   clang
hexagon              randconfig-r041-20230312   clang
hexagon              randconfig-r041-20230313   clang
hexagon              randconfig-r045-20230312   clang
hexagon              randconfig-r045-20230313   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230313   gcc  
i386                 randconfig-a002-20230313   gcc  
i386                 randconfig-a003-20230313   gcc  
i386                 randconfig-a004-20230313   gcc  
i386                 randconfig-a005-20230313   gcc  
i386                 randconfig-a006-20230313   gcc  
i386                 randconfig-a011-20230313   clang
i386                 randconfig-a012-20230313   clang
i386                 randconfig-a013-20230313   clang
i386                 randconfig-a014-20230313   clang
i386                 randconfig-a015-20230313   clang
i386                 randconfig-a016-20230313   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r001-20230312   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r006-20230312   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r031-20230312   gcc  
m68k                 randconfig-r035-20230313   gcc  
microblaze   buildonly-randconfig-r005-20230312   gcc  
microblaze           randconfig-r012-20230312   gcc  
microblaze           randconfig-r032-20230313   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r011-20230313   gcc  
mips                 randconfig-r034-20230313   clang
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230313   gcc  
nios2                randconfig-r025-20230312   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r015-20230313   gcc  
parisc               randconfig-r034-20230312   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r022-20230313   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r004-20230312   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r002-20230312   clang
riscv                randconfig-r033-20230312   clang
riscv                randconfig-r042-20230312   gcc  
riscv                randconfig-r042-20230313   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r032-20230312   clang
s390                 randconfig-r044-20230312   gcc  
s390                 randconfig-r044-20230313   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r003-20230312   gcc  
sparc        buildonly-randconfig-r003-20230313   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r004-20230312   gcc  
sparc                randconfig-r023-20230312   gcc  
sparc64      buildonly-randconfig-r002-20230313   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r005-20230313   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230313   gcc  
x86_64               randconfig-a002-20230313   gcc  
x86_64               randconfig-a003-20230313   gcc  
x86_64               randconfig-a004-20230313   gcc  
x86_64               randconfig-a005-20230313   gcc  
x86_64               randconfig-a006-20230313   gcc  
x86_64               randconfig-a011-20230313   clang
x86_64               randconfig-a012-20230313   clang
x86_64               randconfig-a013-20230313   clang
x86_64               randconfig-a014-20230313   clang
x86_64               randconfig-a015-20230313   clang
x86_64               randconfig-a016-20230313   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r002-20230312   gcc  
xtensa               randconfig-r005-20230313   gcc  
xtensa               randconfig-r035-20230312   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
