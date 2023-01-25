Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C2D67AA05
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 06:40:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 82901610CB;
	Wed, 25 Jan 2023 05:40:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 82901610CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674625252;
	bh=Wd0781Po/Q7PAfbQ1yfApOwOYnbJ9Sxwficts5U1XZo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=b+cfLjwkFwNNhMb7fuNrbBY1yXcroB79fQK/xxOrpdIXgjFlLZFo1qLHH+0i6uRka
	 inLSAqKfnqwX+a+X6BpOQzzy/mdZpo4qULipgwkOpjTQx6GIq/wkMTOI6YWkfxA5pd
	 W81OcwsxfsPwNYeFBnuGEq4DsdsTFDTja+64NMYb6TWoy6KRmovz0blhDIumDWiQiA
	 bfdjIwe5ZIsOGoxfsuoUiV8vA2ohYInz3dKokQ3EcVEIcYMrwWFz9WpBsPyDAGxLGS
	 DaIdgiZ04VC1iLuHZKctZSvaJnwhjzpXB/GEj6OD1x4b/czVjharz+6xKlV8+84Tf4
	 j8yDf7KXodIRA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z0YAX-KwyBYq; Wed, 25 Jan 2023 05:40:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6DC3661092;
	Wed, 25 Jan 2023 05:40:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6DC3661092
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 936C71BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 05:40:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6BED461092
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 05:40:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BED461092
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fT0Mb4aelGrH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 05:40:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8758D60F8D
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8758D60F8D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 05:40:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="412721546"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="412721546"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 21:40:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="655695769"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="655695769"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 24 Jan 2023 21:40:43 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pKYWY-00074M-2M;
 Wed, 25 Jan 2023 05:40:42 +0000
Date: Wed, 25 Jan 2023 13:39:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63d0c0a8.TbQ/LUiNwsr7gaO9%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674625245; x=1706161245;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=FLAuVWmqUVgSm/0k8EKP19F3zXDCb2XyKpnwc+83/OM=;
 b=Ti+jxlfoP5oXfAHWNVPIR0tVzwQggcB8Vc7Zxatsv+ntY1suctfa5TB2
 NKp4TPRw/EuqSp4XSjFGH1PFi4HraU5yvWdRATa98gXlM2GRjxS2+LYLK
 x05mzeBlIL3J8hPHi342Lw6tczc6Fhayy40nq0cpzGRMRv8JLfHsC47vb
 v0bH5XR1K2RpOokkhx57w5xowYUdES2OyNl+xvcdK4n5hN71hID0tvFW+
 Uyw0YqJEgQf6j4SaR/yMeLi1q+vAJRTpEtQpQTYmvFxRRZwKKJOaEAre2
 4hDoxvyy2lJuvc1B24Lf/qJ2yUVtQzXCgnGDeJMOQHDWJLV9BB3vOFpvm
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ti+jxlfo
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 ed4131accca8013358d2665ff263b5c2e87f6913
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
branch HEAD: ed4131accca8013358d2665ff263b5c2e87f6913  ice: Do not use WQ_MEM_RECLAIM flag for workqueue

elapsed time: 726m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
arc                  randconfig-r043-20230123
arm                  randconfig-r046-20230123
i386                                defconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
ia64                             allmodconfig
x86_64                              defconfig
x86_64                           rhel-8.3-syz
x86_64                               rhel-8.3
x86_64                           allyesconfig
arm                                 defconfig
x86_64                        randconfig-a004
arm64                            allyesconfig
x86_64                        randconfig-a002
i386                             allyesconfig
x86_64                        randconfig-a006
arm                              allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                 randconfig-a004-20230123
i386                 randconfig-a003-20230123
i386                 randconfig-a002-20230123
i386                 randconfig-a001-20230123
i386                 randconfig-a006-20230123
i386                 randconfig-a005-20230123

clang tested configs:
hexagon              randconfig-r041-20230123
hexagon              randconfig-r045-20230123
s390                 randconfig-r044-20230123
riscv                randconfig-r042-20230123
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                          rhel-8.3-rust
x86_64               randconfig-a013-20230123
x86_64               randconfig-a011-20230123
x86_64               randconfig-a012-20230123
x86_64               randconfig-a015-20230123
x86_64               randconfig-a014-20230123
x86_64               randconfig-a016-20230123
i386                 randconfig-a012-20230123
i386                 randconfig-a013-20230123
i386                 randconfig-a011-20230123
i386                 randconfig-a014-20230123
i386                 randconfig-a015-20230123
i386                 randconfig-a016-20230123

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
