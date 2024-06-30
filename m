Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 692C591D30F
	for <lists+intel-wired-lan@lfdr.de>; Sun, 30 Jun 2024 19:33:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A877B605F5;
	Sun, 30 Jun 2024 17:33:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 290nfaJEjE_l; Sun, 30 Jun 2024 17:33:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6096260633
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719768823;
	bh=VP5pBAuC9o9VZidDt/GxnSu4LQx0vK4sFhLH2YDrOI8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=mFme7bwMxINKsG6FrRLz8Qa32jgGcIqouViy2fdMsmP3E2xeft8+bosbJV85vwgS3
	 Ai4QKp9FCSHqUGbR3UWst62kW1Uz/eVmKb3iJh3MZwaaeOBPKgOIeveOcq5S1dJ3m8
	 eCHG2xHTE+unsp6AKdfidRcg68h/tQx37Y08CgtJjiUY2ky6uTnHFNZdBczWL8qxSs
	 0hd4Pf15afwl6o6dqgE3L44ZD9RBb87Xuiic2RIsGPgECmefid6r7SV+ku4NmTJYGU
	 Jvs7e4bydneh4MGrT3vDeTBMIKFJ8Kuiooj3Aw4GNyLVHqVuOiyjlbRWPhTin8kP+T
	 QEY5UjSz7LxaQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6096260633;
	Sun, 30 Jun 2024 17:33:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ACE681BF359
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Jun 2024 17:33:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 99F9560591
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Jun 2024 17:33:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eka4-ihZ4j_R for <intel-wired-lan@lists.osuosl.org>;
 Sun, 30 Jun 2024 17:33:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 455BA60071
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 455BA60071
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 455BA60071
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Jun 2024 17:33:38 +0000 (UTC)
X-CSE-ConnectionGUID: /7T82i6WTFy5MhcO1A9lUg==
X-CSE-MsgGUID: gHsoCJoJSQOgl7+YKIZmUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11119"; a="28014884"
X-IronPort-AV: E=Sophos;i="6.09,174,1716274800"; d="scan'208";a="28014884"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2024 10:33:38 -0700
X-CSE-ConnectionGUID: kWz0y3LdRCimCzheqhxB7A==
X-CSE-MsgGUID: cjZ0XZgSSHy0HvcVpZi82g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,174,1716274800"; d="scan'208";a="45117353"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 30 Jun 2024 10:33:35 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sNyQf-000Lnk-0Q
 for intel-wired-lan@lists.osuosl.org; Sun, 30 Jun 2024 17:33:33 +0000
Date: Mon, 01 Jul 2024 01:32:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407010156.jdD3a5DJ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719768820; x=1751304820;
 h=date:from:to:subject:message-id;
 bh=KaO6wapUnqbquG+U8Pcsb6nkvbDvHMvCppPufWoIVRk=;
 b=b0Pvawipm81gcFSPMjl4qOUdY+5i18LGSPrQFrE8OoM9ThW0mFa2UXuo
 dSEqyrg+oWpUNLqPDQ1hb8XChI8iMHCzfJeh/W7UMp2kw7uiYhsbH2uNP
 vIH8UfHj0ONFrl7YBdk9aH8L0Jx31jnIGfMRH6sU+FYvSsaQU2lm+Y4Mk
 /3iR5sBOf1lnTPi0JpDs2+nsz6rKZXccGdJjiYJCWUJJM2t9lepxSMw/t
 Pbg9MopkGXycznHSoEZieoAZF3q9di1dk0Nqzk/xq8a3P51lZAPh8mrna
 HnKniZ1jz7Xy1XvBePmAqfoIKrXI6x4dgQRJpheR5glVJ84Tadj+6lgli
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b0Pvawip
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 96050a178e0605e70e06b5f050096e6471fbd650
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
branch HEAD: 96050a178e0605e70e06b5f050096e6471fbd650  ice: Fix lldp packets dropping after changing the number of channels

elapsed time: 2648m

configs tested: 68
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                          axs101_defconfig   gcc-13.2.0
arc                   randconfig-001-20240630   gcc-13.2.0
arc                   randconfig-002-20240630   gcc-13.2.0
arm                               allnoconfig   clang-19
arm                            qcom_defconfig   clang-19
arm                   randconfig-001-20240630   gcc-13.2.0
arm                   randconfig-002-20240630   clang-17
arm                   randconfig-003-20240630   clang-19
arm                   randconfig-004-20240630   clang-19
arm64                             allnoconfig   gcc-13.2.0
arm64                 randconfig-001-20240630   clang-15
arm64                 randconfig-002-20240630   clang-19
arm64                 randconfig-003-20240630   clang-19
csky                              allnoconfig   gcc-13.2.0
hexagon                           allnoconfig   clang-19
i386         buildonly-randconfig-001-20240629   gcc-7
i386         buildonly-randconfig-001-20240630   clang-18
i386         buildonly-randconfig-002-20240629   gcc-7
i386         buildonly-randconfig-002-20240630   clang-18
i386         buildonly-randconfig-003-20240629   gcc-7
i386         buildonly-randconfig-003-20240630   clang-18
i386         buildonly-randconfig-004-20240629   gcc-7
i386         buildonly-randconfig-004-20240630   clang-18
i386         buildonly-randconfig-005-20240629   gcc-7
i386         buildonly-randconfig-005-20240630   clang-18
i386         buildonly-randconfig-006-20240629   gcc-7
i386         buildonly-randconfig-006-20240630   clang-18
i386                  randconfig-001-20240629   gcc-7
i386                  randconfig-001-20240630   clang-18
i386                  randconfig-002-20240629   gcc-7
i386                  randconfig-002-20240630   clang-18
i386                  randconfig-003-20240629   gcc-7
i386                  randconfig-003-20240630   clang-18
i386                  randconfig-004-20240629   gcc-7
i386                  randconfig-004-20240630   clang-18
i386                  randconfig-005-20240629   gcc-7
i386                  randconfig-005-20240630   clang-18
i386                  randconfig-006-20240629   gcc-7
i386                  randconfig-006-20240630   clang-18
i386                  randconfig-011-20240629   gcc-7
i386                  randconfig-011-20240630   clang-18
i386                  randconfig-012-20240629   gcc-7
i386                  randconfig-012-20240630   clang-18
i386                  randconfig-013-20240629   gcc-7
i386                  randconfig-013-20240630   clang-18
i386                  randconfig-014-20240629   gcc-7
i386                  randconfig-014-20240630   clang-18
i386                  randconfig-015-20240629   gcc-7
i386                  randconfig-015-20240630   clang-18
i386                  randconfig-016-20240629   gcc-7
i386                  randconfig-016-20240630   clang-18
loongarch                         allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                           ci20_defconfig   clang-19
nios2                             allnoconfig   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
powerpc                      bamboo_defconfig   clang-19
riscv                             allnoconfig   gcc-13.2.0
s390                              allnoconfig   clang-19
sh                                allnoconfig   gcc-13.2.0
um                                allnoconfig   clang-17
xtensa                            allnoconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
