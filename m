Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C4E619474
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Nov 2022 11:30:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D98381EA6;
	Fri,  4 Nov 2022 10:30:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D98381EA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667557824;
	bh=4hA0GjDH8PxkPiEdcXdopPjcJkw/Oi2gccrmpYIBGqA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zflUID+s9leuYWCHFCVpzVfaCN/E+HKbqQ8hIM0iVffyRpYKDL0PFxzfVDuJfEqkT
	 s/a80OcwHwjmFlbU6ooCzpMph2K+AnDGk8+sRi2b2EDx7CPxS1Yha+VmNUbcJu4SuS
	 bjlXit+Pb8jBGZmU+gHWe0LaIEROfuPaR2XKsnuq1SKhoZLx9iRFNlWr/JgAgiW5le
	 z1qksssvR0Aolh/xgxBVv1x5g3TRl+VKhXh5hfQ6+DiGTy1gduhJqZDHrEo67W/BnQ
	 epfVJR53X/3BN8JNeDSBECQCfwhGMcUZm+424CdVuNfQ1wAOPPnXhn6kYW52PmLGQQ
	 1cS2Y5Euq0caA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AIDrxhBXPBrd; Fri,  4 Nov 2022 10:30:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 799AF81DED;
	Fri,  4 Nov 2022 10:30:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 799AF81DED
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 862C21BF973
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 10:30:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6E69F61082
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 10:30:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E69F61082
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id STkHjO49xCgF for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Nov 2022 10:30:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A58E6106E
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2A58E6106E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 10:30:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="311673547"
X-IronPort-AV: E=Sophos;i="5.96,137,1665471600"; d="scan'208";a="311673547"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 03:30:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="635044819"
X-IronPort-AV: E=Sophos;i="5.96,137,1665471600"; d="scan'208";a="635044819"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 04 Nov 2022 03:30:11 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oqtxi-000Gt9-2q;
 Fri, 04 Nov 2022 10:30:10 +0000
Date: Fri, 04 Nov 2022 18:29:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6364e985.6VUqoRBFdWqam5L/%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667557813; x=1699093813;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=30CrmIF6reFET6nQ5A3Z3x2cGk1FCOcbG16cIqfjm/Q=;
 b=gLB6iYQMZtqCVqq12iOK7Fk7pQ129U3Ja1S9kky0Ri4zvOzUsOUXJuD6
 JMp9tEhbcUo6ta3Xh6j0x/aFOiMdBfdKaKvCAb4LyGpcQeoz90z/3gsfq
 p/6YVK2bBtvs49L9IoG9IrYIayqtDoN6xcQhRzDlNLQrVYNSCEnXoe+oi
 +yQTRP2mdhD9xeiiWPlYQ7svkOxMXQRHZbjafHN0UEQeslIiR/kSSj+ul
 JdZB/rz55+OnByuHEXOsno5wIlxD8gJssVDJbzt4+Y20dwABlzCrdN+mp
 fDoS7I2pIlPnvAo/u10Qdu/QRdn57v7mENmAROhzlaErYLBzhMAG1O7Nj
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gLB6iYQM
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 eea4f04bd0be2e4b6318efbc947bd24ed4d459bf
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
branch HEAD: eea4f04bd0be2e4b6318efbc947bd24ed4d459bf  ixgbe: Remove unneeded semicolon

elapsed time: 725m

configs tested: 54
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-kvm
x86_64                         rhel-8.3-kunit
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
s390                             allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
ia64                             allmodconfig
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                              defconfig
arc                  randconfig-r043-20221102
x86_64                           allyesconfig
riscv                randconfig-r042-20221102
i386                          randconfig-a005
x86_64                               rhel-8.3
s390                 randconfig-r044-20221102
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
arm                                 defconfig
i386                          randconfig-a016
i386                                defconfig
arm64                            allyesconfig
arm                              allyesconfig
i386                             allyesconfig

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r041-20221102
i386                          randconfig-a002
i386                          randconfig-a004
hexagon              randconfig-r045-20221102
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a006
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
