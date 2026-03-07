Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kA4RCls1rGnfmwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 07 Mar 2026 15:25:31 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD71122C272
	for <lists+intel-wired-lan@lfdr.de>; Sat, 07 Mar 2026 15:25:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3CFB061052;
	Sat,  7 Mar 2026 14:25:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q7YVFmNpSd3c; Sat,  7 Mar 2026 14:25:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FD8B60FE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772893526;
	bh=x+rIJG/2tUovOaxHPAE6EI7vL1+4sX+HD+W4tJozzvU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=b2pXEcpg+Z6nuqTgONYpf/PXekFISi0hZ7uxJWysxMbBR/3QbMtmCGDmEK/0tbmNl
	 vQT9IAn9RZCy275tO7xd0TKtuLj+S+l1W218LIDGRbv0gn4zft9sTaHyZUw5DINw+h
	 yUcnZf/8zazA5Qjn6aK98zHJG4KjT/AlRo0CiQ1g6NJjRfzzcJo3mnP49+a6Cdeq4b
	 mUvQjwPgTyK/0D0nw0Zu6bQSOQa147fbWAximM303z+N0WtCA16D1lR8hIt8CgsRHV
	 DXqLf/ULu9VEeQOGXkg/bD4IIt52LfC3/6vsdP99vN8oZIkTM3hAUUsjP8bGGl1LQ9
	 NcNMDUtMNMdGQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FD8B60FE5;
	Sat,  7 Mar 2026 14:25:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4B353223
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Mar 2026 14:25:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3CBE64131D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Mar 2026 14:25:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zpAp4IpJk0qe for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Mar 2026 14:25:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C205A40443
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C205A40443
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C205A40443
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Mar 2026 14:25:21 +0000 (UTC)
X-CSE-ConnectionGUID: Zr/w45+DRPyruPVqc3zT7g==
X-CSE-MsgGUID: LQ7CmQfcT8avo3C8nyXpIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11722"; a="74028952"
X-IronPort-AV: E=Sophos;i="6.23,106,1770624000"; d="scan'208";a="74028952"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2026 06:25:21 -0800
X-CSE-ConnectionGUID: vWfOBp1uSZOBowS1wKyVTQ==
X-CSE-MsgGUID: yhP1h1ApSdSCR3XurK/mHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,106,1770624000"; d="scan'208";a="222052543"
Received: from lkp-server01.sh.intel.com (HELO 058beb05654c) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 07 Mar 2026 06:25:19 -0800
Received: from kbuild by 058beb05654c with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vysaj-0000000024r-0rPx;
 Sat, 07 Mar 2026 14:25:17 +0000
Date: Sat, 07 Mar 2026 22:25:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202603072200.AJCHo6RM-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772893524; x=1804429524;
 h=date:from:to:subject:message-id;
 bh=Dc1GPLLSNUGvhh+qONRd5bD6nzuQHBUFr3Mi107p0g8=;
 b=KhMPJT3GSNQTsAUr23lBTQ22nFTUVCOaup6XfHEjJ3UR/UzV8Ow1NjId
 mZCBdsAnlz3w77gYwEdBofGz45oEkSZYfJ1nEEEVn8lb4AfA4Fptc1dcP
 7RKqypCfSL+dRLiy1bNmykoLOd3GzuxIKlbP9txnIETjulJKMdL5z/PAQ
 0AL5loypJ2jbw3vfp5Utv5Nd1SdoZ5zUbXzq8+Cc4jVDRWP3OKD0ZqCv+
 gJJ3aRN61UP3rcsiLVWZD5kRpkyEDPgOYvWdHyX8uhpJLq02k2NlwJWu9
 /ldqoxNkgrSTDN5L+Edii+8OMkwwItR0o5N78n1l92tbG2rGIo++OklM7
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KhMPJT3G
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 a11e65e0711b7e069f106939946c5ce375ff2123
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
X-Rspamd-Queue-Id: DD71122C272
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
	RECEIVED_HELO_LOCALHOST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_ALL(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: a11e65e0711b7e069f106939946c5ce375ff2123  idpf: clear stale cdev_info ptr

elapsed time: 1215m

configs tested: 169
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-23
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260307    gcc-15.2.0
arc                   randconfig-002-20260307    gcc-15.2.0
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                                 defconfig    gcc-15.2.0
arm                   randconfig-001-20260307    gcc-15.2.0
arm                   randconfig-002-20260307    gcc-15.2.0
arm                   randconfig-003-20260307    gcc-15.2.0
arm                   randconfig-004-20260307    gcc-15.2.0
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260307    gcc-8.5.0
arm64                 randconfig-002-20260307    gcc-8.5.0
arm64                 randconfig-003-20260307    gcc-8.5.0
arm64                 randconfig-004-20260307    gcc-8.5.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260307    gcc-8.5.0
csky                  randconfig-002-20260307    gcc-8.5.0
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260307    gcc-15.2.0
hexagon               randconfig-002-20260307    gcc-15.2.0
i386                             allmodconfig    clang-20
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20260307    gcc-14
i386        buildonly-randconfig-002-20260307    gcc-14
i386        buildonly-randconfig-003-20260307    gcc-14
i386        buildonly-randconfig-004-20260307    gcc-14
i386        buildonly-randconfig-005-20260307    gcc-14
i386        buildonly-randconfig-006-20260307    gcc-14
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260307    clang-20
i386                  randconfig-002-20260307    clang-20
i386                  randconfig-003-20260307    clang-20
i386                  randconfig-004-20260307    clang-20
i386                  randconfig-005-20260307    clang-20
i386                  randconfig-006-20260307    clang-20
i386                  randconfig-007-20260307    clang-20
i386                  randconfig-011-20260307    gcc-14
i386                  randconfig-012-20260307    gcc-14
i386                  randconfig-013-20260307    gcc-14
i386                  randconfig-014-20260307    gcc-14
i386                  randconfig-015-20260307    gcc-14
i386                  randconfig-016-20260307    gcc-14
i386                  randconfig-017-20260307    gcc-14
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260307    gcc-15.2.0
loongarch             randconfig-002-20260307    gcc-15.2.0
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                                defconfig    clang-19
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                  cavium_octeon_defconfig    gcc-15.2.0
nios2                            allmodconfig    clang-23
nios2                             allnoconfig    clang-23
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260307    gcc-15.2.0
nios2                 randconfig-002-20260307    gcc-15.2.0
openrisc                         allmodconfig    clang-23
openrisc                          allnoconfig    clang-23
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-23
parisc                           allyesconfig    clang-19
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260307    gcc-12.5.0
parisc                randconfig-002-20260307    gcc-12.5.0
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-23
powerpc                   currituck_defconfig    clang-23
powerpc               randconfig-001-20260307    gcc-12.5.0
powerpc               randconfig-002-20260307    gcc-12.5.0
powerpc64             randconfig-001-20260307    gcc-12.5.0
powerpc64             randconfig-002-20260307    gcc-12.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260307    clang-23
riscv                 randconfig-002-20260307    clang-23
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260307    clang-23
s390                  randconfig-002-20260307    clang-23
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-23
sh                               allyesconfig    clang-19
sh                                  defconfig    gcc-14
sh                    randconfig-001-20260307    clang-23
sh                    randconfig-002-20260307    clang-23
sparc                             allnoconfig    clang-23
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260307    gcc-8.5.0
sparc                 randconfig-002-20260307    gcc-8.5.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260307    gcc-8.5.0
sparc64               randconfig-002-20260307    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260307    gcc-8.5.0
um                    randconfig-002-20260307    gcc-8.5.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260307    clang-20
x86_64      buildonly-randconfig-002-20260307    clang-20
x86_64      buildonly-randconfig-003-20260307    clang-20
x86_64      buildonly-randconfig-004-20260307    clang-20
x86_64      buildonly-randconfig-005-20260307    clang-20
x86_64      buildonly-randconfig-006-20260307    clang-20
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260307    gcc-14
x86_64                randconfig-002-20260307    gcc-14
x86_64                randconfig-003-20260307    gcc-14
x86_64                randconfig-004-20260307    gcc-14
x86_64                randconfig-005-20260307    gcc-14
x86_64                randconfig-006-20260307    gcc-14
x86_64                randconfig-011-20260307    gcc-14
x86_64                randconfig-012-20260307    gcc-14
x86_64                randconfig-013-20260307    gcc-14
x86_64                randconfig-014-20260307    gcc-14
x86_64                randconfig-015-20260307    gcc-14
x86_64                randconfig-016-20260307    gcc-14
x86_64                randconfig-071-20260307    gcc-14
x86_64                randconfig-072-20260307    gcc-14
x86_64                randconfig-073-20260307    gcc-14
x86_64                randconfig-074-20260307    gcc-14
x86_64                randconfig-075-20260307    gcc-14
x86_64                randconfig-076-20260307    gcc-14
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-23
xtensa                           allyesconfig    clang-23
xtensa                randconfig-001-20260307    gcc-8.5.0
xtensa                randconfig-002-20260307    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
