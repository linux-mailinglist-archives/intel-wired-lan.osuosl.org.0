Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2286F6571
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 May 2023 09:06:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1AC2841DD1;
	Thu,  4 May 2023 07:06:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AC2841DD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683183994;
	bh=6faFh0a7jBuvRAVBwQ9+QuiJ47zCZkfOiBsjloob9g4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hA7yJpPQUcN5T3pdb5o5opPkivAIY7tnQxFdOOIQBUfSbwSda+bzZpWkp9aFxZu+W
	 PzWynWRtpS3vzP8QNUUTAgz0HXr61/kfUvR7wYz2BD9pBmKiT94aZNivetM3PAjqwl
	 qK+LyBEhKPigAAqOceJJF7P0j30tXEzDjuY98qRbdelJtHgAJmUWGL1ieBClOdSMnu
	 /NqQYgnf7lZfdrxNzehWzVLvqnGozGHyI4X1BDhGuMjJzC/6iJSxUvCxjgcV0FkH8p
	 6+LDmVk+HvQ10k+EmDM9b1BwZj0pDJm59UFOCQIsPtlsIuZKnxzkbn9tOY8U0XSm6E
	 SonyYGW4IZ9HQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dvd7fsqDKqWi; Thu,  4 May 2023 07:06:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A286141DCC;
	Thu,  4 May 2023 07:06:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A286141DCC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7F54F1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 07:06:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 574E460E43
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 07:06:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 574E460E43
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4z4DDVbbP-Rv for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 May 2023 07:06:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 26DE160E44
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 26DE160E44
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 07:06:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="328469507"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="328469507"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 00:06:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="1026818720"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="1026818720"
Received: from lkp-server01.sh.intel.com (HELO e3434d64424d) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 04 May 2023 00:06:02 -0700
Received: from kbuild by e3434d64424d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1puT2P-0002fj-0y
 for intel-wired-lan@lists.osuosl.org; Thu, 04 May 2023 07:06:01 +0000
Date: Thu, 04 May 2023 15:06:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230504070600.W3GbK%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683183987; x=1714719987;
 h=date:from:to:subject:message-id;
 bh=TK0cuqyzF8jg8T0qSnvby0I41zd7UicQeGbpRwtm6HA=;
 b=LfsnCDYk30gMBNHN172P43V/KKinF7+wKmbrkXzc+6sK9gMUFZRy1USQ
 CAXcsXBv2bkuCQFojOYX4ZFg9rL/VoJP1GPK/cw1Kyb0QNeHTIRy+LlQs
 TTTifx3D2U9gYOsu+tEy0mfEZcYEqOP7AB+zMVZ3jM7g1Ao6POlYIZLgj
 X3tXETLEPXOcBFNnGXJSRJn8VpEZYhOVJysEt9MgXiLB3uHGxJccMnjEF
 0xHdJAkZExY7i1lrWKNcb4yvCFd/k+/2VjrJn35UgwPVHh52j4ud6eDmc
 PnRRme+pDzCGA4QrfeoImccXoSTxUhnYifRHmlUT4FSyhUR3XEPI3+3iw
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LfsnCDYk
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 b66b8ee166284b699dd2dfc65baa244db27cf562
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
branch HEAD: b66b8ee166284b699dd2dfc65baa244db27cf562  ice: Fix undersized tx_flags variable

elapsed time: 913m

configs tested: 153
configs skipped: 13

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230501   gcc  
alpha                randconfig-r022-20230501   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r006-20230501   gcc  
arc                  randconfig-r043-20230430   gcc  
arc                  randconfig-r043-20230501   gcc  
arc                  randconfig-r043-20230502   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r003-20230430   clang
arm                  randconfig-r011-20230501   gcc  
arm                  randconfig-r046-20230430   gcc  
arm                  randconfig-r046-20230501   gcc  
arm                  randconfig-r046-20230502   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r003-20230502   clang
arm64                randconfig-r006-20230430   gcc  
arm64                randconfig-r014-20230430   clang
arm64                randconfig-r023-20230501   clang
csky                                defconfig   gcc  
csky                 randconfig-r001-20230430   gcc  
csky                 randconfig-r011-20230430   gcc  
csky                 randconfig-r025-20230501   gcc  
hexagon              randconfig-r013-20230502   clang
hexagon              randconfig-r041-20230430   clang
hexagon              randconfig-r041-20230501   clang
hexagon              randconfig-r041-20230502   clang
hexagon              randconfig-r045-20230430   clang
hexagon              randconfig-r045-20230501   clang
hexagon              randconfig-r045-20230502   clang
i386                             allyesconfig   gcc  
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
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r005-20230501   gcc  
ia64         buildonly-randconfig-r005-20230502   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r003-20230501   gcc  
loongarch    buildonly-randconfig-r004-20230501   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230502   gcc  
loongarch            randconfig-r005-20230430   gcc  
loongarch            randconfig-r023-20230502   gcc  
loongarch            randconfig-r025-20230502   gcc  
loongarch            randconfig-r036-20230502   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r012-20230502   gcc  
microblaze   buildonly-randconfig-r006-20230430   gcc  
microblaze           randconfig-r001-20230501   gcc  
microblaze           randconfig-r002-20230430   gcc  
microblaze           randconfig-r016-20230502   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r001-20230502   gcc  
mips                 randconfig-r012-20230501   gcc  
mips                 randconfig-r013-20230501   gcc  
mips                 randconfig-r021-20230502   clang
mips                 randconfig-r023-20230430   gcc  
mips                 randconfig-r024-20230502   clang
nios2        buildonly-randconfig-r004-20230430   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r002-20230502   gcc  
nios2                randconfig-r021-20230430   gcc  
nios2                randconfig-r034-20230502   gcc  
nios2                randconfig-r035-20230502   gcc  
openrisc             randconfig-r004-20230501   gcc  
openrisc             randconfig-r022-20230502   gcc  
openrisc             randconfig-r026-20230430   gcc  
parisc       buildonly-randconfig-r003-20230430   gcc  
parisc       buildonly-randconfig-r006-20230502   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r011-20230502   gcc  
parisc               randconfig-r025-20230430   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r001-20230430   clang
powerpc      buildonly-randconfig-r005-20230430   clang
powerpc      buildonly-randconfig-r006-20230501   clang
powerpc              randconfig-r012-20230430   clang
powerpc              randconfig-r022-20230430   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r002-20230501   clang
riscv                               defconfig   gcc  
riscv                randconfig-r014-20230501   clang
riscv                randconfig-r015-20230501   clang
riscv                randconfig-r031-20230502   clang
riscv                randconfig-r042-20230430   clang
riscv                randconfig-r042-20230501   clang
riscv                randconfig-r042-20230502   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r032-20230502   clang
s390                 randconfig-r044-20230430   clang
s390                 randconfig-r044-20230501   clang
s390                 randconfig-r044-20230502   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r003-20230502   gcc  
sh                   randconfig-r004-20230502   gcc  
sparc        buildonly-randconfig-r002-20230430   gcc  
sparc        buildonly-randconfig-r004-20230502   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r002-20230501   gcc  
sparc                randconfig-r015-20230502   gcc  
sparc                randconfig-r024-20230430   gcc  
sparc64      buildonly-randconfig-r002-20230502   gcc  
sparc64              randconfig-r021-20230501   gcc  
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
x86_64               randconfig-r016-20230501   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r001-20230501   gcc  
xtensa               randconfig-r005-20230502   gcc  
xtensa               randconfig-r033-20230502   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
