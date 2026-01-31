Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEFPIM+ifWnoSwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 07:35:59 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A70C0F99
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 07:35:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 05FB682CB7;
	Sat, 31 Jan 2026 06:35:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eFz3gupFn8dt; Sat, 31 Jan 2026 06:35:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2341282977
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769841356;
	bh=4Hr8KZxKgjTniVK/uuqlqGPC+UYNVvp84tWaq7K6JNs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Zbvf5npJflps6Nv+hl25UuUOuyDqRNDpF79RkJikHaiUosWtEpTBgtgGNiqt2UvK9
	 XUsCu52qgqZuJlNmK7Rn1Pxlu7xWWCw4Yx0wUIsDn7UpYPo19z3rU/6QwL5C5SVoqU
	 QMjzpXsvCQZlfO+S2ZUU+Z5hAXDc3b7zLF+8TnKTum7Ru4d3VPLcUM2g+KODUZfOma
	 3aULglH8q7sS2XeCnDHmjYg+zXNO+P49C+Ajr591LhtQHx3hGT3/Qr1esY8j9em/Tt
	 +QiWMQWuIRxiaPOfUzNngxMc+ZTk8ZD+q7H2A5bWkQC3QpavpSayziWxR6jNQUOfHi
	 Cr0F4pq4nTF+A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2341282977;
	Sat, 31 Jan 2026 06:35:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 886EC1E0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 06:35:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6C79F40320
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 06:35:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qTZyt80TEZT5 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 Jan 2026 06:35:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 252534020A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 252534020A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 252534020A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 06:35:51 +0000 (UTC)
X-CSE-ConnectionGUID: vXVn02yjS+qZoOsVxZq5tg==
X-CSE-MsgGUID: SuETGUVxS1qrpupjBXgP/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11687"; a="71123722"
X-IronPort-AV: E=Sophos;i="6.21,264,1763452800"; d="scan'208";a="71123722"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 22:35:50 -0800
X-CSE-ConnectionGUID: EiWwnDkTQ1eafrsSrvLcrw==
X-CSE-MsgGUID: zTGEutRZRVa27MajgAHFTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,264,1763452800"; d="scan'208";a="209392247"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 30 Jan 2026 22:35:48 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vm4aA-00000000div-3Nh0;
 Sat, 31 Jan 2026 06:35:46 +0000
Date: Sat, 31 Jan 2026 14:34:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202601311452.GRtGgmAh-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769841352; x=1801377352;
 h=date:from:to:subject:message-id;
 bh=UcJ3aVUBmi2b1nptASqlR0Z64EAm3uM1lQE8HyceC3Q=;
 b=kKK0GjRNejEtAXUVpHBhKOZrLAbW8h2jioxCa0ns7336E/+jqa8kY6AC
 047aLRAW3hrMTSQ2VJzxqdVVdxNsuSGFxwqzy96zygM20ZnHo4e2xAVTu
 QCUGG6VDzgwbBuQFawa4n7/P2pecj6wHsEs0Imta6bkgjzKX9+2Gm1Ba/
 wdx5kbDeHkiXTm8ezXTXEJn68bYyCTEVKxto2pKZy7l+fmSKHjq5nQW01
 pZ9xWx/rmjHQDWXpqm1YWu7u/JmwxMzrQG3ZvKcv0OyOjQ/rXbb43yHru
 nIF5SXrJCdD6nIe22D3B3+78Cp9I7CqNP8mLSi/qGk4GbLrxaODOo7utV
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kKK0GjRN
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 40857194956dcaf3d2b66d6bd113d844c93bef54
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[10];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+]
X-Rspamd-Queue-Id: C5A70C0F99
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 40857194956dcaf3d2b66d6bd113d844c93bef54  i40e: drop udp_tunnel_get_rx_info() call from i40e_open()

elapsed time: 728m

configs tested: 189
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig    gcc-15.2.0
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-22
arc                                 defconfig    gcc-15.2.0
arc                     haps_hs_smp_defconfig    gcc-14
arc                   randconfig-001-20260131    gcc-8.5.0
arc                   randconfig-002-20260131    gcc-8.5.0
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                       aspeed_g4_defconfig    gcc-15.2.0
arm                         bcm2835_defconfig    gcc-15.2.0
arm                                 defconfig    gcc-15.2.0
arm                            hisi_defconfig    gcc-14
arm                        mvebu_v5_defconfig    gcc-15.2.0
arm                   randconfig-001-20260131    gcc-8.5.0
arm                   randconfig-002-20260131    gcc-8.5.0
arm                   randconfig-003-20260131    gcc-8.5.0
arm                   randconfig-004-20260131    gcc-8.5.0
arm                         vf610m4_defconfig    gcc-15.2.0
arm64                            allmodconfig    clang-22
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260131    clang-22
arm64                 randconfig-002-20260131    clang-22
arm64                 randconfig-003-20260131    clang-22
arm64                 randconfig-004-20260131    clang-22
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260131    clang-22
csky                  randconfig-002-20260131    clang-22
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260131    gcc-11.5.0
hexagon               randconfig-002-20260131    gcc-11.5.0
i386                             allmodconfig    clang-20
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20260131    clang-20
i386        buildonly-randconfig-002-20260131    clang-20
i386        buildonly-randconfig-003-20260131    clang-20
i386        buildonly-randconfig-004-20260131    clang-20
i386        buildonly-randconfig-005-20260131    clang-20
i386        buildonly-randconfig-006-20260131    clang-20
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260131    gcc-14
i386                  randconfig-002-20260131    gcc-14
i386                  randconfig-003-20260131    gcc-14
i386                  randconfig-004-20260131    gcc-14
i386                  randconfig-005-20260131    gcc-14
i386                  randconfig-006-20260131    gcc-14
i386                  randconfig-007-20260131    gcc-14
i386                  randconfig-011-20260131    gcc-14
i386                  randconfig-012-20260131    gcc-14
i386                  randconfig-013-20260131    gcc-14
i386                  randconfig-014-20260131    gcc-14
i386                  randconfig-015-20260131    gcc-14
i386                  randconfig-016-20260131    gcc-14
i386                  randconfig-017-20260131    gcc-14
loongarch                        allmodconfig    clang-22
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260131    gcc-11.5.0
loongarch             randconfig-002-20260131    gcc-11.5.0
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                                defconfig    clang-19
m68k                       m5275evb_defconfig    gcc-15.2.0
m68k                        m5407c3_defconfig    gcc-14
m68k                          sun3x_defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                          ath25_defconfig    gcc-15.2.0
mips                      loongson1_defconfig    gcc-14
nios2                            allmodconfig    clang-22
nios2                             allnoconfig    clang-22
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260131    gcc-11.5.0
nios2                 randconfig-002-20260131    gcc-11.5.0
openrisc                         allmodconfig    clang-22
openrisc                          allnoconfig    clang-22
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-22
parisc                           allyesconfig    clang-19
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260131    gcc-8.5.0
parisc                randconfig-002-20260131    gcc-8.5.0
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-22
powerpc                 mpc8313_rdb_defconfig    gcc-15.2.0
powerpc                     mpc83xx_defconfig    gcc-15.2.0
powerpc                      pmac32_defconfig    gcc-15.2.0
powerpc               randconfig-001-20260131    gcc-8.5.0
powerpc               randconfig-002-20260131    gcc-8.5.0
powerpc                     tqm5200_defconfig    gcc-15.2.0
powerpc                      tqm8xx_defconfig    gcc-15.2.0
powerpc64             randconfig-001-20260131    gcc-8.5.0
powerpc64             randconfig-002-20260131    gcc-8.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                    nommu_k210_defconfig    gcc-15.2.0
riscv                 randconfig-001-20260131    gcc-8.5.0
riscv                 randconfig-002-20260131    gcc-8.5.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260131    gcc-8.5.0
s390                  randconfig-002-20260131    gcc-8.5.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-22
sh                               allyesconfig    clang-19
sh                                  defconfig    gcc-14
sh                    randconfig-001-20260131    gcc-8.5.0
sh                    randconfig-002-20260131    gcc-8.5.0
sh                           se7750_defconfig    gcc-14
sh                     sh7710voipgw_defconfig    gcc-15.2.0
sh                   sh7770_generic_defconfig    gcc-14
sparc                             allnoconfig    clang-22
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260131    gcc-14
sparc                 randconfig-002-20260131    gcc-14
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260131    gcc-14
sparc64               randconfig-002-20260131    gcc-14
um                               alldefconfig    gcc-15.2.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260131    gcc-14
um                    randconfig-002-20260131    gcc-14
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260131    gcc-14
x86_64      buildonly-randconfig-002-20260131    gcc-14
x86_64      buildonly-randconfig-003-20260131    gcc-14
x86_64      buildonly-randconfig-004-20260131    gcc-14
x86_64      buildonly-randconfig-005-20260131    gcc-14
x86_64      buildonly-randconfig-006-20260131    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260131    clang-20
x86_64                randconfig-002-20260131    clang-20
x86_64                randconfig-003-20260131    clang-20
x86_64                randconfig-004-20260131    clang-20
x86_64                randconfig-005-20260131    clang-20
x86_64                randconfig-006-20260131    clang-20
x86_64                randconfig-011-20260131    clang-20
x86_64                randconfig-012-20260131    clang-20
x86_64                randconfig-013-20260131    clang-20
x86_64                randconfig-014-20260131    clang-20
x86_64                randconfig-015-20260131    clang-20
x86_64                randconfig-016-20260131    clang-20
x86_64                randconfig-071-20260131    gcc-14
x86_64                randconfig-072-20260131    gcc-14
x86_64                randconfig-073-20260131    gcc-14
x86_64                randconfig-074-20260131    gcc-14
x86_64                randconfig-075-20260131    gcc-14
x86_64                randconfig-076-20260131    gcc-14
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-22
xtensa                           allyesconfig    clang-22
xtensa                randconfig-001-20260131    gcc-14
xtensa                randconfig-002-20260131    gcc-14

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
