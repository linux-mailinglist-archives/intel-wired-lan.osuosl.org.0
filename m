Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6F76BDFFE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Mar 2023 05:09:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B580082146;
	Fri, 17 Mar 2023 04:09:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B580082146
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679026178;
	bh=kH/PWY0qwVHjAzv14kZvD+MnV+fmByluOsu8vW/gDxw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=etz8Ggai13PfmHHrSGT+faNZEL0XG21NEhZnFu+FAiPcQ1P75S47XDNKYCiekVO51
	 dRsgZESux6ujmz3Pu1waGMIdZLyjSy5feL3beKK5wWVMOMNMEyTEQuhWa5KXeUdysh
	 N3TdDc3xjKMKeFXHzmUx7ljYsf209b3mrjIK98XUbSJiRKRcr7LBnEmysnoEpXDU6Z
	 9rS/DERddWUtUo6xtIKGOGti3y14d+UUjn5RalnTzFPq3+p9zcAkcT8FDeCvYIKnRK
	 Go1KG6SBcrvc6vjc+UF/KZghiIBwFkKfBw8y4ZhpFPfwD2TYI3JG8Ty9XC+Wln+uUC
	 mmCRTAdducrLw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hjRqmxDlmRRY; Fri, 17 Mar 2023 04:09:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A4F4820B7;
	Fri, 17 Mar 2023 04:09:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A4F4820B7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 727F21BF28C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Mar 2023 04:09:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 421AD4046A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Mar 2023 04:09:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 421AD4046A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hD4zIrd6kjC0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Mar 2023 04:09:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B47940129
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5B47940129
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Mar 2023 04:09:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="403050785"
X-IronPort-AV: E=Sophos;i="5.98,267,1673942400"; d="scan'208";a="403050785"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 21:08:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="710374193"
X-IronPort-AV: E=Sophos;i="5.98,267,1673942400"; d="scan'208";a="710374193"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 16 Mar 2023 21:08:56 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pd1Oh-00094c-1r;
 Fri, 17 Mar 2023 04:08:55 +0000
Date: Fri, 17 Mar 2023 12:08:12 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6413e7ac.6EelS1PGj1kL4km+%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679026171; x=1710562171;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=TLaYJQ7WFvHqvJTrg/JQE4Kgd/8hJYMYpP/IkaJe76Q=;
 b=SyYLrh8/6JQXZ2zq9R0yhbgxCW2vlfeIpSvyusHkCArErySRObUbidBG
 Ymzg+M/lZu5VxoZN6dAojYXghh2wAoajNzK7Ryb90QaX6fVPpdFtFstrm
 OsOzqAHBRxxzrarouHaGV2jKso1WTmzzWWvAkEdfN6dcOG/ot7wCaTCVB
 rhUHbhyKVdL4n0dEKacmGaLIOTQMgzkUOYJBgy+X/AMhf86+ExGTPBy6S
 dLJcifj/UE3Bnv8PnzVm6nj6Np9eWTsI5T3YA9b8ZlByGBCdsKjE6p4UW
 VbvGCzzth1rj2xeVYB7Z0w7L7taxsDHzuZCMoiqT0muKk0Ms8WWkZwYGf
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SyYLrh8/
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 67140759e0fb842329a5d268e77978cbf40ff82f
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
branch HEAD: 67140759e0fb842329a5d268e77978cbf40ff82f  ice: add ability to read FW logging data

elapsed time: 723m

configs tested: 113
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230313   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r016-20230312   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r004-20230312   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r013-20230313   gcc  
arc                  randconfig-r026-20230315   gcc  
arc                  randconfig-r043-20230312   gcc  
arc                  randconfig-r043-20230313   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r021-20230315   gcc  
arm                  randconfig-r046-20230312   clang
arm                  randconfig-r046-20230313   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r011-20230312   gcc  
csky                                defconfig   gcc  
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
ia64         buildonly-randconfig-r002-20230312   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r012-20230312   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r005-20230312   gcc  
m68k                 randconfig-r016-20230313   gcc  
m68k                 randconfig-r023-20230315   gcc  
microblaze   buildonly-randconfig-r002-20230313   gcc  
microblaze           randconfig-r006-20230312   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r006-20230312   gcc  
mips                 randconfig-r001-20230312   gcc  
nios2        buildonly-randconfig-r003-20230312   gcc  
nios2        buildonly-randconfig-r005-20230313   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r012-20230313   gcc  
openrisc             randconfig-r022-20230315   gcc  
parisc       buildonly-randconfig-r006-20230313   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r004-20230313   gcc  
riscv                randconfig-r014-20230312   gcc  
riscv                randconfig-r042-20230312   gcc  
riscv                randconfig-r042-20230313   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230312   gcc  
s390                 randconfig-r044-20230313   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r005-20230312   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r025-20230315   gcc  
sparc64              randconfig-r001-20230313   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
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
x86_64               randconfig-k001-20230313   clang
x86_64               randconfig-r002-20230313   gcc  
x86_64                           rhel-8.3-bpf   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                           rhel-8.3-syz   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r001-20230312   gcc  
xtensa               randconfig-r015-20230312   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
