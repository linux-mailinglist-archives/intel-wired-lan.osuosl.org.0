Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 594496753E6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Jan 2023 12:55:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 584E2405A4;
	Fri, 20 Jan 2023 11:55:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 584E2405A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674215726;
	bh=SnDxAenp7wKs/OEsaFa/1HcBr/ZDGFbaGcJwauvtOHI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Ze066YbHn1aDpIRsjj//TnWxim87eNLNR9kNRVv8pSiqcX2/OZLAxgnCjTYJu2i3U
	 eU3Fq98HmqOhX3MUIS7r82oj6jYZeCDlSSVfyBwvJbXvDf6yln8a8RMSTSCFgVR8Th
	 CTkhi/eiW+xJChQBxqQUPSF+6XPcrzHRPEeCr7Y+cTFm4opEB5RbbtGvQAWbfQbzwa
	 rb1U9iFfaNHsBEQ3m5OjjVlfAMBV/NB8RGVlCmCNEUxDFm1Gs1P2YygoDebu3Kv9wO
	 zdOm+Qeo2ieZKphDngYfsoArYCtQVCLpPgmTbqOdzTfOQd9sBj8bIh5IOYd6G0oV2t
	 0EUsCYwjJg77g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SPc4LJ5fM138; Fri, 20 Jan 2023 11:55:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 39055404D0;
	Fri, 20 Jan 2023 11:55:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39055404D0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F2A751BF338
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 11:55:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CC86D823FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 11:55:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC86D823FF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dve8TgTp0Qtx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jan 2023 11:55:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48D7A823FB
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 48D7A823FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 11:55:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="327657559"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="327657559"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 03:55:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="662516785"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="662516785"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 20 Jan 2023 03:54:58 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pIpz0-0002Wq-0R;
 Fri, 20 Jan 2023 11:54:58 +0000
Date: Fri, 20 Jan 2023 19:54:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63ca80f8.qBMpmO4r8KVfRsgQ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674215718; x=1705751718;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=9X6HNDDNuSCQprjd6Hz2u2rOumNhA/l+OsxoZ2SXV10=;
 b=mqtl+wRFwa2A81GXBsz4Fin+7FbgJZ5LP+nTNaJUujImo9IcpARCz3gI
 b+npbuhhuF9ZQjjp2Yf/qJrLrFn5OZiOpCtu+4rVWeNLUn6+LgOfSGyf2
 OHBh3XBd2HIJXPT5Ooue4yzCPz8bGNVAbqm1cECgPXQf8i9r/bhLpUmMk
 j0btOQj/YMeHKDTR/4k0PrFReMHgr45YQPcdCBNx3zQTVaDUl5IpWS5DM
 gQNHVViGb9IxHOHQKfvEpqmnAv/I4heIrBQYUE8aXKnUsTr8u1qB9Ear2
 vRuevqQWy8O6BEDOxDsCmITeWCArCFHF+aamggV0O8D2Hnqguc8BmR7Mo
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mqtl+wRF
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 3ca3da5c57ca49f079efae6a126e1864f573839e
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
branch HEAD: 3ca3da5c57ca49f079efae6a126e1864f573839e  ice: remove unnecessary virtchnl_ether_addr struct use

elapsed time: 725m

configs tested: 69
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
powerpc                           allnoconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
arm                  randconfig-r046-20230119
arc                  randconfig-r043-20230119
x86_64                        randconfig-a006
sh                               allmodconfig
arm                                 defconfig
mips                             allyesconfig
i386                          randconfig-a014
powerpc                          allmodconfig
i386                          randconfig-a012
x86_64                            allnoconfig
um                           x86_64_defconfig
m68k                             allyesconfig
i386                          randconfig-a016
m68k                             allmodconfig
arc                                 defconfig
ia64                             allmodconfig
arc                              allyesconfig
um                             i386_defconfig
alpha                               defconfig
s390                                defconfig
s390                             allmodconfig
x86_64                              defconfig
alpha                            allyesconfig
s390                             allyesconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                                defconfig
arm64                            allyesconfig
x86_64                               rhel-8.3
arm                              allyesconfig
x86_64                        randconfig-a015
x86_64                           allyesconfig
i386                          randconfig-a003
i386                             allyesconfig
i386                          randconfig-a001
i386                          randconfig-a005
sh                           se7722_defconfig
powerpc                  storcenter_defconfig
sh                          rsk7269_defconfig
powerpc                       maple_defconfig
ia64                                defconfig
sh                        sh7757lcr_defconfig
openrisc                  or1klitex_defconfig

clang tested configs:
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a001
x86_64                        randconfig-a003
s390                 randconfig-r044-20230119
hexagon              randconfig-r045-20230119
riscv                randconfig-r042-20230119
x86_64                        randconfig-a005
hexagon              randconfig-r041-20230119
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a004
i386                          randconfig-a002
i386                          randconfig-a006

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
