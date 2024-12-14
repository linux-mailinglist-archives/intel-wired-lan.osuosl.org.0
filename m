Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BF69F2028
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Dec 2024 18:40:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8FF386169C;
	Sat, 14 Dec 2024 17:40:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vuzNZo92YG1Z; Sat, 14 Dec 2024 17:40:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CD9761698
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734198055;
	bh=4mpMuqeAjsQUhzmZJ1LCvo+B5IS8HkZm8x4xSwg/83w=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vJp+OzOFP2HSCIFw1hQ1XGJAHaRZc4QOTTkziNhvcHJplb2L9Hfy+IdHhQqqUKyyn
	 8GTstgIM6/0Nf0P/qzZ6YfR5vhQMtI9EfWPigDzAnttCL0ryfFXOgRlrSfpTBIdfkB
	 m1Jr3j44BNi6FKnyvFNxvrRi7fiG6tFcctzB9uVWIB3fCi5L+zg7N0JQVBCBMdHYe+
	 +7kde0h0R9P+nLGcIl2bMogC9AzoK39TBWU/B6XR9nF0XmxewsN2bN2Ol6pno0W3S3
	 P5Qq62mIKCU3wz0amNOPSutLjbbhpKf5HJKpDTfL8ILD2DbUm+5J3UvshnK+CDJj3u
	 O5D0Ee9PGeLIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CD9761698;
	Sat, 14 Dec 2024 17:40:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 43022D0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Dec 2024 17:40:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2353A417DF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Dec 2024 17:40:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jioW6BrS5KTr for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Dec 2024 17:40:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CFA74417DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CFA74417DA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CFA74417DA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Dec 2024 17:40:51 +0000 (UTC)
X-CSE-ConnectionGUID: F7DhusXCS72pyKRfcjTP1A==
X-CSE-MsgGUID: Ho9nkk0lR5aelBK7GtzWng==
X-IronPort-AV: E=McAfee;i="6700,10204,11286"; a="34782147"
X-IronPort-AV: E=Sophos;i="6.12,234,1728975600"; d="scan'208";a="34782147"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2024 09:40:50 -0800
X-CSE-ConnectionGUID: W8ae0i/lTyuaqPstAHZ6IQ==
X-CSE-MsgGUID: KVm+CjzjQs2lybiWyi5MDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="100968941"
Received: from lkp-server01.sh.intel.com (HELO 82a3f569d0cb) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 14 Dec 2024 09:40:49 -0800
Received: from kbuild by 82a3f569d0cb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tMW8F-000D6u-2C
 for intel-wired-lan@lists.osuosl.org; Sat, 14 Dec 2024 17:40:47 +0000
Date: Sun, 15 Dec 2024 01:39:48 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202412150142.c74oqchj-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734198052; x=1765734052;
 h=date:from:to:subject:message-id;
 bh=FV9P7TXY3sH4+6CyEK0yak+O1Yhwd+9v+aaWgTcP5Xw=;
 b=HQC4fQ9yeh0erYiM7UrksOqWj8rYbRPeLSYcZiviDLM9esGLlBWDybk5
 ip2zhFcmz84SALOBFJ5/o0HC/bW347dUaS09j4xDf1IKbghHueHeI9Cb/
 IUW7rIlGRhOBDS2vVR2c6TKVAyS/aO+akyFw+lG7ppdao5ciBWOgbw/+V
 btuIX2I2ESVmsWPZbuAO7EFHgBkSnrA5ill1eBLSo8eEfuv/Tvtw2maUg
 K1muSr+ALcwspvAkugwHcU9R1wbfzxX/9U8y48Bv5ZUd2XLreYlWiLrrW
 kECJZiUNt41cgZlulMJeFi1YSefuXrhPeTEl7DvqieNO53qLskKveTYOb
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HQC4fQ9y
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 2c27c7663390d28bc71e97500eb68e0ce2a7223f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: 2c27c7663390d28bc71e97500eb68e0ce2a7223f  Merge branch 'devmem-tcp-fixes'

elapsed time: 2255m

configs tested: 67
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
arc                              allmodconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20241214    gcc-13.2.0
arc                   randconfig-002-20241214    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20241214    gcc-14.2.0
arm                   randconfig-002-20241214    clang-15
arm                   randconfig-003-20241214    gcc-14.2.0
arm                   randconfig-004-20241214    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                 randconfig-001-20241214    clang-15
arm64                 randconfig-002-20241214    clang-20
arm64                 randconfig-003-20241214    clang-15
arm64                 randconfig-004-20241214    gcc-14.2.0
csky                  randconfig-001-20241214    gcc-14.2.0
csky                  randconfig-002-20241214    gcc-14.2.0
hexagon               randconfig-001-20241214    clang-20
hexagon               randconfig-002-20241214    clang-14
i386        buildonly-randconfig-001-20241214    gcc-12
i386        buildonly-randconfig-002-20241214    gcc-12
i386        buildonly-randconfig-003-20241214    clang-19
i386        buildonly-randconfig-004-20241214    clang-19
i386        buildonly-randconfig-005-20241214    gcc-11
i386        buildonly-randconfig-006-20241214    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch             randconfig-001-20241214    gcc-14.2.0
loongarch             randconfig-002-20241214    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
nios2                 randconfig-001-20241214    gcc-14.2.0
nios2                 randconfig-002-20241214    gcc-14.2.0
parisc                randconfig-001-20241214    gcc-14.2.0
parisc                randconfig-002-20241214    gcc-14.2.0
powerpc               randconfig-001-20241214    clang-20
powerpc               randconfig-002-20241214    clang-15
powerpc               randconfig-003-20241214    clang-20
powerpc64             randconfig-001-20241214    gcc-14.2.0
powerpc64             randconfig-002-20241214    gcc-14.2.0
powerpc64             randconfig-003-20241214    clang-20
riscv                 randconfig-001-20241214    clang-20
riscv                 randconfig-002-20241214    clang-20
s390                             allmodconfig    clang-19
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20241214    gcc-14.2.0
s390                  randconfig-002-20241214    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20241214    gcc-14.2.0
sh                    randconfig-002-20241214    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                 randconfig-001-20241214    gcc-14.2.0
sparc                 randconfig-002-20241214    gcc-14.2.0
sparc64               randconfig-001-20241214    gcc-14.2.0
sparc64               randconfig-002-20241214    gcc-14.2.0
um                    randconfig-001-20241214    clang-20
um                    randconfig-002-20241214    clang-17
x86_64      buildonly-randconfig-001-20241214    gcc-11
x86_64      buildonly-randconfig-002-20241214    clang-19
x86_64      buildonly-randconfig-003-20241214    gcc-12
x86_64      buildonly-randconfig-004-20241214    gcc-12
x86_64      buildonly-randconfig-005-20241214    gcc-12
x86_64      buildonly-randconfig-006-20241214    clang-19
xtensa                randconfig-001-20241214    gcc-14.2.0
xtensa                randconfig-002-20241214    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
