Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B52A69002F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Feb 2023 07:05:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BFCC7405F4;
	Thu,  9 Feb 2023 06:05:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BFCC7405F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675922736;
	bh=D8MN7U2HmjiF8jKUrvHsR1tMBjUOL3llHrewxepKlvk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=USPmh7PiznsWXBbiAi+HvZ6QWZyjaPNjDs7t2p63Ci3JAbPMirtsaW3Z1yNv8kIZk
	 utzEu7WRWDlbkKnUiJ1JbLxaoG8S8PItfrWEzm2+pN2KanznTdNlbp9Jl+WsjzMRe4
	 gi2T1XOdczHDjm8YfhB6CElqYIlDzdtroC9mmt/suxcY3q+GROsVccheGRAWWZpyl1
	 z/ManqzuQPSHBg6Yvf7Ar0Mr78Sk2zZPkVSACIFad7ZkH2F9omiLiWqseUFF1U7q+W
	 FNVUBPxkvD1+9Dap3ve2Hnro90riNX4IXXmIJ1H4Ml7R4NshvMgUYB8Ahg+BLUcnu+
	 MpZqeUmhn4hIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tkRIrbaDTX_7; Thu,  9 Feb 2023 06:05:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB306404D1;
	Thu,  9 Feb 2023 06:05:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB306404D1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 38A391BF852
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 06:05:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1E1FE408A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 06:05:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E1FE408A9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id spiD2RUZtx9k for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Feb 2023 06:05:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F2AD6408A7
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F2AD6408A7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 06:05:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="327718135"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="327718135"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 22:05:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="776349186"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="776349186"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 08 Feb 2023 22:05:25 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pQ03g-0004s2-2H;
 Thu, 09 Feb 2023 06:05:24 +0000
Date: Thu, 09 Feb 2023 14:05:05 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63e48d11.QwVMgXbrI9MUFSTS%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675922727; x=1707458727;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=/13VruBK8Xhj+VwI3a8imf3CbJCI6+X4BozDIzH5e+o=;
 b=I95dZbX9Wx5lvqAjPNxLpuTG3omC3hblhEFg6NLeeB7u3jqCWHB5XKnA
 SPM4f+SsVWYrR0awb4S4yR67cJ39O+L88PLENEUFcn3Gu7mrzbAipCiS+
 SLBMPlY8Zj36cOtzEthlMrgCBBThNTeHppXIP/9gPj2yARsJmdCF8g+Ep
 QodFE3dQ7LpiCBpidDjrSlrY8uuCt8Z+G3/pjKNTrRX6moPHQc0CZLWsA
 R6paTvWzkYrQ/SZEhx7rRqTIcsw6FR/AVsXWCeaoubnabF4k20ASHkgng
 z5jOz4j4d18bOQfpqdsvBi0/Pwr5D6o7teJ2ILBLWBM4uYQHQkrzqiAYr
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I95dZbX9
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 639522e75283219310362c263eb6671406c19f20
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
branch HEAD: 639522e75283219310362c263eb6671406c19f20  ice: fix lost multicast packets in promisc mode

elapsed time: 733m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
x86_64                            allnoconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
arc                                 defconfig
alpha                               defconfig
i386                                defconfig
s390                             allmodconfig
s390                                defconfig
ia64                             allmodconfig
x86_64                           rhel-8.3-bpf
s390                             allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
arm                                 defconfig
arm64                            allyesconfig
arc                  randconfig-r043-20230209
arm                  randconfig-r046-20230209
arm                              allyesconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a005
x86_64                        randconfig-a006
i386                             allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
powerpc                           allnoconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig

clang tested configs:
x86_64                          rhel-8.3-rust
hexagon              randconfig-r041-20230209
hexagon              randconfig-r045-20230209
s390                 randconfig-r044-20230209
riscv                randconfig-r042-20230209
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a006
x86_64                        randconfig-a005
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
