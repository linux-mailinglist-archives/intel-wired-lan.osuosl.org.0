Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D813C653500
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 18:22:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 666268204A;
	Wed, 21 Dec 2022 17:22:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 666268204A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671643371;
	bh=+FKwjCxVK6WuA4k8k64coj0BsYa6X1PC4JlElyFUbFQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=U1JS8yciNwVAnajhVH3WA3v7p+WHa9IpblhDPp9JUU89JhZlmjE4+VnxiWVpzUjXV
	 wM+5yjDanIkc2NPenBGPtmuO7Ff/fuTCQI7TliIefMvA2dXe0nHe36l2wEKdycJjD6
	 bEsH1hObSZTl8oZr0SL2W4Ey4hJt46qjhf8cA4tmnWJdkMD5DfxY32kfOOhnI70jGI
	 UQrDAUlSNS1Q8tDQyLdKIREGtmRN7an7kXCEEJbZMAoHRciKEzC25JqA0vpjX4JzKS
	 5ZllbtgiLFRUj7wH4y1psnhCroG2YoYxGzQc39H272Yvm/bTO3Kj+s6oKQWUGlg3HR
	 GJZz8M5awSi9g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a1GqUOBCJRR7; Wed, 21 Dec 2022 17:22:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6FABD82011;
	Wed, 21 Dec 2022 17:22:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6FABD82011
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 81A7F1BF844
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 17:22:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 66CDF4189C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 17:22:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66CDF4189C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gA2MH5aUWZ7o for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Dec 2022 17:22:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2EFE640302
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2EFE640302
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 17:22:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="303357356"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="303357356"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 09:22:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="793775583"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="793775583"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 21 Dec 2022 09:22:42 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p82nh-000Abf-1I;
 Wed, 21 Dec 2022 17:22:41 +0000
Date: Thu, 22 Dec 2022 01:22:33 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63a340d9.KzwyDx2rWwZUGc1y%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671643364; x=1703179364;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=btxZC4tyQ1Q/aZie7YLG9VB0rm6hPRrp8/3duoI+CZY=;
 b=CgkXJwl4glTbtqSEzJ508v0DKumVFg3uYbUM0D0gD7K0oztczW6CMTzQ
 4Uyy7X26eUi9ljUtxHOVoi+WcNvFzuJsjakPP1vj2AZNmnYsDfEs4KpYn
 o2eCHa21WUB7ej0J+nfbYGAca2lKKB0829vUEl1d6/lZpwn3UE9iNyjCd
 gp9getsuL7GHFFTIXKblDerdJGWQhyDZ/CWi6lwsfwvf1DKBRkfyKWbc2
 ocs+F5eOACPAnh19BhyD/yiB6ezxmIqzf6CNIxHbpnSazung+NFvkN34H
 mz+a4gOio0oy0V6+kgOEpaO9QdndKCvAtd+zFDeXSArUqdriponBJYjiW
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CgkXJwl4
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 e4d25845011fce0d00b565d6c77c8b71672efc8f
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
branch HEAD: e4d25845011fce0d00b565d6c77c8b71672efc8f  virtchnl: i40e/ice/iavf: rename iwarp to rdma

elapsed time: 828m

configs tested: 37
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-kvm
x86_64                         rhel-8.3-kunit
powerpc                           allnoconfig
arc                                 defconfig
alpha                               defconfig
sh                               allmodconfig
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                          allmodconfig
mips                             allyesconfig
m68k                             allyesconfig
s390                                defconfig
m68k                             allmodconfig
s390                             allmodconfig
arc                              allyesconfig
s390                             allyesconfig
alpha                            allyesconfig
x86_64                              defconfig
x86_64                           allyesconfig
arm                                 defconfig
x86_64                               rhel-8.3
arm64                            allyesconfig
arm                              allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                                defconfig
x86_64                            allnoconfig
i386                             allyesconfig

clang tested configs:
x86_64               randconfig-a011-20221219
x86_64               randconfig-a012-20221219
x86_64               randconfig-a014-20221219
x86_64               randconfig-a015-20221219
x86_64               randconfig-a016-20221219
x86_64               randconfig-a013-20221219
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
