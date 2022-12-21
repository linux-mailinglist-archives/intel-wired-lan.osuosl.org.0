Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 41706653382
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 16:37:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BBB3820EB;
	Wed, 21 Dec 2022 15:37:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9BBB3820EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671637062;
	bh=LEd/9ECtuN0wHaYC5L+4oyQtwKjR+bwnhQxt82IiRLw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DVNs0wSVo5Yzvwcy90P9ThXx+/VBzsfDBmRaceBb3Jyepx5clw5uWdJSVhVhxVbcb
	 q2zkZKgOiDU1mBKMCJ8q10Cka2LDUbbJUpBFLOrn9RiLQjcOhFfLx+JSDhE9hT370Q
	 +e7964w90FnUV7mXuGOpcWp9E3RCUVC5fLanZerLFMJYf6uBGPMMUODHDTk32h9wG9
	 NfQQXFsC1l8ADN0vQxzy8wr99Y6ZDP0RJuh0BN8Ef+eBlgEVPyQBUpm7husXENZcmb
	 jZcZjsOG4W5o5Rey4PYu8VMidl9yR+ps4F7zMKIl0y85d1ky2dQrIgtM8h160Z+JJP
	 6cn3Q+ZZs2AuQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sgvKe3ic0sN7; Wed, 21 Dec 2022 15:37:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 98FFE8209F;
	Wed, 21 Dec 2022 15:37:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 98FFE8209F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EA2691BF232
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 15:37:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D1CEE40BC4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 15:37:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D1CEE40BC4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jVCNgM32Nasr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Dec 2022 15:37:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F0C9640BC7
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F0C9640BC7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 15:37:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="319949243"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="319949243"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 07:37:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="714850137"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="714850137"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 21 Dec 2022 07:37:33 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p819x-000AQC-0Z;
 Wed, 21 Dec 2022 15:37:33 +0000
Date: Wed, 21 Dec 2022 23:37:17 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63a3282d.931U/gagYdDB6OGE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671637056; x=1703173056;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=6VhDv+4+EmsnVmHV4la0ASdExGtIvpTAeS7h0MVcKh4=;
 b=f9ipTMBZbQyKS7ebrIHhwFbExNWbtZUkPKXe4jubp58zLJsZU7awnUZJ
 +5ixmeQlWh0sTLbnRq/My/0a3/qAs2oPb9TmY5SUQq9RLDLT2HheFzFvt
 uRpylx/Bn5LXPkPbNGgozgX+WrhoDovdukh4H1c3bBnuN6XET2wGF05li
 Lxn5eqGqFfY3NZYTsr6jD+l74ViAi3estdNgqiZdz4NcfvICTKwkquApb
 xkmLaGn8ehr82Laha4hubOHEI6GvtKy8jb9NwnoPQkKGdAD+SOb1OACTl
 qHlovadbqpJFLO8ES3BWP13SGF5pJ6aH53pZRVA2Q4H2b16EK/1jcnG/s
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f9ipTMBZ
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 8f66c7235e1ec25dc17983c4b42c0ab38e26bb32
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
branch HEAD: 8f66c7235e1ec25dc17983c4b42c0ab38e26bb32  iavf/iavf_main: actually log ->src mask when talking about it

elapsed time: 723m

configs tested: 46
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                               rhel-8.3
x86_64                           allyesconfig
i386                             allyesconfig
i386                                defconfig
s390                             allyesconfig
x86_64               randconfig-a002-20221219
x86_64               randconfig-a005-20221219
x86_64               randconfig-a003-20221219
x86_64               randconfig-a004-20221219
sh                               allmodconfig
arm                                 defconfig
m68k                             allyesconfig
m68k                             allmodconfig
mips                             allyesconfig
arc                              allyesconfig
powerpc                          allmodconfig
alpha                            allyesconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
x86_64               randconfig-a011-20221219
x86_64               randconfig-a012-20221219
x86_64               randconfig-a014-20221219
x86_64               randconfig-a015-20221219
x86_64               randconfig-a016-20221219
x86_64               randconfig-a013-20221219
i386                 randconfig-a013-20221219
i386                 randconfig-a014-20221219
i386                 randconfig-a015-20221219
i386                 randconfig-a011-20221219
i386                 randconfig-a016-20221219
i386                 randconfig-a012-20221219
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
