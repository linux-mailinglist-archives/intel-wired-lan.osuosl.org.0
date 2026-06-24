Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wqYqKrHwO2pafwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2026 16:58:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F86D6BF60D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2026 16:58:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=LKuWWQmK;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 50AC860873;
	Wed, 24 Jun 2026 14:58:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4OwbtgLbpK7F; Wed, 24 Jun 2026 14:58:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 542B760848
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782313132;
	bh=XJAmVV9gUezky8AfGvfTmIhY1UIEjye064EnVgo9cj0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=LKuWWQmK1GM6AL+ErniOOzSlA7fbQ/ckKjoWsMYPg0x5GT6RmbyMM6P99bYOBlA9M
	 WPItBj+JvFv2e6V9sFSbhpoBTeHrC1hxmjznWn15Aeu/u2VTkQgsduFRirHj1uap5r
	 ye+TnUsFAl6fn8Rr5Z41tHYAK8Evd6RsiuodvRnU9X/NJhYSaGu/BXTpujBO+0TKjy
	 g3tIMjKXvfzYBDgyim9BZHO1YJI5LUy60jKNIAugZo+ZzGaeS2Ft9fDH9ZkZm0RTOz
	 wUXgtSbLS/9aGfVAXaZY3e2GQS6/Z5/AH2koiONKl59oQC0OquijNDAOVcplAthPNb
	 dHKB4GW1e4YUw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 542B760848;
	Wed, 24 Jun 2026 14:58:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 496A2367
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2026 14:58:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 30CEE6082E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2026 14:58:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3-QLTp-qJkuz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2026 14:58:50 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 49C7160817
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 49C7160817
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 49C7160817
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2026 14:58:48 +0000 (UTC)
X-CSE-ConnectionGUID: wc+ek+iCSeSSLWj3kBqyZA==
X-CSE-MsgGUID: 6FQ3bBkbSiOVFTTf0fFQFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="86758957"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="86758957"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 07:58:48 -0700
X-CSE-ConnectionGUID: YEfEGQQJQWyx6h6Of+eCaw==
X-CSE-MsgGUID: mZ34rVNWRDaLzdazUCHaGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="243520271"
Received: from lkp-server02.sh.intel.com (HELO ea128546eb3d) ([10.239.97.151])
 by fmviesa009.fm.intel.com with ESMTP; 24 Jun 2026 07:58:47 -0700
Received: from kbuild by ea128546eb3d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wcP3s-000000003Qp-2GKE;
 Wed, 24 Jun 2026 14:58:44 +0000
Date: Wed, 24 Jun 2026 22:58:02 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202606242252.XCxlJBod-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782313130; x=1813849130;
 h=date:from:to:subject:message-id;
 bh=ucgFOPmKV5jpUNNS9RtIQeOdbtNN2Ki4HCbpC1efb2M=;
 b=cciERJIDau61IyposI0sonMshzEt8tkk30cqnItL9WKjjjCoz2TpYXb6
 9XoxyprQNBixyA7MuzsUdy9ozMXDOGNACLqtoZ8aVJR+/u2y+F6NZZfA/
 7cNfWLFdwycv5pQsk8TtSsyz9I31vieea+R6WrhynkPxxjQB7NJS/gldE
 Cv5UYKv4BRfCeOuFTqdL3t8VRUk7woSoLoz12I0QOFVQ9U8IcLKol4sAr
 OrEy/7Cv7NrjC2PMyiqE8vm2uN+Y4U8KNcCCv6A8DYm4WZ7TA7FZcSAQ4
 xnApyx6PJaKFQ6u5C+9l+qme/GaZ7Ad0PIEuMBS79OW/OqP/UMi4xV9AE
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cciERJID
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 f1f76b2b8e79a143a4add733b23971cf1f77cefb
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3F86D6BF60D

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: f1f76b2b8e79a143a4add733b23971cf1f77cefb  iavf: cap advertised max_pkt_size at the single-buffer HW limit

elapsed time: 1021m

configs tested: 218
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-16.1.0
alpha                            allyesconfig    gcc-16.1.0
alpha                               defconfig    gcc-16.1.0
arc                              allmodconfig    clang-23
arc                              allmodconfig    gcc-16.1.0
arc                               allnoconfig    gcc-16.1.0
arc                              allyesconfig    clang-23
arc                              allyesconfig    gcc-16.1.0
arc                                 defconfig    gcc-16.1.0
arc                   randconfig-001-20260624    gcc-15.2.0
arc                   randconfig-002-20260624    gcc-15.2.0
arm                               allnoconfig    clang-17
arm                               allnoconfig    gcc-16.1.0
arm                              allyesconfig    clang-23
arm                              allyesconfig    gcc-16.1.0
arm                                 defconfig    gcc-16.1.0
arm                   randconfig-001-20260624    gcc-15.2.0
arm                   randconfig-002-20260624    gcc-15.2.0
arm                   randconfig-003-20260624    gcc-15.2.0
arm                   randconfig-004-20260624    gcc-15.2.0
arm                           sama5_defconfig    gcc-16.1.0
arm                        vexpress_defconfig    gcc-16.1.0
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-16.1.0
arm64                               defconfig    gcc-16.1.0
arm64                 randconfig-001-20260624    clang-21
arm64                 randconfig-002-20260624    clang-21
arm64                 randconfig-003-20260624    clang-21
arm64                 randconfig-004-20260624    clang-21
csky                             allmodconfig    gcc-16.1.0
csky                              allnoconfig    gcc-16.1.0
csky                                defconfig    gcc-16.1.0
csky                  randconfig-001-20260624    clang-21
csky                  randconfig-002-20260624    clang-21
hexagon                          allmodconfig    gcc-16.1.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-16.1.0
hexagon                             defconfig    gcc-16.1.0
hexagon                        randconfig-001    gcc-11.5.0
hexagon               randconfig-001-20260624    gcc-11.5.0
hexagon               randconfig-001-20260624    gcc-9.5.0
hexagon                        randconfig-002    gcc-11.5.0
hexagon               randconfig-002-20260624    gcc-11.5.0
hexagon               randconfig-002-20260624    gcc-9.5.0
i386                             allmodconfig    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-16.1.0
i386                             allyesconfig    clang-22
i386                             allyesconfig    gcc-14
i386                 buildonly-randconfig-001    gcc-12
i386        buildonly-randconfig-001-20260624    gcc-12
i386                 buildonly-randconfig-002    gcc-12
i386        buildonly-randconfig-002-20260624    gcc-12
i386                 buildonly-randconfig-003    gcc-12
i386        buildonly-randconfig-003-20260624    gcc-12
i386                 buildonly-randconfig-004    gcc-12
i386        buildonly-randconfig-004-20260624    gcc-12
i386                 buildonly-randconfig-005    gcc-12
i386        buildonly-randconfig-005-20260624    gcc-12
i386                 buildonly-randconfig-006    gcc-12
i386        buildonly-randconfig-006-20260624    gcc-12
i386                                defconfig    gcc-16.1.0
i386                           randconfig-001    clang-22
i386                  randconfig-001-20260624    clang-22
i386                           randconfig-002    clang-22
i386                  randconfig-002-20260624    clang-22
i386                           randconfig-003    clang-22
i386                  randconfig-003-20260624    clang-22
i386                           randconfig-004    clang-22
i386                  randconfig-004-20260624    clang-22
i386                           randconfig-005    clang-22
i386                  randconfig-005-20260624    clang-22
i386                           randconfig-006    clang-22
i386                  randconfig-006-20260624    clang-22
i386                           randconfig-007    clang-22
i386                  randconfig-007-20260624    clang-22
i386                  randconfig-011-20260624    clang-22
i386                  randconfig-012-20260624    clang-22
i386                  randconfig-013-20260624    clang-22
i386                  randconfig-014-20260624    clang-22
i386                  randconfig-015-20260624    clang-22
i386                  randconfig-016-20260624    clang-22
i386                  randconfig-017-20260624    clang-22
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-20
loongarch                         allnoconfig    gcc-16.1.0
loongarch                           defconfig    clang-23
loongarch                      randconfig-001    gcc-11.5.0
loongarch             randconfig-001-20260624    gcc-11.5.0
loongarch             randconfig-001-20260624    gcc-9.5.0
loongarch                      randconfig-002    gcc-11.5.0
loongarch             randconfig-002-20260624    gcc-11.5.0
loongarch             randconfig-002-20260624    gcc-9.5.0
m68k                             allmodconfig    gcc-16.1.0
m68k                              allnoconfig    gcc-16.1.0
m68k                             allyesconfig    clang-23
m68k                             allyesconfig    gcc-16.1.0
m68k                                defconfig    clang-23
m68k                        stmark2_defconfig    gcc-16.1.0
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
nios2                 randconfig-001-20260624    gcc-11.5.0
nios2                 randconfig-001-20260624    gcc-9.5.0
nios2                          randconfig-002    gcc-11.5.0
nios2                 randconfig-002-20260624    gcc-11.5.0
nios2                 randconfig-002-20260624    gcc-9.5.0
openrisc                         allmodconfig    clang-20
openrisc                         allmodconfig    gcc-16.1.0
openrisc                          allnoconfig    clang-23
openrisc                            defconfig    gcc-16.1.0
parisc                           allmodconfig    gcc-16.1.0
parisc                            allnoconfig    clang-23
parisc                           allyesconfig    clang-17
parisc                           allyesconfig    gcc-16.1.0
parisc                              defconfig    gcc-16.1.0
parisc                randconfig-001-20260624    gcc-16.1.0
parisc                randconfig-002-20260624    gcc-16.1.0
parisc64                            defconfig    clang-23
powerpc                          allmodconfig    gcc-16.1.0
powerpc                           allnoconfig    clang-23
powerpc                        fsp2_defconfig    gcc-16.1.0
powerpc               randconfig-001-20260624    gcc-16.1.0
powerpc               randconfig-002-20260624    gcc-16.1.0
powerpc64             randconfig-001-20260624    gcc-16.1.0
powerpc64             randconfig-002-20260624    gcc-16.1.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                            allyesconfig    clang-23
riscv                               defconfig    gcc-16.1.0
riscv                 randconfig-001-20260624    clang-18
riscv                 randconfig-002-20260624    clang-18
s390                             allmodconfig    clang-17
s390                             allmodconfig    clang-23
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-16.1.0
s390                                defconfig    gcc-16.1.0
s390                  randconfig-001-20260624    clang-18
s390                  randconfig-002-20260624    clang-18
sh                               allmodconfig    gcc-16.1.0
sh                                allnoconfig    clang-23
sh                               allyesconfig    clang-17
sh                               allyesconfig    gcc-16.1.0
sh                                  defconfig    gcc-14
sh                    randconfig-001-20260624    clang-18
sh                    randconfig-002-20260624    clang-18
sparc                             allnoconfig    clang-23
sparc                               defconfig    gcc-16.1.0
sparc                 randconfig-001-20260624    gcc-14.3.0
sparc                 randconfig-002-20260624    gcc-14.3.0
sparc64                          allmodconfig    clang-20
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260624    gcc-14.3.0
sparc64               randconfig-002-20260624    gcc-14.3.0
um                               allmodconfig    clang-17
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-16.1.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260624    gcc-14.3.0
um                    randconfig-002-20260624    gcc-14.3.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-22
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-22
x86_64               buildonly-randconfig-001    clang-22
x86_64      buildonly-randconfig-001-20260624    clang-22
x86_64               buildonly-randconfig-002    clang-22
x86_64      buildonly-randconfig-002-20260624    clang-22
x86_64               buildonly-randconfig-003    clang-22
x86_64      buildonly-randconfig-003-20260624    clang-22
x86_64               buildonly-randconfig-004    clang-22
x86_64      buildonly-randconfig-004-20260624    clang-22
x86_64               buildonly-randconfig-005    clang-22
x86_64      buildonly-randconfig-005-20260624    clang-22
x86_64               buildonly-randconfig-006    clang-22
x86_64      buildonly-randconfig-006-20260624    clang-22
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-22
x86_64                randconfig-001-20260624    clang-22
x86_64                randconfig-002-20260624    clang-22
x86_64                randconfig-003-20260624    clang-22
x86_64                randconfig-004-20260624    clang-22
x86_64                randconfig-005-20260624    clang-22
x86_64                randconfig-006-20260624    clang-22
x86_64                randconfig-011-20260624    gcc-14
x86_64                randconfig-012-20260624    gcc-14
x86_64                randconfig-013-20260624    gcc-14
x86_64                randconfig-014-20260624    gcc-14
x86_64                randconfig-015-20260624    gcc-14
x86_64                randconfig-016-20260624    gcc-14
x86_64                randconfig-071-20260624    gcc-14
x86_64                randconfig-072-20260624    gcc-14
x86_64                randconfig-073-20260624    gcc-14
x86_64                randconfig-074-20260624    gcc-14
x86_64                randconfig-075-20260624    gcc-14
x86_64                randconfig-076-20260624    gcc-14
x86_64                               rhel-9.4    clang-22
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-22
x86_64                    rhel-9.4-kselftests    clang-22
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-22
xtensa                            allnoconfig    clang-23
xtensa                           allyesconfig    clang-20
xtensa                randconfig-001-20260624    gcc-14.3.0
xtensa                randconfig-002-20260624    gcc-14.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
