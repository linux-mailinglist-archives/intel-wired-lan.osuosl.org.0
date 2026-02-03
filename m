Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MJwkLQD/gWmYNgMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 14:58:24 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3A6DA48F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 14:58:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24B7B60852;
	Tue,  3 Feb 2026 13:58:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gJO5sfNuVylf; Tue,  3 Feb 2026 13:58:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 350E760830
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770127100;
	bh=M4HOObynykXBcb1xWjDPM3jT0+Tf/XfaYi4AlAKMVBw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wwRTawgnqLPft5J/joFpPwJU/+d0obl26Ut7RiixS85tkc3Vs+FgKoDX+iujkAQRc
	 MNiF8bh+ZZ7bfdzecYG4PmKpsxKpb4JYuJXIaOg1KqE/df11wKRIGuGNabWBq7ybvm
	 YONOr2Juqmx1FZYtjjE85G9YDZ/xWCwcWhPi6DosdQkB9XhnWVf0oZmOSia082Iv5D
	 dovGBLj7uYcnGDGIMdNEejm+udo5AqeQFeJ8nfgg03Y710CcSmWexQaP1LQ1ZLc1Le
	 3YHHc9D5YJqbQ6thjThtuvEh8fPr1HoosUnmRYzOcHKIbJwpvE7+QalrPhzs6FLC4I
	 8MTrTp1IBoinw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 350E760830;
	Tue,  3 Feb 2026 13:58:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id ED89DF4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 13:58:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DB17E60720
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 13:58:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I-sovfLMpKEf for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Feb 2026 13:58:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C741C606F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C741C606F1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C741C606F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 13:58:16 +0000 (UTC)
X-CSE-ConnectionGUID: N44Qg+MiSly+z6opM/FU+w==
X-CSE-MsgGUID: HW98bAekSOSu2JhlnRw5vQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="81926833"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="81926833"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 05:58:16 -0800
X-CSE-ConnectionGUID: zxtY3YBgSMq14w+jaR34ww==
X-CSE-MsgGUID: jZdIZi+LQ6Wz1vGa8Xfcuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="210009051"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 03 Feb 2026 05:58:15 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vnGuy-00000000gik-3heW;
 Tue, 03 Feb 2026 13:58:12 +0000
Date: Tue, 03 Feb 2026 21:57:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202602032147.iknGQLLu-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770127097; x=1801663097;
 h=date:from:to:subject:message-id;
 bh=ygwJ/vO/5zhxEeCs1QHg3zY+XNnHGR+L5l8U0pGvouM=;
 b=FqEzqvzBZUx9Ms3SZ8PLsnS0aC7dMP/11jHBT0lrrMUubMYfKG5EXJAC
 k00R0zAzRvUgP8Z4kxrYaYo7V3Znnab0S1eL//K1j96E6pe3rPY1Dj6A4
 m2+XRf64BtkqfxtxG8Z/XRaXIrnHs8TPlatj3jOUWcmyANOvgd05A4kfD
 AmYiJMZsinpv9wjXBPxiaQDgi9vK9UTv2doV+E8RuxIC1URiVKzrdz1bf
 iVZVPv2ZhWbG4+mfo2eBpHeeZiqYVLxZhHzoCMEKgMXv/TCnDUUGpTwou
 bMRBg9pgtRfGeFMQa6nf/kTRTTDYR1mEoiGxAY436pW9HRj+55EBd4Ueq
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FqEzqvzB
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 d0fe42c03f16b46f1d128023b17783d0cf66626c
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-0.999];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[10];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:mid,osuosl.org:dkim];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+]
X-Rspamd-Queue-Id: EE3A6DA48F
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: d0fe42c03f16b46f1d128023b17783d0cf66626c  iavf: fix PTP use-after-free during reset

elapsed time: 921m

configs tested: 223
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260203    gcc-12.5.0
arc                   randconfig-001-20260203    gcc-8.5.0
arc                   randconfig-002-20260203    gcc-12.5.0
arc                        vdk_hs38_defconfig    gcc-15.2.0
arm                               allnoconfig    clang-22
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    clang-22
arm                   randconfig-001-20260203    gcc-12.5.0
arm                   randconfig-001-20260203    gcc-8.5.0
arm                   randconfig-002-20260203    clang-18
arm                   randconfig-002-20260203    gcc-12.5.0
arm                   randconfig-003-20260203    gcc-10.5.0
arm                   randconfig-003-20260203    gcc-12.5.0
arm                   randconfig-004-20260203    clang-16
arm                   randconfig-004-20260203    gcc-12.5.0
arm                        spear6xx_defconfig    gcc-15.2.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260203    gcc-9.5.0
arm64                 randconfig-002-20260203    gcc-12.5.0
arm64                 randconfig-003-20260203    clang-22
arm64                 randconfig-004-20260203    clang-22
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260203    gcc-15.2.0
csky                  randconfig-002-20260203    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-22
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    clang-22
hexagon               randconfig-001-20260203    clang-22
hexagon               randconfig-002-20260203    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260203    clang-20
i386        buildonly-randconfig-001-20260203    gcc-14
i386        buildonly-randconfig-002-20260203    clang-20
i386        buildonly-randconfig-002-20260203    gcc-13
i386        buildonly-randconfig-003-20260203    clang-20
i386        buildonly-randconfig-004-20260203    clang-20
i386        buildonly-randconfig-005-20260203    clang-20
i386        buildonly-randconfig-006-20260203    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20260203    clang-20
i386                  randconfig-002-20260203    clang-20
i386                  randconfig-003-20260203    clang-20
i386                  randconfig-004-20260203    clang-20
i386                  randconfig-005-20260203    gcc-14
i386                  randconfig-006-20260203    clang-20
i386                  randconfig-007-20260203    gcc-14
i386                  randconfig-011-20260203    gcc-12
i386                  randconfig-012-20260203    clang-20
i386                  randconfig-013-20260203    clang-20
i386                  randconfig-014-20260203    gcc-14
i386                  randconfig-015-20260203    clang-20
i386                  randconfig-016-20260203    gcc-14
i386                  randconfig-017-20260203    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260203    clang-20
loongarch             randconfig-001-20260203    clang-22
loongarch             randconfig-002-20260203    clang-22
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    gcc-15.2.0
m68k                                defconfig    gcc-15.2.0
m68k                           virt_defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    gcc-15.2.0
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                        bcm63xx_defconfig    gcc-15.2.0
mips                      fuloong2e_defconfig    gcc-15.2.0
mips                    maltaup_xpa_defconfig    gcc-15.2.0
mips                        omega2p_defconfig    clang-22
nios2                            allmodconfig    clang-22
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260203    clang-22
nios2                 randconfig-001-20260203    gcc-8.5.0
nios2                 randconfig-002-20260203    clang-22
nios2                 randconfig-002-20260203    gcc-8.5.0
openrisc                         allmodconfig    clang-22
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                generic-64bit_defconfig    gcc-15.2.0
parisc                randconfig-001-20260203    gcc-12.5.0
parisc                randconfig-002-20260203    gcc-8.5.0
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.2.0
powerpc                     asp8347_defconfig    gcc-15.2.0
powerpc                       eiger_defconfig    gcc-15.2.0
powerpc                   microwatt_defconfig    gcc-15.2.0
powerpc               randconfig-001-20260203    clang-22
powerpc               randconfig-002-20260203    gcc-10.5.0
powerpc                     sequoia_defconfig    clang-17
powerpc64             randconfig-001-20260203    clang-16
powerpc64             randconfig-002-20260203    gcc-8.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260203    clang-22
riscv                 randconfig-001-20260203    gcc-8.5.0
riscv                 randconfig-002-20260203    clang-22
riscv                 randconfig-002-20260203    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-22
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260203    gcc-8.5.0
s390                  randconfig-002-20260203    clang-22
s390                  randconfig-002-20260203    gcc-8.5.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-22
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                                  defconfig    gcc-15.2.0
sh                               j2_defconfig    gcc-15.2.0
sh                          landisk_defconfig    gcc-15.2.0
sh                            migor_defconfig    gcc-15.2.0
sh                    randconfig-001-20260203    gcc-15.2.0
sh                    randconfig-001-20260203    gcc-8.5.0
sh                    randconfig-002-20260203    gcc-15.2.0
sh                    randconfig-002-20260203    gcc-8.5.0
sparc                             allnoconfig    clang-22
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260203    gcc-13.4.0
sparc                 randconfig-001-20260203    gcc-8.5.0
sparc                 randconfig-002-20260203    gcc-13.4.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    clang-20
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260203    clang-22
sparc64               randconfig-001-20260203    gcc-13.4.0
sparc64               randconfig-002-20260203    clang-22
sparc64               randconfig-002-20260203    gcc-13.4.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    clang-22
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260203    clang-22
um                    randconfig-001-20260203    gcc-13.4.0
um                    randconfig-002-20260203    clang-20
um                    randconfig-002-20260203    gcc-13.4.0
um                           x86_64_defconfig    clang-22
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260203    clang-20
x86_64      buildonly-randconfig-002-20260203    clang-20
x86_64      buildonly-randconfig-003-20260203    clang-20
x86_64      buildonly-randconfig-004-20260203    gcc-14
x86_64      buildonly-randconfig-005-20260203    gcc-13
x86_64      buildonly-randconfig-006-20260203    gcc-14
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260203    clang-20
x86_64                randconfig-002-20260203    gcc-14
x86_64                randconfig-003-20260203    clang-20
x86_64                randconfig-004-20260203    gcc-14
x86_64                randconfig-005-20260203    gcc-12
x86_64                randconfig-006-20260203    gcc-14
x86_64                randconfig-011-20260203    gcc-14
x86_64                randconfig-012-20260203    clang-20
x86_64                randconfig-013-20260203    gcc-14
x86_64                randconfig-014-20260203    gcc-14
x86_64                randconfig-015-20260203    gcc-14
x86_64                randconfig-016-20260203    clang-20
x86_64                randconfig-071-20260203    clang-20
x86_64                randconfig-072-20260203    gcc-13
x86_64                randconfig-073-20260203    gcc-14
x86_64                randconfig-074-20260203    gcc-14
x86_64                randconfig-075-20260203    gcc-13
x86_64                randconfig-076-20260203    gcc-14
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-22
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    clang-22
xtensa                generic_kc705_defconfig    gcc-15.2.0
xtensa                randconfig-001-20260203    gcc-13.4.0
xtensa                randconfig-001-20260203    gcc-14.3.0
xtensa                randconfig-002-20260203    gcc-13.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
