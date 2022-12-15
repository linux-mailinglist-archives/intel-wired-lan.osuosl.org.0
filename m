Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C04C264DC11
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Dec 2022 14:16:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5BF6660E0D;
	Thu, 15 Dec 2022 13:16:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5BF6660E0D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671110160;
	bh=ZweNR1051bk+VaFmGEBGOlVMIhrQYOlIZvjMkaKYMYg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2lDa/24f1S1xiP8mvEXPAR15Xyo5/yNYPiysMDdE2XzZnhNNXO0hyOntirorg08Xn
	 ZuV5LC9UfwZ0aSZPqsOAuGqlT5dXY8AyQZpEhl/v265uOLplMO8+KdLurOM1x0LgmF
	 ovDL9LBc19PqrQn0q4rxaNAd5Xp11AJYEYQ1dqCUqVIGoxPelr4FmBdPMj0LkbntWY
	 be1iRj2whuMFIxPEFI/GtUAhUb9fNTfcJ3VIod39YG7BvHBkUoOtS6CW9Tfu1nrdS6
	 Q3LDO1CHPHFL3g5SbdgiTw6ZgU1DLvLGP4C3DDihvjD/WZtXruOzThEfCFHFYrAxFE
	 5tCtdRWVSdaxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YDxL3guH8ptl; Thu, 15 Dec 2022 13:15:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C34260773;
	Thu, 15 Dec 2022 13:15:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C34260773
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9F2D91BF30C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Dec 2022 13:15:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7939E40129
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Dec 2022 13:15:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7939E40129
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LTF4N0CoGPBE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Dec 2022 13:15:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D9E240120
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7D9E240120
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Dec 2022 13:15:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="299019499"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="299019499"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 05:15:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="627178325"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="627178325"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 15 Dec 2022 05:15:51 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p5o5W-0006IA-2N;
 Thu, 15 Dec 2022 13:15:50 +0000
Date: Thu, 15 Dec 2022 21:15:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <639b1de8.ILSKa/dAFgfG+yov%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671110153; x=1702646153;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=oD6As4mNQcoNvUkefwh2UsbuqtQnGyv935iSecg4U3g=;
 b=lAMqxL8XjyOiGzGvLddfq1DqzO+cb3efm54GqU55vpVZGmXUm+Ag6oz3
 9fi6p1w7rMQLdkcUlHRC3ePiRQLex9WQ+P/oCRDSa88+XXO80SqmXdRb/
 +SidjU3+I1NxcYiYVGLJii8ZaxvsuLHXM0osupMWuWZcfI0am11nag4dd
 fElIMbWgLJ0XcSTa/40kfh+sMGhUpV3sZ4VHHIzGfbqEdBsCdTk5tIcJh
 PxnZS9rsEq22XHqj6C9c6FEAI0mOB4CUkLUDrpHjy0RSIbxTtQa5DzujU
 lewIXcvYhd7fEm4Qk5bbyiBh06tya1VLFkLUIc1I4sMCEsltlnJoOjVCM
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lAMqxL8X
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 d900529675bc534503d42e1eb33d8e5d7e3652fe
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
branch HEAD: d900529675bc534503d42e1eb33d8e5d7e3652fe  ice: switch: fix potential memleak in ice_add_adv_recipe()

elapsed time: 724m

configs tested: 61
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
sh                               allmodconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
m68k                             allyesconfig
mips                             allyesconfig
m68k                             allmodconfig
i386                          randconfig-a001
i386                          randconfig-a003
arc                              allyesconfig
powerpc                          allmodconfig
alpha                            allyesconfig
x86_64                        randconfig-a002
i386                          randconfig-a005
x86_64                           rhel-8.3-bpf
x86_64                          rhel-8.3-rust
x86_64                           rhel-8.3-syz
x86_64                        randconfig-a004
x86_64                        randconfig-a015
x86_64                         rhel-8.3-kunit
i386                                defconfig
x86_64                          rhel-8.3-func
arc                                 defconfig
x86_64                        randconfig-a006
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-kvm
s390                             allmodconfig
x86_64                              defconfig
alpha                               defconfig
ia64                             allmodconfig
x86_64                               rhel-8.3
arc                  randconfig-r043-20221214
s390                 randconfig-r044-20221214
riscv                randconfig-r042-20221214
s390                                defconfig
x86_64                           allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
arm                                 defconfig
s390                             allyesconfig
i386                          randconfig-a016
arm64                            allyesconfig
arm                              allyesconfig
i386                             allyesconfig

clang tested configs:
x86_64                        randconfig-a014
x86_64                        randconfig-a012
i386                          randconfig-a002
x86_64                        randconfig-a016
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a005
arm                  randconfig-r046-20221214
hexagon              randconfig-r041-20221214
hexagon              randconfig-r045-20221214
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
