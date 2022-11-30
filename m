Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 787C763D734
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Nov 2022 14:51:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0499560F92;
	Wed, 30 Nov 2022 13:51:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0499560F92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669816293;
	bh=TMYZZAQJ/SRrTqPT7hzphNCHsTdSImFL0TLvc7xEgTA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=yCIVFnnBtNkH/LIkva/bFYBPM055uDe6+FCoQTf3OP5c7/L18exoNdnW2Uy6lDl7h
	 81qz3JeyBUvad+2nFccV8mtlI128tvffdplYUvi/EwVjtZY7nk1A+4fs854xTsBGCA
	 X+bPTAiQrwmnE+ZS6gB+m/FQeMXnKVzrGz+fDoUBXBWKnC1FzF6KaaxDPsEzrr1HF0
	 YE9thdFMRvtLw461zzeNnHpSQaRXI1IyDINnkGNTZLQPiVXehr1zIcBBxo8utwvyDt
	 svojfOo2wjke4whWOkc5EYtnFrgNtHo/hPBoHWMFJ9KPggY15RDM0jI1lwOaPkkgD/
	 FtRD/pRxYBBFQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TjMIlI2t4ub7; Wed, 30 Nov 2022 13:51:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36BD760ACE;
	Wed, 30 Nov 2022 13:51:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36BD760ACE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 85D981BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 13:51:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 466FA415DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 13:51:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 466FA415DF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BtDSZzoAUxSE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Nov 2022 13:51:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 287AF41686
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 287AF41686
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 13:51:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="314090621"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="314090621"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 05:51:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="675030741"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="675030741"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 30 Nov 2022 05:51:14 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p0NUY-000BDj-0Z;
 Wed, 30 Nov 2022 13:51:14 +0000
Date: Wed, 30 Nov 2022 21:51:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63875fce.kqPVWhhz93eLvbnb%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669816278; x=1701352278;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=4MRKTPtjLs0n9GsbYbDnowOYmAoT+SA1T41WDSTUoEA=;
 b=IRT6j9y4iRT6eZcoOBejo71JsbCrS204+pBS3amcyAiGRIYVzLg/Qkl4
 /34ztGTsGCdx7ImAsGpglxmboYx/3NLBjORupvAPedLFuR99telEzxJvO
 TL5mAD0n/Nrwm4s8Z+KKwGCkca0yyM20K9UlcaOXzkUPZs5HeoGTqR2MW
 qmKM9okeTnPb+X3tlBGa3sj5R39CFOxGWLQIte7W/KHoM3QSgG3r9+Xf8
 2esJuX/anI9QfA14uE/jMLfgH4czMI4pwwmyFtcwKhDGX0DHLFS7TdR5c
 3Biv/EYof3BuMTzu8unGaTUTmfJlIAqX33NbMZQF/iUXfgsT/FCbH+Lft
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IRT6j9y4
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 d68dfc5102487c2e0085dbea744347e2ad9adc67
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
branch HEAD: d68dfc5102487c2e0085dbea744347e2ad9adc67  ice: Reduce scope of variables

elapsed time: 731m

configs tested: 67
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                            allnoconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
x86_64                              defconfig
i386                                defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
i386                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20221128
ia64                             allmodconfig
i386                 randconfig-a001-20221128
i386                 randconfig-a005-20221128
i386                 randconfig-a006-20221128
i386                 randconfig-a004-20221128
i386                 randconfig-a003-20221128
i386                 randconfig-a002-20221128
sh                        sh7763rdp_defconfig
powerpc                         ps3_defconfig
xtensa                  cadence_csp_defconfig
mips                      maltasmvp_defconfig
mips                             allyesconfig
sh                               allmodconfig
powerpc                          allmodconfig
x86_64               randconfig-a002-20221128
x86_64               randconfig-a001-20221128
x86_64               randconfig-a004-20221128
x86_64               randconfig-a006-20221128
x86_64               randconfig-a005-20221128
x86_64               randconfig-a003-20221128

clang tested configs:
s390                 randconfig-r044-20221128
hexagon              randconfig-r041-20221128
riscv                randconfig-r042-20221128
hexagon              randconfig-r045-20221128
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64               randconfig-k001-20221128
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                 randconfig-a014-20221128
i386                 randconfig-a011-20221128
i386                 randconfig-a013-20221128
i386                 randconfig-a016-20221128
i386                 randconfig-a012-20221128
i386                 randconfig-a015-20221128

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
