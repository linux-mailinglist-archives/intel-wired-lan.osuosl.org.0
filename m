Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0F4953A42
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2024 20:39:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EF4A2408C9;
	Thu, 15 Aug 2024 18:39:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cNt12R24gE1n; Thu, 15 Aug 2024 18:39:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67974408CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723747165;
	bh=opzy7msCJtCE/4vE8vVIunURF4/wBgDdjV5bHA37I20=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4KGFx3KNAS80coFgI2xY2syrFUIREqusIRitdpB/GIXjJqvHe4ZhzzCXOVNr+jNZo
	 /i3V4rhOJG2g/xV+7BvmtrjZ7JfeU9Vje8H0YcObjvoajxa73mCHTfjOC/G6YKguns
	 FB+D001DMQgaUICSxDD996Yf8XQWkMqnD/WzU50kF9TeYExngnUQdXty4D5HPMbBtw
	 NPYaE3uRnH7SM0gT3MJSlY1YekU/28zjD33yNj3F/SO1YpSJ0fkEIElcWNtG3WYfLN
	 F6rq+MvgJs6QzLmhzDUAlW6oXQ6PhjbmSH5rVpFv/tIxLw+/mUcinUDvGVa+9RqV8u
	 2xkMfVgSB5uhg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 67974408CA;
	Thu, 15 Aug 2024 18:39:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CB4C81BF573
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 18:39:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B7B5D408C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 18:39:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m_RcrlU7VWPM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Aug 2024 18:39:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4A182400B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A182400B5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4A182400B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 18:39:20 +0000 (UTC)
X-CSE-ConnectionGUID: JWAASOr2QTilulhAWLejdA==
X-CSE-MsgGUID: v1sEGxZzSDWNS5GnfGfIyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="25823587"
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="25823587"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 11:39:20 -0700
X-CSE-ConnectionGUID: i2HAmqwCTlGrSESLhTjP6A==
X-CSE-MsgGUID: 18uf4wqERxa+jgY14cjbDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="96960764"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 15 Aug 2024 11:39:19 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sefNU-0005Tm-1x
 for intel-wired-lan@lists.osuosl.org; Thu, 15 Aug 2024 18:39:16 +0000
Date: Fri, 16 Aug 2024 02:38:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408160225.G0X3rGek-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723747162; x=1755283162;
 h=date:from:to:subject:message-id;
 bh=F4hHzd4cFWZFjyaVkeEdV2iUw0JK8MDPuodiUErUbww=;
 b=YCWOFmb73X0J761bTBu+Nk5c5O9yACaUlk+gJYuj9HlHdRUNLdsJwtG6
 hfwVRUyhvBLI4AJrhOx/E43ExDixrY3eJiZ6RuMk4qIO0DhPA/AFy/8YV
 PSkLwXKzMpjlw5QSpLQ4kzHvm1HWiI19xeoogZTRHN2tReicpf64UEf0B
 aS+nDLaPvweBxoo1qY2wQsIJ3YrmreYwU6+Cbd2L77NSUT7pe+rqe/EZo
 1i3oJUgnTJ1g7bswDJbEVUI77ESiHH7kWYj6k05hebCnU63PrPhPiK+iF
 inrGM33jr5o4AAX2ZJkBxmcxRUydm2Hn69e5ldjCw+wBj6ywJp6CRcCRq
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YCWOFmb7
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 fbb612d689c60a82fc2a3065ab8626858ebb7b3a
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: fbb612d689c60a82fc2a3065ab8626858ebb7b3a  idpf: remove redundant 'req_vec_chunks' NULL check

elapsed time: 1463m

configs tested: 138
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                   randconfig-001-20240815   gcc-13.2.0
arc                   randconfig-002-20240815   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                              allyesconfig   gcc-14.1.0
arm                   randconfig-001-20240815   gcc-14.1.0
arm                   randconfig-003-20240815   gcc-14.1.0
arm                   randconfig-004-20240815   gcc-14.1.0
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240815   clang-16
arm64                 randconfig-002-20240815   clang-17
arm64                 randconfig-003-20240815   clang-20
arm64                 randconfig-004-20240815   clang-20
csky                              allnoconfig   gcc-14.1.0
csky                  randconfig-001-20240815   gcc-14.1.0
csky                  randconfig-002-20240815   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240815   clang-20
hexagon               randconfig-002-20240815   clang-20
i386                             allmodconfig   gcc-12
i386                              allnoconfig   gcc-12
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240815   gcc-12
i386         buildonly-randconfig-002-20240815   clang-18
i386         buildonly-randconfig-003-20240815   clang-18
i386         buildonly-randconfig-004-20240815   clang-18
i386         buildonly-randconfig-005-20240815   clang-18
i386         buildonly-randconfig-006-20240815   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240815   gcc-12
i386                  randconfig-002-20240815   clang-18
i386                  randconfig-003-20240815   clang-18
i386                  randconfig-004-20240815   gcc-12
i386                  randconfig-005-20240815   gcc-12
i386                  randconfig-006-20240815   gcc-12
i386                  randconfig-011-20240815   clang-18
i386                  randconfig-012-20240815   clang-18
i386                  randconfig-013-20240815   gcc-12
i386                  randconfig-014-20240815   clang-18
i386                  randconfig-015-20240815   clang-18
i386                  randconfig-016-20240815   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch             randconfig-001-20240815   gcc-14.1.0
loongarch             randconfig-002-20240815   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                 randconfig-001-20240815   gcc-14.1.0
nios2                 randconfig-002-20240815   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240815   gcc-14.1.0
parisc                randconfig-002-20240815   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc               randconfig-001-20240815   gcc-14.1.0
powerpc               randconfig-002-20240815   gcc-14.1.0
powerpc64             randconfig-001-20240815   clang-20
powerpc64             randconfig-002-20240815   gcc-14.1.0
powerpc64             randconfig-003-20240815   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                               defconfig   clang-20
riscv                 randconfig-001-20240815   gcc-14.1.0
riscv                 randconfig-002-20240815   gcc-14.1.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-20
s390                  randconfig-001-20240815   clang-17
s390                  randconfig-002-20240815   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240815   gcc-14.1.0
sh                    randconfig-002-20240815   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240815   gcc-14.1.0
sparc64               randconfig-002-20240815   gcc-14.1.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-12
um                                  defconfig   clang-20
um                             i386_defconfig   gcc-12
um                    randconfig-001-20240815   clang-16
um                    randconfig-002-20240815   gcc-12
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240815   gcc-12
x86_64       buildonly-randconfig-002-20240815   gcc-11
x86_64       buildonly-randconfig-003-20240815   clang-18
x86_64       buildonly-randconfig-004-20240815   gcc-12
x86_64       buildonly-randconfig-005-20240815   gcc-12
x86_64       buildonly-randconfig-006-20240815   gcc-12
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240815   clang-18
x86_64                randconfig-002-20240815   gcc-12
x86_64                randconfig-003-20240815   clang-18
x86_64                randconfig-004-20240815   gcc-12
x86_64                randconfig-005-20240815   clang-18
x86_64                randconfig-006-20240815   gcc-12
x86_64                randconfig-011-20240815   clang-18
x86_64                randconfig-012-20240815   gcc-12
x86_64                randconfig-013-20240815   gcc-12
x86_64                randconfig-014-20240815   gcc-12
x86_64                randconfig-015-20240815   gcc-12
x86_64                randconfig-016-20240815   clang-18
x86_64                randconfig-071-20240815   clang-18
x86_64                randconfig-072-20240815   gcc-12
x86_64                randconfig-073-20240815   clang-18
x86_64                randconfig-074-20240815   gcc-12
x86_64                randconfig-075-20240815   clang-18
x86_64                randconfig-076-20240815   gcc-12
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240815   gcc-14.1.0
xtensa                randconfig-002-20240815   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
