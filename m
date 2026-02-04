Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MN2VB9ewgmn/YAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 03:37:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E5AE0EA0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 03:37:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 119EE409F3;
	Wed,  4 Feb 2026 02:37:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AVlAA6-4on9F; Wed,  4 Feb 2026 02:37:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18847409A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770172627;
	bh=J9KaZnntX7CLiRbCcTQpya+23caEPadAOf2EPWGw+g8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=p7kskIlZeye63ExjfF3Y41WpGakiAPKCtrlXetK5luDFKKYH2Te4szHv2i88DpvFe
	 Qq1LVubzxpOn/+XEAdcQ0PPUuan+OXOBD+rRAes1ahTqD1SWxQCAn0mt4ehWm1A5FS
	 4xoZSiEpeyc8o8o5prdDJL+MhigE9Bcu8abXnwIngU5BAUC77nyJTGeHQgmD2mNEtq
	 rBVGJRXjSZXVpb6ep7uE8XWJ54R/uzUHDCMsB6quIi46oW0OLe1ZFKQiYuT4iXRMgF
	 y3UGOVMkrqcE/ddlUrgMnwlmNreSpY825Lx8GCy8dC4E5SY6KAw44gRROXBbjlPLpR
	 zr2CJ5Dwg//hg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 18847409A6;
	Wed,  4 Feb 2026 02:37:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5A3E0173
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 02:37:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 454BC83E27
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 02:37:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mEk3NFTB2b9w for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Feb 2026 02:37:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1F28E83E24
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F28E83E24
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1F28E83E24
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 02:37:03 +0000 (UTC)
X-CSE-ConnectionGUID: CVaHXOr2Qp2oD6YCm0g2Kg==
X-CSE-MsgGUID: TRCi7HKETfOnqdgfiEiX3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="75212339"
X-IronPort-AV: E=Sophos;i="6.21,271,1763452800"; d="scan'208";a="75212339"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 18:37:03 -0800
X-CSE-ConnectionGUID: zelkoRDlRO67mmN66P/qtA==
X-CSE-MsgGUID: 9AbJVfJxSWS7hzqUsix/KQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,271,1763452800"; d="scan'208";a="210061178"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 03 Feb 2026 18:37:01 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vnSlH-00000000hOT-2G0k;
 Wed, 04 Feb 2026 02:36:59 +0000
Date: Wed, 04 Feb 2026 10:36:19 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202602041011.iz2cY96G-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770172624; x=1801708624;
 h=date:from:to:subject:message-id;
 bh=F40D34albcOCi6m13EXpVAR1MCF6xaCJfKY6/dT+9KY=;
 b=B090i/0ABM0c8+LpCxs6E8k89arVvAYbT3zyOA0K8zlWPz7NFqANr+tu
 PuwopHuN9PEb+HmIHyw2mL+x31zTjsRVFJXhkbrpwlHWNJ+j7ZeViTIFA
 3DXPzOJm3ne7f5c0MznVf9FgDUBTAZ+Y36D7GGGrSSit4qkE6Kdvr9pTB
 RdB7j7lX+KIgYJHF9AkLoVSQhMDc6+ilYzXS+lxEPNpNkLbssmL7fGxut
 WbnG1QFy64v/hiN7C4Jly6F8GnQ1P6pDd/A9oXJ0sl7XF7xdj3O6ApZWQ
 PWQJUV34u4ULOeXRsBRi9dfMV1gIxvVDPHxd0tFvWdBPoi1BfBPnd3AN0
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B090i/0A
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 667539f6dce27aa7db0a711375f94e14e714a698
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
	RECEIVED_HELO_LOCALHOST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_ALL(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: D8E5AE0EA0
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 667539f6dce27aa7db0a711375f94e14e714a698  Merge branch 'accecn-protocol-case-handling-series'

elapsed time: 735m

configs tested: 225
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
arc                              allyesconfig    clang-22
arc                              allyesconfig    gcc-15.2.0
arc                          axs101_defconfig    gcc-15.2.0
arc                          axs103_defconfig    clang-22
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260204    gcc-8.5.0
arc                   randconfig-002-20260204    gcc-8.5.0
arm                               allnoconfig    clang-22
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    gcc-15.2.0
arm                          ep93xx_defconfig    gcc-15.2.0
arm                         lpc32xx_defconfig    gcc-15.2.0
arm                          moxart_defconfig    clang-22
arm                           omap1_defconfig    gcc-15.2.0
arm                          pxa910_defconfig    gcc-15.2.0
arm                            qcom_defconfig    gcc-15.2.0
arm                   randconfig-001-20260204    gcc-8.5.0
arm                   randconfig-002-20260204    gcc-8.5.0
arm                   randconfig-003-20260204    gcc-8.5.0
arm                   randconfig-004-20260204    gcc-8.5.0
arm                         socfpga_defconfig    gcc-15.2.0
arm                        spear3xx_defconfig    gcc-15.2.0
arm                           sunxi_defconfig    gcc-15.2.0
arm                        vexpress_defconfig    gcc-15.2.0
arm64                            allmodconfig    clang-19
arm64                            allmodconfig    clang-22
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260204    gcc-11.5.0
arm64                 randconfig-002-20260204    gcc-11.5.0
arm64                 randconfig-003-20260204    gcc-11.5.0
arm64                 randconfig-004-20260204    gcc-11.5.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260204    gcc-11.5.0
csky                  randconfig-002-20260204    gcc-11.5.0
hexagon                          alldefconfig    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-22
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260204    gcc-15.2.0
hexagon               randconfig-002-20260204    gcc-15.2.0
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260204    gcc-14
i386        buildonly-randconfig-002-20260204    gcc-14
i386        buildonly-randconfig-003-20260204    gcc-14
i386        buildonly-randconfig-004-20260204    gcc-14
i386        buildonly-randconfig-005-20260204    gcc-14
i386        buildonly-randconfig-006-20260204    gcc-14
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260204    gcc-14
i386                  randconfig-002-20260204    gcc-14
i386                  randconfig-003-20260204    gcc-14
i386                  randconfig-004-20260204    gcc-14
i386                  randconfig-005-20260204    gcc-14
i386                  randconfig-006-20260204    gcc-14
i386                  randconfig-007-20260204    gcc-14
i386                  randconfig-011-20260204    clang-20
i386                  randconfig-012-20260204    clang-20
i386                  randconfig-013-20260204    clang-20
i386                  randconfig-014-20260204    clang-20
i386                  randconfig-015-20260204    clang-20
i386                  randconfig-016-20260204    clang-20
i386                  randconfig-017-20260204    clang-20
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-22
loongarch                         allnoconfig    clang-22
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260204    gcc-15.2.0
loongarch             randconfig-002-20260204    gcc-15.2.0
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                             allyesconfig    gcc-15.2.0
m68k                                defconfig    clang-19
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                            gpr_defconfig    clang-22
mips                        vocore2_defconfig    clang-22
nios2                         10m50_defconfig    clang-22
nios2                         10m50_defconfig    gcc-15.2.0
nios2                            allmodconfig    clang-22
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260204    gcc-15.2.0
nios2                 randconfig-002-20260204    gcc-15.2.0
openrisc                         alldefconfig    gcc-15.2.0
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
parisc                randconfig-001-20260204    gcc-8.5.0
parisc                randconfig-002-20260204    gcc-8.5.0
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.2.0
powerpc                     ep8248e_defconfig    gcc-15.2.0
powerpc                     kmeter1_defconfig    clang-22
powerpc               randconfig-001-20260204    gcc-8.5.0
powerpc               randconfig-002-20260204    gcc-8.5.0
powerpc                     tqm8541_defconfig    gcc-15.2.0
powerpc64             randconfig-001-20260204    gcc-8.5.0
powerpc64             randconfig-002-20260204    gcc-8.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                    nommu_k210_defconfig    gcc-15.2.0
riscv             nommu_k210_sdcard_defconfig    clang-22
riscv                 randconfig-001-20260204    gcc-8.5.0
riscv                 randconfig-002-20260204    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260204    gcc-8.5.0
s390                  randconfig-002-20260204    gcc-8.5.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-22
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                    randconfig-001-20260204    gcc-8.5.0
sh                    randconfig-002-20260204    gcc-8.5.0
sh                          rsk7201_defconfig    clang-22
sh                     sh7710voipgw_defconfig    gcc-15.2.0
sh                   sh7724_generic_defconfig    gcc-15.2.0
sh                            shmin_defconfig    gcc-15.2.0
sparc                             allnoconfig    clang-22
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260204    gcc-8.5.0
sparc                 randconfig-002-20260204    gcc-8.5.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260204    gcc-8.5.0
sparc64               randconfig-002-20260204    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                             i386_defconfig    gcc-15.2.0
um                    randconfig-001-20260204    gcc-8.5.0
um                    randconfig-002-20260204    gcc-8.5.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260204    clang-20
x86_64      buildonly-randconfig-002-20260204    clang-20
x86_64      buildonly-randconfig-003-20260204    clang-20
x86_64      buildonly-randconfig-004-20260204    clang-20
x86_64      buildonly-randconfig-005-20260204    clang-20
x86_64      buildonly-randconfig-006-20260204    clang-20
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260204    gcc-14
x86_64                randconfig-002-20260204    gcc-14
x86_64                randconfig-003-20260204    gcc-14
x86_64                randconfig-004-20260204    gcc-14
x86_64                randconfig-005-20260204    gcc-14
x86_64                randconfig-006-20260204    gcc-14
x86_64                randconfig-011-20260204    clang-20
x86_64                randconfig-012-20260204    clang-20
x86_64                randconfig-013-20260204    clang-20
x86_64                randconfig-014-20260204    clang-20
x86_64                randconfig-015-20260204    clang-20
x86_64                randconfig-016-20260204    clang-20
x86_64                randconfig-071-20260204    gcc-14
x86_64                randconfig-072-20260204    gcc-14
x86_64                randconfig-073-20260204    gcc-14
x86_64                randconfig-074-20260204    gcc-14
x86_64                randconfig-075-20260204    gcc-14
x86_64                randconfig-076-20260204    gcc-14
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
xtensa                          iss_defconfig    gcc-15.2.0
xtensa                randconfig-001-20260204    gcc-8.5.0
xtensa                randconfig-002-20260204    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
