Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC98C6B0F3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Nov 2025 18:56:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C5A08228C;
	Tue, 18 Nov 2025 17:56:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XOObSs8Z6y_d; Tue, 18 Nov 2025 17:56:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 82A148441F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763488562;
	bh=ZQzrVgkp8n/Tx8dH4yrrKkZn981CmX8AMGskB43ch2M=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1hd52Y9orKa0DoYvp5ws98PZsGKRmUhW8i/7GWKuS2gCjijiPF2GpSwK/wzlkM01U
	 LJMrsYQ88YV69X4/CL2XyWNQPinXy72ToVKK6kRHrtUSqKB8rIT82dsZMgp9y9oBXa
	 eOZyN366oWzKwYocms7tJOj++jQVkN7Nlmh/J+ZdYImZO6HU3Udjlqt6akosyzpc4b
	 FDOgDttGgEONa6i2zVORF7y7IHkTDCbui8zB3XmGDUROegQzLvwvXLnyf4YKrsxr62
	 cCRblYF9PnfB5j12bc9YelYFAUSq90hBBDtWTHEVlWe6l8mB7e4tn7qNk4EecWpulV
	 JmZYUu3TTvWdQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 82A148441F;
	Tue, 18 Nov 2025 17:56:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B6E6D5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 17:56:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8DEEF82792
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 17:56:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AF579bMHf6wh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Nov 2025 17:55:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8CDF48232D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8CDF48232D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8CDF48232D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 17:55:59 +0000 (UTC)
X-CSE-ConnectionGUID: o2SzdpSUQFqVovdqZv2kvw==
X-CSE-MsgGUID: gUa7COvlSSmDh5UIHe+nxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="65551960"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="65551960"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 09:55:59 -0800
X-CSE-ConnectionGUID: cnsm3nbuQQeMHjJDmWSo0Q==
X-CSE-MsgGUID: hA3AKhVLTeGwUZ+IoSZBcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="195956173"
Received: from lkp-server01.sh.intel.com (HELO adf6d29aa8d9) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 18 Nov 2025 09:55:58 -0800
Received: from kbuild by adf6d29aa8d9 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vLPvn-000220-2y
 for intel-wired-lan@lists.osuosl.org; Tue, 18 Nov 2025 17:55:55 +0000
Date: Wed, 19 Nov 2025 01:55:19 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511190114.7zCjxsRM-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763488560; x=1795024560;
 h=date:from:to:subject:message-id;
 bh=DkzkPVnmICIaQ3MHWArNReHaQO3oyGqlWjDcsV9h6pg=;
 b=nBAW7zGfO26Ee2R47tuV4Aq1019HQBdyfHC4NLJSxNzydqmi1RyI33oS
 +nTPvLm7hYn0m8QSnSQXihq3lTJiGkMilAN6ch9t+fGhLikmpXPB9cjX9
 D667p+kht8MGPPedlYXyYKglw7VS1/odP/noSrt2MenJf8469vvYYJYAe
 g5IAU6fPrv+mOhoMfmclzXSyu044NvNie+4Yb4O2vjJsifyUfiWArGgJs
 BU1oaFTmCNLjlozbpW+rEdwaTLwskF/m4a5TO+GZXtI10MQ1l3jnmhhIY
 5ImiDv6hUlKocTMvQwAuWS4OlKdb5RDi0CraIqgn0PwoY5Ub7rySXGxBz
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nBAW7zGf
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 5442a9da69789741bfda39f34ee7f69552bf0c56
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
branch HEAD: 5442a9da69789741bfda39f34ee7f69552bf0c56  veth: more robust handing of race to avoid txq getting stuck

elapsed time: 5223m

configs tested: 78
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                    allnoconfig    gcc-15.1.0
arc                      allnoconfig    gcc-15.1.0
arc          randconfig-001-20251118    gcc-14.3.0
arc          randconfig-002-20251118    gcc-15.1.0
arm                      allnoconfig    clang-22
arm          randconfig-001-20251118    gcc-8.5.0
arm          randconfig-002-20251118    gcc-10.5.0
arm          randconfig-003-20251118    clang-22
arm          randconfig-004-20251118    clang-22
arm              versatile_defconfig    gcc-15.1.0
arm64                    allnoconfig    gcc-15.1.0
arm64        randconfig-001-20251118    clang-20
arm64        randconfig-002-20251118    clang-22
arm64        randconfig-003-20251118    clang-19
arm64        randconfig-004-20251118    clang-17
csky                     allnoconfig    gcc-15.1.0
csky         randconfig-001-20251118    gcc-10.5.0
csky         randconfig-002-20251118    gcc-15.1.0
hexagon                  allnoconfig    clang-22
i386                     allnoconfig    gcc-14
i386         randconfig-001-20251119    clang-20
i386         randconfig-002-20251119    clang-20
i386         randconfig-003-20251119    clang-20
i386         randconfig-004-20251119    clang-20
i386         randconfig-005-20251119    clang-20
i386         randconfig-006-20251119    gcc-14
i386         randconfig-007-20251119    gcc-14
loongarch                allnoconfig    clang-22
m68k                     allnoconfig    gcc-15.1.0
microblaze               allnoconfig    gcc-15.1.0
mips                     allnoconfig    gcc-15.1.0
mips               bcm47xx_defconfig    clang-18
mips                  gcw0_defconfig    clang-22
nios2                    allnoconfig    gcc-11.5.0
openrisc                 allnoconfig    gcc-15.1.0
openrisc                   defconfig    gcc-15.1.0
parisc                   allnoconfig    gcc-15.1.0
parisc                     defconfig    gcc-15.1.0
parisc       randconfig-001-20251118    gcc-14.3.0
parisc       randconfig-002-20251118    gcc-12.5.0
powerpc                  allnoconfig    gcc-15.1.0
powerpc      randconfig-001-20251118    clang-22
powerpc      randconfig-002-20251118    clang-22
powerpc                wii_defconfig    gcc-15.1.0
powerpc64    randconfig-001-20251118    gcc-13.4.0
powerpc64    randconfig-002-20251118    gcc-8.5.0
riscv                    allnoconfig    gcc-15.1.0
riscv                      defconfig    clang-22
s390                     allnoconfig    clang-22
s390                       defconfig    clang-22
sh                       allnoconfig    gcc-15.1.0
sh                         defconfig    gcc-15.1.0
sh          rts7751r2dplus_defconfig    gcc-15.1.0
sh                  se7750_defconfig    gcc-15.1.0
sh            sh7710voipgw_defconfig    gcc-15.1.0
sparc                    allnoconfig    gcc-15.1.0
sparc                      defconfig    gcc-15.1.0
sparc64                    defconfig    clang-20
um                       allnoconfig    clang-22
um                         defconfig    clang-22
um                    i386_defconfig    gcc-14
um                  x86_64_defconfig    clang-22
x86_64                   allnoconfig    clang-20
x86_64                     defconfig    gcc-14
x86_64                         kexec    clang-20
x86_64       randconfig-071-20251119    gcc-14
x86_64       randconfig-072-20251119    clang-20
x86_64       randconfig-073-20251119    gcc-12
x86_64       randconfig-074-20251119    clang-20
x86_64       randconfig-075-20251119    clang-20
x86_64       randconfig-076-20251119    gcc-14
x86_64                      rhel-9.4    clang-20
x86_64                  rhel-9.4-bpf    gcc-14
x86_64                 rhel-9.4-func    clang-20
x86_64           rhel-9.4-kselftests    clang-20
x86_64                rhel-9.4-kunit    gcc-14
x86_64                  rhel-9.4-ltp    gcc-14
xtensa                   allnoconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
