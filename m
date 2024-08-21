Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3556695A4C5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 20:38:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C8D2C40593;
	Wed, 21 Aug 2024 18:38:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nWyUK8YrH1z3; Wed, 21 Aug 2024 18:37:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F3A9405B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724265479;
	bh=f154ucJ7VQvVEDygJezbmqmx8HsQHYB9yVNxWHKvlzM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=nriM727MA7b53prd11GWy3hf10ED17ThzWp6McokKdZzzEME++rVrf4SYoW0Te0d3
	 rCYNvWm8C+97497WUEtNqtcNZkwtCbfZiSmRMyhiNDRBkiHPWsNsLSKerBbLxcGsg2
	 vm0vZ6+FnHW/94IkebTh/Zkp7Pq3maNuTrEwqezS4L/zmo3RxXn8Of82rmQBJNSyAT
	 uJEf47xUbxEDdDtCFEdSRSRFmEbirxmKoGGaIfol03m+EmqwUtQcs9WFbwKdC+ljhW
	 KZomdvvlE+SRIBDjhHJPv3b6vkKCXnlkOJy3allPJy5VFQ0EazpDMQkTj+QwuDZQrn
	 1RPRFXP1MtLhA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2F3A9405B8;
	Wed, 21 Aug 2024 18:37:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E85981BF395
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 18:37:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D3B76606E2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 18:37:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 82X_McRBQQ2X for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 18:37:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5F2A9605A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F2A9605A0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5F2A9605A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 18:37:55 +0000 (UTC)
X-CSE-ConnectionGUID: Oo/Mjze5TuenExFSXdOahw==
X-CSE-MsgGUID: MWXoLJIjTry2h8XmCTqCfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="33311018"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="33311018"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 11:37:55 -0700
X-CSE-ConnectionGUID: HWAQ/26pTrC7nc7HNZK7HQ==
X-CSE-MsgGUID: tx/natIyR6aZQEbN/+tdHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="91913481"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 21 Aug 2024 11:37:53 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sgqDP-000BnK-0J
 for intel-wired-lan@lists.osuosl.org; Wed, 21 Aug 2024 18:37:51 +0000
Date: Thu, 22 Aug 2024 02:37:42 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408220240.LApPMUVn-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724265477; x=1755801477;
 h=date:from:to:subject:message-id;
 bh=NWKH0Xz7lyn4yGmuO2swb6CsCSte9R3Pr8qmb0ILWTA=;
 b=Xb8p/b6alfdT9sVnig7UM7irFjhjukEkhBkkYV6u61XOqPhKXiwsr5wD
 6vF3Iu1GiLyRAbbjJYtJ9m9um4rRAQL/bauSqUTE/J+gQK+sPzE3mMkWG
 8Avb5YAvjLK7376kJ5WH+YFmoj85VdiL6M4SXK/lf4uluu8qR4dgdCYGB
 9fDDJuUqSG2llmSEZ0SwsstzlIr0lc7ynIcVrBMQRqAOZ7hKAIMrTMp39
 4NDgRUT2IXCavNSeSn28DxYOmYJmMDP2K2SRx3E0Pw8xVOCK0N1i8FgZh
 XW5/PicmbYmBJwvDymmM9wn0QP4htzeRhPlIhgtonQGvPLYBRstr5oHkE
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Xb8p/b6a
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 503ab6ee40fc103ea55cc9e50bb879e571d65aac
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 503ab6ee40fc103ea55cc9e50bb879e571d65aac  ice: use internal pf id instead of function number

elapsed time: 1180m

configs tested: 157
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240821   gcc-13.2.0
arc                   randconfig-002-20240821   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                                 defconfig   gcc-13.2.0
arm                   randconfig-001-20240821   gcc-13.2.0
arm                   randconfig-002-20240821   gcc-13.2.0
arm                   randconfig-003-20240821   gcc-13.2.0
arm                   randconfig-004-20240821   gcc-13.2.0
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240821   gcc-13.2.0
arm64                 randconfig-002-20240821   gcc-13.2.0
arm64                 randconfig-003-20240821   gcc-13.2.0
arm64                 randconfig-004-20240821   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240821   gcc-13.2.0
csky                  randconfig-002-20240821   gcc-13.2.0
hexagon                          allmodconfig   clang-20
hexagon                          allyesconfig   clang-20
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-12
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-12
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240821   gcc-12
i386         buildonly-randconfig-002-20240821   gcc-12
i386         buildonly-randconfig-003-20240821   gcc-12
i386         buildonly-randconfig-004-20240821   gcc-12
i386         buildonly-randconfig-005-20240821   gcc-12
i386         buildonly-randconfig-006-20240821   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240821   gcc-12
i386                  randconfig-002-20240821   gcc-12
i386                  randconfig-003-20240821   gcc-12
i386                  randconfig-004-20240821   gcc-12
i386                  randconfig-005-20240821   gcc-12
i386                  randconfig-006-20240821   gcc-12
i386                  randconfig-011-20240821   gcc-12
i386                  randconfig-012-20240821   gcc-12
i386                  randconfig-013-20240821   gcc-12
i386                  randconfig-014-20240821   gcc-12
i386                  randconfig-015-20240821   gcc-12
i386                  randconfig-016-20240821   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240821   gcc-13.2.0
loongarch             randconfig-002-20240821   gcc-13.2.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240821   gcc-13.2.0
nios2                 randconfig-002-20240821   gcc-13.2.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240821   gcc-13.2.0
parisc                randconfig-002-20240821   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   gcc-14.1.0
powerpc               randconfig-001-20240821   gcc-13.2.0
powerpc               randconfig-002-20240821   gcc-13.2.0
powerpc64             randconfig-001-20240821   gcc-13.2.0
powerpc64             randconfig-002-20240821   gcc-13.2.0
powerpc64             randconfig-003-20240821   gcc-13.2.0
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240821   gcc-13.2.0
riscv                 randconfig-002-20240821   gcc-13.2.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240821   gcc-13.2.0
s390                  randconfig-002-20240821   gcc-13.2.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240821   gcc-13.2.0
sh                    randconfig-002-20240821   gcc-13.2.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240821   gcc-13.2.0
sparc64               randconfig-002-20240821   gcc-13.2.0
um                               allmodconfig   clang-20
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-12
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240821   gcc-13.2.0
um                    randconfig-002-20240821   gcc-13.2.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240821   gcc-12
x86_64       buildonly-randconfig-003-20240821   gcc-12
x86_64       buildonly-randconfig-004-20240821   gcc-12
x86_64       buildonly-randconfig-005-20240821   gcc-12
x86_64       buildonly-randconfig-006-20240821   gcc-12
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240821   gcc-12
x86_64                randconfig-002-20240821   gcc-12
x86_64                randconfig-003-20240821   gcc-12
x86_64                randconfig-004-20240821   gcc-12
x86_64                randconfig-005-20240821   gcc-12
x86_64                randconfig-006-20240821   gcc-12
x86_64                randconfig-011-20240821   gcc-12
x86_64                randconfig-012-20240821   gcc-12
x86_64                randconfig-013-20240821   gcc-12
x86_64                randconfig-014-20240821   gcc-12
x86_64                randconfig-015-20240821   gcc-12
x86_64                randconfig-016-20240821   gcc-12
x86_64                randconfig-071-20240821   gcc-12
x86_64                randconfig-072-20240821   gcc-12
x86_64                randconfig-073-20240821   gcc-12
x86_64                randconfig-074-20240821   gcc-12
x86_64                randconfig-075-20240821   gcc-12
x86_64                randconfig-076-20240821   gcc-12
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240821   gcc-13.2.0
xtensa                randconfig-002-20240821   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
