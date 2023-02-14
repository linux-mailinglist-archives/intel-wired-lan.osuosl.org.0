Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE35696CBA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Feb 2023 19:24:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3AB2460DA5;
	Tue, 14 Feb 2023 18:24:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3AB2460DA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676399076;
	bh=LlptUxHh5DMfdT2OuaN6nM8RQpt3zN28THegzDF1xYQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ZmZ2R9ENxx3wUL/PEuiPkiALs6i0fgnNWvwT35WdmrxnYpVInAGtKk5X3mHI6Kw5s
	 2nHgvVJF3VlmdM+55OQjybn5m6MQVZNpxXFkpzMKVobpg0fdmbgqAPGldlH9UFDRml
	 1vQnA3g5PmaiM8GUTwW2cC30BTbO1awG3sR+k2XKxFvDfesfaW5fFyXkV88W4dBGCa
	 yEqiXLSQfAfiaYasRG1ZJeIrQhSwmpPmA7/mlSSfFxRqydWzRhdhRJo1lGE3egl9rw
	 IJdHTei9jsyk7Rk9tNRADJEIzK6XFFrMMb9wUBJV3ADl6SRhB1Cv05O1j6JhTHalOB
	 lqtQzgaJKuaIg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YhlLgzfKriWL; Tue, 14 Feb 2023 18:24:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44CFF6059F;
	Tue, 14 Feb 2023 18:24:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44CFF6059F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AC43A1BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 18:24:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7ADEE60D7B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 18:24:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7ADEE60D7B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SLfjwmWOqTXr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Feb 2023 18:24:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 857FF6059F
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 857FF6059F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 18:24:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="314877798"
X-IronPort-AV: E=Sophos;i="5.97,297,1669104000"; d="scan'208";a="314877798"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 10:24:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="732972381"
X-IronPort-AV: E=Sophos;i="5.97,297,1669104000"; d="scan'208";a="732972381"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 14 Feb 2023 10:24:24 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pRzyU-0008iM-2S;
 Tue, 14 Feb 2023 18:24:18 +0000
Date: Wed, 15 Feb 2023 02:23:42 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63ebd1ae.TLiJt9VqQPztAMSK%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676399069; x=1707935069;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=rUshWysHxNrd77R5eQty1+L4ngD3DMAKxN8jlWKor00=;
 b=XrTWLm9k6sSMKnLhMKbgwEHFkw3/yh2gXm78xksBvZDWty6J9isYAMEF
 9opd51u2G0OxOAskFQLW7k9T7dSal6BkXyV6cAV70a7Q3bI7IFXIK6oiR
 LOMkXQjMSjXEQl81nHa38dm2AajO+ejlbD5SOVkDZO5WIWoNJ27JErJ46
 1ry+TNIuIsbswOC49Ecw+xUEpWYtUqk9VPDyZUSHVxIOTWptrcVLsRjCd
 FfoYbjIIq7eiN4UelDT2x6UWwZQFQiixU3JSgJogtYadSZICkJqODx7ko
 2xVI46BQCcvaiEldM+g1z7HN2soKsVal0nIlzGrMFo6XuCmQopQ56qq2u
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XrTWLm9k
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 8799c740024eff1bd549a68e1c1a6849be61ce21
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 8799c740024eff1bd549a68e1c1a6849be61ce21  ixgbe: add double of VLAN header when computing the max MTU

elapsed time: 1417m

configs tested: 79
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
arc                                 defconfig
arc                        nsim_700_defconfig
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                 randconfig-a011-20230213
i386                 randconfig-a012-20230213
i386                 randconfig-a013-20230213
i386                 randconfig-a014-20230213
i386                 randconfig-a015-20230213
i386                 randconfig-a016-20230213
i386                          randconfig-c001
ia64                             allmodconfig
ia64                                defconfig
loongarch                        allmodconfig
loongarch                         allnoconfig
loongarch                           defconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                            mac_defconfig
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
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                                defconfig
sh                               allmodconfig
sh                   secureedge5410_defconfig
sparc                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
x86_64               randconfig-a011-20230213
x86_64               randconfig-a012-20230213
x86_64               randconfig-a013-20230213
x86_64               randconfig-a014-20230213
x86_64               randconfig-a015-20230213
x86_64               randconfig-a016-20230213
x86_64                               rhel-8.3

clang tested configs:
arm                       aspeed_g4_defconfig
arm                     davinci_all_defconfig
arm                  randconfig-r046-20230213
hexagon              randconfig-r041-20230212
hexagon              randconfig-r041-20230213
hexagon              randconfig-r045-20230212
hexagon              randconfig-r045-20230213
i386                 randconfig-a001-20230213
i386                 randconfig-a002-20230213
i386                 randconfig-a003-20230213
i386                 randconfig-a004-20230213
i386                 randconfig-a005-20230213
i386                 randconfig-a006-20230213
powerpc                 xes_mpc85xx_defconfig
riscv                randconfig-r042-20230212
s390                 randconfig-r044-20230212
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
