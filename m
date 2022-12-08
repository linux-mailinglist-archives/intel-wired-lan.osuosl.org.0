Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F116468B7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Dec 2022 06:44:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7869060F20;
	Thu,  8 Dec 2022 05:44:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7869060F20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670478294;
	bh=xpMenScJxEppF+RRHlA7X4+rlbkhusGVgYYEZ+s6Zbk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=j5+qZ0hK3XbM8PTPrvKrjzKmgm9l2H8aQhoPai4KY5DZS2GCATxxB8x3LQ4FSdv65
	 zPuPoqWH8tk03qapNxI36cwDRZezNWWZTLJiFywzoHPTWrzC44ajF6lHSaR86p6oFi
	 jHlDSPRMoalSC3a4jtQmePBVcPdJ640zRUGMO9yXmTlGoGF0uCdF3TMzQfnCVCX3ba
	 R/6ANqWzhf91k0bHxUWk2opbGS3ggkb4mLaRSzFYpOcaQZiK5TZW4t20/MDcnDXLg0
	 kFlQkAKHbCaDNcPyUzU6uBD68DTMurNuNPYBwKbq8vxSnL1d1lzfxLs4/+iNUkTOrn
	 BgwbLaht2ss/w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WTioQaSH14mc; Thu,  8 Dec 2022 05:44:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A9CC60B33;
	Thu,  8 Dec 2022 05:44:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A9CC60B33
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B0C11BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 05:44:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 43ABC81279
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 05:44:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43ABC81279
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6kJSweq8_Vrv for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Dec 2022 05:44:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7344880FB7
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7344880FB7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 05:44:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="403350361"
X-IronPort-AV: E=Sophos;i="5.96,226,1665471600"; d="scan'208";a="403350361"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 21:44:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="975728847"
X-IronPort-AV: E=Sophos;i="5.96,226,1665471600"; d="scan'208";a="975728847"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 07 Dec 2022 21:44:34 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p39hx-0000tQ-23;
 Thu, 08 Dec 2022 05:44:33 +0000
Date: Thu, 08 Dec 2022 13:44:05 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <639179a5.gy4wvU6ie67Be5lJ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670478278; x=1702014278;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=PcgDMb/pUinoXmnoSrahqOOOou11TOwwzK8pKAG5adc=;
 b=cAw0NP3Wdl1yi58Gne1WyeqKeXwq2kFjEq0cRWnYEd1QfmPHYplyrv9P
 Xm1ZzLG65k/5NLNn9w6+ayaS/PS8O2FXrf9O8+BFiKDo3KijWil2S/5/V
 Jaqlgtv1/2vT0eEgboNMdPDi1ByGu6ss1jwtSa9zbSCCujpUl0nucv25w
 +799frH883HgxPFpQXgMdIupk5BmXqb/Ojh0XaaWYXjbSNXZV5wTHgGu7
 GonZfUGpf8RKdgqCoZEnFOMWpPLkiiOll6qKefcj1+nFAbXsj2WcMVOcw
 stYELtsbj/+NbB8p/QNsX2/bSqSJRcfa2kYvDN1gmK4YzNAFRJ9so7WND
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cAw0NP3W
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 00791d4b48d70cf7b835f14693971ceceb9d52cd
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
branch HEAD: 00791d4b48d70cf7b835f14693971ceceb9d52cd  ice: reschedule ice_ptp_wait_for_offset_valid during reset

elapsed time: 721m

configs tested: 35
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                  randconfig-r043-20221207
riscv                randconfig-r042-20221207
s390                 randconfig-r044-20221207
um                           x86_64_defconfig
um                             i386_defconfig
i386                                defconfig
x86_64                          rhel-8.3-rust
x86_64                              defconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
arm                                 defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
arc                                 defconfig
m68k                             allyesconfig
alpha                               defconfig
m68k                             allmodconfig
s390                             allmodconfig
s390                                defconfig
sh                               allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
s390                             allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
arm                              allyesconfig
arm64                            allyesconfig
i386                             allyesconfig

clang tested configs:
arm                  randconfig-r046-20221207
hexagon              randconfig-r041-20221207
hexagon              randconfig-r045-20221207

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
