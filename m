Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D579F6A9684
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Mar 2023 12:38:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E976416BC;
	Fri,  3 Mar 2023 11:38:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E976416BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677843502;
	bh=URql4H4I33ctZB9kK2ib6O9iCGnottu5qWpl15zDyuw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=OZGfDsZ+u/fKnf1rEdMxaTCenpR+lPFTEhR/QJAAwCcKQBmhaee5+FMbdzq8skS3m
	 eDqO/Arn+RknM/Q9Ej3Zz7KSaQuA9+krvndz+tSq8L4hrrT5eFG4rv7o30cL7biI5q
	 lgC7Czx/w9JS/9LICFQouuKjxLX3lIDgCix/DlmzmI0o8tmJVfQ6iNLxMXEt3tlHBl
	 y5Cn2Ow4JnEt6DBXiQoV0XT3ySQXnHxH+VLdEz0a62fPQ0vtpWRrlKPjnGnHSXQglv
	 GP/qK1dJA4baWbPjD25DPvLmkKuCTEBEPVgKQt3fkpS1lYgTtxc/uDr+NJJOm8lANv
	 cyVtnQgzjTKnQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TbPXFxGglOVw; Fri,  3 Mar 2023 11:38:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3420C40902;
	Fri,  3 Mar 2023 11:38:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3420C40902
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 861641BF307
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 11:38:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6B9C2820F0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 11:38:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B9C2820F0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nXmaGr3cb69Q for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Mar 2023 11:38:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A871820EF
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0A871820EF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 11:38:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="335047994"
X-IronPort-AV: E=Sophos;i="5.98,230,1673942400"; d="scan'208";a="335047994"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2023 03:38:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="707798233"
X-IronPort-AV: E=Sophos;i="5.98,230,1673942400"; d="scan'208";a="707798233"
Received: from lkp-server01.sh.intel.com (HELO 776573491cc5) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 03 Mar 2023 03:38:13 -0800
Received: from kbuild by 776573491cc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pY3jo-0001Po-1r;
 Fri, 03 Mar 2023 11:38:12 +0000
Date: Fri, 03 Mar 2023 19:37:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6401dbfa.I2xEHZYqY/Z1aJuD%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677843494; x=1709379494;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=vHUL0IdmstyYws2m3Lazrc9ORdgU2koEZULYb8SVQdc=;
 b=kqJsdCNZBLbQuDJKVSkgNGDxtRmuWyXPSVN1URuFGeXsrF3XFT4GpDfB
 ZHSNlDB0Zee27EHBvaw809bJY2gVSJmreWUtGpe7R8IYHWg+I1+XV4swz
 tnaC6cVgyG/MQcWeipqE5sFzZE+ZzFPajUVqOl8x4OsNriB69BgGLylS0
 QSlmQ+gTBsBFZcxdJ/mY5kAZym7fesfOI7yWxYBSDKzJWsKGj/t/boxYb
 Gz+GByEQlIKxuR1QDtiYbtxZMR9YSC6xZ8UYq0a+QOD3mwU01YbPyOL71
 MKCpcCJOpqTXV8WJ0cmd+K4obmGNnePoJqELRNK6o6YKlT1YrU1CZc4Z/
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kqJsdCNZ
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 8074e76bd1cf471ec3076ca17cb537ac34ad8e1c
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 8074e76bd1cf471ec3076ca17cb537ac34ad8e1c  ice: copy last block omitted in ice_get_module_eeprom()

elapsed time: 783m

configs tested: 109
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r016-20230303   gcc  
alpha                randconfig-r036-20230302   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r005-20230302   gcc  
arc                  randconfig-r013-20230302   gcc  
arc                  randconfig-r043-20230302   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r003-20230302   clang
arm                  randconfig-r011-20230302   gcc  
arm                  randconfig-r012-20230302   gcc  
arm                  randconfig-r014-20230303   clang
arm                  randconfig-r025-20230302   gcc  
arm                  randconfig-r031-20230302   clang
arm                  randconfig-r046-20230302   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r014-20230302   clang
arm64                randconfig-r034-20230302   gcc  
csky         buildonly-randconfig-r006-20230302   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r002-20230302   gcc  
csky                 randconfig-r005-20230303   gcc  
hexagon      buildonly-randconfig-r005-20230302   clang
hexagon              randconfig-r001-20230303   clang
hexagon              randconfig-r045-20230302   clang
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
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r035-20230302   gcc  
microblaze   buildonly-randconfig-r003-20230302   gcc  
microblaze           randconfig-r023-20230302   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r026-20230302   gcc  
openrisc     buildonly-randconfig-r004-20230302   gcc  
openrisc             randconfig-r015-20230303   gcc  
openrisc             randconfig-r032-20230302   gcc  
parisc       buildonly-randconfig-r002-20230302   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r012-20230303   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r003-20230303   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r002-20230303   clang
riscv                randconfig-r004-20230303   clang
riscv                randconfig-r006-20230303   clang
riscv                randconfig-r013-20230303   gcc  
riscv                randconfig-r042-20230302   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230302   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r016-20230302   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r004-20230302   gcc  
sparc                randconfig-r021-20230302   gcc  
sparc64              randconfig-r022-20230302   gcc  
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
xtensa       buildonly-randconfig-r001-20230302   gcc  
xtensa               randconfig-r015-20230302   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
