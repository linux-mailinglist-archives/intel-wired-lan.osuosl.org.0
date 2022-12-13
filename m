Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E659F64AF56
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Dec 2022 06:31:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7767160ECD;
	Tue, 13 Dec 2022 05:31:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7767160ECD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670909472;
	bh=FFu7rare4yc0empz/pAafM3//Yn/tSwXnED8vQDGy5c=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PFW2gSBgguE+Z+n3zouPsWQXiHGzSZjIm5K9RWbfUSj1jL+vEHHWJjT5iqe+Z5twI
	 dyh2dSvFAluXXxU9wg57zsG7hfDSU90SMEC0jmTjPD+fViFgJiv5LQEba7j9y/j/du
	 xb4jspd7qNkmo4xdFzwcd7MNtTCetOEeJA16EuPx4BX6K7OoNWNuATnfsWyTorAHVa
	 9UpziVXZ1vEdpnk/ITEJTug+4bVP/h5OTooL4UVxY3yZr053j+/S8emGAtZmCk/m+2
	 F4H3Uju+/uu3k+t7SXJL1ZEw77nK4Dgj5VPzSY7KYA7dcPjYftujiQE4Eg1hhUb22a
	 3++CSTAqt593g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jVfeCqGnnWwl; Tue, 13 Dec 2022 05:31:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67F6D60D9D;
	Tue, 13 Dec 2022 05:31:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 67F6D60D9D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A11B61BF271
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 05:31:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 876E74053E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 05:31:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 876E74053E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TTmGU0sD0j7C for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Dec 2022 05:31:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A61494034B
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A61494034B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 05:31:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="301460638"
X-IronPort-AV: E=Sophos;i="5.96,240,1665471600"; d="scan'208";a="301460638"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 21:31:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="755246494"
X-IronPort-AV: E=Sophos;i="5.96,240,1665471600"; d="scan'208";a="755246494"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 12 Dec 2022 21:30:59 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p4xsZ-00047b-0Y;
 Tue, 13 Dec 2022 05:30:59 +0000
Date: Tue, 13 Dec 2022 13:30:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63980e12.PvL/ofRYgW4M7Qhr%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670909461; x=1702445461;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=oSNPnr0TyqIYxGupT6XBOGpsIX7+/JNg5lNo/giw75c=;
 b=jRPn36gxqbrGHhu74vWsKrfayC0Y09CobxzbI22mPy62sPearKUpIcNP
 Sf8h/NH/sB7iJzWWHGi2aHr6E/JX4qAQRu+P55oTbfNuC1UGKhvhcSMD6
 r/Ah+3ZDbOIaY8RlpX46eo+tP2yxWAEm/+hdCaw12vhDSE3U/nwtr0w0m
 3YQu3uAXYS2IHC387aoIrCWQZTGHyw2xgTtBIGYObjRtARYTAaTdjeoiW
 5JdX1TcLI2YJIYLjUxtX3XXk9EDTkVuOM+rk7b4xhCsCMvQS1SSAMdvNn
 wr36qPnPyLlBTOkcif5QJaUwbt/aEvf2qTcQa1YhCkWEx6d9LRwKl78Pn
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jRPn36gx
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 5701c5ecad55755290e6a2bd1110842eee92d357
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
branch HEAD: 5701c5ecad55755290e6a2bd1110842eee92d357  igb: conditionalize I2C bit banging on external thermal sensor support

elapsed time: 724m

configs tested: 68
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
powerpc                           allnoconfig
s390                             allmodconfig
s390                                defconfig
um                             i386_defconfig
um                           x86_64_defconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
s390                             allyesconfig
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
i386                 randconfig-a013-20221212
x86_64                              defconfig
i386                 randconfig-a014-20221212
x86_64                          rhel-8.3-rust
i386                 randconfig-a012-20221212
x86_64                          rhel-8.3-func
i386                 randconfig-a011-20221212
x86_64                    rhel-8.3-kselftests
i386                 randconfig-a015-20221212
i386                 randconfig-a016-20221212
x86_64                               rhel-8.3
i386                                defconfig
arm                                 defconfig
x86_64                           allyesconfig
m68k                             allmodconfig
alpha                            allyesconfig
ia64                             allmodconfig
arc                              allyesconfig
x86_64               randconfig-a011-20221212
x86_64               randconfig-a012-20221212
x86_64               randconfig-a013-20221212
x86_64               randconfig-a014-20221212
x86_64               randconfig-a015-20221212
i386                             allyesconfig
arm64                            allyesconfig
x86_64               randconfig-a016-20221212
arm                              allyesconfig
m68k                             allyesconfig
arc                  randconfig-r043-20221211
arc                  randconfig-r043-20221212
arm                  randconfig-r046-20221211
s390                 randconfig-r044-20221212
riscv                randconfig-r042-20221212
x86_64                            allnoconfig

clang tested configs:
i386                 randconfig-a002-20221212
i386                 randconfig-a003-20221212
i386                 randconfig-a001-20221212
i386                 randconfig-a004-20221212
i386                 randconfig-a005-20221212
i386                 randconfig-a006-20221212
x86_64               randconfig-a002-20221212
x86_64               randconfig-a001-20221212
x86_64               randconfig-a004-20221212
x86_64               randconfig-a003-20221212
x86_64               randconfig-a006-20221212
x86_64               randconfig-a005-20221212
arm                  randconfig-r046-20221212
riscv                randconfig-r042-20221211
hexagon              randconfig-r045-20221211
hexagon              randconfig-r041-20221211
hexagon              randconfig-r045-20221212
s390                 randconfig-r044-20221211
hexagon              randconfig-r041-20221212

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
