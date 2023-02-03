Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D30689EF8
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Feb 2023 17:17:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2EEEA42A46;
	Fri,  3 Feb 2023 16:17:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2EEEA42A46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675441038;
	bh=YUsFiU1kpZ0aEniJQOLiS1FWCA4InDsZCb1yfSMMF7o=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ZD6aYueGpFYwEDeagCcVdDmJLKfDBxyr+BLjuTTZn1LoJ/HnJeweWFkwWTYuM/NS6
	 M6zUdN+pNItam3wKfXY/5VeQGL01lBqlDCLZCtx8A4IcCO8zpRQHUo1U3G1hPfB+2q
	 lcoEUgb1jKaFj1K4RUSPc+rBDeFH5fx+/mvXJsHEE1Kat8DaPNtql5zWEvGSXHD2gP
	 zHWsqzhnKCdK19EcxJuQ2/UbPDalf3gZJ3Pirh68oIDoI0JQwzIHB6i8tOUQEX5NFT
	 Pn/ufAq7Dn5IiJsvwtbh1K4GFsgs5rBOyppP1QzIEoZu/I8id8+58DVqL6Cv99r5TS
	 rl09fvLUYXBoQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AQ833u9wB0ik; Fri,  3 Feb 2023 16:17:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E819F42A3D;
	Fri,  3 Feb 2023 16:17:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E819F42A3D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E76EC1BF283
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 16:17:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C0BDC4168D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 16:17:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0BDC4168D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YzQQYV28Jmtk for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Feb 2023 16:17:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E8A4E415CB
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E8A4E415CB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 16:17:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10610"; a="309118438"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="309118438"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 08:17:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10610"; a="774386915"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="774386915"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 03 Feb 2023 08:17:09 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pNykO-0000cp-0n;
 Fri, 03 Feb 2023 16:17:08 +0000
Date: Sat, 04 Feb 2023 00:16:22 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63dd3356.4Xq2L+twCmF3uOjW%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675441030; x=1706977030;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=nYsoQP/qKubp1Ru++k6XHp6MYTF8gyqCzvbthRn7784=;
 b=QtNRxv04StjYQgT9JIRPSYa88uylzBXaZmBmSEGm9eCYuA/CZNQ5sNqZ
 kfDT6QId0MpuJ9IqbtxwZZV7ooSHzGREa2xIsCTc6NfGv/zhtIm1RuJaQ
 SE14qvEZhLa54M1xo9L2VprwjLyAC/pKNzZsRLsrk67VxzSXBc9/bTCkO
 69X/turs52TKFz29gDmnbwZdayi36kr5gbfJYPIEZLGwnO9mWvNHJdCwp
 6fFqQExjGjfPoHP0gtvdHRAC29RK6iJ/9wetyfzCdqa1mLBsWEBbxdKyo
 istxuXxOkPscsnGgH8kvBiw3VqPwCEYfRYmydmR/7QVG3OOFkLMLw2OPV
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QtNRxv04
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 4707de48df9d97bd313405c431ed5372d8075935
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
branch HEAD: 4707de48df9d97bd313405c431ed5372d8075935  igb: Fix PPS input and output using 3rd and 4th SDP

elapsed time: 868m

configs tested: 61
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
um                             i386_defconfig
um                           x86_64_defconfig
s390                             allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
ia64                             allmodconfig
x86_64                              defconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                               rhel-8.3
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                           allyesconfig
arc                  randconfig-r043-20230203
x86_64                           rhel-8.3-bpf
arm                  randconfig-r046-20230203
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
i386                             allyesconfig
i386                                defconfig
riscv                randconfig-r042-20230202
s390                 randconfig-r044-20230202
arc                  randconfig-r043-20230202
powerpc                     stx_gp3_defconfig
xtensa                  cadence_csp_defconfig
powerpc                      mgcoge_defconfig
sh                            migor_defconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                          rhel-8.3-rust
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
hexagon              randconfig-r041-20230203
hexagon              randconfig-r045-20230203
riscv                randconfig-r042-20230203
s390                 randconfig-r044-20230203
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
