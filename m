Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8BE97BF18
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Sep 2024 18:26:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 02AD1411A3;
	Wed, 18 Sep 2024 16:26:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xjPFxWBaPMUZ; Wed, 18 Sep 2024 16:26:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9FE60411AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726676792;
	bh=dSugjZbsUPRDj+Sep3VQQqnLPSjMEGJrFVVs8jLn/vU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=REh1vwpf+86cr9GpIhkcNi+Xfs5I+wYrzZeI6PqZJP0VAk+zKSEuY1YkW1KOpaMkL
	 Mk97AxDFEXs1U1OEcZ9suan68eQkLMVYMJgArVtB3Q5xAVk2OTKZmWjD/Oa+NMJKGI
	 Zo8S1ZXF4gjSvsqKOoRdSBGoaxQtp1J81GqU/9tynEAfTbnaVVrvcFo5ZiPA43/7uO
	 Afk2Y/7HVh028bDDjphJdyilv/rs7bYdZw64PpHdSNJM9+d+X+uklCamNDADAqid45
	 F/w5V6WWFM12h3VMhMtYCiQ+qB3PSq6fYmG1p5SzoTjXMi1lp4fSc8yL/uvh+O9IzN
	 uS0DIRwI0ms8g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9FE60411AA;
	Wed, 18 Sep 2024 16:26:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4762F1BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2024 16:26:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 351F0606B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2024 16:26:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wOcleC9wUesq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Sep 2024 16:26:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4381660617
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4381660617
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4381660617
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2024 16:26:29 +0000 (UTC)
X-CSE-ConnectionGUID: OyYF9G+4S9q/6wQ1tD7QYg==
X-CSE-MsgGUID: w43Hm5KmTDSZtUOpho5Gsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="36183108"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="36183108"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 09:26:30 -0700
X-CSE-ConnectionGUID: 0l/bKtn/Q5yGh+c28DDoEg==
X-CSE-MsgGUID: vQguP2h1SiufDOe9J0QThA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="100461406"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 18 Sep 2024 09:26:29 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sqxVa-000CPe-2s
 for intel-wired-lan@lists.osuosl.org; Wed, 18 Sep 2024 16:26:26 +0000
Date: Thu, 19 Sep 2024 00:25:35 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202409190028.FxloOAP0-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726676790; x=1758212790;
 h=date:from:to:subject:message-id;
 bh=8OH5cZEoNPeDYrSVIsg+0SS/lglVbQFRml9VGBMYPqU=;
 b=mxl1IbGqopzkbCdF2N72/C/iTwbdYrxNwGeU6miCUnt17ddN29UeJEha
 uC48nS6F7zmeUZ176h5v5CiAj3v0s9BmIHgKOsGBtsq93iLLFr6t001W5
 p99KX+iBQW/iioDgJiT1872wTK9byP/WjdqVPi63lrwyWS6gVHw19IZNT
 Wqby1RaLl3XIttZYjKdIex04GTG2ad9IbW90zRmDn/5E+LyUG+9EO6MIt
 zcuePRVUalQmBvrfDHNmGVIb0ZDpkBxmA3TDOPZK9aMj6zkkWdGEbJXRA
 BG5rUfr+X5ibjeQ4vQXT0FC+t8R5II2vKrNAUkD4kZKxOKPgkI2WCxNb8
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mxl1IbGq
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 64f0ea235188eb9b7c2a8e9bb8ba7ee41e72c157
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
branch HEAD: 64f0ea235188eb9b7c2a8e9bb8ba7ee41e72c157  ice: disallow DPLL_PIN_STATE_SELECTABLE for dpll output pins

elapsed time: 2449m

configs tested: 101
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-13.3.0
alpha                            allyesconfig    gcc-13.3.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20240918    gcc-13.2.0
arc                   randconfig-002-20240918    gcc-13.2.0
arm                               allnoconfig    clang-20
arm                              allyesconfig    gcc-14.1.0
arm                         assabet_defconfig    clang-15
arm                            dove_defconfig    gcc-14.1.0
arm                        neponset_defconfig    gcc-14.1.0
arm                            qcom_defconfig    clang-20
arm                   randconfig-001-20240918    clang-14
arm                   randconfig-002-20240918    clang-20
arm                   randconfig-003-20240918    gcc-14.1.0
arm                   randconfig-004-20240918    clang-20
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                 randconfig-001-20240918    gcc-14.1.0
arm64                 randconfig-002-20240918    gcc-14.1.0
arm64                 randconfig-003-20240918    gcc-14.1.0
arm64                 randconfig-004-20240918    clang-16
csky                              allnoconfig    gcc-14.1.0
csky                  randconfig-001-20240918    gcc-14.1.0
csky                  randconfig-002-20240918    gcc-14.1.0
hexagon                           allnoconfig    clang-20
hexagon               randconfig-001-20240918    clang-20
hexagon               randconfig-002-20240918    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20240918    clang-18
i386        buildonly-randconfig-002-20240918    gcc-12
i386        buildonly-randconfig-003-20240918    gcc-12
i386        buildonly-randconfig-004-20240918    gcc-12
i386        buildonly-randconfig-005-20240918    clang-18
i386        buildonly-randconfig-006-20240918    gcc-12
i386                                defconfig    clang-18
i386                  randconfig-001-20240918    clang-18
i386                  randconfig-002-20240918    clang-18
i386                  randconfig-003-20240918    clang-18
i386                  randconfig-004-20240918    gcc-12
i386                  randconfig-005-20240918    gcc-12
i386                  randconfig-006-20240918    clang-18
i386                  randconfig-011-20240918    gcc-12
i386                  randconfig-012-20240918    clang-18
i386                  randconfig-013-20240918    gcc-12
i386                  randconfig-014-20240918    clang-18
i386                  randconfig-015-20240918    clang-18
i386                  randconfig-016-20240918    clang-18
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch             randconfig-001-20240918    gcc-14.1.0
loongarch             randconfig-002-20240918    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                       m5208evb_defconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
nios2                             allnoconfig    gcc-14.1.0
nios2                 randconfig-001-20240918    gcc-14.1.0
nios2                 randconfig-002-20240918    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-14.1.0
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    gcc-14.1.0
parisc                              defconfig    gcc-14.1.0
parisc                randconfig-001-20240918    gcc-14.1.0
parisc                randconfig-002-20240918    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
powerpc                          allyesconfig    clang-20
powerpc               randconfig-002-20240918    gcc-14.1.0
powerpc               randconfig-003-20240918    gcc-14.1.0
riscv                            allmodconfig    clang-20
riscv                             allnoconfig    gcc-14.1.0
riscv                            allyesconfig    clang-20
riscv                               defconfig    clang-20
s390                             allmodconfig    clang-20
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64                              defconfig    gcc-11
x86_64                           rhel-8.3-bpf    gcc-12
x86_64                         rhel-8.3-kunit    gcc-12
x86_64                           rhel-8.3-ltp    gcc-12
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
