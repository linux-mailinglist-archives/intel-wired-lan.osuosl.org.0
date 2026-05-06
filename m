Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sIRoKyDE+2kREgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 00:43:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E484E15C4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 00:43:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D83960F58;
	Wed,  6 May 2026 22:43:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IaNmjwWAwIQR; Wed,  6 May 2026 22:43:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2699F60E67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778107421;
	bh=kPZn7GX5oyzZU8KIWiEeQ9nbTG0uIJtCDdgQI4Ib1zw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Iw3S5DWCHvih6+xXrede6pnBXwgrF0gvzsKXY6sDKhNAvy4Ki4i6mIlOlBRlsiHE7
	 pNeejGO7VDIOL1KR/G/upTqGBTLdh9ibxlub9LuDIUjlDisyy3Wzz0a5HOd5xrVZp6
	 WTy2Eq3iK6/+mRVftoL+dAXLIzkv1TypR+f5BEoW6U/Jw7KJgRDISyDGLfLtJby6cW
	 4MS61FuOJe0xntgoiih2B6iSFNnxSbh+HBqBz3PxAT+ClmqEppXplDG37wHA08te0N
	 fVyWcUpOn3NL8H0/WDBoDlbBkuffjxjeFBhFzn4GO0LVEDtjyF0c6bzn53Tbj3mQbe
	 u3l3ElxCave7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2699F60E67;
	Wed,  6 May 2026 22:43:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D99CE280
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 22:43:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CB0028345D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 22:43:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TT6OlvXhVCnl for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 May 2026 22:43:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org ABB3F833DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ABB3F833DB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ABB3F833DB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 22:43:37 +0000 (UTC)
X-CSE-ConnectionGUID: hcId75EhQoiQP88s5f/RzA==
X-CSE-MsgGUID: EFWyJSzYSnOdUKfIqhAsCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="79069005"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="79069005"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 15:43:37 -0700
X-CSE-ConnectionGUID: fTX7LUJ5QEaszVV9JgmgGA==
X-CSE-MsgGUID: FfOTZIvbTbyNEscELxix8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="236538130"
Received: from lkp-server01.sh.intel.com (HELO 9ec114424ce8) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 06 May 2026 15:43:36 -0700
Received: from kbuild by 9ec114424ce8 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wKkxp-000000001I7-1UBh;
 Wed, 06 May 2026 22:43:33 +0000
Date: Thu, 07 May 2026 06:43:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202605070617.F3mv9LkU-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778107418; x=1809643418;
 h=date:from:to:subject:message-id;
 bh=DHrcqlIwmbVMXo3lxcDZAFZ7FE9ASYsz+qCRHycpsKM=;
 b=AgH3gMb04np5fVK6yq0B+O5izPddnBrgA+Sxu1PyMfb1jIOzvpF3J3QD
 z1cTenIYiG+p5pFOendXYmewzkV4VqN7GS3+iEKwTzyx1ucyKWs4jzsnj
 wTPk4m1Fwnd5QZQ4u1kGM2eh4drpULiEZt3YGG3lzY5w4I+bFn/j0XXa7
 wdOqz3K5yj8s2U+w+MLZZj5FORJJA6EgX+e4HkbQ7H4/EUshuZfS0JTtQ
 rj3VBbEWyjugqPPw3Yp7qaebO4YHjHXnVKtkM1+o1PzN7f3yKYsCxNwWo
 8y3JuY1XZLIKyYImiVbfONwFn9CBENQ1y+vHRyi8brssRXT5o0ME7Rz47
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AgH3gMb0
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 18095fadc3678fd7fa1a3592cbb15d3080c204fd
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
X-Rspamd-Queue-Id: 37E484E15C4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [8.79 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	R_SPF_ALLOW(0.00)[+mx:c];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_ONE(0.00)[1];
	NEURAL_SPAM(0.00)[0.722];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: add header
X-Spam: Yes

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 200GbE
branch HEAD: 18095fadc3678fd7fa1a3592cbb15d3080c204fd  ixd: add devlink support

elapsed time: 1271m

configs tested: 110
configs skipped: 13

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
arm                               allnoconfig    clang-23
arm                              allyesconfig    gcc-15.2.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
arm64                 randconfig-001-20260506    gcc-8.5.0
arm64                 randconfig-002-20260506    gcc-8.5.0
arm64                 randconfig-003-20260506    gcc-11.5.0
arm64                 randconfig-004-20260506    clang-23
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260506    gcc-15.2.0
csky                  randconfig-002-20260506    gcc-15.2.0
hexagon                           allnoconfig    clang-23
hexagon                             defconfig    clang-23
hexagon               randconfig-001-20260506    clang-23
hexagon               randconfig-002-20260506    clang-23
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260506    gcc-14
i386        buildonly-randconfig-002-20260506    gcc-14
i386        buildonly-randconfig-003-20260506    clang-20
i386        buildonly-randconfig-004-20260506    clang-20
i386        buildonly-randconfig-005-20260506    clang-20
i386        buildonly-randconfig-006-20260506    gcc-14
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-23
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260506    clang-18
loongarch             randconfig-002-20260506    clang-23
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    gcc-15.2.0
m68k                                defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    gcc-15.2.0
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260506    gcc-8.5.0
nios2                 randconfig-002-20260506    gcc-8.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    gcc-15.2.0
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-23
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-23
sh                               alldefconfig    gcc-15.2.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-15.2.0
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                                  defconfig    clang-23
um                             i386_defconfig    gcc-14
um                           x86_64_defconfig    clang-23
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260506    clang-20
x86_64      buildonly-randconfig-002-20260506    gcc-14
x86_64      buildonly-randconfig-003-20260506    clang-20
x86_64      buildonly-randconfig-004-20260506    clang-20
x86_64      buildonly-randconfig-005-20260506    gcc-12
x86_64      buildonly-randconfig-006-20260506    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260506    gcc-13
x86_64                randconfig-002-20260506    clang-20
x86_64                randconfig-003-20260506    clang-20
x86_64                randconfig-004-20260506    clang-20
x86_64                randconfig-005-20260506    gcc-14
x86_64                randconfig-006-20260506    clang-20
x86_64                randconfig-071-20260506    gcc-14
x86_64                randconfig-072-20260506    gcc-14
x86_64                randconfig-073-20260506    gcc-14
x86_64                randconfig-074-20260506    clang-20
x86_64                randconfig-075-20260506    gcc-14
x86_64                randconfig-076-20260506    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
