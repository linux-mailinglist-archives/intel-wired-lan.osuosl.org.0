Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D0099B07F70
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Jul 2025 23:20:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6FE9583CCF;
	Wed, 16 Jul 2025 21:20:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xlFM_OqUcpE8; Wed, 16 Jul 2025 21:20:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5038583F56
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752700832;
	bh=OaqruTITZ/avPmc9wjVSOf8rmLZOnaWCFxh17PthRjY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0lsL9DQKOOC4PHt7nYYEsPeKBXNWbHQW0lsSfkSh8pijmj+wn7LEw7s9zG8jfLBqf
	 nOP1TnvrRaXLt3J+FNogUBCBKpvzRrp4eTNDSj1Fx97BcMOEpySbNk01AdVGqADlvn
	 Gmyh9uw9WzsMtgy7cDPgOilZ93xt2CALCe1IWPgq+0/PCQD65kvADIwnttnjYphugk
	 WKcAqDb7JudPUs9Y+GSIYnfIwYRP0vU20qrd8DwZgC9sgZiV+cl8nZukX2M+G0ahxa
	 IgO/Wn7cnXi+pJZMq5uz+6pbALcbh1rCxmLTkwfRohO65r4dKRcj/eLSF0nSe3VN+G
	 GSzveeWL/FzQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5038583F56;
	Wed, 16 Jul 2025 21:20:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B54E2234
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 21:20:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A6B88402EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 21:20:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J5KDv1ln9mnh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Jul 2025 21:20:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 21DD84031A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21DD84031A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 21DD84031A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 21:20:28 +0000 (UTC)
X-CSE-ConnectionGUID: u8bH5WvfQmm+if987yklRw==
X-CSE-MsgGUID: 8zbpkRFxTDWXRzvdwMAIFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="55053982"
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="55053982"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 14:20:29 -0700
X-CSE-ConnectionGUID: zvO116E2TTuTmJnu1TwZIA==
X-CSE-MsgGUID: Dsqy3d2jT6KRni8IykvV7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="181301810"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 16 Jul 2025 14:20:27 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uc9Y9-000CqU-13
 for intel-wired-lan@lists.osuosl.org; Wed, 16 Jul 2025 21:20:25 +0000
Date: Thu, 17 Jul 2025 05:20:18 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507170507.jBLaK3Ez-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752700829; x=1784236829;
 h=date:from:to:subject:message-id;
 bh=WGyqtyjIVnObZ9cgw4cFaZaH7kS0Bab8/zOYOkKj53M=;
 b=Z1j9SIfdNxtON09PVjMKl5C7NqXxc6TwEAqUR/eefoB4GuAhS4uhyM3s
 Ba6InRXtf62k0GU5BavCy3FOjICYPS5OSrHZyd1I/SxGQ4NmNlZWTO4h6
 0A4izM2kUr93r+AEsj7sBQh25KaeKbOiTW8V/8y60lN48bb1tQm5ldd04
 c1PHTiqBbXbCwPu+c1Q9W5KVEilI/7pX0VNkCWpF8ajOgexLVvcsIY5od
 nNqCYKo3M6OvDnIB81VAHt4L4si+/t9WxphfN4yJzvu9qyan4++iyJ1CO
 paxMnCcUWjpE6W+E35u8EDekAEQBmmQ60NOzP+RBuOXciKruWIk1M/w2q
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Z1j9SIfd
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 07ec3905924b0970df84415e491d0af534125a95
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 07ec3905924b0970df84415e491d0af534125a95  ice: fix Rx page leak on multi-buffer frames

elapsed time: 1449m

configs tested: 100
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250716    gcc-13.4.0
arc                   randconfig-002-20250716    gcc-8.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250716    clang-20
arm                   randconfig-002-20250716    gcc-12.4.0
arm                   randconfig-003-20250716    gcc-8.5.0
arm                   randconfig-004-20250716    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250716    gcc-9.5.0
arm64                 randconfig-002-20250716    gcc-8.5.0
arm64                 randconfig-003-20250716    gcc-8.5.0
arm64                 randconfig-004-20250716    clang-21
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250716    gcc-14.3.0
csky                  randconfig-002-20250716    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250716    clang-21
hexagon               randconfig-002-20250716    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386        buildonly-randconfig-001-20250716    gcc-12
i386        buildonly-randconfig-002-20250716    clang-20
i386        buildonly-randconfig-003-20250716    gcc-12
i386        buildonly-randconfig-004-20250716    gcc-11
i386        buildonly-randconfig-005-20250716    gcc-12
i386        buildonly-randconfig-006-20250716    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-21
loongarch             randconfig-001-20250716    clang-18
loongarch             randconfig-002-20250716    clang-21
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20250716    gcc-14.2.0
nios2                 randconfig-002-20250716    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250716    gcc-8.5.0
parisc                randconfig-002-20250716    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc               randconfig-001-20250716    gcc-8.5.0
powerpc               randconfig-002-20250716    clang-21
powerpc               randconfig-003-20250716    gcc-14.3.0
powerpc64             randconfig-001-20250716    gcc-10.5.0
powerpc64             randconfig-003-20250716    gcc-13.4.0
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250716    gcc-8.5.0
riscv                 randconfig-002-20250716    gcc-11.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250716    gcc-11.5.0
s390                  randconfig-002-20250716    gcc-11.5.0
sh                               allmodconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250716    gcc-15.1.0
sh                    randconfig-002-20250716    gcc-14.3.0
sparc                            allmodconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250716    gcc-8.5.0
sparc                 randconfig-002-20250716    gcc-14.3.0
sparc64               randconfig-001-20250716    clang-20
sparc64               randconfig-002-20250716    clang-21
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250716    gcc-11
um                    randconfig-002-20250716    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250716    gcc-12
x86_64      buildonly-randconfig-002-20250716    clang-20
x86_64      buildonly-randconfig-003-20250716    clang-20
x86_64      buildonly-randconfig-004-20250716    clang-20
x86_64      buildonly-randconfig-005-20250716    clang-20
x86_64      buildonly-randconfig-006-20250716    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                randconfig-001-20250716    gcc-9.3.0
xtensa                randconfig-002-20250716    gcc-13.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
