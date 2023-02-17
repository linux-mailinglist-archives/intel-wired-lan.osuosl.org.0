Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D8969A98E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Feb 2023 12:01:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EBD6040515;
	Fri, 17 Feb 2023 11:01:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBD6040515
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676631713;
	bh=brcXp8a93qFbQeYvz2zxLRbI51xcHBhH6+fdh6e4vWA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9fj1Xz8V3zFMkgL+8BxGu30wcRLubSx77DrADslTnRUF0PzKa46COOeeXd0F3hAHk
	 ERbS2n9FtDJfDiTqgGl4hkEk/tEU1A7qek8iQTHeCat+lgA0nyEi6kCQfni9sGUV1Z
	 HDOV5yhGJN4nR8coToB6wrQ2vUffhao27I6wIAOqobLnfvcnh883dweDhC7HSm6bK7
	 hunycfbcOAeqs+d9fn1LLf864kES+mmtjG9yRIfa1gZ14VuWysKSv+GEvpI76l27Lo
	 8W31aqubBBT/bPfcajF3xyUFVEHTkuN0LUQnIMai/agcnTjkUML2OC/MSkvoLOzf/z
	 cpG0xmji9C/oQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G3Vl-dcZHYdH; Fri, 17 Feb 2023 11:01:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D5F35402F4;
	Fri, 17 Feb 2023 11:01:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5F35402F4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6D0571BF399
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 11:01:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 522EF81EE5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 11:01:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 522EF81EE5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vZuC0oR1qHFC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Feb 2023 11:01:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16F8981ED3
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 16F8981ED3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 11:01:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="333322147"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="333322147"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 03:01:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="700864246"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="700864246"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 17 Feb 2023 03:01:08 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pSyUF-000BMT-2e;
 Fri, 17 Feb 2023 11:01:07 +0000
Date: Fri, 17 Feb 2023 19:00:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63ef5e5c.NqYYEbB6DThhhrwn%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676631706; x=1708167706;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ZCCN3Zf6BUkqSAsfQkFTH3fqLOCZiqOdOF0dRvm+BRU=;
 b=jKsmZocSnxmsIlRNUMYdzNHrDh3zl4vayXJXnn7Lij+oGrsASBVXbJx8
 2jktW4Vvr8dEqATaQPdWq5hhz2Az/VKlsbe4CXmXrUzKg/GADcu4tR3kJ
 yXm8BzthrLMnSoIccgO6N4RciK3ksX8+tMnhUsWQbwb+X/cMd2gL+aGlc
 NscOahFWENSnnHjaZiQNv4wY/M49li4NFFU2Qbi1mtAg5ed51VO4xw5lZ
 ODwmDK7uB0zv2i8BWcrTX8uT3aAWSebuSRFlSJyGza7oKBCEBW0TqCJKe
 v5eqmFwWMkaEFklC2o5DLXIkRx/N+rV/m3OKO4ltgDYcQHGp4mcjmUsL4
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jKsmZocS
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD REGRESSION
 40967f77dfa9fa728b7f36a5d2eb432f39de185c
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: 40967f77dfa9fa728b7f36a5d2eb432f39de185c  Merge branch 'seg6-add-psp-flavor-support-for-srv6-end-behavior'

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202302170047.EjCPizu3-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202302170135.8MjefLR1-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/net/ethernet/sfc/efx_devlink.c:109:6: warning: shift count >= width of type [-Wshift-count-overflow]
drivers/net/ethernet/sfc/efx_devlink.c:185:17: error: expected declaration or statement at end of input
drivers/net/ethernet/sfc/efx_devlink.c:185:23: error: expected ';' at end of input
drivers/net/ethernet/sfc/efx_devlink.c:185:3: error: unterminated function-like macro invocation
drivers/net/ethernet/sfc/efx_devlink.c:185:58: error: expected ')' before 'build_id'
drivers/net/ethernet/sfc/efx_devlink.c:197:55: error: expected ';' before '}' token
drivers/net/ethernet/sfc/efx_devlink.c:522:2: error: expected '}'
drivers/net/ethernet/sfc/efx_devlink.c:522:2: error: unterminated argument list invoking macro "memset"

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- ia64-randconfig-r036-20230213
|   |-- drivers-net-ethernet-sfc-efx_devlink.c:error:expected-)-before-build_id
|   `-- drivers-net-ethernet-sfc-efx_devlink.c:error:expected-before-token
`-- s390-randconfig-r035-20230216
    |-- drivers-net-ethernet-sfc-efx_devlink.c:error:expected-at-end-of-input
    |-- drivers-net-ethernet-sfc-efx_devlink.c:error:expected-declaration-or-statement-at-end-of-input
    `-- drivers-net-ethernet-sfc-efx_devlink.c:error:unterminated-argument-list-invoking-macro-memset
clang_recent_errors
`-- arm64-randconfig-r013-20230212
    |-- drivers-net-ethernet-sfc-efx_devlink.c:error:expected
    |-- drivers-net-ethernet-sfc-efx_devlink.c:error:unterminated-function-like-macro-invocation
    `-- drivers-net-ethernet-sfc-efx_devlink.c:warning:shift-count-width-of-type

elapsed time: 1193m

configs tested: 69
configs skipped: 3

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
arc                                 defconfig
arc                  randconfig-r043-20230212
arc                  randconfig-r043-20230213
arc                  randconfig-r043-20230214
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm                  randconfig-r046-20230212
arm                  randconfig-r046-20230214
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                 randconfig-a016-20230213
ia64                             allmodconfig
ia64                                defconfig
loongarch                        allmodconfig
loongarch                         allnoconfig
loongarch                           defconfig
m68k                             allmodconfig
m68k                                defconfig
mips                             allmodconfig
mips                             allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                randconfig-r042-20230213
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                                defconfig
s390                 randconfig-r044-20230213
sh                               allmodconfig
sparc                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64               randconfig-a016-20230213
x86_64                               rhel-8.3

clang tested configs:
arm                  randconfig-r046-20230213
hexagon              randconfig-r041-20230212
hexagon              randconfig-r041-20230213
hexagon              randconfig-r041-20230214
hexagon              randconfig-r045-20230212
hexagon              randconfig-r045-20230213
hexagon              randconfig-r045-20230214
riscv                randconfig-r042-20230212
riscv                randconfig-r042-20230214
s390                 randconfig-r044-20230212
s390                 randconfig-r044-20230214
x86_64               randconfig-a001-20230213
x86_64               randconfig-a002-20230213
x86_64               randconfig-a003-20230213
x86_64               randconfig-a004-20230213
x86_64               randconfig-a005-20230213
x86_64               randconfig-a006-20230213

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
