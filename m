Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F646481CD
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Dec 2022 12:35:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C7B3B60E30;
	Fri,  9 Dec 2022 11:35:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C7B3B60E30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670585719;
	bh=eQqfgeJFARJqDijoSH2IMdm2NkOH3xChSr/VmARAKfs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=nJqpnUj+GaFxPD1R2ayNc+JL854QYIwaqQBMHbyo8bn7cdWjIEBVjSDw+Nfca2BDN
	 nL6V4Heuc4457vnggqnFQsVlN9K18K5BDEUhnCNJqQZ3n9JlN1utOtVNiL3xHsaoUF
	 Y0NVqvOChOuw+klhxin9ey5NEgb0ADqpHGmlsuE/OArZcOHvmg1xdRSwpJue4ifJc1
	 pdwaUo/A8An2ZOJq4ED0ij8Qryny/3vkdtOmpQaKJiapMRVYg3RZRvElj3ut1mzBDt
	 aL+LC3eYRMuFQQqso4A2hIZB7jR8I547D2GTBynzX8kP4EvnzbCX1nEj3KZsAR7knE
	 +EjEE04ygCDXg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W95-W1Ge8efL; Fri,  9 Dec 2022 11:35:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAE81607CE;
	Fri,  9 Dec 2022 11:35:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CAE81607CE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6C30E1BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Dec 2022 11:35:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 42F5340121
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Dec 2022 11:35:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42F5340121
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ke0WzdRzA7QY for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Dec 2022 11:35:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A485400BF
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4A485400BF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Dec 2022 11:35:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="315076170"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="315076170"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 03:35:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="892644762"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="892644762"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 09 Dec 2022 03:35:11 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p3beo-0001oN-28;
 Fri, 09 Dec 2022 11:35:10 +0000
Date: Fri, 09 Dec 2022 19:34:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63931d3f.sYsZInOPHBNDpvE3%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670585713; x=1702121713;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=CgBIk38QOgYet5VstxbxXTDLHWJohjnQVf1cD5d+5vQ=;
 b=FT9qXHzV3XcrEcJ6kFCdTityKlMtnREUnCd8/c4vRrmQiufzll0+EMP7
 z2WAzanYshfemB8uEerjnP9REudFSiEk8tYiF+uzti7WAN41gAMs8UTy4
 dh2XD/odKXe+RT5ArCsk7YIMSVYntpGky+2MvurnLN7mqQfYkIVT1g8jw
 Zo/32islE2CQ8trdz5PrnIGgRSnYipHpoKA1Ak/SN6DnQtA56xkX/JrIb
 xR8uP3/fFZOhxxj1bDQbJ821nh3ERKDeRvsg1BSwvN8tZt29aw/JRAw8E
 NO0aYAzGr/Ne7bmGnldlZC901iXl0Qbp3TtXiZQTMSexwJt75TSMcmoOK
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FT9qXHzV
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 95af1f1c4c9f9f08bbdb40812248b7bc5868a1da
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
branch HEAD: 95af1f1c4c9f9f08bbdb40812248b7bc5868a1da  ice: reschedule ice_ptp_wait_for_offset_valid during reset

elapsed time: 839m

configs tested: 60
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
arc                                 defconfig
alpha                               defconfig
s390                                defconfig
s390                             allmodconfig
sh                               allmodconfig
s390                             allyesconfig
mips                             allyesconfig
x86_64                              defconfig
i386                                defconfig
x86_64                          rhel-8.3-rust
x86_64                               rhel-8.3
x86_64                    rhel-8.3-kselftests
x86_64                        randconfig-a013
x86_64                          rhel-8.3-func
x86_64                        randconfig-a011
arm                                 defconfig
x86_64                        randconfig-a015
x86_64                           rhel-8.3-syz
arc                  randconfig-r043-20221207
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           allyesconfig
ia64                             allmodconfig
riscv                randconfig-r042-20221207
s390                 randconfig-r044-20221207
i386                             allyesconfig
x86_64                        randconfig-a004
arm64                            allyesconfig
x86_64                        randconfig-a002
arm                              allyesconfig
x86_64                        randconfig-a006
i386                          randconfig-a014
i386                          randconfig-a012
alpha                            allyesconfig
i386                          randconfig-a016
m68k                             allmodconfig
arc                              allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
m68k                             allyesconfig
powerpc                          allmodconfig

clang tested configs:
x86_64                        randconfig-a014
arm                  randconfig-r046-20221207
x86_64                        randconfig-a012
x86_64                        randconfig-a016
hexagon              randconfig-r041-20221207
hexagon              randconfig-r045-20221207
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
