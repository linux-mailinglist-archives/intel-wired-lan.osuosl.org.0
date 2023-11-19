Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B78027F049E
	for <lists+intel-wired-lan@lfdr.de>; Sun, 19 Nov 2023 08:01:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4356D418E2;
	Sun, 19 Nov 2023 07:01:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4356D418E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700377305;
	bh=9BL3hwem5ELJA/1NbVAfaQNHIer+pfOEmE8CiYn5+fk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=RfoTubR8rT35V1DrdaIsK1OOUI7HmHhXZmVdjZ1LShSqjATMp3Y4LBJ+Zk5l1v6CV
	 VfYf49GtD+oeh/QpFqZO8VdWkGchBtdLeDD8Ex2uGsI+kAAaaEwYUBqveNaIYOrFBO
	 mTWoT1DL3SUDMHKLo7Tso3nV0nbP1gW/oHDZcqcSe+RdBpxYAfxmhmJ4Qr79SrSBKw
	 oeoudvGyvo5riPvB8RV++CvCnBKQvz6WZDSwM1JXcAYJdZOR2xI1YJpol+DlBC/uDb
	 IfqPG8aJn8D5djeod5gTIdOF+cbXBigXOVzUjmOOaOsMiKZy1Fms33z3yVTpoaz2RD
	 D5qn8ulZGI8oQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JIsgFzuNzpdr; Sun, 19 Nov 2023 07:01:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 932E241880;
	Sun, 19 Nov 2023 07:01:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 932E241880
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D911D1BF335
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Nov 2023 07:01:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AEACA40201
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Nov 2023 07:01:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEACA40201
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pUv2S-rTLjEw for <intel-wired-lan@lists.osuosl.org>;
 Sun, 19 Nov 2023 07:01:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9FB3740168
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Nov 2023 07:01:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9FB3740168
X-IronPort-AV: E=McAfee;i="6600,9927,10898"; a="455771862"
X-IronPort-AV: E=Sophos;i="6.04,210,1695711600"; d="scan'208";a="455771862"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2023 23:01:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10898"; a="883542138"
X-IronPort-AV: E=Sophos;i="6.04,210,1695711600"; d="scan'208";a="883542138"
Received: from lkp-server02.sh.intel.com (HELO b8de5498638e) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 18 Nov 2023 23:01:32 -0800
Received: from kbuild by b8de5498638e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r4boA-0004kx-13
 for intel-wired-lan@lists.osuosl.org; Sun, 19 Nov 2023 07:01:30 +0000
Date: Sun, 19 Nov 2023 15:01:16 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202311191513.BTMD6nYp-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700377295; x=1731913295;
 h=date:from:to:subject:message-id;
 bh=ut6RVMWmDBYhJcl+9oNJkEenR+fjn2Y05LCdl5TfRag=;
 b=IlyapzhfQ2cAC6RaMTSoxnGvtd7wh1TEQAV+z6SZgOgeLBV9GGhgQecj
 0KgOMfkcCrA76PAtr7ujQHqkXdHC+RLRAJ9lrxHgfLk84t1XviGPJgEgi
 8DqFyVCaX20+CyzYzA80b02Q4qu9tPTQG9DlbTQtr5WrpsgKSWEXWODon
 cfK6HdVKg+Kixe69kPmn4pgz4zQd+tKefDNnCBNOpTnbNjdIVs+Tpnesd
 BxyvX03g85ghvHJTt2t72pD1Rq3pPKOG+r63sRAIt32rLq2lrQYUq6GAD
 mJxWGFLmOTJhi799rWtjE1lnD/8ogQ1ZCkqRUTqsgXgdwbXlsiSyWywpJ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ilyapzhf
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 e07a0dedb637b034406035d9ece843c6fbff5221
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
branch HEAD: e07a0dedb637b034406035d9ece843c6fbff5221  iavf: use iavf_schedule_aq_request() helper

elapsed time: 3236m

configs tested: 255
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
arc                 nsimosci_hs_smp_defconfig   gcc  
arc                   randconfig-001-20231117   gcc  
arc                   randconfig-001-20231119   gcc  
arc                   randconfig-002-20231117   gcc  
arc                   randconfig-002-20231119   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                                 defconfig   gcc  
arm                           h3600_defconfig   gcc  
arm                   randconfig-001-20231117   gcc  
arm                   randconfig-001-20231119   gcc  
arm                   randconfig-002-20231117   gcc  
arm                   randconfig-002-20231119   gcc  
arm                   randconfig-003-20231117   gcc  
arm                   randconfig-003-20231119   gcc  
arm                   randconfig-004-20231117   gcc  
arm                   randconfig-004-20231119   gcc  
arm64                            allmodconfig   clang
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231117   gcc  
arm64                 randconfig-001-20231119   gcc  
arm64                 randconfig-002-20231117   gcc  
arm64                 randconfig-002-20231119   gcc  
arm64                 randconfig-003-20231117   gcc  
arm64                 randconfig-003-20231119   gcc  
arm64                 randconfig-004-20231117   gcc  
arm64                 randconfig-004-20231119   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231117   gcc  
csky                  randconfig-001-20231119   gcc  
csky                  randconfig-002-20231117   gcc  
csky                  randconfig-002-20231119   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20231117   gcc  
i386         buildonly-randconfig-001-20231119   gcc  
i386         buildonly-randconfig-002-20231117   gcc  
i386         buildonly-randconfig-002-20231119   gcc  
i386         buildonly-randconfig-003-20231117   gcc  
i386         buildonly-randconfig-003-20231119   gcc  
i386         buildonly-randconfig-004-20231117   gcc  
i386         buildonly-randconfig-004-20231119   gcc  
i386         buildonly-randconfig-005-20231117   gcc  
i386         buildonly-randconfig-005-20231119   gcc  
i386         buildonly-randconfig-006-20231117   gcc  
i386         buildonly-randconfig-006-20231119   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231117   gcc  
i386                  randconfig-001-20231119   gcc  
i386                  randconfig-002-20231117   gcc  
i386                  randconfig-002-20231119   gcc  
i386                  randconfig-003-20231117   gcc  
i386                  randconfig-003-20231119   gcc  
i386                  randconfig-004-20231117   gcc  
i386                  randconfig-004-20231119   gcc  
i386                  randconfig-005-20231117   gcc  
i386                  randconfig-005-20231119   gcc  
i386                  randconfig-006-20231117   gcc  
i386                  randconfig-006-20231119   gcc  
i386                  randconfig-011-20231117   gcc  
i386                  randconfig-011-20231119   gcc  
i386                  randconfig-012-20231117   gcc  
i386                  randconfig-012-20231119   gcc  
i386                  randconfig-013-20231117   gcc  
i386                  randconfig-013-20231119   gcc  
i386                  randconfig-014-20231117   gcc  
i386                  randconfig-014-20231119   gcc  
i386                  randconfig-015-20231117   gcc  
i386                  randconfig-015-20231119   gcc  
i386                  randconfig-016-20231117   gcc  
i386                  randconfig-016-20231119   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231117   gcc  
loongarch             randconfig-001-20231119   gcc  
loongarch             randconfig-002-20231117   gcc  
loongarch             randconfig-002-20231119   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                          hp300_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231117   gcc  
nios2                 randconfig-001-20231119   gcc  
nios2                 randconfig-002-20231117   gcc  
nios2                 randconfig-002-20231119   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231117   gcc  
parisc                randconfig-001-20231119   gcc  
parisc                randconfig-002-20231117   gcc  
parisc                randconfig-002-20231119   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                        cell_defconfig   gcc  
powerpc                     ep8248e_defconfig   gcc  
powerpc                    klondike_defconfig   gcc  
powerpc               randconfig-001-20231117   gcc  
powerpc               randconfig-001-20231119   gcc  
powerpc               randconfig-002-20231117   gcc  
powerpc               randconfig-002-20231119   gcc  
powerpc               randconfig-003-20231117   gcc  
powerpc               randconfig-003-20231119   gcc  
powerpc64             randconfig-001-20231117   gcc  
powerpc64             randconfig-001-20231119   gcc  
powerpc64             randconfig-002-20231117   gcc  
powerpc64             randconfig-002-20231119   gcc  
powerpc64             randconfig-003-20231117   gcc  
powerpc64             randconfig-003-20231119   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231117   gcc  
riscv                 randconfig-001-20231119   gcc  
riscv                 randconfig-002-20231117   gcc  
riscv                 randconfig-002-20231119   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231117   gcc  
s390                  randconfig-001-20231119   gcc  
s390                  randconfig-002-20231117   gcc  
s390                  randconfig-002-20231119   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                          polaris_defconfig   gcc  
sh                    randconfig-001-20231117   gcc  
sh                    randconfig-001-20231119   gcc  
sh                    randconfig-002-20231117   gcc  
sh                    randconfig-002-20231119   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                       sparc64_defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231117   gcc  
sparc64               randconfig-001-20231119   gcc  
sparc64               randconfig-002-20231117   gcc  
sparc64               randconfig-002-20231119   gcc  
um                               allmodconfig   gcc  
um                                allnoconfig   gcc  
um                               allyesconfig   gcc  
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231117   gcc  
um                    randconfig-001-20231119   gcc  
um                    randconfig-002-20231117   gcc  
um                    randconfig-002-20231119   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20231117   gcc  
x86_64       buildonly-randconfig-001-20231119   gcc  
x86_64       buildonly-randconfig-002-20231117   gcc  
x86_64       buildonly-randconfig-002-20231119   gcc  
x86_64       buildonly-randconfig-003-20231117   gcc  
x86_64       buildonly-randconfig-003-20231119   gcc  
x86_64       buildonly-randconfig-004-20231117   gcc  
x86_64       buildonly-randconfig-004-20231119   gcc  
x86_64       buildonly-randconfig-005-20231117   gcc  
x86_64       buildonly-randconfig-005-20231119   gcc  
x86_64       buildonly-randconfig-006-20231117   gcc  
x86_64       buildonly-randconfig-006-20231119   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231117   gcc  
x86_64                randconfig-001-20231119   gcc  
x86_64                randconfig-002-20231117   gcc  
x86_64                randconfig-002-20231119   gcc  
x86_64                randconfig-003-20231117   gcc  
x86_64                randconfig-003-20231119   gcc  
x86_64                randconfig-004-20231117   gcc  
x86_64                randconfig-004-20231119   gcc  
x86_64                randconfig-005-20231117   gcc  
x86_64                randconfig-005-20231119   gcc  
x86_64                randconfig-006-20231117   gcc  
x86_64                randconfig-006-20231119   gcc  
x86_64                randconfig-011-20231117   gcc  
x86_64                randconfig-011-20231119   gcc  
x86_64                randconfig-012-20231117   gcc  
x86_64                randconfig-012-20231119   gcc  
x86_64                randconfig-013-20231117   gcc  
x86_64                randconfig-013-20231119   gcc  
x86_64                randconfig-014-20231117   gcc  
x86_64                randconfig-014-20231119   gcc  
x86_64                randconfig-015-20231117   gcc  
x86_64                randconfig-015-20231119   gcc  
x86_64                randconfig-016-20231117   gcc  
x86_64                randconfig-016-20231119   gcc  
x86_64                randconfig-071-20231117   gcc  
x86_64                randconfig-071-20231119   gcc  
x86_64                randconfig-072-20231117   gcc  
x86_64                randconfig-072-20231119   gcc  
x86_64                randconfig-073-20231117   gcc  
x86_64                randconfig-073-20231119   gcc  
x86_64                randconfig-074-20231117   gcc  
x86_64                randconfig-074-20231119   gcc  
x86_64                randconfig-075-20231117   gcc  
x86_64                randconfig-075-20231119   gcc  
x86_64                randconfig-076-20231117   gcc  
x86_64                randconfig-076-20231119   gcc  
x86_64                           rhel-8.3-bpf   clang
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                randconfig-001-20231117   gcc  
xtensa                randconfig-001-20231119   gcc  
xtensa                randconfig-002-20231117   gcc  
xtensa                randconfig-002-20231119   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
