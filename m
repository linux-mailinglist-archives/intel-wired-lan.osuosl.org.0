Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD07C6468B4
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Dec 2022 06:44:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44ECF401CB;
	Thu,  8 Dec 2022 05:44:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 44ECF401CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670478283;
	bh=BpAjQs2Jr4SUSj5txRgBesOZEZz3727Nu3ukSf/x7lw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MRFO9sXQAMgyimprhiQ/HV6fPwVfarkOrBUxqT5Z3eVlTDZXnfo4+R93l+ine4I8q
	 tTsKXPhEvLkwqTycKRnU5f2QeYtSbM89emcuyuiwhDVEP2q5UnZn/pdLkPJH/G68b8
	 +QlrSNd4yAlcvg68a8RNVxOq7t/zrdXwooNYKnz+h8DkKuMVryAY/9B0pTmjd1dDlI
	 FmU7TJkTiNfZiH6fUhaz6ADthkXN9SYi5ihA1KGrhd3zXGBwReAsA7MzJp8MnyJfY4
	 jPfV5oWdcRVScr/VHpeeh5Cjhhg4DRN3VdJjqLCavarMOPXdgl93Ob9AD0T3KsRTx4
	 rtynoV+g6MZmg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 24JFuyArJ_Hx; Thu,  8 Dec 2022 05:44:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EE9294016E;
	Thu,  8 Dec 2022 05:44:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE9294016E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7F9811BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 05:44:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 667F2400D3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 05:44:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 667F2400D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eiMDlOZjKaZg for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Dec 2022 05:44:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B495400D1
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2B495400D1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 05:44:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="318219757"
X-IronPort-AV: E=Sophos;i="5.96,226,1665471600"; d="scan'208";a="318219757"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 21:44:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="753413325"
X-IronPort-AV: E=Sophos;i="5.96,226,1665471600"; d="scan'208";a="753413325"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 07 Dec 2022 21:44:34 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p39hx-0000t9-1X;
 Thu, 08 Dec 2022 05:44:33 +0000
Date: Thu, 08 Dec 2022 13:44:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <639179a8.8S6hrerFZsuQTEty%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670478276; x=1702014276;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=CnVi1Ll5/7ajNUpv/7wPo5TQPChxFwgl/m3gM58vEdI=;
 b=FD7YMjEib0jXTdvZWvYS2XnHIHGYw4UiFAdtwRxFKR4szOA30GoSGU5g
 dHC0W60tRyo9NxVDYjnJomjAEQwL2W9KXQifGHqr5StKaa3bUV9Kvlgy7
 5Fcid69+glWAxznSUalNklAThKtt3BG8Zn34jcZdk94Mbq22o8kQlVzwL
 sdnugo26la1liDbcuG/Dd/HqX1jbJ6i4IKrITwyrYY+cgUZ4q2zpsdOOg
 Ho3W3oD7N1n8+5cefHQ5et02w7YCkutf57/gexa4/+Zp26R+dfBBU8R2l
 nhcjsdq8H5J9LVsk5MQeXyzSW8PDc5HW+/WU1fkzSBopdwFtzpErbYdBE
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FD7YMjEi
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 1962d1300ff760a5044d8c8d762aa5afd8be011b
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
branch HEAD: 1962d1300ff760a5044d8c8d762aa5afd8be011b  igbvf: Regard vf reset nack as success

elapsed time: 722m

configs tested: 61
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
s390                             allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
arc                  randconfig-r043-20221207
riscv                randconfig-r042-20221207
s390                 randconfig-r044-20221207
m68k                             allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-rust
m68k                             allmodconfig
x86_64                           rhel-8.3-syz
arc                              allyesconfig
ia64                             allmodconfig
x86_64                              defconfig
x86_64                         rhel-8.3-kunit
alpha                            allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                               rhel-8.3
i386                                defconfig
x86_64                           allyesconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                             allyesconfig
i386                          randconfig-a005
x86_64                        randconfig-a006
x86_64                        randconfig-a013
x86_64                        randconfig-a011
arm                                 defconfig
x86_64                        randconfig-a015
arm64                            allyesconfig
arm                              allyesconfig
x86_64                            allnoconfig

clang tested configs:
arm                  randconfig-r046-20221207
hexagon              randconfig-r041-20221207
hexagon              randconfig-r045-20221207
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a012
i386                          randconfig-a006
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
