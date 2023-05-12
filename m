Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD4D6FFFB3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 06:39:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 96DD942D27;
	Fri, 12 May 2023 04:39:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 96DD942D27
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683866386;
	bh=RzcUl03+qNoBQFKmtEIMOSxS8WU5W1im3prg3s4uq6Y=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IcVfYkZPq0E3fhUR33/T0+Rii5/2ey3BGJlxMO9JsFc77af82UDnzCci+yd2qq4k0
	 HjzRd4/BYUt+gEH34nWmzFxepmpRA6fL4VN09M0d9t5wgSNphVupaqedEk6euOrnNF
	 9I5c1xWXeB1CBjoOXGJedGMQAkzviROEd4ZJCQ5Z0TU08fl7LtV4nFwdK/py0KbgbC
	 jA1WBoIvXrkljKv/seU1jmWhuA2QYLrAzttZKsDzA9A29EYWK1niVAmRL2qIPXYmFx
	 jxnW7Nq5CJYNky8owsuIiSA4PdRQIK11PVJql4FWflGzRZ69SSCP/wfNaxvZg7BS0M
	 uSrTu8rvFj+1Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jOh2UyepwPGA; Fri, 12 May 2023 04:39:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 63F4840166;
	Fri, 12 May 2023 04:39:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 63F4840166
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9760B1BF21A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 04:39:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6F9C5841BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 04:39:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F9C5841BB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Stea2l0I4XvV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 04:39:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F79A8418D
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2F79A8418D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 04:39:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="414066050"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="414066050"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 21:39:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="650493918"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="650493918"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 11 May 2023 21:39:37 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pxKZ6-0004WU-0Y
 for intel-wired-lan@lists.osuosl.org; Fri, 12 May 2023 04:39:36 +0000
Date: Fri, 12 May 2023 12:38:41 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230512043841.ciRUj%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683866379; x=1715402379;
 h=date:from:to:subject:message-id;
 bh=6KROubwjGdt/67+majs0OdHtkuHBGutMnhNV5MavPEc=;
 b=RmineB/Aw2YBCbJCJCceKnc5DfuJ+hqyW86ctoSRUaytWGBo4VlwzIrD
 6JQf/idtXz2yMMyAhuFTl+HpW+aZ2rBVG2E3PqI8O0/dv1WBVEbcAJbJ9
 iHSezeFxsycu23efmGV7LqPh72L9l4daoQo5hjjFEFgxOxolMzKa9E3Da
 B17m0GNped9QckiDOVcveR+zCs0AExA6e+5KnzBaaBYBV4JE4vyNmTO9X
 SuJijuo5vdBEyOMtFf2eVrOPg0hXGm0qSfCrO+mhMJf6+sVwAcjvcZN8r
 3bbYamJdgIRRUZluHhIn9NPwb0QSAedaFjG8TUThBKL4C38cyeyJp0Zxc
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RmineB/A
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 67f10f0eabf5bfa23320d4df8dd7ede20cb73a60
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 67f10f0eabf5bfa23320d4df8dd7ede20cb73a60  ice: Fix ice module unload

elapsed time: 732m

configs tested: 51
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r013-20230511   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r011-20230509   gcc  
arc                  randconfig-r011-20230511   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r014-20230509   gcc  
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r012-20230509   gcc  
ia64                 randconfig-r015-20230509   gcc  
ia64                 randconfig-r015-20230511   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r014-20230511   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc             randconfig-r016-20230511   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sparc                               defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
