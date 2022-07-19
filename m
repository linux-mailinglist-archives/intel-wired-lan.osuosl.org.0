Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BF14D57935F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jul 2022 08:41:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B186E60E90;
	Tue, 19 Jul 2022 06:41:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B186E60E90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658212908;
	bh=IC8DrFFoxZZKTQeGYWttc5jPLjuuKHJ4B3kLuCVolvc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zleA9fUnpZNdStZTyopl73BoAoF6pDqDzg0wy9fRPFqpJmhsKAO+69DwNNrVpXoZw
	 HgyD+KQF3d2psobYGNuxaTgZaE3yFmRkZd4W7CLgOtfr0vjKHMfqcjcd7eLgh3PDWf
	 /wsB3OhOGy9yBm4A0tVp0i6Rg3d8gslw3/Yvd2qOhmpyFsIHNVgGGiN8A6cdRodSts
	 m+Q6qJP01Wag1TWp/JlM6dP0UknCf3M4ei9EkeI7lac69p8rlVKvNC32n03vVmhQKt
	 DoYohiVGHCDQZPOQtHNDBox3nhzYUI7wv1w47jIp89sWstSZM5aKdzwQjuDPJNMBWg
	 MP77zVktzF4eg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4-lWrG3zG1i0; Tue, 19 Jul 2022 06:41:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5E4860AB7;
	Tue, 19 Jul 2022 06:41:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B5E4860AB7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AD9971BF370
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 06:41:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9399C41895
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 06:41:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9399C41895
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OIUYHYZdljcG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jul 2022 06:41:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 822ED4173B
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 822ED4173B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 06:41:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="273240880"
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="273240880"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 23:41:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="625047428"
Received: from lkp-server02.sh.intel.com (HELO ff137eb26ff1) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 18 Jul 2022 23:41:38 -0700
Received: from kbuild by ff137eb26ff1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1oDgvJ-0005MT-N3;
 Tue, 19 Jul 2022 06:41:37 +0000
Date: Tue, 19 Jul 2022 14:40:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62d651e8.oY3oNO8+edFDW5o4%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658212900; x=1689748900;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=GwnH7N8AwlB36o2l2pwei3ZhltOidbyIffusJtgBtnQ=;
 b=R5dwCZnIBQhUUExbO0tCKR+cPIBOgiWUIGOMKOEnGqoeeHgEd0NBNCmW
 zGyI4dM+3tXew7EOwjIAH/74PmxTcFC7pwQXCx6MiL4LZdc9uzGbGU7mr
 zaFFW+FEcGIzndTKlgLbIn2EA37pgsgRBQw6Zvz/W87+B7zosrb1S9K7x
 GS1QYupXExLgvwBm35V0bDTKFSesXfXtMo7gdQI2mI/h6RpC2QeA6z7J3
 W1lD18vJzQXFOMoSFuXcNFA+B6/Rzt/9DAdFaVElVT5ovnaRyPPrkPtq0
 rHvJzh7arT1L1mJLjvYLrR4FasJxyl5y+emBUEGdHYCtYq2+kvRR23cEc
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R5dwCZnI
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 6ac0db3f2bf64a02f239421d7c44f9b45b077eee
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 1GbE
branch HEAD: 6ac0db3f2bf64a02f239421d7c44f9b45b077eee  igc: Remove forced_speed_duplex value

elapsed time: 728m

configs tested: 43
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
ia64                             allmodconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
i386                                defconfig
i386                             allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                 randconfig-a014-20220718
i386                 randconfig-a011-20220718
i386                 randconfig-a013-20220718
i386                 randconfig-a016-20220718
i386                 randconfig-a012-20220718
i386                 randconfig-a015-20220718
arc                  randconfig-r043-20220718
riscv                randconfig-r042-20220718
s390                 randconfig-r044-20220718
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           rhel-8.3-syz
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig

clang tested configs:
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                 randconfig-a004-20220718
i386                 randconfig-a003-20220718
i386                 randconfig-a005-20220718
i386                 randconfig-a001-20220718
i386                 randconfig-a002-20220718
i386                 randconfig-a006-20220718
hexagon              randconfig-r041-20220718
hexagon              randconfig-r045-20220718

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
