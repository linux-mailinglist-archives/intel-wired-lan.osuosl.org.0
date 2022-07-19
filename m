Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A91579491
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jul 2022 09:51:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6770D83E1A;
	Tue, 19 Jul 2022 07:51:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6770D83E1A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658217110;
	bh=jItmebBguj3iNExGnIGF5qorSWIDMCbWMsZATs2gOfA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=CZC4hl/Li50Ym8H6venX/emmJ4+0VrpMpY5TuwUFX8+XH239MMf8Xn1YqhpXzmesK
	 lZ8M1i2g+ntw4dXgPpMGB7zxmDC4zvVwl5CPW10ZgPNckvrvIg0jrQ6Xta8epsYDW3
	 IO8NvsYpJWNoPL+m7rhGo1AYFzzfzPB5okYp4uzLQC+bHgaBt9NhVLuyo8BTuJMo7N
	 hW2i0vnn7njZa5qgu6GuNEWo6njOvtZUDamErVFOJzp08oQrTRPonFsjGaInYmk4LL
	 I7/H6lYBAP05pmH6W74qAaeeCFpymXVH/6hqmFrVLSfY4sZR5aRHvhF5kW4W16irW4
	 9Nd29EQWPDHFg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VOE5dOYpS8i4; Tue, 19 Jul 2022 07:51:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B7A583E24;
	Tue, 19 Jul 2022 07:51:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B7A583E24
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9DA071BF355
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 07:51:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7614483E24
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 07:51:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7614483E24
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pg2KvVb0Hi9a for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jul 2022 07:51:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B418083E1A
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B418083E1A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 07:51:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="287573588"
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="287573588"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 00:51:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="625076812"
Received: from lkp-server02.sh.intel.com (HELO ff137eb26ff1) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 19 Jul 2022 00:51:40 -0700
Received: from kbuild by ff137eb26ff1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1oDi15-0005PC-BN;
 Tue, 19 Jul 2022 07:51:39 +0000
Date: Tue, 19 Jul 2022 15:51:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62d66272.Kaa5skzjqx8oxsDB%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658217101; x=1689753101;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=pw8H7kU/CQ3orYQfxt6SNqWdfhaCnSK5QobDgybYRos=;
 b=DmOwIXjyf/bzsPTwz44f6ABQngtrCz3C6CRRYLsJvB3ekwlEKJdilbAF
 4CVNcRuGEu+wFleDfq5SpcOV0Xvabr805H1+NMaa2XIhvreviB8yWRYbw
 /pDUTVtF115PslVX5UWxeZFQplEHHAcSfC0PZ+deHmEltCAk+Js3A/j5N
 exjwF2GLRVqAUslSnbl8YE5hZWKOiE+b3d8YmBJ0Qxfgjj8BE8K7LXV2O
 mSOAs+SjmGCwiZMvOw5BR+ef+30iksoE+pcfrs9InmDpYQcSroBX375yX
 MpVJh08PrgDHrdfrzqniS5EePqMau4mNe4hoHLfzkSdDhiv0giaugcF6k
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DmOwIXjy
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 9f055d4106bdefd5a533316c1d3dc3b5e9821b9a
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
branch HEAD: 9f055d4106bdefd5a533316c1d3dc3b5e9821b9a  igc: Remove forced_speed_duplex value

elapsed time: 722m

configs tested: 46
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig
ia64                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
i386                                defconfig
i386                             allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                 randconfig-a014-20220718
i386                 randconfig-a011-20220718
i386                 randconfig-a013-20220718
i386                 randconfig-a012-20220718
i386                 randconfig-a015-20220718
i386                 randconfig-a016-20220718
arc                  randconfig-r043-20220718
s390                 randconfig-r044-20220718
riscv                randconfig-r042-20220718
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
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
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
