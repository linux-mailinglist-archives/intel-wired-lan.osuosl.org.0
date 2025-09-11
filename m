Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 210A2B537F8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Sep 2025 17:38:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDCE084962;
	Thu, 11 Sep 2025 15:38:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uH8ZRgJXH2Mq; Thu, 11 Sep 2025 15:38:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4BEC84963
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757605082;
	bh=m5qCN0Y/rty8eaqnqTB7QR1CCnIltZ8yrmRHdqD+MCk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zVjTp87fWn8nh7A/rK/X2Cmq2pZF3rSdKFVuUan/AqXVEpYxgVX30jgYTdmDjvDjD
	 cLdykeI3elyUXpfZDlhVcOf9LNWR5FcU+FmmEV0nbCnfv7tXcQXgCeAma8K/LPpvE+
	 VNfycYZwGZE47pzu1BNrtduA5iP1b15hVKgopGG2xoeD1FhMV9Go16YVSv4FVvMx19
	 TawEky3Nkhi288ukNVKWQRlsSS34uW70/qBnYbFB54EIPkC7s8TF3zk9WnU12/R7aa
	 IxoOQBD2TBCiWpK+AMTRXriCpWP6tNCCJZHHmr10ksCtFzbXVZAD/UMjI9TtjUS/NH
	 udm1PXBp1Fp9Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4BEC84963;
	Thu, 11 Sep 2025 15:38:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 16375234
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 15:38:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F1061421F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 15:38:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gznQO61LqIxI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Sep 2025 15:38:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 00C27421DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00C27421DB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 00C27421DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 15:37:59 +0000 (UTC)
X-CSE-ConnectionGUID: jQmHR/00SJCUktGZuuuUYw==
X-CSE-MsgGUID: 95HAy/M4RO+q7GlBIlC34w==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="59638922"
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="59638922"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 08:38:00 -0700
X-CSE-ConnectionGUID: s6uUrhp2T+KNGQ+8TjGUGw==
X-CSE-MsgGUID: 62RQdHtWS/uirFQAVZR+sQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="172898171"
Received: from lkp-server02.sh.intel.com (HELO eb5fdfb2a9b7) ([10.239.97.151])
 by orviesa006.jf.intel.com with ESMTP; 11 Sep 2025 08:37:58 -0700
Received: from kbuild by eb5fdfb2a9b7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uwjMq-0000PY-31
 for intel-wired-lan@lists.osuosl.org; Thu, 11 Sep 2025 15:37:50 +0000
Date: Thu, 11 Sep 2025 23:37:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202509112319.gQ2o9EfT-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757605080; x=1789141080;
 h=date:from:to:subject:message-id;
 bh=LYT6kvyDMo56ETrzp5YGJddCRLNMgcWxpq9U4+0YZHw=;
 b=h07M/5NhDtTOrGgQpQXjMUxSZAsxxXMI3bfI9Wmuw/bMrj/ZP2MJUpua
 2kq0VC/u51IcYPK1pe+a6+AaeyIWyCLrabZxy8jJfxRY7X2nz/0u5RaHX
 wEghzivR/sVlhdM7E00+wnERPmXvWq1Tb4O71Apx9TgLzHvaVl4FJUvQe
 T6cwFSRya1BRJU4eGuUg3d//y6o3TqVhQNy6BZ3RegbqCj/RZ32KxDcu3
 iHDPZD8SFF07MKRTioi/hmhGdNMkpG+DiiDGAPWNGp1O6i/j2/1OY80PK
 LGaoHVQzgrssvoZ7ur3IV5nZPTVM5/X0W9TjC0eW9tQrll+yzJ2SyFIUr
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h07M/5Nh
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 78dd8ad62cad4f5af22afc842890d531312bbb8a
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
branch HEAD: 78dd8ad62cad4f5af22afc842890d531312bbb8a  Merge branch 'mptcp-misc-fixes-for-v6-17-rc6'

elapsed time: 2262m

configs tested: 112
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250911    gcc-8.5.0
arc                   randconfig-002-20250911    gcc-12.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250911    clang-22
arm                   randconfig-002-20250911    gcc-14.3.0
arm                   randconfig-003-20250911    clang-22
arm                   randconfig-004-20250911    clang-16
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250911    gcc-13.4.0
arm64                 randconfig-002-20250911    gcc-8.5.0
arm64                 randconfig-003-20250911    gcc-8.5.0
arm64                 randconfig-004-20250911    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250911    gcc-15.1.0
csky                  randconfig-002-20250911    gcc-13.4.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250911    clang-20
hexagon               randconfig-002-20250911    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20250911    clang-20
i386        buildonly-randconfig-002-20250911    clang-20
i386        buildonly-randconfig-003-20250911    clang-20
i386        buildonly-randconfig-004-20250911    clang-20
i386        buildonly-randconfig-005-20250911    clang-20
i386        buildonly-randconfig-006-20250911    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250911    gcc-15.1.0
loongarch             randconfig-002-20250911    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250911    gcc-11.5.0
nios2                 randconfig-002-20250911    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250911    gcc-8.5.0
parisc                randconfig-002-20250911    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc               randconfig-001-20250911    gcc-8.5.0
powerpc               randconfig-002-20250911    gcc-15.1.0
powerpc               randconfig-003-20250911    gcc-8.5.0
powerpc64             randconfig-001-20250911    clang-22
powerpc64             randconfig-002-20250911    gcc-11.5.0
powerpc64             randconfig-003-20250911    gcc-8.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250911    clang-20
riscv                 randconfig-002-20250911    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250911    gcc-11.5.0
s390                  randconfig-002-20250911    clang-16
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250911    gcc-9.5.0
sh                    randconfig-002-20250911    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250911    gcc-15.1.0
sparc                 randconfig-002-20250911    gcc-15.1.0
sparc64               randconfig-001-20250911    gcc-8.5.0
sparc64               randconfig-002-20250911    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                    randconfig-001-20250911    clang-22
um                    randconfig-002-20250911    gcc-14
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250911    gcc-14
x86_64      buildonly-randconfig-002-20250911    gcc-14
x86_64      buildonly-randconfig-003-20250911    clang-20
x86_64      buildonly-randconfig-004-20250911    clang-20
x86_64      buildonly-randconfig-005-20250911    clang-20
x86_64      buildonly-randconfig-006-20250911    gcc-14
x86_64                              defconfig    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250911    gcc-12.5.0
xtensa                randconfig-002-20250911    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
