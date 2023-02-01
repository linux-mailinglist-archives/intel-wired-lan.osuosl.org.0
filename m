Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B0A68643F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Feb 2023 11:27:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D507260F31;
	Wed,  1 Feb 2023 10:27:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D507260F31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675247254;
	bh=W/xq0jnUbkuGr7vhkmzyylVNi2/8L4ZHuLkVg0m4oBU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=kQtuWIM9q0r94wWEJZaX9sBvmHJ7j7djOJyBrmJ2/qTjuW6F77pGuKmr1TapoUqTu
	 59bG60AlcRxo/MQqxH9joOTggAOaaPB6dHoGwtleyYaPcFYeGs+cxqjpXNOhJ7sKFS
	 GXpdwGUyo6nDf/itjU2wn36h9D6x+TpvycZ6SRs8bkpmuNu8M5ouf3vahTnupqgZ87
	 kL4cwZOuK0ucAONLoebM+r/02PmUNF0LVKAFyGY8rn/Ux6vQHe7cqU9mLuV39qxBH0
	 l1ko+N3+3f8BvustK4GMSCz16xUtd6zV4X2cW8LVa7BQyZA6g4USGnnUJ7KUcUl14/
	 6nVIAucZGhSZQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8lQXA1lVmp_9; Wed,  1 Feb 2023 10:27:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD45560E61;
	Wed,  1 Feb 2023 10:27:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD45560E61
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 058A71BF95C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 10:27:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DD45A8148B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 10:27:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD45A8148B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IxRrd0lA6rIV for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Feb 2023 10:27:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D2BFC819D6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D2BFC819D6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 10:27:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="414315540"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="414315540"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 02:27:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="658277298"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="658277298"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 01 Feb 2023 02:27:20 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pNAKm-0005LO-0h;
 Wed, 01 Feb 2023 10:27:20 +0000
Date: Wed, 01 Feb 2023 18:27:01 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63da3e75.gWvFl/EpVlq+p6uk%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675247242; x=1706783242;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=OHJ0/h3teHNyE6vquDlois4TSBFRcEmUa8incTySBXg=;
 b=JO78wyzDeWm4fEAEQWD6cPzTZ0VdJ3VKBsGzZYVXOrLnBqZ9Sru7svJY
 UWUB571Xd/IK495PJ6MS09YfYGFwSlL9ywV6NDOvOcqusQcSH7rHjt5q0
 T5w7CETT7K3JmVhET3zKIYWqq/GhVE26XgVU54IoVd46rrHvKsFcx7HVf
 G31+EIRwNeEt8HuMTO/3SZ7nEwAfmyrzfGA/BN3gkB7qVNk+/mfvKKTmI
 c9O+logPGgCswOX3xdMVMPV0XV2FXvu2JexrCXZ6f8U8jUGm0vGc6Xaee
 I1UfM5kN3ngWgUSqOdAmvm/6uwP3Npj5QXRyhIv4Q/C8J/t2jR4Z6yuF+
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JO78wyzD
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 27e4382548c33f19b956bd3b0ca4c630f5c42e97
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 27e4382548c33f19b956bd3b0ca4c630f5c42e97  ice: switch: fix potential memleak in ice_add_adv_recipe()

elapsed time: 723m

configs tested: 68
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                             allyesconfig
s390                                defconfig
m68k                             allmodconfig
powerpc                           allnoconfig
um                             i386_defconfig
ia64                             allmodconfig
alpha                            allyesconfig
um                           x86_64_defconfig
x86_64                              defconfig
m68k                             allyesconfig
arc                              allyesconfig
x86_64                               rhel-8.3
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64               randconfig-a001-20230130
x86_64               randconfig-a003-20230130
x86_64               randconfig-a004-20230130
x86_64               randconfig-a002-20230130
x86_64                           allyesconfig
sh                               allmodconfig
x86_64               randconfig-a006-20230130
x86_64               randconfig-a005-20230130
mips                             allyesconfig
powerpc                          allmodconfig
i386                 randconfig-a002-20230130
i386                 randconfig-a001-20230130
i386                 randconfig-a004-20230130
i386                 randconfig-a003-20230130
i386                 randconfig-a005-20230130
i386                 randconfig-a006-20230130
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
i386                                defconfig
arc                  randconfig-r043-20230129
arm                  randconfig-r046-20230129
arm                  randconfig-r046-20230130
arc                  randconfig-r043-20230130
i386                             allyesconfig
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig

clang tested configs:
x86_64                          rhel-8.3-rust
i386                 randconfig-a013-20230130
i386                 randconfig-a011-20230130
i386                 randconfig-a012-20230130
i386                 randconfig-a014-20230130
i386                 randconfig-a015-20230130
i386                 randconfig-a016-20230130
hexagon              randconfig-r041-20230129
riscv                randconfig-r042-20230129
riscv                randconfig-r042-20230130
hexagon              randconfig-r045-20230130
hexagon              randconfig-r041-20230130
hexagon              randconfig-r045-20230129
s390                 randconfig-r044-20230129
s390                 randconfig-r044-20230130
x86_64               randconfig-a013-20230130
x86_64               randconfig-a014-20230130
x86_64               randconfig-a011-20230130
x86_64               randconfig-a012-20230130
x86_64               randconfig-a015-20230130
x86_64               randconfig-a016-20230130

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
