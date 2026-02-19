Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGOdIjXglmkUqQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Feb 2026 11:04:37 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B7615D9CB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Feb 2026 11:04:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 98A5B807B1;
	Thu, 19 Feb 2026 10:04:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wDNxUE9eaB8d; Thu, 19 Feb 2026 10:04:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8175C807B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771495473;
	bh=SNVCJWrCZVZV+MU9LaD6GDUA9T/FnHrZZWdRsoMUgLM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WXcqtOoPVJglJTlTJ2Q7Bz9QBXt2tEa/6kJSM5DiJCmuSoS3kq7iuDWI2KdCqFiOa
	 yVl+HxZjNsBgGGlPje+//iwCulWpnwE/FkNm9taDkdk+EA9txgs+QTh4yYu/ULaGeG
	 9xajef2mza1Wlj2PrizSFEcLkIPnnDqWBKyZsyvLI1Ijwy24j92UYm28LNrdmB7iJO
	 B9H6PpUgDt121AyoKfD3g++ZBv0StBQ4kS1+ZltDFm4N5AR/3p5pi9DNFRDYxTP98t
	 4Q9BEQ+xw9zF9r0LLgmXiHpH8d2g06lYxzWaiC7n7OVMHqWiU2gpB8wGRwzp8sMx20
	 yIyvPJS+rG3Nw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8175C807B7;
	Thu, 19 Feb 2026 10:04:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 29942183
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 10:04:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1AF314039D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 10:04:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RbMYZRoZ-3NX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Feb 2026 10:04:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B3F7640395
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3F7640395
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B3F7640395
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 10:04:30 +0000 (UTC)
X-CSE-ConnectionGUID: t5qWPX58TE+Nmh+Z++klWA==
X-CSE-MsgGUID: L3uhYbR0RrS4jcaj5+Zoew==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="72478184"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="72478184"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 02:04:30 -0800
X-CSE-ConnectionGUID: U8S+cxZfRBm1BT2tOWwOIw==
X-CSE-MsgGUID: bFFS+QnbSEuz64PbxgkCiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="212728603"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 19 Feb 2026 02:04:28 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vt0tV-0000000136o-3ZSt;
 Thu, 19 Feb 2026 10:04:25 +0000
Date: Thu, 19 Feb 2026 18:03:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202602191824.bRHBgrRD-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771495471; x=1803031471;
 h=date:from:to:subject:message-id;
 bh=uxnEd2E+gC7CouZN2Ux612tipc8xKWx8/fRFgG/DLTU=;
 b=eaSzq+qhNrmR4KSpTkJ8IWwspWUzA2IV1TMXonh9FtKTZfxmyRZ/GLyf
 dz3dYG0QtEbooFzyD0qKVumzjNUedpGlRSAe2cBQh1+2765WJx+Cafo5r
 WcPtys1HpyIYmeQHjn7MGJNF5WtqQNcs0KC1egx+FzvP/HuZbOv945JAy
 qKODgvG2HsrSttPTQU9/+IXDC7t03B8IvIYC97C8Rr8OX0u09jLGXbsCs
 +9steY1I5vANQeBNzmMw/YvtLEvf1ODDjDOBE340v8hP+QrErwnro6zKX
 pyhtag+cFnEf93HLhQcquTSSrgqHGIpktz2jXftlrQHoJPesymp1v5TbY
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eaSzq+qh
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 516585baddd443dd9072f955554eb078de68a957
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim];
	NEURAL_HAM(-0.00)[-0.995];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 55B7615D9CB
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 516585baddd443dd9072f955554eb078de68a957  ice: use ice_update_eth_stats() for representor stats

elapsed time: 781m

configs tested: 274
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-23
arc                              allyesconfig    gcc-15.2.0
arc                          axs101_defconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arc                 nsimosci_hs_smp_defconfig    clang-23
arc                   randconfig-001-20260219    clang-23
arc                   randconfig-001-20260219    gcc-9.5.0
arc                   randconfig-002-20260219    clang-23
arc                   randconfig-002-20260219    gcc-10.5.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.2.0
arm                        clps711x_defconfig    clang-23
arm                                 defconfig    gcc-15.2.0
arm                           h3600_defconfig    clang-18
arm                       imx_v4_v5_defconfig    clang-18
arm                            mps2_defconfig    clang-23
arm                        multi_v5_defconfig    gcc-15.2.0
arm                         mv78xx0_defconfig    clang-18
arm                           omap1_defconfig    clang-23
arm                          pxa3xx_defconfig    gcc-15.2.0
arm                   randconfig-001-20260219    clang-23
arm                   randconfig-001-20260219    gcc-15.2.0
arm                   randconfig-002-20260219    clang-23
arm                   randconfig-003-20260219    clang-23
arm                   randconfig-004-20260219    clang-23
arm                   randconfig-004-20260219    gcc-13.4.0
arm                         s5pv210_defconfig    gcc-15.2.0
arm                         vf610m4_defconfig    clang-23
arm64                            alldefconfig    clang-23
arm64                            allmodconfig    clang-19
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260219    clang-23
arm64                 randconfig-001-20260219    gcc-8.5.0
arm64                 randconfig-002-20260219    gcc-8.5.0
arm64                 randconfig-003-20260219    gcc-8.5.0
arm64                 randconfig-004-20260219    gcc-14.3.0
arm64                 randconfig-004-20260219    gcc-8.5.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260219    gcc-15.2.0
csky                  randconfig-001-20260219    gcc-8.5.0
csky                  randconfig-002-20260219    gcc-12.5.0
csky                  randconfig-002-20260219    gcc-8.5.0
hexagon                          alldefconfig    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260219    clang-17
hexagon               randconfig-001-20260219    clang-23
hexagon               randconfig-002-20260219    clang-17
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260219    gcc-14
i386        buildonly-randconfig-002-20260219    gcc-14
i386        buildonly-randconfig-003-20260219    gcc-14
i386        buildonly-randconfig-004-20260219    gcc-14
i386        buildonly-randconfig-005-20260219    clang-20
i386        buildonly-randconfig-005-20260219    gcc-14
i386        buildonly-randconfig-006-20260219    clang-20
i386        buildonly-randconfig-006-20260219    gcc-14
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260219    gcc-14
i386                  randconfig-002-20260219    gcc-14
i386                  randconfig-003-20260219    gcc-14
i386                  randconfig-004-20260219    gcc-14
i386                  randconfig-005-20260219    gcc-14
i386                  randconfig-006-20260219    gcc-14
i386                  randconfig-007-20260219    gcc-14
i386                  randconfig-011-20260219    clang-20
i386                  randconfig-011-20260219    gcc-14
i386                  randconfig-012-20260219    clang-20
i386                  randconfig-013-20260219    clang-20
i386                  randconfig-013-20260219    gcc-14
i386                  randconfig-014-20260219    clang-20
i386                  randconfig-014-20260219    gcc-13
i386                  randconfig-015-20260219    clang-20
i386                  randconfig-015-20260219    gcc-13
i386                  randconfig-016-20260219    clang-20
i386                  randconfig-016-20260219    gcc-14
i386                  randconfig-017-20260219    clang-20
i386                  randconfig-017-20260219    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260219    clang-17
loongarch             randconfig-001-20260219    gcc-15.2.0
loongarch             randconfig-002-20260219    clang-17
loongarch             randconfig-002-20260219    clang-23
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                             allyesconfig    gcc-15.2.0
m68k                          amiga_defconfig    clang-23
m68k                                defconfig    clang-19
m68k                        m5272c3_defconfig    gcc-15.2.0
m68k                       m5475evb_defconfig    gcc-15.2.0
m68k                          multi_defconfig    clang-23
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                          ath25_defconfig    clang-23
mips                         bigsur_defconfig    gcc-15.2.0
mips                      fuloong2e_defconfig    gcc-15.2.0
mips                           ip22_defconfig    clang-23
mips                          malta_defconfig    clang-23
mips                          rb532_defconfig    clang-18
nios2                            allmodconfig    clang-23
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260219    clang-17
nios2                 randconfig-001-20260219    gcc-11.5.0
nios2                 randconfig-002-20260219    clang-17
nios2                 randconfig-002-20260219    gcc-8.5.0
openrisc                         allmodconfig    clang-23
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-23
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
openrisc                 simple_smp_defconfig    clang-23
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-23
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    clang-19
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260219    clang-23
parisc                randconfig-001-20260219    gcc-15.2.0
parisc                randconfig-002-20260219    clang-23
parisc                randconfig-002-20260219    gcc-8.5.0
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-15.2.0
powerpc                      cm5200_defconfig    clang-23
powerpc                     ep8248e_defconfig    clang-23
powerpc                      ep88xc_defconfig    clang-18
powerpc                          g5_defconfig    clang-23
powerpc                  iss476-smp_defconfig    clang-18
powerpc                    mvme5100_defconfig    gcc-15.2.0
powerpc                      pasemi_defconfig    clang-23
powerpc                      ppc44x_defconfig    gcc-15.2.0
powerpc               randconfig-001-20260219    clang-23
powerpc               randconfig-001-20260219    gcc-8.5.0
powerpc               randconfig-002-20260219    clang-23
powerpc                     tqm8541_defconfig    clang-23
powerpc64             randconfig-001-20260219    clang-23
powerpc64             randconfig-002-20260219    clang-23
powerpc64             randconfig-002-20260219    gcc-8.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-23
riscv                               defconfig    gcc-15.2.0
riscv                    nommu_k210_defconfig    clang-23
riscv                 randconfig-001-20260219    clang-17
riscv                 randconfig-002-20260219    clang-17
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-23
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260219    clang-17
s390                  randconfig-002-20260219    clang-17
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                         apsh4a3a_defconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                 kfr2r09-romimage_defconfig    clang-23
sh                          lboxre2_defconfig    gcc-15.2.0
sh                            migor_defconfig    gcc-15.2.0
sh                    randconfig-001-20260219    clang-17
sh                    randconfig-002-20260219    clang-17
sh                          rsk7264_defconfig    gcc-15.2.0
sh                           se7343_defconfig    gcc-15.2.0
sh                           se7705_defconfig    clang-18
sh                            titan_defconfig    clang-18
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260219    gcc-15.2.0
sparc                 randconfig-001-20260219    gcc-8.5.0
sparc                 randconfig-002-20260219    gcc-15.2.0
sparc                 randconfig-002-20260219    gcc-8.5.0
sparc64                          alldefconfig    clang-23
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260219    clang-23
sparc64               randconfig-001-20260219    gcc-8.5.0
sparc64               randconfig-002-20260219    clang-23
sparc64               randconfig-002-20260219    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260219    clang-18
um                    randconfig-001-20260219    gcc-8.5.0
um                    randconfig-002-20260219    clang-23
um                    randconfig-002-20260219    gcc-8.5.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260219    gcc-14
x86_64      buildonly-randconfig-002-20260219    gcc-12
x86_64      buildonly-randconfig-002-20260219    gcc-14
x86_64      buildonly-randconfig-003-20260219    clang-20
x86_64      buildonly-randconfig-003-20260219    gcc-14
x86_64      buildonly-randconfig-004-20260219    gcc-14
x86_64      buildonly-randconfig-005-20260219    gcc-14
x86_64      buildonly-randconfig-006-20260219    gcc-14
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260219    clang-20
x86_64                randconfig-002-20260219    clang-20
x86_64                randconfig-003-20260219    clang-20
x86_64                randconfig-004-20260219    clang-20
x86_64                randconfig-005-20260219    clang-20
x86_64                randconfig-006-20260219    clang-20
x86_64                randconfig-011-20260219    gcc-14
x86_64                randconfig-012-20260219    gcc-14
x86_64                randconfig-013-20260219    gcc-14
x86_64                randconfig-014-20260219    gcc-14
x86_64                randconfig-015-20260219    gcc-14
x86_64                randconfig-016-20260219    gcc-14
x86_64                randconfig-071-20260219    clang-20
x86_64                randconfig-071-20260219    gcc-14
x86_64                randconfig-072-20260219    gcc-14
x86_64                randconfig-073-20260219    gcc-14
x86_64                randconfig-074-20260219    gcc-14
x86_64                randconfig-075-20260219    clang-20
x86_64                randconfig-075-20260219    gcc-14
x86_64                randconfig-076-20260219    clang-20
x86_64                randconfig-076-20260219    gcc-14
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-23
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    clang-23
xtensa                randconfig-001-20260219    gcc-15.2.0
xtensa                randconfig-001-20260219    gcc-8.5.0
xtensa                randconfig-002-20260219    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
