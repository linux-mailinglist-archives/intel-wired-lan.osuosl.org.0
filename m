Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D618469A4EB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Feb 2023 05:36:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A74C419E7;
	Fri, 17 Feb 2023 04:36:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A74C419E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676608576;
	bh=3GLveeyXK5ZnlbIH/5Ur1IM1w4jxXusfjS7JuPlh3j8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GD92q6B09N/mObkIyOLUrFJzMt2uXPOIbCbFxV6WELRFYXmTeybZzI07BnDtS5egB
	 iPEGYPo/aCYSNqNvQcO5B/x2R+qOLaQDWn458SzspSiErPUKallJV99ChrEvKWWv9T
	 /11Af1d7ha56Isf1eSCMsIMAJiIf6VkoVdtWdubVAokROaBgDFGeuIFalMw8BNGHnf
	 dXpu2O75PvttbRzwcHCLX35japieu6WX/zwVtV5386xslV4TtMBcfDU4yUuk07GynQ
	 7qA6rEAgywFRFyvUuL4ZlK9q4qVpSek4L62t1CUJ9GQDgmUHWtMAEM8oq2L5lksDY3
	 JzPl87wuuA5OA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8oQMF5nxV9Tq; Fri, 17 Feb 2023 04:36:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 228AD4191D;
	Fri, 17 Feb 2023 04:36:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 228AD4191D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F389F1BF41F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 04:36:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CB43A81F6C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 04:36:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB43A81F6C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OJunxcGOF1Cs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Feb 2023 04:36:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0142981F6E
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0142981F6E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 04:36:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="333268150"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="333268150"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 20:36:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="734172977"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="734172977"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 16 Feb 2023 20:35:59 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pSsTX-000B7J-0B;
 Fri, 17 Feb 2023 04:35:59 +0000
Date: Fri, 17 Feb 2023 12:35:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63ef0402.V+AxAFiLkvia+RzD%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676608566; x=1708144566;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=MZN+sPJiGnresCtKHW29pULMcdSxyq0q+U7Xbc3cI3Q=;
 b=MMe5t8OSdLZye4+3MY1GPwpkIodKNIWb5hr/8inMsh50hflIkDHQwQLP
 fItA8fIt4sci8sQOoWwpY8yBCAOniIb2ZfW59zbXGt4pQdFnDZkRciYyo
 OHfDDmk0jWeVrRlBTLDlv9bHvUYODpCVQYJlDksttneCdRdXRRq8km6bl
 ejmUXox6b9mFjRTeNQTpwqhjcSZ6JAkYKkFoOJ1ke5AkWpPh59bEt4wa/
 OptL/2BPrS2e4ump78EJFw+VOT4rP0w4o641lqKaqnV9lLtL4tuh/gHgL
 ZuFET2uEPpna5rfhaQlz1LRIc6jikkiobk583M1UJ4zHhUN6R21NDobfh
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MMe5t8OS
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 b20b8aec6ffc07bb547966b356780cd344f20f5b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: b20b8aec6ffc07bb547966b356780cd344f20f5b  devlink: Fix netdev notifier chain corruption

elapsed time: 1043m

configs tested: 84
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

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
i386                 randconfig-a011-20230213
i386                 randconfig-a012-20230213
i386                 randconfig-a013-20230213
i386                 randconfig-a014-20230213
i386                 randconfig-a015-20230213
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
x86_64               randconfig-a011-20230213
x86_64               randconfig-a012-20230213
x86_64               randconfig-a013-20230213
x86_64               randconfig-a014-20230213
x86_64               randconfig-a015-20230213
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
i386                 randconfig-a001-20230213
i386                 randconfig-a002-20230213
i386                 randconfig-a003-20230213
i386                 randconfig-a004-20230213
i386                 randconfig-a005-20230213
i386                 randconfig-a006-20230213
riscv                randconfig-r042-20230212
riscv                randconfig-r042-20230214
s390                 randconfig-r044-20230212
s390                 randconfig-r044-20230214
x86_64               randconfig-a001-20230213
x86_64               randconfig-a002-20230213
x86_64               randconfig-a003-20230213
x86_64               randconfig-a004-20230213
x86_64               randconfig-a005-20230213

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
