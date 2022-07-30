Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9835858C8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Jul 2022 07:36:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78BC741796;
	Sat, 30 Jul 2022 05:36:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78BC741796
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659159415;
	bh=2kwOyHRbeOc3lPWNKGS6Xk0JPmMvsfeoEUTJdWM2Cf0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=s/Y18fCPjPSgnTDs52jPBSSudcGiOWzCsNCQrCBbEt5c5R6BKJZDkUvfJnNR6nEI/
	 YJIl9usF3ZksmuzKucTR2hpOtunvnmIv6mEmcGTl163i2vzP4S3541mVgyq/LtP5f3
	 LJPlywIFcqz3x1ODDdtsqqU+6U9i5zfDSU25phsLVKRcX3/i3ajLhdvKoImV88kQ9D
	 F8/AZgaw1xaJLQgxq+Bv6sCi3OsvJ+qT9A9gQTHF3Zv8EAjFBnKcZaoG7RHEx4CRPF
	 TWlf3GBYo3RVlmX9nyl6lC+pX1Qn54lQxU5Kritl2ad7u1vY5M69jPRRu49HwcEE3+
	 /vtyU3yEVorxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AhmOdgC1gEpJ; Sat, 30 Jul 2022 05:36:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2962C4177E;
	Sat, 30 Jul 2022 05:36:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2962C4177E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 68C2A1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jul 2022 05:36:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4C35A60E51
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jul 2022 05:36:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C35A60E51
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gQend9BbMl1E for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Jul 2022 05:36:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5AAF60E39
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E5AAF60E39
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jul 2022 05:36:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10423"; a="275782479"
X-IronPort-AV: E=Sophos;i="5.93,203,1654585200"; d="scan'208";a="275782479"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2022 22:36:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,203,1654585200"; d="scan'208";a="577188914"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 29 Jul 2022 22:36:43 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oHf9X-000CRd-0I;
 Sat, 30 Jul 2022 05:36:43 +0000
Date: Sat, 30 Jul 2022 13:36:02 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62e4c342.bOp44CLLZfSc0XSl%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659159406; x=1690695406;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=cgFSyqLjEZlD4UM1bRCBtMrANpdGJLXB6ffYSlVWx0Q=;
 b=e78NMbytkh70P/Oa5BDw2cVzqupcGa2S64qXzQJbfUz4KX8XwXy/PPkF
 XfnAcBi24EH7J/1TYtLG+C/fIoik3Chtf338K6RG6XSU0cX0Wvl8zaKvZ
 xoESFHoJVeQReSSCEvLS1RfvxC5D+wpH+wE7mzJoE3MgOHwIGOW1hfjni
 +Z8FzP2TCOP6m36YJUzEXGTKtpbJh7j7Kvy+g12ZikpYyyKFRl3nxNjzW
 M29DCTB/joyWYa+Gb5Pr1PT886Fxdm2q5iZ+KVBokEAOfSq8IdzO0TAvM
 1ts4elEG4CSh4I+u/60iG5d/ZpfLmypAI+q1Y+2n0WVrYjHiMMCvEGLTU
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e78NMbyt
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 8f072b372724c04e6cc130401d8a0f10ff1ebf68
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
branch HEAD: 8f072b372724c04e6cc130401d8a0f10ff1ebf68  i40e: Fix tunnel checksum offload with fragmented traffic

elapsed time: 723m

configs tested: 61
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
arc                  randconfig-r043-20220729
i386                             allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a014
i386                          randconfig-a012
sh                               allmodconfig
i386                          randconfig-a005
i386                          randconfig-a016
x86_64                        randconfig-a013
x86_64                              defconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a015
x86_64                               rhel-8.3
x86_64                           allyesconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
arm                                 defconfig
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
m68k                             allmodconfig
arm                              allyesconfig
m68k                             allyesconfig
ia64                             allmodconfig
arm64                            allyesconfig
csky                              allnoconfig
arc                               allnoconfig
alpha                             allnoconfig
riscv                             allnoconfig
sh                          rsk7201_defconfig
sh                           se7724_defconfig

clang tested configs:
hexagon              randconfig-r041-20220729
hexagon              randconfig-r045-20220729
riscv                randconfig-r042-20220729
s390                 randconfig-r044-20220729
i386                          randconfig-a002
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a004
x86_64                        randconfig-a014
i386                          randconfig-a015
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
mips                          ath25_defconfig
powerpc                    socrates_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
