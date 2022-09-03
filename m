Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 815CB5ABF00
	for <lists+intel-wired-lan@lfdr.de>; Sat,  3 Sep 2022 14:38:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 38B09408BF;
	Sat,  3 Sep 2022 12:38:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 38B09408BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662208722;
	bh=xzJUYDYxfmsIy53dJlI10r4cbRHmjGGDy38ZACfxCTY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KFLCARr7+ySZTqUGHDA8ZFGGPuvHXkbd/ewfuFgqL61pNFf66n9F6511Manxd7OCi
	 zaRcb3a9bcQ/sa6aUNyJ9sB/Dt2rk8itLZfV0+E2wS0CDUtIUuIjkykaUt/AwTG7OD
	 O7tHFSA0yTmx/870BH+TkvaXsIJ9+uEBC1N6OX9fA1pBxa/DtiqhzWCMSH25PPgS2d
	 qE5cks+KJym83jI2ridOZwSV8fNKtffBLYWmV/ghXHTD6j+SCutA9g3hnAmamRDCVy
	 1F7qooHC8knwzBPe7/zlr60MemHA7FOS9/Gh73LGaZn5Dx176ZWtcu7IYte6+jWEo1
	 czkrcj6Ysqs9A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qh70ISFu-I1c; Sat,  3 Sep 2022 12:38:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 119EF4038D;
	Sat,  3 Sep 2022 12:38:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 119EF4038D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EF8571BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Sep 2022 12:38:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C5AE260A8D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Sep 2022 12:38:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5AE260A8D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JMbGKTEnqvoo for <intel-wired-lan@lists.osuosl.org>;
 Sat,  3 Sep 2022 12:38:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E907C60A6C
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E907C60A6C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Sep 2022 12:38:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10458"; a="293742770"
X-IronPort-AV: E=Sophos;i="5.93,287,1654585200"; d="scan'208";a="293742770"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2022 05:38:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,287,1654585200"; d="scan'208";a="643258074"
Received: from lkp-server02.sh.intel.com (HELO 95dfd251caa2) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 03 Sep 2022 05:38:33 -0700
Received: from kbuild by 95dfd251caa2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oUSPw-0001ew-1D;
 Sat, 03 Sep 2022 12:38:32 +0000
Date: Sat, 03 Sep 2022 20:38:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63134ac0.WktfH2TRj4o1kfXc%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662208714; x=1693744714;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Ms5XIQqRJeGfB/pd2AHTD7IwAhdOsxBJ0bAqvPtP4nE=;
 b=V3WeR4uzX+n5V4C9gf+yjBduLyKOO7iBagknXVty4vBwdHLlPD50hK7H
 YVYYI0K2yBOz0Qxeb9vYTnLQpCdS3xN4edeJQyAzBC/qtnojfieiJKza5
 FeXLjfBzQQmab2VwIguX/DVRicdHm9F+7gzbohsh+Unnffi+BYDAHhdGi
 l2JNMyxcIn+bXAYcfHf4TGeX4UjE50D6v5APRiV/U+qPvt/XT8ioNVeEJ
 6t8He6U43zh02yG8X5W0n33LrJTki/cLboOdV0SRPTUay9NI+w2FBrAGF
 Cf/NJsY70a7/VkOsluiv0S2f0D/6HPvHn5jdnW8i2jes5T/CTLS94aKda
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V3WeR4uz
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 59ac325557b6c14f1f793b90d3946bc145ffa085
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
branch HEAD: 59ac325557b6c14f1f793b90d3946bc145ffa085  ice: use bitmap_free instead of devm_kfree

elapsed time: 987m

configs tested: 24
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
i386                                defconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
x86_64                              defconfig
m68k                             allmodconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
i386                             allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
ia64                             allmodconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
