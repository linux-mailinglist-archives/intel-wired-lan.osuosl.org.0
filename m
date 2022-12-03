Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D2F64168A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  3 Dec 2022 13:09:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8F1A410A2;
	Sat,  3 Dec 2022 12:09:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8F1A410A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670069344;
	bh=ZrCd+weHOuDWs5oJRp3MiPOYV4YcHmA+HArSylPZ9WI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=opmCU/7STpH7GC3hi/vJ673Zws25F+30fL5zXB5HeSlbyoXRaUtNn+ZwzW9nItjzD
	 Tn57Uhu87/tayMlGWz+rV0JeS/W/GDIC5gGgaabeRKYWFM5EfHWBoFF4SbhF0uL/sv
	 xV5shrj/wu9s+Q8oajVSiZofnudog8vxIwdj0NwPI29WFB/9AojgHNsr1LRWhg0Wxi
	 fyGU6wmZ+3r9GhbWXOvqt7dFp6oArFoafxRmOud+049TOi3Tk8yr/e4QBYd75xWoLh
	 AaOJsSnInFRj1RWStZrKyDrkYAIiHvmMKn3S8IK+ZjVegXnANA+bkYwUn2+6dXCxg6
	 iuRXVE2/pYGzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v_DgM4sV5ocP; Sat,  3 Dec 2022 12:09:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 89B2F40996;
	Sat,  3 Dec 2022 12:09:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89B2F40996
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 486C91BF378
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Dec 2022 12:08:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2284260625
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Dec 2022 12:08:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2284260625
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id anhBF-T4cUGM for <intel-wired-lan@lists.osuosl.org>;
 Sat,  3 Dec 2022 12:08:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7D9C605E8
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D7D9C605E8
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Dec 2022 12:08:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10549"; a="303729327"
X-IronPort-AV: E=Sophos;i="5.96,214,1665471600"; d="scan'208";a="303729327"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2022 04:08:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10549"; a="819710717"
X-IronPort-AV: E=Sophos;i="5.96,214,1665471600"; d="scan'208";a="819710717"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 03 Dec 2022 04:08:52 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p1RK8-000EWJ-02;
 Sat, 03 Dec 2022 12:08:52 +0000
Date: Sat, 03 Dec 2022 20:08:11 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <638b3c2b.opCdHCB0rKZ2ZtFk%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670069334; x=1701605334;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=h8VLzv3isyckn7Qre4Nnyi9WNVmUQBQc9B4qEJSRejg=;
 b=VX8ygVR+BP7ce/vvG1EJ6iwVoEayemOV4rfUeO3DMoRs8Z1NEwU/fzMv
 2HjxISzGxrf2nrnPHmTCJFSSAZexbcDchPi1kXxMVJWCkJfZJPiQdeywT
 BsIw4k6dZFNBinuu6QLkNCGuM5s9EGuD4Po0ZUVqeWcldbm9vUPrbmrW2
 XtjpJ63rMg1FdhBAcAdnUmjO9K3WiUjzO4KZEmdPEoEZWspEQee4h6sEw
 Y3HmKs20/LtiMIyS2GeSdZ0wQLp4ZRH2qq9RQN0Mh2WOocOc2EKFdMqPi
 fF/IUXYcpTu/GSWlasPJQHzLeP0Gh8g3sBMmOnTmnfIItBLz6up8Wlj2k
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VX8ygVR+
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 9a81996db0acff334ec1835af61f69d82cb9d09f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 9a81996db0acff334ec1835af61f69d82cb9d09f  ice: reschedule ice_ptp_wait_for_offset_valid during reset

elapsed time: 721m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                              defconfig
x86_64                               rhel-8.3
arc                                 defconfig
x86_64                           allyesconfig
powerpc                           allnoconfig
x86_64                    rhel-8.3-kselftests
alpha                               defconfig
mips                             allyesconfig
s390                             allmodconfig
x86_64                          rhel-8.3-func
s390                                defconfig
powerpc                          allmodconfig
sh                               allmodconfig
s390                             allyesconfig
ia64                             allmodconfig
x86_64                        randconfig-a004
arc                  randconfig-r043-20221201
x86_64                        randconfig-a002
s390                 randconfig-r044-20221201
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                        randconfig-a006
riscv                randconfig-r042-20221201
m68k                             allyesconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                                defconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a001
i386                          randconfig-a003
i386                             allyesconfig
i386                          randconfig-a016
i386                          randconfig-a005
arm                                 defconfig
x86_64                            allnoconfig
arm                              allyesconfig
arm64                            allyesconfig
i386                          randconfig-c001

clang tested configs:
x86_64                        randconfig-a001
hexagon              randconfig-r045-20221201
hexagon              randconfig-r041-20221201
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a015
i386                          randconfig-a006
arm                       spear13xx_defconfig
arm                          ep93xx_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
