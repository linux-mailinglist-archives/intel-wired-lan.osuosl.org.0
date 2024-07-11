Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1DA92F1A4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jul 2024 00:02:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D317E40274;
	Thu, 11 Jul 2024 22:02:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1YBoMwHrfjA8; Thu, 11 Jul 2024 22:01:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0899E40277
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720735319;
	bh=6DyXK5x5Ft72VH661NI5TwI80MS5VqReCXIhRawk0ug=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=QGt1tW5ma/veV/RcFUhRk1hUe1V2w/o9Io2r0VuLfrLRtttOQrnUEMYzKzbYGS898
	 qr8SFo+5XfMxV1sF0xk6L/Jvly9YZ9JdShvK5pYhEWgw5T73wbK/9Mx+4oeRXW4j7t
	 8IjX1ytiGC/WqrpfcffUivYopf+qAu8FeP7MzcvlGmi7dyiJN6zoux05RxCXla9OOB
	 vmNJQ8m0E3zZJwjqQXhpw8UTzDNsPK/Jxsc6K8+HMpi7x8qH2NyyAeOJ5bxhxR4HEO
	 HLwGa6JiOna1TBMuqtMmGLnibDkSpjZochK3id2ssT/8v0oaVH1W3vZ3hNRNloqy+g
	 myD8LuwDLJQew==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0899E40277;
	Thu, 11 Jul 2024 22:01:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E4E751BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 22:01:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DB6EA41482
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 22:01:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5AU7UnrthDfU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jul 2024 22:01:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0DF7F413E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DF7F413E6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0DF7F413E6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 22:01:54 +0000 (UTC)
X-CSE-ConnectionGUID: OSVVK7HPQ2+iEsFiWx4Ilg==
X-CSE-MsgGUID: OQ09umy8QzKoBsYLq54P4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11130"; a="28826963"
X-IronPort-AV: E=Sophos;i="6.09,201,1716274800"; d="scan'208";a="28826963"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 15:01:54 -0700
X-CSE-ConnectionGUID: o7qhEf27QsKb5NDpDMs4yQ==
X-CSE-MsgGUID: wRmjnmVyRJejCDWQu3n67w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,201,1716274800"; d="scan'208";a="53635800"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 11 Jul 2024 15:01:51 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sS1rI-000Zxo-2B
 for intel-wired-lan@lists.osuosl.org; Thu, 11 Jul 2024 22:01:48 +0000
Date: Fri, 12 Jul 2024 06:01:34 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407120632.AxQYvkgK-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720735315; x=1752271315;
 h=date:from:to:subject:message-id;
 bh=fTmW7vn7wInPp25hhhmohBFUEyEMUg3eAR1RF/ofL0g=;
 b=DPt/02ay6DZyAH48reb7j8O7yzVO22IoVdzEBKtC2ZpWElGagnCdafUl
 D706HXN0Lbk06Tc0ZN475PGDGpVOmuh8sGjmB43iP9/frvSrw5YkjMpQq
 w1nEy3vVwzUMuP62EqNZcVKq+u/KB0MYfFPIbCSCda+ZxBQZ0VHHNWuXT
 kwtowASVwxFHzIGYOwU2wWl1VMIpXYHNmWNimleHVc5CwsKaqxJ5o/fCs
 xHK4kou0YHp0t6g5mFCZSpt5+E315n29iPjVdGf0CsXpMjmF1s6diejNY
 pQRxjVyDYOAuuTyDpUcr9Pmyl1rhA/nkZKUoYnKbrN7EaR7Ke3KG+5N/a
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DPt/02ay
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 5b26532cf56e7384d53cfdd78b0bf63313c8cebc
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: 5b26532cf56e7384d53cfdd78b0bf63313c8cebc  i40e: fix: remove needless retries of NVM update

elapsed time: 1386m

configs tested: 195
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240711   gcc-13.2.0
arc                   randconfig-002-20240711   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                                 defconfig   gcc-13.2.0
arm                             mxs_defconfig   clang-19
arm                   randconfig-001-20240711   gcc-13.2.0
arm                   randconfig-002-20240711   gcc-13.2.0
arm                   randconfig-003-20240711   gcc-13.2.0
arm                   randconfig-004-20240711   gcc-13.2.0
arm                        vexpress_defconfig   clang-19
arm64                            allmodconfig   clang-19
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240711   gcc-13.2.0
arm64                 randconfig-002-20240711   gcc-13.2.0
arm64                 randconfig-003-20240711   gcc-13.2.0
arm64                 randconfig-004-20240711   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240711   gcc-13.2.0
csky                  randconfig-002-20240711   gcc-13.2.0
hexagon                          allmodconfig   clang-19
hexagon                          allyesconfig   clang-19
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-13
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240711   gcc-13
i386         buildonly-randconfig-002-20240711   gcc-10
i386         buildonly-randconfig-002-20240711   gcc-13
i386         buildonly-randconfig-003-20240711   gcc-13
i386         buildonly-randconfig-004-20240711   gcc-13
i386         buildonly-randconfig-004-20240711   gcc-8
i386         buildonly-randconfig-005-20240711   gcc-10
i386         buildonly-randconfig-005-20240711   gcc-13
i386         buildonly-randconfig-006-20240711   gcc-13
i386                                defconfig   clang-18
i386                  randconfig-001-20240711   gcc-13
i386                  randconfig-002-20240711   gcc-10
i386                  randconfig-002-20240711   gcc-13
i386                  randconfig-003-20240711   gcc-13
i386                  randconfig-003-20240711   gcc-8
i386                  randconfig-004-20240711   gcc-13
i386                  randconfig-005-20240711   clang-18
i386                  randconfig-005-20240711   gcc-13
i386                  randconfig-006-20240711   gcc-13
i386                  randconfig-011-20240711   gcc-13
i386                  randconfig-011-20240711   gcc-9
i386                  randconfig-012-20240711   clang-18
i386                  randconfig-012-20240711   gcc-13
i386                  randconfig-013-20240711   gcc-13
i386                  randconfig-014-20240711   clang-18
i386                  randconfig-014-20240711   gcc-13
i386                  randconfig-015-20240711   clang-18
i386                  randconfig-015-20240711   gcc-13
i386                  randconfig-016-20240711   gcc-13
i386                  randconfig-016-20240711   gcc-9
loongarch                        allmodconfig   gcc-13.3.0
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240711   gcc-13.2.0
loongarch             randconfig-002-20240711   gcc-13.2.0
m68k                             allmodconfig   gcc-13.3.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-13.3.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                           gcw0_defconfig   clang-19
mips                      loongson3_defconfig   clang-19
mips                         rt305x_defconfig   clang-19
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240711   gcc-13.2.0
nios2                 randconfig-002-20240711   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.3.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-13.3.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240711   gcc-13.2.0
parisc                randconfig-002-20240711   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-13.3.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-19
powerpc                          allyesconfig   gcc-14.1.0
powerpc                   bluestone_defconfig   clang-19
powerpc                      katmai_defconfig   clang-19
powerpc                       maple_defconfig   clang-19
powerpc               randconfig-001-20240711   gcc-13.2.0
powerpc               randconfig-002-20240711   gcc-13.2.0
powerpc               randconfig-003-20240711   gcc-13.2.0
powerpc                     sequoia_defconfig   clang-19
powerpc64             randconfig-001-20240711   gcc-13.2.0
powerpc64             randconfig-002-20240711   gcc-13.2.0
powerpc64             randconfig-003-20240711   gcc-13.2.0
riscv                            allmodconfig   clang-19
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-13.3.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-19
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240711   gcc-13.2.0
riscv                 randconfig-002-20240711   gcc-13.2.0
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-19
s390                             allyesconfig   gcc-13.2.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240711   gcc-13.2.0
s390                  randconfig-002-20240711   gcc-13.2.0
s390                       zfcpdump_defconfig   clang-19
sh                               allmodconfig   gcc-13.3.0
sh                                allnoconfig   gcc-13.2.0
sh                               allyesconfig   gcc-13.3.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240711   gcc-13.2.0
sh                    randconfig-002-20240711   gcc-13.2.0
sparc                            allmodconfig   gcc-13.3.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240711   gcc-13.2.0
sparc64               randconfig-002-20240711   gcc-13.2.0
um                               allmodconfig   clang-19
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-13
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240711   gcc-13.2.0
um                    randconfig-002-20240711   gcc-13.2.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240711   clang-18
x86_64       buildonly-randconfig-002-20240711   clang-18
x86_64       buildonly-randconfig-003-20240711   clang-18
x86_64       buildonly-randconfig-004-20240711   clang-18
x86_64       buildonly-randconfig-005-20240711   clang-18
x86_64       buildonly-randconfig-006-20240711   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240711   clang-18
x86_64                randconfig-002-20240711   clang-18
x86_64                randconfig-003-20240711   clang-18
x86_64                randconfig-004-20240711   clang-18
x86_64                randconfig-005-20240711   clang-18
x86_64                randconfig-006-20240711   clang-18
x86_64                randconfig-011-20240711   clang-18
x86_64                randconfig-012-20240711   clang-18
x86_64                randconfig-013-20240711   clang-18
x86_64                randconfig-014-20240711   clang-18
x86_64                randconfig-015-20240711   clang-18
x86_64                randconfig-016-20240711   clang-18
x86_64                randconfig-071-20240711   clang-18
x86_64                randconfig-072-20240711   clang-18
x86_64                randconfig-073-20240711   clang-18
x86_64                randconfig-074-20240711   clang-18
x86_64                randconfig-075-20240711   clang-18
x86_64                randconfig-076-20240711   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240711   gcc-13.2.0
xtensa                randconfig-002-20240711   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
