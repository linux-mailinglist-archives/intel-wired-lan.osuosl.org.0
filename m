Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3779F580ABA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jul 2022 07:18:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 201EB828DA;
	Tue, 26 Jul 2022 05:18:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 201EB828DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658812734;
	bh=XY+ecQAoqcaPF5mQ5NTXqiSQNnlGpDK3Spy2yiDUc/M=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=v8CAByT+wIbDQHCNnumgGUGeSpVSSBN9P47ZXclCzaDQDAmjmGihAUHm2JJcgxA7W
	 AD9oX5KNnTzZsIkKIh2eeI9krCWwRsSfiBKL3AvoO1b6UtFJCI7zm/XWEOTTb7c/F3
	 GCJ1VGmw13B2AmGRzzL40qw38PKFMlIiKwywMwNtEH0Kk17N3qw+KBZobsP9Y/Jh+q
	 /UABtEwgSj0vLT03BWpFJNzQaiok2Sm3/YHqyTjEuyoohVB8E1IHrwepXqSjkcLvuF
	 75cEPCusAha79vPLByI5inDZX6AJpj5/VjuuhaR8carwf423LTkyhPFMAkF2Vnfmi0
	 milXDhK2fXTQw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W2pDcyVshBiy; Tue, 26 Jul 2022 05:18:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EAA99825DC;
	Tue, 26 Jul 2022 05:18:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EAA99825DC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 475751BF28E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 05:18:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1C0A541687
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 05:18:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C0A541687
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GtOTdd97xar0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jul 2022 05:18:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 67D3541684
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 67D3541684
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 05:18:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10419"; a="349562499"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="349562499"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 22:18:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="658511724"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 25 Jul 2022 22:18:42 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oGCxt-00065Q-2D;
 Tue, 26 Jul 2022 05:18:41 +0000
Date: Tue, 26 Jul 2022 13:17:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62df7907.uC66QvlvpW5G8fGW%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658812725; x=1690348725;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=xIThmCVj83cPtHFktAM4qLn1TsZCb5Ee/v+LUwNgI3E=;
 b=d6wTDP7iGFL+Ptt7297LBctbNjWhQy8o3Rl93nH5FD5E6zn2SabtDe8D
 uO1el8yHlNPFeAakbUn1wcafBA48XkJ4/PLmTHm25wktetnp17g882oj5
 T67BaKBZFW4Za3i/31eaugu3Piu8N03Tpbh8kKdmLj8+wYXEumwakbWby
 y64HK1oL1K8RXl8PUEsrJdEtZ5OCI6Ql+Iht1ceGg8Su2qbEHolp89VTu
 CR0EjSx8TsYSlxQkHZH04yP9yYcBSTZu8k+NgMuUdGyrb0AXTw3GtzWho
 KhTbucojlzKdQaSdWBNeOKA6B8S5u1B/r3hGSDDOlHou6pkrhs+pJiVDs
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d6wTDP7i
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 c33e7b762ab52cc6f2312aa67b83d5b9bc95dd2f
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
branch HEAD: c33e7b762ab52cc6f2312aa67b83d5b9bc95dd2f  ice: Fix VSIs unable to share unicast MAC

elapsed time: 725m

configs tested: 57
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig
ia64                             allmodconfig
csky                              allnoconfig
arc                               allnoconfig
alpha                             allnoconfig
riscv                             allnoconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
i386                             allyesconfig
i386                                defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a015
x86_64                        randconfig-a013
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
s390                 randconfig-r044-20220724
riscv                randconfig-r042-20220724
arc                  randconfig-r043-20220724
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a016
x86_64                        randconfig-a012
x86_64                        randconfig-a014
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220724
hexagon              randconfig-r045-20220724

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
