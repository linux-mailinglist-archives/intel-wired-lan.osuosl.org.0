Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D33755FE9A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 13:31:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1EA7612C6;
	Wed, 29 Jun 2022 11:31:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C1EA7612C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656502276;
	bh=gjs26KUU8Oy676W1JxTxSHVKJAj7fsZn98Zn2Ay3jrI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=lr/qe5PdzBjKnKiJtYQbEB4zfaABEw1dhVbhpO0211F0slNR55Gyva17AELzs+Kn/
	 hsDN1gVsyrRyUpQiIcwdhXqln/RWh9M/uj7HfqCVi+QSIxV7Ax2CRb3lt7emARTnJX
	 ZXi0Woe5QPNb5LYtV6QsNru+WOaqPibMw33eDew8CiBTdWxlExZCnSd3yJ3c3OAh/M
	 dwTcFfsx8MCPbpW2nPHzrgr1Yda6gvopt51Tv4r7c0fZ33xFklsubIGxu2j1soic/a
	 0bJyxU4F3FPF0UYY2hX7fWxulQt7QPcn6431Sqg+2GyLgDn/X7U+PiQPL3JpsCbTKx
	 OHC76f5D4CaAA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aJbDlr_EM8lY; Wed, 29 Jun 2022 11:31:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3DB1612CF;
	Wed, 29 Jun 2022 11:31:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3DB1612CF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 426B71BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 11:31:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 293C040605
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 11:31:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 293C040605
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qlQtwScIxZuI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Jun 2022 11:31:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B3D5401A2
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0B3D5401A2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 11:31:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="262413218"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="262413218"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 04:30:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="917572530"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 29 Jun 2022 04:30:55 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o6VuI-000B74-UI;
 Wed, 29 Jun 2022 11:30:54 +0000
Date: Wed, 29 Jun 2022 19:30:47 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62bc37e7.3/wJm7WdvFod8LnE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656502269; x=1688038269;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=UaOFAe7qfi5SDQTxSh4xRSOKYfN9DuQS3AF7Zcgc9nk=;
 b=B/l154+rFUI0dgEZC7pPKiP4o+BpS43nbbAThdcB6v6JVljBGUzCG/pl
 uAyfHAMgF4RhtZm87pRMBiErAG2bTiuALRz4XEhweoFgoJh0U8sZ9lIRj
 KgfzSoY6UQTIpnGCqDc/Y7/Q2TYIM9Dg7kftur/MlqOqCway2hU4o+R+x
 +vCno9ARJwKl62iOwF5fYDlZchUpOBZ+kmtM7yKpQhDxN3rD/jaFqC3MO
 10jzk7JYWa+VvToRsuPTtIcx/jyLcVcEwnCO5EpdPVdg4BcUrHrGUNPiF
 +UdjWzEst6X/P8GMIOn0rlJdTyzNONmuLoGMZvOTiQ4RSrVSCC3/dJhKY
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B/l154+r
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 150f35e9f315a29faf7919e337cefa5392b83664
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
branch HEAD: 150f35e9f315a29faf7919e337cefa5392b83664  ping: fix ipv6 ping socket flow labels

elapsed time: 723m

configs tested: 52
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig
ia64                             allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
sh                               allmodconfig
alpha                            allyesconfig
arc                              allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
i386                                defconfig
i386                             allyesconfig
x86_64               randconfig-a015-20220627
x86_64               randconfig-a012-20220627
x86_64               randconfig-a011-20220627
x86_64               randconfig-a013-20220627
x86_64               randconfig-a014-20220627
x86_64               randconfig-a016-20220627
i386                 randconfig-a012-20220627
i386                 randconfig-a011-20220627
i386                 randconfig-a013-20220627
i386                 randconfig-a014-20220627
i386                 randconfig-a015-20220627
i386                 randconfig-a016-20220627
arc                  randconfig-r043-20220627
s390                 randconfig-r044-20220627
riscv                randconfig-r042-20220627
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig

clang tested configs:
x86_64               randconfig-a002-20220627
x86_64               randconfig-a003-20220627
x86_64               randconfig-a001-20220627
x86_64               randconfig-a004-20220627
x86_64               randconfig-a005-20220627
x86_64               randconfig-a006-20220627
i386                 randconfig-a002-20220627
i386                 randconfig-a004-20220627
i386                 randconfig-a003-20220627
i386                 randconfig-a006-20220627
i386                 randconfig-a001-20220627
i386                 randconfig-a005-20220627
hexagon              randconfig-r041-20220627
hexagon              randconfig-r045-20220627

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
