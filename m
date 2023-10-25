Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 935607D6EE5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Oct 2023 16:41:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1860440A15;
	Wed, 25 Oct 2023 14:41:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1860440A15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698244895;
	bh=F0sMktePLhaax2tUPbXPGlcGSPDN1xPtO0fhrnsa4KM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ZisthQ2RuAqeNFDAPsbm2ykrHLadQQQOonXYxBbp1PCvhVbFamu5KQuXrPaa88ASh
	 /zfZbuM1nOazXMjSgjx3UjbLM4jAjLqeUcyoyVjgdkQSheqgbSPIVmKegXdEKhhc3j
	 MbrsM//qMHsjHYPjxyaxypLA5QNowEixjtgHA/l0wrErtapiMdp65RDnex0MQtx668
	 fLluSFmQTrM0ZjcVyYPLYJnDk60jQ6Yz/rxgGA+KAuo1EH+SnWpFhEYZt5g6+UGWcB
	 P4ngbb+ldz6dlnpYXn4LjAvvhXwkYnKC8MsIrNyJW4/DqRVkLrvYMW98izpIpbYJls
	 s4TsFkbmwAEIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yfxADjCFc7CH; Wed, 25 Oct 2023 14:41:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 052514116F;
	Wed, 25 Oct 2023 14:41:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 052514116F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 61A6F1BF392
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 14:41:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 43998850FF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 14:41:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43998850FF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xziD8_pw6UrQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 14:41:27 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E26A5850FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 14:41:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E26A5850FB
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="386202209"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="386202209"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 07:41:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="735413457"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="735413457"
Received: from lkp-server01.sh.intel.com (HELO 8917679a5d3e) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 25 Oct 2023 07:41:11 -0700
Received: from kbuild by 8917679a5d3e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qvf4H-0008wn-1X
 for intel-wired-lan@lists.osuosl.org; Wed, 25 Oct 2023 14:41:09 +0000
Date: Wed, 25 Oct 2023 22:40:16 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202310252212.K8h5rAmT-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698244886; x=1729780886;
 h=date:from:to:subject:message-id;
 bh=oRwI1jwJwQyQg4lqxAhWvL3dhsBYgdSfPxwsJdfS9SU=;
 b=I6ppbjDnoYT3j+WmPnpl7IXZS0mHteD5qDDGNRp3iNwrOnGWtNLEJW0E
 5hgeQovzbEWlHBeHrEGmk3Pg9gxCMTnFNpwwX+ktfTLZSLUnp6TgJst+h
 +/dwCK5DqoHxGGg5vMafXkh2kTcST5Rir+YWMtNyzn2KcsXrCBsUKTzTX
 rFDYZ6nxxV/PCbLvE6260IiKIO7nhYfSkF8A0i6+Vv/OLwx4XOxST2tVV
 5tGwBXzCKRnf80IKO20caJfAvN3SsGcO6VswMP8Dj1sZdJqrv5L2j8KOW
 oai9Tn8Wq8z/oU8nV1iLahoCXBLS/QLJFKY/iF09F+6GQCStHfOWiwpqR
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I6ppbjDn
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 cd8892c07876da0c4b50e020048a32a28596a074
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: cd8892c07876da0c4b50e020048a32a28596a074  Merge branch 'gtp-tunnel-driver-fixes'

elapsed time: 1574m

configs tested: 178
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
arc                            hsdk_defconfig   gcc  
arc                   randconfig-001-20231024   gcc  
arc                   randconfig-001-20231025   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                         axm55xx_defconfig   gcc  
arm                                 defconfig   gcc  
arm                          ixp4xx_defconfig   clang
arm                   randconfig-001-20231025   gcc  
arm                           u8500_defconfig   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             alldefconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20231025   gcc  
i386         buildonly-randconfig-002-20231025   gcc  
i386         buildonly-randconfig-003-20231025   gcc  
i386         buildonly-randconfig-004-20231025   gcc  
i386         buildonly-randconfig-005-20231025   gcc  
i386         buildonly-randconfig-006-20231025   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231025   gcc  
i386                  randconfig-002-20231025   gcc  
i386                  randconfig-003-20231025   gcc  
i386                  randconfig-004-20231025   gcc  
i386                  randconfig-005-20231025   gcc  
i386                  randconfig-006-20231025   gcc  
i386                  randconfig-011-20231025   gcc  
i386                  randconfig-012-20231025   gcc  
i386                  randconfig-013-20231025   gcc  
i386                  randconfig-014-20231025   gcc  
i386                  randconfig-015-20231025   gcc  
i386                  randconfig-016-20231025   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231024   gcc  
loongarch             randconfig-001-20231025   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                         amcore_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                        mvme16x_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                     cu1000-neo_defconfig   clang
mips                      fuloong2e_defconfig   gcc  
mips                           jazz_defconfig   gcc  
mips                          rb532_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                  or1klitex_defconfig   gcc  
parisc                           alldefconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-64bit_defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                        cell_defconfig   gcc  
powerpc                       holly_defconfig   gcc  
powerpc                       maple_defconfig   gcc  
powerpc                 mpc832x_rdb_defconfig   clang
powerpc                 mpc836x_rdk_defconfig   clang
powerpc                      pasemi_defconfig   gcc  
powerpc                     redwood_defconfig   gcc  
powerpc                     taishan_defconfig   gcc  
powerpc                     tqm8548_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231025   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231025   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        dreamcast_defconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                 kfr2r09-romimage_defconfig   gcc  
sh                   rts7751r2dplus_defconfig   gcc  
sh                           se7780_defconfig   gcc  
sh                            shmin_defconfig   gcc  
sh                            titan_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20231025   gcc  
sparc                       sparc32_defconfig   gcc  
sparc                       sparc64_defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20231025   gcc  
x86_64       buildonly-randconfig-002-20231025   gcc  
x86_64       buildonly-randconfig-003-20231025   gcc  
x86_64       buildonly-randconfig-004-20231025   gcc  
x86_64       buildonly-randconfig-005-20231025   gcc  
x86_64       buildonly-randconfig-006-20231025   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20231025   gcc  
x86_64                randconfig-002-20231025   gcc  
x86_64                randconfig-003-20231025   gcc  
x86_64                randconfig-004-20231025   gcc  
x86_64                randconfig-005-20231025   gcc  
x86_64                randconfig-006-20231025   gcc  
x86_64                randconfig-011-20231025   gcc  
x86_64                randconfig-012-20231025   gcc  
x86_64                randconfig-013-20231025   gcc  
x86_64                randconfig-014-20231025   gcc  
x86_64                randconfig-015-20231025   gcc  
x86_64                randconfig-016-20231025   gcc  
x86_64                randconfig-071-20231025   gcc  
x86_64                randconfig-072-20231025   gcc  
x86_64                randconfig-073-20231025   gcc  
x86_64                randconfig-074-20231025   gcc  
x86_64                randconfig-075-20231025   gcc  
x86_64                randconfig-076-20231025   gcc  
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                  cadence_csp_defconfig   gcc  
xtensa                  nommu_kc705_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
