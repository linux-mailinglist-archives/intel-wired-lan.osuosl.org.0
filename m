Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 052CBC37352
	for <lists+intel-wired-lan@lfdr.de>; Wed, 05 Nov 2025 18:54:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 728E584393;
	Wed,  5 Nov 2025 17:54:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MZlcHK-KeyaN; Wed,  5 Nov 2025 17:54:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B2AB58439A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762365240;
	bh=g/7aRyu357H4mXZ9CaUMfKanpc1qWZtR4Pxu7yvkaEA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ntbske4HFMlBxyd9kWMyrqCjpY+rs701iXTKfPyTzJrv+exVv9x8FoWQ0giUMuPn1
	 9NwcLueACTUwQYtQupEgWPdiHXNtBFrt+4jlP7aO7pxiFVCdf8LhUFIwHu3bJtaBuC
	 h0Wxicq92OdBfHlIdiExOyZ8BdEOvO/SDlnIzpZqkKh8IF5oJQN7m9WCm1DmbYS24a
	 HZG3eX3Rzx8Am9OuiYxTkOOmUC/6kjnESPxUQaw2tmFgcqrBPx9rKJzaPGxPUBkSvQ
	 zYnQJzSkxHQMDkvYKmRcaMJBX5DhzlsOU8blumVpHPku2AtWDd22uCS3bmpqpAO3pg
	 7R0iDpp255sbA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2AB58439A;
	Wed,  5 Nov 2025 17:54:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 83D7B222
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 17:53:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 80C2884393
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 17:53:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AIoyzwn580eG for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Nov 2025 17:53:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8B7CB84391
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B7CB84391
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8B7CB84391
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 17:53:58 +0000 (UTC)
X-CSE-ConnectionGUID: Wt2y1hx/TbGOFvVQqeF/jg==
X-CSE-MsgGUID: jc4GmFd2Q4y/kcrkxoBkzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="75840478"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="75840478"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 09:53:58 -0800
X-CSE-ConnectionGUID: If3rvpBNTlS2kJmVLRYYuQ==
X-CSE-MsgGUID: lqkgWkPlQkWcBa5egBkAjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="191807343"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
 by fmviesa005.fm.intel.com with ESMTP; 05 Nov 2025 09:53:57 -0800
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vGhhj-000Sx8-0L
 for intel-wired-lan@lists.osuosl.org; Wed, 05 Nov 2025 17:53:55 +0000
Date: Thu, 06 Nov 2025 01:45:21 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511060116.tPjJwg0Q-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762365239; x=1793901239;
 h=date:from:to:subject:message-id;
 bh=r0UsnkqqMX/BclylqrdwtJ9MztaCqJaabNdqr8/1NK4=;
 b=JcfOdKgorwMEZDDN5T9fU1+hZ8uoJRzgaAHDWfIwCwzLW879ErIbanY/
 m1lsYVxTlmTfvgrvVKfwqPm3sIzEYX32sAEnlMuo+qkKYy2cv41cyb/aG
 qaX3T8wwlLlB9dO+1KLjuhmQjEEFPEC8gKTQ8KDI2ITHNyngTGoP7O1MU
 a/WtoXqyM6mme1q4oTHpTH1mjZVToVXU8V+DUwIQrBCvQzKcIOzfIQC4A
 QvzTc2KPWF49wWmT5Jv6ODl7Eei00AeqySeS2Z0O+nL7klQ4FYDyoMwDX
 eJbnFPb7ZBtw/X3CZKq/Pja8HtJ5LbCX9oXoTg+U65ezWEv44cSVJgt5r
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JcfOdKgo
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 e120f46768d98151ece8756ebd688b0e43dc8b29
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
branch HEAD: e120f46768d98151ece8756ebd688b0e43dc8b29  net: usb: qmi_wwan: initialize MAC header offset in qmimux_rx_fixup

elapsed time: 2326m

configs tested: 101
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                   allnoconfig    gcc-15.1.0
alpha                  allyesconfig    clang-19
arc                    allmodconfig    clang-19
arc                     allnoconfig    gcc-15.1.0
arc                    allyesconfig    clang-19
arc         randconfig-001-20251105    gcc-8.5.0
arc         randconfig-002-20251105    gcc-13.4.0
arm                    allmodconfig    clang-19
arm                     allnoconfig    clang-22
arm                    allyesconfig    clang-19
arm         randconfig-001-20251105    clang-22
arm         randconfig-002-20251105    clang-22
arm         randconfig-003-20251105    clang-22
arm         randconfig-004-20251105    gcc-12.5.0
arm64                  allmodconfig    clang-19
arm64                   allnoconfig    gcc-15.1.0
csky                    allnoconfig    gcc-15.1.0
hexagon                allmodconfig    clang-19
hexagon                 allnoconfig    clang-22
hexagon                allyesconfig    clang-19
hexagon     randconfig-001-20251105    clang-22
hexagon     randconfig-002-20251105    clang-20
i386                   allmodconfig    clang-20
i386                    allnoconfig    gcc-14
i386                   allyesconfig    clang-20
loongarch              allmodconfig    clang-19
loongarch               allnoconfig    clang-22
loongarch   randconfig-001-20251105    clang-18
loongarch   randconfig-002-20251105    clang-20
m68k                   allmodconfig    gcc-15.1.0
m68k                    allnoconfig    gcc-15.1.0
m68k                   allyesconfig    gcc-15.1.0
microblaze             allmodconfig    gcc-15.1.0
microblaze              allnoconfig    gcc-15.1.0
microblaze             allyesconfig    gcc-15.1.0
mips                    allnoconfig    gcc-15.1.0
nios2                  allmodconfig    gcc-11.5.0
nios2                   allnoconfig    gcc-11.5.0
nios2                  allyesconfig    gcc-11.5.0
nios2       randconfig-001-20251105    gcc-9.5.0
nios2       randconfig-002-20251105    gcc-8.5.0
openrisc               allmodconfig    gcc-15.1.0
openrisc                allnoconfig    gcc-15.1.0
openrisc               allyesconfig    gcc-15.1.0
parisc                 allmodconfig    gcc-15.1.0
parisc                  allnoconfig    gcc-15.1.0
parisc                 allyesconfig    gcc-15.1.0
parisc      randconfig-001-20251105    gcc-12.5.0
parisc      randconfig-002-20251105    gcc-10.5.0
powerpc                allmodconfig    gcc-15.1.0
powerpc                 allnoconfig    gcc-15.1.0
powerpc                allyesconfig    gcc-15.1.0
powerpc     randconfig-001-20251105    gcc-14.3.0
powerpc     randconfig-002-20251105    gcc-12.5.0
powerpc64   randconfig-001-20251105    clang-22
powerpc64   randconfig-002-20251105    clang-22
riscv                  allmodconfig    gcc-15.1.0
riscv                   allnoconfig    gcc-15.1.0
riscv                  allyesconfig    gcc-15.1.0
riscv       randconfig-001-20251105    gcc-8.5.0
riscv       randconfig-002-20251105    clang-18
s390                   allmodconfig    clang-18
s390                   allmodconfig    gcc-15.1.0
s390                    allnoconfig    clang-22
s390                   allyesconfig    gcc-15.1.0
s390        randconfig-001-20251105    gcc-8.5.0
s390        randconfig-002-20251105    gcc-14.3.0
sh                     allmodconfig    gcc-15.1.0
sh                      allnoconfig    gcc-15.1.0
sh                     allyesconfig    gcc-15.1.0
sh          randconfig-001-20251105    gcc-10.5.0
sh          randconfig-002-20251105    gcc-11.5.0
sparc                  allmodconfig    gcc-15.1.0
sparc                   allnoconfig    gcc-15.1.0
sparc                  allyesconfig    gcc-15.1.0
sparc       randconfig-001-20251105    gcc-12.5.0
sparc       randconfig-002-20251105    gcc-15.1.0
sparc64                allmodconfig    clang-22
sparc64                allyesconfig    gcc-15.1.0
sparc64     randconfig-001-20251105    clang-22
sparc64     randconfig-002-20251105    gcc-10.5.0
um                     allmodconfig    clang-19
um                      allnoconfig    clang-22
um                     allyesconfig    clang-19
um          randconfig-001-20251105    clang-22
um          randconfig-002-20251105    gcc-14
x86_64                 allmodconfig    clang-20
x86_64                  allnoconfig    clang-20
x86_64                 allyesconfig    clang-20
x86_64                        kexec    clang-20
x86_64                     rhel-9.4    clang-20
x86_64                 rhel-9.4-bpf    gcc-14
x86_64                rhel-9.4-func    clang-20
x86_64          rhel-9.4-kselftests    clang-20
x86_64               rhel-9.4-kunit    gcc-14
x86_64                 rhel-9.4-ltp    gcc-14
x86_64                rhel-9.4-rust    clang-20
xtensa                  allnoconfig    gcc-15.1.0
xtensa                 allyesconfig    gcc-15.1.0
xtensa      randconfig-001-20251105    gcc-11.5.0
xtensa      randconfig-002-20251105    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
