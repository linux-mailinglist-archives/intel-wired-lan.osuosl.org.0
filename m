Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0636900B1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Feb 2023 08:07:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0F5A820F0;
	Thu,  9 Feb 2023 07:07:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E0F5A820F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675926458;
	bh=wU/BDp3zDI9vMYdWNj21z37RkInqoyqdz9cPmmiqkX4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cXX6vwUBv6qCBz3aKFwCW5A0QNHTF/RVR/4oGf5WSwIhByvJd+kwhYjpKNNPSx6ZO
	 Z3U9wwCSPmoghblrm9K6kCYdNjopCIhWO8rL7j2Oi6SMzHIAODFQyb7WickWay98rz
	 AefJt8mXfxyVi/ul4oOgtOMfnsKcvCQ2nvbe1Cfp2VuFLtHLdMKpxTziopke+M/mtF
	 7V1mh2p4VR+Jvf75OhYbaywRbe3EChvzQO2BITmNleiCbsGPtTjOzhTT0Pr1k4WhYt
	 5QZbKPWbofeAzBv7p68XFeNy08wwitIPkPVaw6xqbWGP5TAvq4wSi57tCj3V2zbSvF
	 2Upq4LrrgRMkA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Dbx0mOHGZLY; Thu,  9 Feb 2023 07:07:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3D4C820C0;
	Thu,  9 Feb 2023 07:07:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3D4C820C0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E48931BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 07:07:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CA2CF405F4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 07:07:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA2CF405F4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JPymo3WbljtH for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Feb 2023 07:07:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BDF04051D
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9BDF04051D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 07:07:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="416256913"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="416256913"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 23:07:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="736212305"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="736212305"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 08 Feb 2023 23:07:28 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pQ11j-0004ts-2W;
 Thu, 09 Feb 2023 07:07:27 +0000
Date: Thu, 09 Feb 2023 15:06:47 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63e49b87.bb/D00c9EFQqhX3x%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675926450; x=1707462450;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Osyp781QWkBBBYlkq0vseIuc1fVWb/BjhEe+v6B3QvE=;
 b=YUUAAnHmE53eNv6qfPuVwZSU5hCQpbweFeqELxgExcs7aBL9CABSsB2r
 by5vYw0jayjHsbQF6OyAOWM0zZmE0juDRf1kEIFCdA81f6si10+FrGTe9
 XO/UWtELHsptG8RyspV1v8aGunG2EvhejGPxPHq23xyXpP9IXAYpizy2P
 OkSiDy+4QjqErXaY+MHFNQNIjA9rfnMacvfrpyLpfcezUri21BqXoupgR
 waO2n0xIcFUjVtzM9m0apzKrJm5nZbE6qkx4hhG8NmSznEWGgnPQBIfZf
 7jSmWAEfwnvWuSwuUXxEduL19537gNZAJhQBBlZD1ZsOHOGh8sAseyFR3
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YUUAAnHm
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 8d6224a783cda9387f3203729a4726ed90b34fdc
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
branch HEAD: 8d6224a783cda9387f3203729a4726ed90b34fdc  ice: add support BIG TCP on IPv6

elapsed time: 720m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                            allnoconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
powerpc                           allnoconfig
s390                             allyesconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
sh                               allmodconfig
m68k                             allyesconfig
x86_64                        randconfig-a015
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
i386                                defconfig
mips                             allyesconfig
x86_64                              defconfig
powerpc                          allmodconfig
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
arc                  randconfig-r043-20230209
x86_64                           rhel-8.3-kvm
arm                  randconfig-r046-20230209
arm                                 defconfig
ia64                             allmodconfig
x86_64                               rhel-8.3
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                             allyesconfig
i386                          randconfig-a014
x86_64                        randconfig-a006
i386                          randconfig-a012
i386                          randconfig-a016
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
arm64                            allyesconfig
x86_64                           allyesconfig
arm                              allyesconfig

clang tested configs:
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
hexagon              randconfig-r045-20230209
hexagon              randconfig-r041-20230209
s390                 randconfig-r044-20230209
riscv                randconfig-r042-20230209
x86_64                        randconfig-a001
i386                          randconfig-a013
i386                          randconfig-a011
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a015
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
