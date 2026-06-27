Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WSYQKp2RP2pNUgkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Jun 2026 11:02:21 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD906D1857
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Jun 2026 11:02:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=IfyB0wZG;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08057820B7;
	Sat, 27 Jun 2026 09:02:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m19-HVA6o_v0; Sat, 27 Jun 2026 09:02:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D54B82087
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782550937;
	bh=jUautNC76kubpoz5SxcfCFtUJ2KCRcTSgwKnr9WORM0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IfyB0wZG3B7amnnxaN7xUCz7Ya4SarIVwWwdEMfor1qPl6hMYoDwHP33UwTX/GgWU
	 j8bMyHjG3vhcO+tun+mOS13aSpdLbe8LH7KNBcRRt9S/kJBtx5Zoi2Hh0qk+8yQnxR
	 vQsv0JAdwj8VRY0D4EQKxOvYCbMShb9H651Bj7GdV8bmLDYBLBS+9DUnCJsAT3YkVx
	 pkdWoLMnL8ax7PuEPQkBD0jTu9IuSuyO8TdQ1gtphOJN9+7N2e6f0aBm4VcwSqV8H/
	 dk2h9VcKs4KCvHOz0VGHxRxFCqKd54hSygBL6ccsiaUYrCDac3Y4yERwi/0OYtK7Sh
	 R5+mJXsSPWEPQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D54B82087;
	Sat, 27 Jun 2026 09:02:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CDBCB2F3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jun 2026 09:02:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BE85440E5E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jun 2026 09:02:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o1bLib94Weeh for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Jun 2026 09:02:14 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7BA4A40E57
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7BA4A40E57
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7BA4A40E57
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jun 2026 09:02:14 +0000 (UTC)
X-CSE-ConnectionGUID: 1fkvcBz1SdCr5oGVwKB8Pw==
X-CSE-MsgGUID: Kubcjr57QVC1wUcmd/qNDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11829"; a="100760874"
X-IronPort-AV: E=Sophos;i="6.24,228,1774335600"; d="scan'208";a="100760874"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2026 02:02:14 -0700
X-CSE-ConnectionGUID: d6VHOMy1SPOeOnSKE1za5Q==
X-CSE-MsgGUID: VPFXISrgSKeafU2xrNftEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,228,1774335600"; d="scan'208";a="250435253"
Received: from lkp-server02.sh.intel.com (HELO ea128546eb3d) ([10.239.97.151])
 by orviesa010.jf.intel.com with ESMTP; 27 Jun 2026 02:02:12 -0700
Received: from kbuild by ea128546eb3d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wdOvS-000000005kr-01pv;
 Sat, 27 Jun 2026 09:02:10 +0000
Date: Sat, 27 Jun 2026 17:01:11 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202606271701.9KEf8MDv-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782550935; x=1814086935;
 h=date:from:to:subject:message-id;
 bh=wKD1LZRhuzsxfsJ0+Yk3rnhFA1up7zN5B3vQIpF35kk=;
 b=EuyFY1cCjGNpiJM8McM/pJUkuC/V4sEGuGpQaLFjwZhvRMaN/4CX8mJl
 v4bqbEZ/9b3Xi2EW8RPhSt4X0AJ4ZlDQvQaJduLAaHe8wJaFP8P3TcrZr
 tEH3iLaN07bfveEnvWpjXURvUs9tCoZNN0fXQQTlyXV1Z8dCuEUatdcDk
 8vQNb+9BZFWBx5A7OPMi2PbNEZZYzAeqnYNT3h9aQzt9ZTbqLEKbCzyk1
 s0jz6MLzAtcmFwFSZ2Ye5Pu4jnq1Ea7yelmo0CyHEXm+TBadtPZH3Mzcb
 s0UPuwT93AOVKeG90h3uaVJ9OIiKQBiyhMy2IiPZkugbRB+1fpkfEHLx4
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EuyFY1cC
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 cf286f22b4eb1bc16826f7e0ac5a608c7f9b0a25
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DAD906D1857

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 200GbE
branch HEAD: cf286f22b4eb1bc16826f7e0ac5a608c7f9b0a25  ixd: add devlink support

elapsed time: 723m

configs tested: 204
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-16.1.0
alpha                            allyesconfig    gcc-16.1.0
alpha                               defconfig    gcc-16.1.0
arc                              allmodconfig    clang-23
arc                               allnoconfig    gcc-16.1.0
arc                              allyesconfig    clang-23
arc                                 defconfig    gcc-16.1.0
arc                   randconfig-001-20260627    gcc-16.1.0
arc                   randconfig-002-20260627    gcc-16.1.0
arm                               allnoconfig    gcc-16.1.0
arm                              allyesconfig    clang-23
arm                         at91_dt_defconfig    clang-17
arm                                 defconfig    gcc-16.1.0
arm                   randconfig-001-20260627    gcc-16.1.0
arm                   randconfig-002-20260627    gcc-16.1.0
arm                   randconfig-003-20260627    gcc-16.1.0
arm                   randconfig-004-20260627    gcc-16.1.0
arm                           spitz_defconfig    gcc-16.1.0
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-16.1.0
arm64                               defconfig    gcc-16.1.0
arm64                          randconfig-001    clang-23
arm64                 randconfig-001-20260627    clang-23
arm64                 randconfig-001-20260627    gcc-10.5.0
arm64                          randconfig-002    clang-23
arm64                 randconfig-002-20260627    clang-23
arm64                 randconfig-002-20260627    gcc-10.5.0
arm64                          randconfig-003    clang-23
arm64                 randconfig-003-20260627    clang-23
arm64                 randconfig-003-20260627    gcc-10.5.0
arm64                          randconfig-004    clang-23
arm64                 randconfig-004-20260627    clang-23
arm64                 randconfig-004-20260627    gcc-10.5.0
csky                             allmodconfig    gcc-16.1.0
csky                              allnoconfig    gcc-16.1.0
csky                                defconfig    gcc-16.1.0
csky                           randconfig-001    clang-23
csky                  randconfig-001-20260627    clang-23
csky                  randconfig-001-20260627    gcc-10.5.0
csky                           randconfig-002    clang-23
csky                  randconfig-002-20260627    clang-23
csky                  randconfig-002-20260627    gcc-10.5.0
hexagon                          allmodconfig    gcc-16.1.0
hexagon                           allnoconfig    gcc-16.1.0
hexagon                             defconfig    gcc-16.1.0
hexagon                        randconfig-001    gcc-11.5.0
hexagon               randconfig-001-20260627    gcc-11.5.0
hexagon                        randconfig-002    gcc-11.5.0
hexagon               randconfig-002-20260627    gcc-11.5.0
i386                             allmodconfig    clang-22
i386                              allnoconfig    gcc-16.1.0
i386                             allyesconfig    clang-22
i386                 buildonly-randconfig-001    clang-22
i386        buildonly-randconfig-001-20260627    clang-22
i386                 buildonly-randconfig-002    clang-22
i386        buildonly-randconfig-002-20260627    clang-22
i386                 buildonly-randconfig-003    clang-22
i386        buildonly-randconfig-003-20260627    clang-22
i386                 buildonly-randconfig-004    clang-22
i386        buildonly-randconfig-004-20260627    clang-22
i386                 buildonly-randconfig-005    clang-22
i386        buildonly-randconfig-005-20260627    clang-22
i386                 buildonly-randconfig-006    clang-22
i386        buildonly-randconfig-006-20260627    clang-22
i386                                defconfig    gcc-16.1.0
i386                  randconfig-001-20260627    clang-22
i386                  randconfig-002-20260627    clang-22
i386                  randconfig-003-20260627    clang-22
i386                  randconfig-004-20260627    clang-22
i386                  randconfig-005-20260627    clang-22
i386                  randconfig-006-20260627    clang-22
i386                  randconfig-007-20260627    clang-22
i386                  randconfig-011-20260627    clang-22
i386                  randconfig-012-20260627    clang-22
i386                  randconfig-013-20260627    clang-22
i386                  randconfig-014-20260627    clang-22
i386                  randconfig-015-20260627    clang-22
i386                  randconfig-016-20260627    clang-22
i386                  randconfig-017-20260627    clang-22
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    gcc-16.1.0
loongarch                           defconfig    clang-23
loongarch                      randconfig-001    gcc-11.5.0
loongarch             randconfig-001-20260627    gcc-11.5.0
loongarch                      randconfig-002    gcc-11.5.0
loongarch             randconfig-002-20260627    gcc-11.5.0
m68k                             allmodconfig    gcc-16.1.0
m68k                              allnoconfig    gcc-16.1.0
m68k                             allyesconfig    clang-23
m68k                                defconfig    clang-23
microblaze                        allnoconfig    gcc-16.1.0
microblaze                       allyesconfig    gcc-16.1.0
microblaze                          defconfig    clang-23
mips                             allmodconfig    gcc-16.1.0
mips                              allnoconfig    gcc-16.1.0
mips                             allyesconfig    gcc-16.1.0
nios2                            allmodconfig    clang-20
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                               defconfig    clang-23
nios2                          randconfig-001    gcc-11.5.0
nios2                 randconfig-001-20260627    gcc-11.5.0
nios2                          randconfig-002    gcc-11.5.0
nios2                 randconfig-002-20260627    gcc-11.5.0
openrisc                         allmodconfig    clang-20
openrisc                         allmodconfig    gcc-16.1.0
openrisc                          allnoconfig    clang-23
openrisc                            defconfig    gcc-16.1.0
parisc                           allmodconfig    gcc-16.1.0
parisc                            allnoconfig    clang-23
parisc                           allyesconfig    clang-17
parisc                              defconfig    gcc-16.1.0
parisc                         randconfig-001    gcc-8.5.0
parisc                randconfig-001-20260627    gcc-8.5.0
parisc                         randconfig-002    gcc-8.5.0
parisc                randconfig-002-20260627    gcc-8.5.0
parisc64                            defconfig    clang-23
powerpc                          allmodconfig    gcc-16.1.0
powerpc                           allnoconfig    clang-23
powerpc                   motionpro_defconfig    clang-23
powerpc               mpc834x_itxgp_defconfig    clang-23
powerpc                        randconfig-001    gcc-8.5.0
powerpc               randconfig-001-20260627    gcc-8.5.0
powerpc                        randconfig-002    gcc-8.5.0
powerpc               randconfig-002-20260627    gcc-8.5.0
powerpc64                      randconfig-001    gcc-8.5.0
powerpc64             randconfig-001-20260627    gcc-8.5.0
powerpc64                      randconfig-002    gcc-8.5.0
powerpc64             randconfig-002-20260627    gcc-8.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                            allyesconfig    clang-23
riscv                               defconfig    gcc-16.1.0
riscv                 randconfig-001-20260627    clang-23
riscv                 randconfig-002-20260627    clang-23
s390                             allmodconfig    clang-17
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-16.1.0
s390                                defconfig    gcc-16.1.0
s390                  randconfig-001-20260627    clang-23
s390                  randconfig-002-20260627    clang-23
sh                               allmodconfig    gcc-16.1.0
sh                                allnoconfig    clang-23
sh                               allyesconfig    clang-17
sh                                  defconfig    gcc-14
sh                    randconfig-001-20260627    clang-23
sh                    randconfig-002-20260627    clang-23
sparc                             allnoconfig    clang-23
sparc                               defconfig    gcc-16.1.0
sparc                 randconfig-001-20260627    gcc-8.5.0
sparc                 randconfig-002-20260627    gcc-8.5.0
sparc64                          allmodconfig    clang-20
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260627    gcc-8.5.0
sparc64               randconfig-002-20260627    gcc-8.5.0
um                               allmodconfig    clang-17
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-16.1.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260627    gcc-8.5.0
um                    randconfig-002-20260627    gcc-8.5.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-22
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-22
x86_64      buildonly-randconfig-001-20260627    gcc-14
x86_64      buildonly-randconfig-002-20260627    gcc-14
x86_64      buildonly-randconfig-003-20260627    gcc-14
x86_64      buildonly-randconfig-004-20260627    gcc-14
x86_64      buildonly-randconfig-005-20260627    gcc-14
x86_64      buildonly-randconfig-006-20260627    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-22
x86_64                randconfig-001-20260627    clang-22
x86_64                randconfig-002-20260627    clang-22
x86_64                randconfig-003-20260627    clang-22
x86_64                randconfig-004-20260627    clang-22
x86_64                randconfig-005-20260627    clang-22
x86_64                randconfig-006-20260627    clang-22
x86_64                randconfig-011-20260627    gcc-14
x86_64                randconfig-012-20260627    gcc-14
x86_64                randconfig-013-20260627    gcc-14
x86_64                randconfig-014-20260627    gcc-14
x86_64                randconfig-015-20260627    gcc-14
x86_64                randconfig-016-20260627    gcc-14
x86_64                randconfig-071-20260627    clang-22
x86_64                randconfig-072-20260627    clang-22
x86_64                randconfig-073-20260627    clang-22
x86_64                randconfig-074-20260627    clang-22
x86_64                randconfig-075-20260627    clang-22
x86_64                randconfig-076-20260627    clang-22
x86_64                               rhel-9.4    clang-22
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-22
x86_64                    rhel-9.4-kselftests    clang-22
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-22
xtensa                            allnoconfig    clang-23
xtensa                           allyesconfig    clang-20
xtensa                           allyesconfig    gcc-16.1.0
xtensa                randconfig-001-20260627    gcc-8.5.0
xtensa                randconfig-002-20260627    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
