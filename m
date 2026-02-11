Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EXsgKBDwi2nPdgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 03:57:20 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 11601120D28
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 03:57:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DCBC0407B3;
	Wed, 11 Feb 2026 02:57:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cQKPJ1V7dM2O; Wed, 11 Feb 2026 02:57:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0C67407B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770778634;
	bh=F5eK+W0nGTybuR5F122vOBXLkMJDpsI0ufYd5fUmHto=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=i0rKFBKh1dPMtkOJBQ4vlio8NKY3LWUInd14zar5rirPraKAJALlsRRaByJUJU0QH
	 hplzgDMUfZXM352tFC5MosmI+LRi83VDl5Szd461+v/udkdowaAsc4xis54zm/GsCy
	 KWVS6dVahZyIL8j5nFR2alnsGwN1btUxuF2QlDtPobEsmel/eDJQJiLVe9tkYY4Xd1
	 kdZmduRn5MXUiaPMos245MmpAq56LHg13759QyY2qJfhsl9kBhLP2/Ma3LmgMO3MmG
	 G04fDtppw32ynnDhGB61hWQx1b1jPfRZxomQFUyslMU4bVG5MSQmFkBSXzq41OynpW
	 6vLy2Qk2YZulg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0C67407B7;
	Wed, 11 Feb 2026 02:57:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A622A23D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 02:57:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 93BF64082F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 02:57:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wq4gBdQQEh1c for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Feb 2026 02:57:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 625504034C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 625504034C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 625504034C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 02:57:11 +0000 (UTC)
X-CSE-ConnectionGUID: gjQP4x0aRemzKz4a7IrlpA==
X-CSE-MsgGUID: hnrLJ21+TQC67vUwgP5NqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="71813971"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="71813971"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2026 18:57:11 -0800
X-CSE-ConnectionGUID: N836DymfQGKHgacnX+hiDA==
X-CSE-MsgGUID: Upro/tZJRUSHHqxEB8//fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="216612068"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 10 Feb 2026 18:57:09 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vq0Pb-00000000pcC-2Z2q;
 Wed, 11 Feb 2026 02:57:07 +0000
Date: Wed, 11 Feb 2026 10:56:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202602111038.I0gQv1aO-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770778632; x=1802314632;
 h=date:from:to:subject:message-id;
 bh=ai9ed6XkaIMjJKTZpcOIRRFEjhPhqvQLAJmpY5EEpyg=;
 b=hzlYrXdhkijwt9r0Knf7BmwUFcq4wT2lldGXicMvafVxqh/zlB/LSmm+
 whe5kJti5D+iJKmqetes7swKaTTJ3ZjXg0rBuOX+X8Mo6GIg/S0G2+UEj
 I2c8JAxczb1e4FcvWT8JZh1uoYCLwpp5bb0ZJ5aON/6bCcFYIl6W0cFXp
 2fvdoq8QR9Bebt5zTAQdZfjcZ+SateAZDgvFJ2+2KUOIWqDNGVRlNluHS
 5zgAQ1OzTcO/yFsCobcms7GjCpmMe5mGFU+iozpnFlUx7jZrIN8S1ACCz
 5O+QJoJu3WGKHQ3LT7xrPbbnGB/p1W83z9GbpYnACHZm+QrYjVrEzYv9k
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hzlYrXdh
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 ad1f18e985cb2758c60f644c8fbc92a97bb6d2ba
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 11601120D28
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: ad1f18e985cb2758c60f644c8fbc92a97bb6d2ba  net/mlx5e: remove declarations of mlx5e_shampo_{fill_umr,dealloc_hd}

elapsed time: 722m

configs tested: 243
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig    clang-22
alpha                            alldefconfig    gcc-15.2.0
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              alldefconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-22
arc                              allyesconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arc                     haps_hs_smp_defconfig    clang-22
arc                            hsdk_defconfig    gcc-15.2.0
arc                   randconfig-001-20260211    gcc-8.5.0
arc                   randconfig-001-20260211    gcc-9.5.0
arc                   randconfig-002-20260211    gcc-8.5.0
arc                   randconfig-002-20260211    gcc-9.5.0
arm                               allnoconfig    clang-22
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.2.0
arm                     am200epdkit_defconfig    gcc-15.2.0
arm                         assabet_defconfig    gcc-15.2.0
arm                                 defconfig    gcc-15.2.0
arm                          ep93xx_defconfig    gcc-15.2.0
arm                            hisi_defconfig    gcc-15.2.0
arm                          ixp4xx_defconfig    gcc-15.2.0
arm                        multi_v7_defconfig    clang-22
arm                          pxa910_defconfig    gcc-15.2.0
arm                             pxa_defconfig    clang-22
arm                             pxa_defconfig    gcc-15.2.0
arm                   randconfig-001-20260211    gcc-10.5.0
arm                   randconfig-001-20260211    gcc-8.5.0
arm                   randconfig-002-20260211    gcc-8.5.0
arm                   randconfig-003-20260211    clang-22
arm                   randconfig-003-20260211    gcc-8.5.0
arm                   randconfig-004-20260211    gcc-8.5.0
arm                          sp7021_defconfig    clang-22
arm                           sunxi_defconfig    clang-22
arm64                            allmodconfig    clang-19
arm64                            allmodconfig    clang-22
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260211    gcc-15.2.0
arm64                 randconfig-002-20260211    gcc-15.2.0
arm64                 randconfig-003-20260211    gcc-15.2.0
arm64                 randconfig-004-20260211    gcc-15.2.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260211    gcc-15.2.0
csky                  randconfig-002-20260211    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-22
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260211    clang-22
hexagon               randconfig-002-20260211    clang-22
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260211    clang-20
i386        buildonly-randconfig-002-20260211    clang-20
i386        buildonly-randconfig-003-20260211    clang-20
i386        buildonly-randconfig-004-20260211    clang-20
i386        buildonly-randconfig-005-20260211    clang-20
i386        buildonly-randconfig-006-20260211    clang-20
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260211    gcc-14
i386                  randconfig-002-20260211    gcc-14
i386                  randconfig-003-20260211    gcc-14
i386                  randconfig-004-20260211    gcc-14
i386                  randconfig-005-20260211    gcc-14
i386                  randconfig-006-20260211    gcc-14
i386                  randconfig-007-20260211    gcc-14
i386                  randconfig-011-20260211    clang-20
i386                  randconfig-012-20260211    clang-20
i386                  randconfig-013-20260211    clang-20
i386                  randconfig-014-20260211    clang-20
i386                  randconfig-015-20260211    clang-20
i386                  randconfig-016-20260211    clang-20
i386                  randconfig-017-20260211    clang-20
loongarch                        alldefconfig    clang-22
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-22
loongarch                         allnoconfig    clang-22
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch                loongson32_defconfig    clang-22
loongarch             randconfig-001-20260211    clang-22
loongarch             randconfig-002-20260211    clang-22
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                             allyesconfig    gcc-15.2.0
m68k                         amcore_defconfig    clang-22
m68k                                defconfig    clang-19
m68k                       m5475evb_defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                           ci20_defconfig    gcc-15.2.0
mips                         cobalt_defconfig    gcc-15.2.0
mips                          rm200_defconfig    gcc-15.2.0
mips                         rt305x_defconfig    gcc-15.2.0
nios2                            allmodconfig    clang-22
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260211    clang-22
nios2                 randconfig-002-20260211    clang-22
openrisc                         allmodconfig    clang-22
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
openrisc                    or1ksim_defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    clang-19
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                generic-64bit_defconfig    clang-22
parisc                randconfig-001-20260211    clang-22
parisc                randconfig-002-20260211    clang-22
parisc64                            defconfig    clang-19
powerpc                    adder875_defconfig    clang-22
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.2.0
powerpc                      arches_defconfig    clang-22
powerpc                 canyonlands_defconfig    clang-22
powerpc                  iss476-smp_defconfig    gcc-15.2.0
powerpc                      katmai_defconfig    gcc-15.2.0
powerpc                   motionpro_defconfig    gcc-15.2.0
powerpc                 mpc836x_rdk_defconfig    clang-22
powerpc                      ppc44x_defconfig    gcc-15.2.0
powerpc               randconfig-001-20260211    clang-22
powerpc               randconfig-002-20260211    clang-22
powerpc64             randconfig-001-20260211    clang-22
powerpc64             randconfig-002-20260211    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260211    gcc-13.4.0
riscv                 randconfig-002-20260211    gcc-13.4.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                          debug_defconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260211    gcc-13.4.0
s390                  randconfig-002-20260211    gcc-13.4.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-22
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                          lboxre2_defconfig    gcc-15.2.0
sh                     magicpanelr2_defconfig    clang-22
sh                    randconfig-001-20260211    gcc-13.4.0
sh                    randconfig-002-20260211    gcc-13.4.0
sh                           se7721_defconfig    gcc-15.2.0
sh                  sh7785lcr_32bit_defconfig    gcc-15.2.0
sh                            titan_defconfig    gcc-15.2.0
sh                          urquell_defconfig    gcc-15.2.0
sparc                             allnoconfig    clang-22
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260211    gcc-13.4.0
sparc                 randconfig-002-20260211    gcc-13.4.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260211    gcc-13.4.0
sparc64               randconfig-002-20260211    gcc-13.4.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260211    gcc-13.4.0
um                    randconfig-002-20260211    gcc-13.4.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260211    gcc-12
x86_64      buildonly-randconfig-002-20260211    gcc-12
x86_64      buildonly-randconfig-003-20260211    gcc-12
x86_64      buildonly-randconfig-004-20260211    gcc-12
x86_64      buildonly-randconfig-005-20260211    gcc-12
x86_64      buildonly-randconfig-006-20260211    gcc-12
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260211    clang-20
x86_64                randconfig-002-20260211    clang-20
x86_64                randconfig-003-20260211    clang-20
x86_64                randconfig-004-20260211    clang-20
x86_64                randconfig-005-20260211    clang-20
x86_64                randconfig-006-20260211    clang-20
x86_64                randconfig-011-20260211    gcc-14
x86_64                randconfig-012-20260211    gcc-14
x86_64                randconfig-013-20260211    gcc-14
x86_64                randconfig-014-20260211    gcc-14
x86_64                randconfig-015-20260211    gcc-14
x86_64                randconfig-016-20260211    gcc-14
x86_64                randconfig-071-20260211    clang-20
x86_64                randconfig-072-20260211    clang-20
x86_64                randconfig-073-20260211    clang-20
x86_64                randconfig-074-20260211    clang-20
x86_64                randconfig-075-20260211    clang-20
x86_64                randconfig-076-20260211    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-22
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    clang-22
xtensa                           allyesconfig    gcc-15.2.0
xtensa                          iss_defconfig    gcc-15.2.0
xtensa                randconfig-001-20260211    gcc-13.4.0
xtensa                randconfig-002-20260211    gcc-13.4.0
xtensa                    smp_lx200_defconfig    clang-22

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
