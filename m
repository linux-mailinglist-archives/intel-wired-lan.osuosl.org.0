Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 754F36EF4D2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Apr 2023 14:59:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F310F41CCB;
	Wed, 26 Apr 2023 12:59:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F310F41CCB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682513983;
	bh=jXqWKd/+yv7R/FyRFUlHZCJYL/33OgDFVvqFRwg2XWw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jiqbAtVoEC0Fhb/liVmOSrHNu7248nDsK6WtLkzDrO562AuAUMT9RyrlRVdTAg2SM
	 2dsa00QA/VsRirvNi6kfG4xOiz5Grq5sLDcMxZPdJ1DuA83KfXDX/nrRv0Klkgjx4h
	 Ym+tVX8aifAWytIedRorWKQigEkASzgvOXq+o84L14TeliWafgCBQl0O0F2HvnXf1N
	 gbmy9DdMM+gjPGsgEpYJCFgdwC/ODTyQi6wkZPUdszDg0dBYRu+HvV/lEYfg0bkSly
	 S9GgjLDEPtRZijRO0zRWuGRLaM0SqN6JLEAYP4ecH7Xe1Sw/VbIuZyjRKidyodBytt
	 MxZtiUVDlRWdg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JNsqQZY6f1Ui; Wed, 26 Apr 2023 12:59:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CA7B241CCF;
	Wed, 26 Apr 2023 12:59:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA7B241CCF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B74401BF215
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 12:59:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9A7CC40117
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 12:59:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A7CC40117
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SBaEBIvOVsxp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Apr 2023 12:59:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49F244010B
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 49F244010B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 12:59:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="349907284"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="349907284"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 05:59:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="868286599"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="868286599"
Received: from lkp-server01.sh.intel.com (HELO 041f065c1b1b) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 26 Apr 2023 05:59:33 -0700
Received: from kbuild by 041f065c1b1b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1prek9-0000AN-0M
 for intel-wired-lan@lists.osuosl.org; Wed, 26 Apr 2023 12:59:33 +0000
Date: Wed, 26 Apr 2023 20:59:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230426125920.DZZvf%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682513975; x=1714049975;
 h=date:from:to:subject:message-id;
 bh=HwfFHVZt1UG6FFWIgnYlzEGInp9CQ+ySd5A3Si+fix0=;
 b=I/OuEDhUaWHCXKUfTdZy2dvTZH483LXME/XfROWnGTQXoAotBIyAAXdM
 GVZGazxg4j6j7dwScJBq0uwlAmdBf/R43Z5EDYT7Oei2cXqel3sZRqpeP
 0taAl4ls+SBRnQcBz0xqkb4qJWj3k3E5rPhow+oGhZo4IDmZSPMcO+/IO
 QJH6DrtJlOm2Mne4ynXeIbDqOiMYqZbpAaI/32/lNubJrshKYIQ3WTj/d
 5JeF5LAIgHvX5pgkSkyoiw7IA6+FJ9ceBtjX5NaPoK6Yti/VVv0sMuw9U
 NgxK8htaO3jmAxtNnuIey5v9PQrG0/RM12gpbF48z0sOPI5VQ53pHd7Xw
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I/OuEDhU
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 468273bb46571b2918619e6d3c4f5b38569901c7
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 468273bb46571b2918619e6d3c4f5b38569901c7  iavf: send VLAN offloading caps once after VFR

elapsed time: 1157m

configs tested: 138
configs skipped: 13

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230424   gcc  
alpha        buildonly-randconfig-r003-20230424   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r032-20230423   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r023-20230424   gcc  
arc                  randconfig-r043-20230423   gcc  
arc                  randconfig-r043-20230424   gcc  
arc                  randconfig-r043-20230425   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r014-20230423   gcc  
arm                  randconfig-r046-20230423   gcc  
arm                  randconfig-r046-20230424   clang
arm                  randconfig-r046-20230425   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r001-20230423   gcc  
arm64        buildonly-randconfig-r005-20230423   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r015-20230425   gcc  
hexagon      buildonly-randconfig-r004-20230423   clang
hexagon              randconfig-r041-20230423   clang
hexagon              randconfig-r041-20230424   clang
hexagon              randconfig-r041-20230425   clang
hexagon              randconfig-r045-20230423   clang
hexagon              randconfig-r045-20230424   clang
hexagon              randconfig-r045-20230425   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230424   clang
i386                 randconfig-a002-20230424   clang
i386                 randconfig-a003-20230424   clang
i386                 randconfig-a004-20230424   clang
i386                 randconfig-a005-20230424   clang
i386                 randconfig-a006-20230424   clang
i386                 randconfig-a011-20230424   gcc  
i386                 randconfig-a012-20230424   gcc  
i386                 randconfig-a013-20230424   gcc  
i386                 randconfig-a014-20230424   gcc  
i386                 randconfig-a015-20230424   gcc  
i386                 randconfig-a016-20230424   gcc  
i386                 randconfig-r034-20230424   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r011-20230423   gcc  
ia64                 randconfig-r012-20230423   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r015-20230423   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r002-20230423   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r006-20230424   gcc  
m68k                 randconfig-r013-20230423   gcc  
m68k                 randconfig-r036-20230423   gcc  
microblaze           randconfig-r016-20230423   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r003-20230423   clang
mips         buildonly-randconfig-r006-20230423   clang
mips                 randconfig-r003-20230423   clang
nios2                               defconfig   gcc  
nios2                randconfig-r001-20230424   gcc  
nios2                randconfig-r005-20230423   gcc  
nios2                randconfig-r032-20230424   gcc  
nios2                randconfig-r035-20230423   gcc  
openrisc             randconfig-r036-20230424   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r011-20230425   gcc  
parisc               randconfig-r021-20230423   gcc  
parisc               randconfig-r023-20230423   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r031-20230423   gcc  
powerpc              randconfig-r033-20230424   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r005-20230424   clang
riscv                randconfig-r042-20230423   clang
riscv                randconfig-r042-20230424   gcc  
riscv                randconfig-r042-20230425   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r022-20230424   gcc  
s390                 randconfig-r025-20230423   clang
s390                 randconfig-r044-20230423   clang
s390                 randconfig-r044-20230424   gcc  
s390                 randconfig-r044-20230425   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r006-20230424   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r001-20230423   gcc  
sparc                randconfig-r002-20230423   gcc  
sparc                randconfig-r016-20230425   gcc  
sparc64      buildonly-randconfig-r005-20230424   gcc  
sparc64              randconfig-r003-20230424   gcc  
sparc64              randconfig-r006-20230423   gcc  
sparc64              randconfig-r013-20230425   gcc  
sparc64              randconfig-r021-20230424   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230424   clang
x86_64               randconfig-a002-20230424   clang
x86_64               randconfig-a003-20230424   clang
x86_64               randconfig-a004-20230424   clang
x86_64               randconfig-a005-20230424   clang
x86_64               randconfig-a006-20230424   clang
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                        randconfig-k001   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                           rhel-8.3-syz   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r004-20230424   gcc  
xtensa               randconfig-r024-20230423   gcc  
xtensa               randconfig-r025-20230424   gcc  
xtensa               randconfig-r026-20230423   gcc  
xtensa               randconfig-r031-20230424   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
