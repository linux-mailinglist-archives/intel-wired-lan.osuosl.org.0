Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF7C9AFB7D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Oct 2024 09:50:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F19660A51;
	Fri, 25 Oct 2024 07:50:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SwgMyOKtDVUd; Fri, 25 Oct 2024 07:50:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AED860861
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729842653;
	bh=tA9/DDLcLwSyYM2v+mEFHhGjfuolHcICVoxaF4W2KGs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=dQMftoT1V1Kzx4yOLaiO129ylKrZTYjYh1U09T5y79ImMDA6Af62NTxgnfUfK0RVC
	 tf/TXmPgQ3/yCOInQkpD3t+vAptaG5ni+bkZPpza0wpHN00om13xvckZMybE7OQ7Q2
	 HStlIXDvYPZhBZ6jChUW5+XjtRANBK6EtGZ2spGTTdnIHFKu7XbScDlk6+juCNnwAq
	 lohD1BuI9ldN6D82CiDwt80iXOMfViorrYPGbsnxSRSulonqgVw19+Q6dMpF7HDPm/
	 80QVxJBaC8q45tiBqjYrgzh5IE6NE2nZeIy8UyhWCtUkbvJwF8g++rMe7x6jOmlsqu
	 re//wzs6fldDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7AED860861;
	Fri, 25 Oct 2024 07:50:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 11B01497A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 07:50:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E0A1181453
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 07:50:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KE-o2xsaN2ZN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Oct 2024 07:50:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0074181396
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0074181396
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0074181396
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 07:50:49 +0000 (UTC)
X-CSE-ConnectionGUID: q+Ws/W3BS3i4GaSd+Z+uvQ==
X-CSE-MsgGUID: u5SnWKYKQwCb9yKQCETA2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29633179"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29633179"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 00:50:49 -0700
X-CSE-ConnectionGUID: +RuoyJkXQnml0B2YOu7IYQ==
X-CSE-MsgGUID: 6xW1vGVdR3aAErMXqpLH5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="80444053"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 25 Oct 2024 00:50:47 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t4F5p-000Xnc-2s
 for intel-wired-lan@lists.osuosl.org; Fri, 25 Oct 2024 07:50:45 +0000
Date: Fri, 25 Oct 2024 15:50:19 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410251512.ZGK2Brt4-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729842650; x=1761378650;
 h=date:from:to:subject:message-id;
 bh=sUClB/zPp1wb1ThSsFMkjHtIYqfntwi+qcWuVmQybbQ=;
 b=MFIkDBJvD95t54gHllmA57yY2zxDKpY4RLg3kuPGoYEbaSqyLnAeCiEw
 tEUTCQspBT9iUVXjO7nwVUECHx38ukIjTO6y7WTYF023WYtU0Pr5hDIrL
 ghATJQ17PkQ06ZsoxWlX2CcUOoOLm8v4aSiPrv4bleOljQNoF0eshhVab
 /A3PLuombP2a4RUZvc0RpKftCCYfVkVLo+r78Ae6jBJFB5RSY9xmmLax7
 2uKhfoJ+91Ehoe//EBCeywm8AvGgAAFMUp40iVlwRjUM3bKGFWHnrhaak
 +O6MnrQjyP/QWGfli5vQgGyBg8DVNaWSGKjkb7ZfwpejX1a/2oRJH6FUr
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MFIkDBJv
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 9efc44fb2dba6138b0575826319200049078679a
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
branch HEAD: 9efc44fb2dba6138b0575826319200049078679a  Merge branch 'net-dsa-mv88e6xxx-fix-mv88e6393x-phc-frequency-on-internal-clock'

elapsed time: 1233m

configs tested: 83
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                  allnoconfig    gcc-14.1.0
alpha                 allyesconfig    clang-20
alpha                    defconfig    gcc-14.1.0
arc                   allmodconfig    clang-20
arc                    allnoconfig    gcc-14.1.0
arc                   allyesconfig    clang-20
arm                   allmodconfig    clang-20
arm                    allnoconfig    gcc-14.1.0
arm                   allyesconfig    clang-20
arm              lpc32xx_defconfig    gcc-14.1.0
arm              s3c6400_defconfig    gcc-14.1.0
arm               sp7021_defconfig    gcc-14.1.0
arm         vt8500_v6_v7_defconfig    gcc-14.1.0
arm64                 allmodconfig    clang-20
arm64                  allnoconfig    gcc-14.1.0
csky                   allnoconfig    gcc-14.1.0
hexagon               allmodconfig    clang-20
hexagon                allnoconfig    gcc-14.1.0
hexagon               allyesconfig    clang-20
i386                  alldefconfig    gcc-14.1.0
i386                  allmodconfig    clang-19
i386                   allnoconfig    clang-19
i386                  allyesconfig    clang-19
i386                     defconfig    clang-19
loongarch             allmodconfig    gcc-14.1.0
loongarch              allnoconfig    gcc-14.1.0
m68k                  allmodconfig    gcc-14.1.0
m68k                   allnoconfig    gcc-14.1.0
m68k                  allyesconfig    gcc-14.1.0
microblaze            allmodconfig    gcc-14.1.0
microblaze             allnoconfig    gcc-14.1.0
microblaze            allyesconfig    gcc-14.1.0
mips                   allnoconfig    gcc-14.1.0
mips                 gpr_defconfig    gcc-14.1.0
mips                jazz_defconfig    gcc-14.1.0
nios2                  allnoconfig    gcc-14.1.0
openrisc               allnoconfig    clang-20
openrisc              allyesconfig    gcc-14.1.0
openrisc                 defconfig    gcc-12
parisc                allmodconfig    gcc-14.1.0
parisc                 allnoconfig    clang-20
parisc                allyesconfig    gcc-14.1.0
parisc                   defconfig    gcc-12
powerpc               allmodconfig    gcc-14.1.0
powerpc                allnoconfig    clang-20
powerpc               allyesconfig    gcc-14.1.0
powerpc          sequoia_defconfig    gcc-14.1.0
powerpc           tqm8xx_defconfig    gcc-14.1.0
powerpc             warp_defconfig    gcc-14.1.0
riscv                 allmodconfig    gcc-14.1.0
riscv                  allnoconfig    clang-20
riscv                 allyesconfig    gcc-14.1.0
riscv                    defconfig    gcc-12
s390                  allmodconfig    gcc-14.1.0
s390                   allnoconfig    clang-20
s390                  allyesconfig    gcc-14.1.0
s390                     defconfig    gcc-12
sh                    allmodconfig    gcc-14.1.0
sh                     allnoconfig    gcc-14.1.0
sh                    allyesconfig    gcc-14.1.0
sh                       defconfig    gcc-12
sh              ecovec24_defconfig    gcc-14.1.0
sh             edosk7705_defconfig    gcc-14.1.0
sh               kfr2r09_defconfig    gcc-14.1.0
sh          magicpanelr2_defconfig    gcc-14.1.0
sh                se7619_defconfig    gcc-14.1.0
sh                se7705_defconfig    gcc-14.1.0
sparc                 allmodconfig    gcc-14.1.0
sparc64                  defconfig    gcc-12
um                    allmodconfig    clang-20
um                     allnoconfig    clang-20
um                    allyesconfig    clang-20
um                       defconfig    gcc-12
um                  i386_defconfig    gcc-12
um                x86_64_defconfig    gcc-12
x86_64                 allnoconfig    clang-19
x86_64                allyesconfig    clang-19
x86_64                   defconfig    clang-19
x86_64                       kexec    clang-19
x86_64                       kexec    gcc-12
x86_64                    rhel-8.3    gcc-12
x86_64         rhel-8.3-kselftests    gcc-12
xtensa                 allnoconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
