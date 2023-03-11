Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5076B5FB2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Mar 2023 19:21:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB8E441757;
	Sat, 11 Mar 2023 18:21:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB8E441757
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678558870;
	bh=G/SP18ztBa3TVXBqz1yA4vLGM6JaGbj+IsvvGndgVvk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=aKo+NvnZ0o+Yf7AB3uibezyHNFJB7cy7oGlT/25zprXNl6FGNip5FHvzpJ7mlQxiw
	 jspG8txNZnXZ2yFaZvgLJQ41mFNCNWJlAS88quZSwZfccBCQmwMrf6uZSp8Y19ZXAH
	 CRzLG+zAzR188FA1+szIb1dFJnV3b0ghKZMxxoEJwAlICiPpFZhZxy4dRfoeESNMin
	 2j7ozKd8ki1cK96xGXUgPDFVfSjvs0hSAoO6XB2GFGTUUoHHV0R4iENeSCH0jwCfxj
	 BgGJrsQJxLV4ctEF+OkO7BlOxdKEQTrskQq75yue1lKIJ294AOiNN4DxXfITgvCh/F
	 esBW04F8o5udw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v_Pf7GLpQwj9; Sat, 11 Mar 2023 18:21:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8154041741;
	Sat, 11 Mar 2023 18:21:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8154041741
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1C02A1BF42C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Mar 2023 18:21:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E999D40104
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Mar 2023 18:21:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E999D40104
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YeqWeAtKd3Z1 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Mar 2023 18:21:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D254A400C4
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D254A400C4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Mar 2023 18:21:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10646"; a="325283735"
X-IronPort-AV: E=Sophos;i="5.98,253,1673942400"; d="scan'208";a="325283735"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2023 10:21:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10646"; a="801976144"
X-IronPort-AV: E=Sophos;i="5.98,253,1673942400"; d="scan'208";a="801976144"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 11 Mar 2023 10:20:59 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pb3py-0004kD-2o;
 Sat, 11 Mar 2023 18:20:58 +0000
Date: Sun, 12 Mar 2023 02:20:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <640cc66c.GKpeVheQoRC6qy/Z%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678558861; x=1710094861;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=0Rxceh2blnfT0T+e0iGCqVSqfiV9RcZw7FXG7SvOSGs=;
 b=MEGxtC8Ar8+W8P+zWXuhL66E03DQfy7e8IwxXbB6VWg+UTyuLnulxK7s
 kxtNm3JAILVDKje9hRTIXQLm6MVKcwR6TzEtq1yXnfzIsX0m9ceGUNxJg
 S7DcMZ1RNYr5rxt/FJ0BNPptnDF//jOT3kTIS8JOiPkWDr6vOFVawacFj
 UVd0Con4LSTv+76zR36iPJT74Dj5ToZiVxdPMEz3zJ2kAhvTLZMkSTFhS
 2xTCTKbG1+83ByXMVSZcRAfJCyiA1mBprgX1j9CgZP1Azcau/OAsWCEpG
 1mw9shLFjkFCbnOiZETvoA2HR9jsq3NmW7BH01GrMLwIvSgwVwuwAwaa/
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MEGxtC8A
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 d81c8cfe6ccfe41602e7fc191ece739a0031b2f1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: d81c8cfe6ccfe41602e7fc191ece739a0031b2f1  igc: fix the validation logic for taprio's gate list

elapsed time: 1460m

configs tested: 105
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230310   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r025-20230310   clang
arm                  randconfig-r026-20230310   clang
arm                  randconfig-r046-20230310   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r036-20230310   gcc  
hexagon              randconfig-r003-20230310   clang
hexagon              randconfig-r004-20230310   clang
hexagon              randconfig-r041-20230310   clang
hexagon              randconfig-r045-20230310   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r022-20230310   gcc  
ia64                 randconfig-r035-20230310   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r016-20230310   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230310   gcc  
m68k                 randconfig-r034-20230310   gcc  
microblaze           randconfig-r013-20230310   gcc  
microblaze           randconfig-r023-20230310   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r001-20230310   gcc  
mips                 randconfig-r006-20230310   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r024-20230310   gcc  
parisc       buildonly-randconfig-r006-20230310   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r021-20230310   gcc  
parisc               randconfig-r031-20230310   gcc  
parisc               randconfig-r032-20230310   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r002-20230310   clang
powerpc              randconfig-r005-20230310   clang
powerpc              randconfig-r015-20230310   gcc  
powerpc                     tqm8548_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r003-20230310   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230310   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r014-20230310   gcc  
s390                 randconfig-r044-20230310   gcc  
sh                               allmodconfig   gcc  
sh                         ap325rxa_defconfig   gcc  
sh                        edosk7705_defconfig   gcc  
sh                   randconfig-r011-20230310   gcc  
sh                           se7343_defconfig   gcc  
sh                           se7721_defconfig   gcc  
sparc        buildonly-randconfig-r005-20230310   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r012-20230310   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
