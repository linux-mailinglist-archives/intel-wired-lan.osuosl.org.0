Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA4E741F81
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jun 2023 07:08:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BAAF9404F4;
	Thu, 29 Jun 2023 05:08:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BAAF9404F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688015301;
	bh=0mBr+5O85k+SHjr3HVBPjBayrXWoUTlf/FDFY9Ps4XE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=InAwkb+w2dTtl9JYZFr32TgFftuMYnY5eIdOsBUSsugi/hcSXfD6CJrX7+lwZNwzV
	 +4tWV4GmHKPUGdBPPpIgDfn0YF97fhPluMYSiJrhig40ut2z+iZoTlHbgEy0Qj9ZJI
	 4vmLViZqdAbAI6ZLpyO+3YHYRjAzOZkIh63WPaQ0jTUpHlGxgX2LoWO3B+BbrCddga
	 5mObu5dnjj/llh4b9HokUSpaFBd/rlMu0fphXbJJJ5N1PfMK1tPvi0nQyl4tibH4VN
	 N9L7LUs7Iq0Vit2iGMkWeXDdsxTY4D6zrG4z7MH4pHfVM9iTzaf5/E85Nx0tFDPhRT
	 KhM852YADokpg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zwOWFutnVKBB; Thu, 29 Jun 2023 05:08:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E77CB4031D;
	Thu, 29 Jun 2023 05:08:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E77CB4031D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B5FCD1BF39D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 05:08:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8BA88401A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 05:08:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BA88401A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8vo3UbSyBnSg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jun 2023 05:08:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D887540198
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D887540198
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 05:08:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="364573211"
X-IronPort-AV: E=Sophos;i="6.01,167,1684825200"; d="scan'208";a="364573211"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 22:08:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="830395863"
X-IronPort-AV: E=Sophos;i="6.01,167,1684825200"; d="scan'208";a="830395863"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 28 Jun 2023 22:08:10 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qEjt3-000DpT-13
 for intel-wired-lan@lists.osuosl.org; Thu, 29 Jun 2023 05:08:09 +0000
Date: Thu, 29 Jun 2023 13:07:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306291358.0BsJ7Ykw-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688015292; x=1719551292;
 h=date:from:to:subject:message-id;
 bh=o0ms2S0nkvp79zado05b4J1/Osb5NMMjyOwz3lhJbqI=;
 b=fAoFiIj93PqRQwRXA2YLvw4P70nJvtVTkHP/M6p2ehMaTKdvMq4ndkcG
 MJPsCPs5tsJnAoSZFhQL3GfokqFfXQ6IDuPvqGg7St7wa1TbjoXNER/QL
 kG6QCMzrCfuvogLYToP0q9xU1LXyQOGxjCf2Ex7ovBtqtegIrQdz6gPkz
 Y8znhJ7ATHmuvetr1X0TeLyUeH2CTLCRzj2QDUPf0xHYUrmygtg0xJw8y
 /77RFnMBh5pGs9nTxCJubxDssJb2oUcV++N942sDIkPQOhAO8xthwuEI3
 1WW/oH9nROEY/hD+s8QfEwdfi/sLLR+mLgIasul3pskQXmGDykaj7TF3V
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fAoFiIj9
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 e3a732bcba0358ec9648f7da216829a12227e7d0
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
branch HEAD: e3a732bcba0358ec9648f7da216829a12227e7d0  igc: Fix Kernel Panic during ndo_tx_timeout callback

elapsed time: 722m

configs tested: 107
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r004-20230628   gcc  
alpha                randconfig-r013-20230628   gcc  
alpha                randconfig-r024-20230628   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r022-20230628   gcc  
arc                  randconfig-r043-20230628   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r003-20230628   gcc  
arm                  randconfig-r046-20230628   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r021-20230628   clang
hexagon              randconfig-r041-20230628   clang
hexagon              randconfig-r045-20230628   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230628   clang
i386         buildonly-randconfig-r005-20230628   clang
i386         buildonly-randconfig-r006-20230628   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230628   clang
i386                 randconfig-i002-20230628   clang
i386                 randconfig-i003-20230628   clang
i386                 randconfig-i004-20230628   clang
i386                 randconfig-i005-20230628   clang
i386                 randconfig-i006-20230628   clang
i386                 randconfig-i011-20230628   gcc  
i386                 randconfig-i012-20230628   gcc  
i386                 randconfig-i013-20230628   gcc  
i386                 randconfig-i014-20230628   gcc  
i386                 randconfig-i015-20230628   gcc  
i386                 randconfig-i016-20230628   gcc  
i386                 randconfig-r011-20230628   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r012-20230628   gcc  
loongarch            randconfig-r035-20230628   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r032-20230628   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r026-20230628   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r025-20230628   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r033-20230628   clang
riscv                randconfig-r042-20230628   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r001-20230628   clang
s390                 randconfig-r015-20230628   gcc  
s390                 randconfig-r036-20230628   clang
s390                 randconfig-r044-20230628   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r002-20230628   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r006-20230628   gcc  
sparc                randconfig-r031-20230628   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r023-20230628   clang
um                   randconfig-r034-20230628   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230628   clang
x86_64       buildonly-randconfig-r002-20230628   clang
x86_64       buildonly-randconfig-r003-20230628   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230628   gcc  
x86_64               randconfig-x002-20230628   gcc  
x86_64               randconfig-x003-20230628   gcc  
x86_64               randconfig-x004-20230628   gcc  
x86_64               randconfig-x005-20230628   gcc  
x86_64               randconfig-x006-20230628   gcc  
x86_64               randconfig-x011-20230628   clang
x86_64               randconfig-x012-20230628   clang
x86_64               randconfig-x013-20230628   clang
x86_64               randconfig-x014-20230628   clang
x86_64               randconfig-x015-20230628   clang
x86_64               randconfig-x016-20230628   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r016-20230628   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
