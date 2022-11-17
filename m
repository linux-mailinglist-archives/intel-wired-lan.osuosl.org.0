Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B066D62D944
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 12:20:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 453DA40360;
	Thu, 17 Nov 2022 11:20:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 453DA40360
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668684002;
	bh=HObPYO917nNXc87tATD++H+y4l32PwBBJoEpmf+SpqQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=dOLelB6AxtynBk3HMAdP1zOFcDcikPlhQN4SJQWvFH0Qp3a/L18A9eTVhz8RODSnz
	 txZ+8Rq0wBLZcvSW1CErVM+xc7ZecGDB3nZYT+nZh52fvkhMTrGhypO0lEXaSSujd1
	 QjoZQTESH/BQ5VIKGON3JGhtmCKZCzAzrC22OXYgaMTIwBddEUn3p6jd1bKedFPofZ
	 z5MSShB1nHo3dXbzdcI63EadJBl2QyrjUW6FsgWy5SjAEf36l9HEmjrOv6UBRQQsTl
	 5MoghLBkiHVTeNy9w4Lz0SMAoLWUkOLxEd5246jIOaR2txTD3Bp07pGeJzupu6jUnU
	 pRpf2gTSt98lA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hcc2MxZWUZlf; Thu, 17 Nov 2022 11:20:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A164402FE;
	Thu, 17 Nov 2022 11:20:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A164402FE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 251C61BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 11:19:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F1CF36102F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 11:19:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F1CF36102F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uAue8Oj65bC7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 11:19:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0CE2360AD2
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0CE2360AD2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 11:19:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="293220017"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="293220017"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 03:19:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="884828716"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="884828716"
Received: from lkp-server01.sh.intel.com (HELO 55744f5052f8) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 17 Nov 2022 03:19:53 -0800
Received: from kbuild by 55744f5052f8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ovcvw-0000Fn-32;
 Thu, 17 Nov 2022 11:19:52 +0000
Date: Thu, 17 Nov 2022 19:19:01 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <637618a5.3/CdLEpFqaHI0cTJ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668683995; x=1700219995;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=0NxIp2UHfdh2C3fsMxe/Pde6/zpXL8QufOfRVkwxN5c=;
 b=QWNIugqEsgn1VOUCBhAYbduFO6lmE11yXdyXqoafcqg91WoCP1ALYcsr
 LFvDMUN73jcSlnj2vazJkQdqjBdx21Tej6Zjl+4T8pszWBx0OdPbb6N8I
 JTSr24ZZgWaxUNDt7r8jH+6WyGb8rebt3F2ZvHkiYySD/YMzf3wfqY88N
 OCaZGd+cM5+uXL6vH3fep6Axjq+eKLtG1d7qeqOf6+9PP495bHxtjHzd3
 VGasVaIfaMlxFHXMAu6npl8j9vvcNspSiBa3bFhatQ6xfKM4eXgvnxwsz
 NC0dOT/RwHB3JkxEPIXck+RR7mkAsQx0kPNg20yita94OVqE3q14MxUhm
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QWNIugqE
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 018f0cfc339ea55e4baa4f8542d6d948555baa77
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
branch HEAD: 018f0cfc339ea55e4baa4f8542d6d948555baa77  ice: restrict PTP HW clock freq adjustments to 100, 000, 000 PPB

elapsed time: 727m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
x86_64                          rhel-8.3-func
ia64                             allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
x86_64                              defconfig
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                           rhel-8.3-syz
arc                  randconfig-r043-20221117
i386                          randconfig-a005
riscv                randconfig-r042-20221117
x86_64                           allyesconfig
s390                 randconfig-r044-20221117
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64                               rhel-8.3
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
sh                               allmodconfig
i386                          randconfig-a012
i386                                defconfig
i386                          randconfig-a014
i386                          randconfig-a016
i386                             allyesconfig
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
hexagon              randconfig-r041-20221117
i386                          randconfig-a006
hexagon              randconfig-r045-20221117
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a012
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
x86_64                        randconfig-a014
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
