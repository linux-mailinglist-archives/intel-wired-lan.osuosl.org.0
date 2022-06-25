Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FBB55A82D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jun 2022 10:59:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF3E560F16;
	Sat, 25 Jun 2022 08:59:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF3E560F16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656147571;
	bh=JTCpFuX8CZdpHBwYgbztv9drY4U9aTinF7yK44ieNi8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=to3wwA/t0IpH/jdjOQTYbfYFT/2po/rSjU5AyyjlVYsQl6eGEJoTqhZRyMWLbGU8t
	 VYAfHeF3QESTAs019luHL1C2/P868+llTjIUXjR6Na12EE+jAVAUjA5DpYgw1p7mMX
	 gIfvTu+DKrUAXxctx+o9lUk4iGGWIi6aZBMK3BKHLWavT5Ee81C84X7f2fY/KpnzMa
	 pmo0eLfiz0mJPXOYXt9UTpKpSx0PKgG//xBwuK2vuTlV4rrxqztShdVPIxPKIYQsAR
	 IyPApsSiNUIT1KS6t27jnJiffZbgl94knjaGjYEEkATXRSEjPM7NMjrSc+NEnZOnLL
	 AZtXCn6zBvB+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZYThjsuAtDyH; Sat, 25 Jun 2022 08:59:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABF8C60EA8;
	Sat, 25 Jun 2022 08:59:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ABF8C60EA8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CB7B71BF239
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jun 2022 08:59:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B214660EA8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jun 2022 08:59:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B214660EA8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r_OdxiIXGjAD for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Jun 2022 08:59:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E8006058C
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7E8006058C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jun 2022 08:59:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10388"; a="260977624"
X-IronPort-AV: E=Sophos;i="5.92,221,1650956400"; d="scan'208";a="260977624"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2022 01:59:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,221,1650956400"; d="scan'208";a="589275817"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 25 Jun 2022 01:59:00 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o51d5-0005Zh-HA;
 Sat, 25 Jun 2022 08:58:59 +0000
Date: Sat, 25 Jun 2022 16:58:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62b6ce1e.+KaTvWYnuc50eIj4%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656147562; x=1687683562;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=YCS7ZNq2A4xZY2U4GNKPYdgoWPNVL/TKhsRUaL9lCsk=;
 b=Qm/D4Vbl3LquqxobdG/OM7YMdPwEfx0AwyQm+YmF/qI35xu/JVlWjrfl
 8ldyfJqNb3WPynYWjkdY4WNYNJKOIRz5LpUutlz/9Q35Hx7pAhN0cC0C9
 owGOuBGzXoEuHfDsgrfDzBG3Q02AFZlhnJX6C/aICLtFJMPmzse1wxBBa
 d7nJoDTvWXUIlxiPtxA4MvXI4Xc9deUxapmgJnSdCXD4XWAA7XWH56Ubt
 qtjwsGV6OBwPO9auv4/RnqXgHoynIE4YM+IFk2QyRH5AnemnXJalbdVwc
 E2FaVTTnf9WzREDD8Dq/s6U6LniQGZoJa+Qjs+tU28lFYcSJm7kNpkQMX
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Qm/D4Vbl
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 935336c191040809bf5739654ea337c13fe8f9af
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: 935336c191040809bf5739654ea337c13fe8f9af  selftests/bpf: Test sockmap update when socket has ULP

elapsed time: 798m

configs tested: 36
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
powerpc                      arches_defconfig
m68k                          multi_defconfig
powerpc                     mpc83xx_defconfig
sh                 kfr2r09-romimage_defconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
sh                               allmodconfig
i386                          randconfig-a005
x86_64                        randconfig-a015
i386                          randconfig-a016
arc                  randconfig-r043-20220624
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit

clang tested configs:
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a016
i386                          randconfig-a015
hexagon              randconfig-r041-20220624
hexagon              randconfig-r045-20220624
s390                 randconfig-r044-20220624
riscv                randconfig-r042-20220624

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
