Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8187364F871
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Dec 2022 10:28:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 39DB4402D7;
	Sat, 17 Dec 2022 09:28:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39DB4402D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671269284;
	bh=FFTBl5EJn+e57lXBQiWwO95yRtoMz0qIezEErmdL11E=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TGy7Unmi6STOaxqkcBkPNprNQNcB8aUnjlpiEbzwB4Buo9wFaEcflw106+H5gyVKM
	 QhLh7yv5huyo7lqpPWv7JtBkD0x1rGjbBY704wBvjXst6hZf98wAZVz9qq3qZ+x/mt
	 eNHGMd2G136+UQ+4MiYTL/6/PzrG8Ilm5q02BEHxdQETRSCDB+x4YcvmxUV3PbvY52
	 b5oMot1fVAMJlFqhGxvCBRvoh3pe0ygl7KK3zlNproIVewPYbDUugOncNGQSoRHCZV
	 Y3k1gI5LCAfM8VhOa4sNy+G2kUjXWOqueAvdNhMJnJ/U4ojgCkNm3js1Ta7iw9aKAg
	 5Fa3YkOc3WwQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id puc9sMQLkRtr; Sat, 17 Dec 2022 09:28:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C6CA4019D;
	Sat, 17 Dec 2022 09:28:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C6CA4019D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 75EB81BF57C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Dec 2022 09:27:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4661A8213C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Dec 2022 09:27:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4661A8213C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BAKQlBfxcSlk for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Dec 2022 09:27:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E1558213B
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4E1558213B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Dec 2022 09:27:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="302540329"
X-IronPort-AV: E=Sophos;i="5.96,252,1665471600"; d="scan'208";a="302540329"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2022 01:27:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="682517752"
X-IronPort-AV: E=Sophos;i="5.96,252,1665471600"; d="scan'208";a="682517752"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 17 Dec 2022 01:27:55 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p6TU2-0007hd-1r;
 Sat, 17 Dec 2022 09:27:54 +0000
Date: Sat, 17 Dec 2022 17:27:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <639d8b7e.V4/5iI0XAp4Ix00S%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671269277; x=1702805277;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=IBkKreabF0kihowr8RKmBLqH86rTw4FTARERFwF/PDg=;
 b=ieT5CIw6jFOWw7Jhcaj7V6cloXh0+zu7wuXyXKxVjxiYuA8BSQvZAWUV
 hUPe+zMf1ca/VNeZ8u02SIAF8tMW4zeGDwf4XZ1VyeS4w2xX61Dz2K95z
 ZXLtyuYtEgKn52thr8/mmDr8+7enyTpDhzQg+cSDNKEwJnzk90ZtF/LtU
 Sai28UtLdt7wt9szHub8gfNhU+W4YJo1PnqlmkKzgPzUhl2wa/WhOw5TO
 gtRw3ep1abBWV234FB5qUyO1+Qsg/POOK+R8NeAM7mPoq2kkoFWSRQ2Wd
 Tb5UcflXPslnXRO0qTkVSbs+gNp/9XKSVbovRAhL7WdFO6W3T6EUKk+88
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ieT5CIw6
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 b87dfede9a64ddce0af90ecbfe1c6fb52d82c031
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
branch HEAD: b87dfede9a64ddce0af90ecbfe1c6fb52d82c031  iavf: avoid taking rtnl_lock in adminq_task

elapsed time: 723m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                              defconfig
x86_64                           allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
x86_64                               rhel-8.3
i386                                defconfig
um                           x86_64_defconfig
um                             i386_defconfig
arc                                 defconfig
powerpc                           allnoconfig
x86_64                           rhel-8.3-bpf
s390                             allmodconfig
x86_64                           rhel-8.3-syz
alpha                               defconfig
x86_64                    rhel-8.3-kselftests
s390                                defconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
arc                  randconfig-r043-20221216
s390                 randconfig-r044-20221216
riscv                randconfig-r042-20221216
s390                             allyesconfig
x86_64                        randconfig-a004
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a013
x86_64                        randconfig-a002
sh                               allmodconfig
ia64                             allmodconfig
x86_64                        randconfig-a011
mips                             allyesconfig
arm                                 defconfig
x86_64                        randconfig-a006
i386                          randconfig-a001
powerpc                          allmodconfig
i386                          randconfig-a003
i386                          randconfig-a014
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a016
i386                          randconfig-a005
arm                              allyesconfig
i386                             allyesconfig
arm64                            allyesconfig
x86_64                            allnoconfig

clang tested configs:
arm                  randconfig-r046-20221216
hexagon              randconfig-r041-20221216
x86_64                          rhel-8.3-rust
hexagon              randconfig-r045-20221216
x86_64                        randconfig-a001
x86_64                        randconfig-a012
i386                          randconfig-a013
x86_64                        randconfig-a014
i386                          randconfig-a002
i386                          randconfig-a015
x86_64                        randconfig-a016
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a011
i386                          randconfig-a004
i386                          randconfig-a006

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
