Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D9913A15971
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jan 2025 23:11:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23CAD7049A;
	Fri, 17 Jan 2025 22:11:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gVim9cngIRpH; Fri, 17 Jan 2025 22:11:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 00F89704A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737151906;
	bh=rMc7as9bVajy2fAMd9LjMKcYGdpE6HSziemOkqxHmpo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=mSeo3qAGWQ72damnOBELYJHpgM40aiJC0rHwx0vFHKEbDlY0+wHlwc903TbvbeYHU
	 jz9w2/Y++zYmzGpgSVPGJAIG0pbK7FGvB2ROQdlFxWMQRGmEj0v42RXFGWa0wFMuzE
	 Ehmjh+uxDp/250P7O4SfDOEeBGyaCXyRCtXsml2hgyPk4PsJhDpx0ga0SmOy4D5TCe
	 yNXx5iO5eGZIWggi4xFGejNa2XfkMn1wE5kaZOvQmY2m9QXuz7bCqSWWRQHG+7A/wl
	 SA+/lqBsk/Y0i3LYB0F1ss3d2BeqbykzFfp+Dffpwf5PDPxz5L7MMyxPhQ60Bc5El2
	 zooENcxzikKwQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 00F89704A2;
	Fri, 17 Jan 2025 22:11:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C957EB89
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 22:11:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A9F6884A4E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 22:11:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9SUriMa3dwOa for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jan 2025 22:11:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 890E184AF8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 890E184AF8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 890E184AF8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 22:11:41 +0000 (UTC)
X-CSE-ConnectionGUID: p6SDUQIlTAeeSrggFP91rw==
X-CSE-MsgGUID: gTulrJ9BSR2u0G3f1sEZzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="41528378"
X-IronPort-AV: E=Sophos;i="6.13,213,1732608000"; d="scan'208";a="41528378"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 14:11:42 -0800
X-CSE-ConnectionGUID: vutXn5WtS4WmNSccHKuNLA==
X-CSE-MsgGUID: 3zYRMe6ZTr+pLesyyEISSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105762181"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 17 Jan 2025 14:11:40 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tYuZ0-000TlN-1A
 for intel-wired-lan@lists.osuosl.org; Fri, 17 Jan 2025 22:11:38 +0000
Date: Sat, 18 Jan 2025 06:11:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202501180624.CtIy0ydc-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737151903; x=1768687903;
 h=date:from:to:subject:message-id;
 bh=1Aiv2mJ8qdx0MzqpEAkwp3LZdbB/8psXNTaWq8upVXc=;
 b=W/mXJIPmVG2FdxnLlvgNXPEEZrRiKOPGLmXqvRnLW+1Q+5CEx7Goo1HB
 3tECBs6iuwUCdeNYsn3xreoBXjUtiB1NegrerDac27WR/rEic0lKt6d7A
 0nWoQLdj37DK6UjXC0I4J2tZnXmA6qMLJXn4bX14oNwlv6n/P7gCdLwNU
 tXtEFPyAVLQ1O4xGSFKNLe9VwPYzFHQHXB10XxfkSKAG3X+sk+XLRU8Ju
 XHqoxHj8y1dfCgNTTQNzlAIlQfmh+bZBZO9D/v21fVTZPUHCCtKsqCpEa
 u4t6WSNcTAJrKNFiTok1Lp3PUG0JUhH1qaRM+fCuKmjv7gqD/SzufoNVJ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W/mXJIPm
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 14f8e37e6b96f8392ff582ff943bacfc4da7d109
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
branch HEAD: 14f8e37e6b96f8392ff582ff943bacfc4da7d109  idpf: add more info during virtchnl transaction timeout/salt mismatch

elapsed time: 1444m

configs tested: 71
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
arc                   randconfig-001-20250117    gcc-13.2.0
arc                   randconfig-002-20250117    gcc-13.2.0
arm                               allnoconfig    clang-17
arm                   randconfig-001-20250117    clang-18
arm                   randconfig-002-20250117    gcc-14.2.0
arm                   randconfig-003-20250117    gcc-14.2.0
arm                   randconfig-004-20250117    clang-16
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250117    gcc-14.2.0
arm64                 randconfig-002-20250117    clang-18
arm64                 randconfig-003-20250117    clang-20
arm64                 randconfig-004-20250117    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250117    gcc-14.2.0
csky                  randconfig-002-20250117    gcc-14.2.0
hexagon               randconfig-001-20250117    clang-20
hexagon               randconfig-002-20250117    clang-20
i386                              allnoconfig    gcc-12
i386        buildonly-randconfig-001-20250117    clang-19
i386        buildonly-randconfig-002-20250117    clang-19
i386        buildonly-randconfig-003-20250117    gcc-12
i386        buildonly-randconfig-004-20250117    gcc-12
i386        buildonly-randconfig-005-20250117    clang-19
i386        buildonly-randconfig-006-20250117    gcc-11
loongarch             randconfig-001-20250117    gcc-14.2.0
loongarch             randconfig-002-20250117    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250117    gcc-14.2.0
nios2                 randconfig-002-20250117    gcc-14.2.0
parisc                randconfig-001-20250117    gcc-14.2.0
parisc                randconfig-002-20250117    gcc-14.2.0
powerpc               randconfig-001-20250117    gcc-14.2.0
powerpc               randconfig-002-20250117    gcc-14.2.0
powerpc               randconfig-003-20250117    gcc-14.2.0
powerpc64             randconfig-001-20250117    clang-16
powerpc64             randconfig-002-20250117    clang-20
powerpc64             randconfig-003-20250117    gcc-14.2.0
riscv                 randconfig-001-20250117    gcc-14.2.0
riscv                 randconfig-002-20250117    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250117    gcc-14.2.0
s390                  randconfig-002-20250117    clang-20
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250117    gcc-14.2.0
sh                    randconfig-002-20250117    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250117    gcc-14.2.0
sparc                 randconfig-002-20250117    gcc-14.2.0
sparc64               randconfig-001-20250117    gcc-14.2.0
sparc64               randconfig-002-20250117    gcc-14.2.0
um                    randconfig-001-20250117    clang-20
um                    randconfig-002-20250117    gcc-12
x86_64                            allnoconfig    clang-19
x86_64      buildonly-randconfig-001-20250117    gcc-12
x86_64      buildonly-randconfig-002-20250117    gcc-12
x86_64      buildonly-randconfig-003-20250117    gcc-12
x86_64      buildonly-randconfig-004-20250117    gcc-12
x86_64      buildonly-randconfig-005-20250117    gcc-12
x86_64      buildonly-randconfig-006-20250117    clang-19
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250117    gcc-14.2.0
xtensa                randconfig-002-20250117    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
