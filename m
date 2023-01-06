Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED45565FD10
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Jan 2023 09:49:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4353F404A3;
	Fri,  6 Jan 2023 08:49:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4353F404A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672994958;
	bh=gzgrjbj7F7oXHN7vGpptn0eaDcfS3IqxzGdBgsD7Iog=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=EZ85waZk1wJ/JqHWaDTGvrBldveyBL2JqRATgUhfLCtM29L9SZKMnxpJvMn1gg8TB
	 JzU8/azSazbveSXlltbbhxiJLYNr0MDnhx2bL6hiKBFexvhA5XUoi/zcttusuQdWIj
	 bN9ndOCL5iefIcCspiBO5ugXi72JoDxCd9heHPromqk41Ye3fAdWMPvD8Jd7coGWnL
	 QWI70HKarmyNVQjgF8K5LFMQ8eWOOYm2NFleb0JVPGYC4Ht+onvMnWbBfYkSfYdLxC
	 zhyJRIoqFPfi4DlPwEBoZBiOPX4TrK3I686GmoiDhdHa+V5NtrXV+QpuuIB1oScXNY
	 2DEhXJfJpJ/Pg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZvbIHsNqVWG5; Fri,  6 Jan 2023 08:49:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 260EC40239;
	Fri,  6 Jan 2023 08:49:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 260EC40239
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2ACE21BF973
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 08:49:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 12AED60BA8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 08:49:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 12AED60BA8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Eq__qz7BEO02 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Jan 2023 08:49:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ADACA60B92
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ADACA60B92
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 08:49:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="302802127"
X-IronPort-AV: E=Sophos;i="5.96,304,1665471600"; d="scan'208";a="302802127"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2023 00:49:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="779910051"
X-IronPort-AV: E=Sophos;i="5.96,304,1665471600"; d="scan'208";a="779910051"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 06 Jan 2023 00:49:04 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pDiPP-00039k-0y;
 Fri, 06 Jan 2023 08:49:03 +0000
Date: Fri, 06 Jan 2023 16:48:18 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63b7e052.Uui4a6k/k5AAciAx%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672994946; x=1704530946;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=WGJDIlMhOyW+CbOhSx7GG2WfNO4L2y1R14DWmGBXhWE=;
 b=aWU8oMRos+RiCSn+2G24xwLZda83jJvXnmQv6zrFAQ3tAuVk/cBzsfOF
 JudW6SarM0TGKESeHDBcXUJMWwwxVax9tP4jmRnxoyaDR5C99Hl36SFaD
 8+n22LG8T98uoExPr2CW4/3muXNX5mwDaFe8lo7v+5XSnNH95tR4Sf3bN
 S4WDKKJqjigZ/9P8CBBb/fRgRe985pPgT1IOIxO/fn+oG5ltm85W0zM3I
 c2qIjDzT6vbBZ/ZElm/3ia023DTQsXCv97LAlX0Yo4Ft9c2CZ03vtetD2
 khsNG3XKC2CdqARV51Z4k7FxCJ1IJfy1O/ERwTMVR4j4qbCsPdqoCA6Nb
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aWU8oMRo
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 d8269c60b34315abfb87692172a769e48f3cef75
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
branch HEAD: d8269c60b34315abfb87692172a769e48f3cef75  ice: fix out-of-bounds KASAN warning in virtchnl

elapsed time: 849m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
ia64                             allmodconfig
x86_64                            allnoconfig
sh                               allmodconfig
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                          allmodconfig
mips                             allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
arc                  randconfig-r043-20230105
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
s390                 randconfig-r044-20230105
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
i386                          randconfig-a003
i386                          randconfig-a001
x86_64                              defconfig
alpha                            allyesconfig
s390                                defconfig
i386                          randconfig-a014
riscv                randconfig-r042-20230105
m68k                             allyesconfig
i386                          randconfig-a012
arc                              allyesconfig
x86_64                               rhel-8.3
x86_64                        randconfig-a004
i386                          randconfig-a005
s390                             allyesconfig
i386                          randconfig-a016
x86_64                          rhel-8.3-func
x86_64                        randconfig-a013
x86_64                           allyesconfig
x86_64                        randconfig-a002
x86_64                    rhel-8.3-kselftests
x86_64                        randconfig-a011
x86_64                        randconfig-a006
x86_64                        randconfig-a015
arm                                 defconfig
i386                                defconfig
arm64                            allyesconfig
arm                              allyesconfig
i386                             allyesconfig
m68k                             allmodconfig

clang tested configs:
arm                  randconfig-r046-20230105
hexagon              randconfig-r041-20230105
hexagon              randconfig-r045-20230105
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a013
i386                          randconfig-a011
x86_64                        randconfig-a014
i386                          randconfig-a006
i386                          randconfig-a015
x86_64                        randconfig-a001
x86_64                        randconfig-a016
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a012
x86_64                        randconfig-a003
x86_64                        randconfig-a005

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
