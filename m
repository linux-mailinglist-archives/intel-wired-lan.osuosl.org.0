Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 877DC62B55F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Nov 2022 09:39:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0F22D40B23;
	Wed, 16 Nov 2022 08:39:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F22D40B23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668587946;
	bh=kY3ex0WYmmWcMIZtDE2bton8U7vzNBj0PzE0mCS7lgo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JhKmx7JBDUA14nTLaSAM1/li1TAcmJNe4j4oIbg2tDCg+PLl5AZ9V7nAc4/1Q3SWj
	 M+LFXJvrVlzbQVUg5OS/9PwXmEcXQROFQ0ZWQcnolrPmLq5NwBoeuO8McYqtTWBjom
	 GdTsw6hByWLZfAzhCeU5KukbfQ9BU0LJ4N2E9xTUDYv8QksBop71T8h21q/wQSJp5T
	 YYlZWzT78QGeUHbti7PQWF3conebFf5uMyeYBcjTUv1dI7rfvFEhPyqngbBA1GYqJW
	 1hKgeiSrOprYNvPXwTAszZyhElArcqcQsAqzBqO9BEsjDwLBK6NyMswrIdUHMqVYx5
	 /zZbPW8lOUEEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eek0c_vP7Qg4; Wed, 16 Nov 2022 08:39:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 110C740272;
	Wed, 16 Nov 2022 08:39:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 110C740272
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 78BBE1BF36A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 08:38:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 473BE80C58
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 08:38:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 473BE80C58
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ExCR6r4ezqWd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Nov 2022 08:38:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4230280C36
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4230280C36
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 08:38:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="300016439"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="300016439"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 00:38:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="744962902"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="744962902"
Received: from lkp-server01.sh.intel.com (HELO ebd99836cbe0) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 16 Nov 2022 00:38:56 -0800
Received: from kbuild by ebd99836cbe0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ovDwd-0002Av-1M;
 Wed, 16 Nov 2022 08:38:55 +0000
Date: Wed, 16 Nov 2022 16:38:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6374a168.QREhW3uLeExcGV05%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668587938; x=1700123938;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=6+5SFuLH6LqVklz4VZThIy2s2vJFK8bBQNN0/eUDpro=;
 b=b+I4l2Hu87McOdyigTUJ/PWYa36pKunezvTZ0JOeL4FcBuvRFgpTchqC
 80VjjsPswgnEBEVRGSXVwDXlSzdhLMyWC/BzRMc5cTl6aUld0rcYvaB7x
 hUySmuY07SZWpIyVW55fh4MscoZ7t5B3mgdmUNcPeAjJyY751uk43BQ1f
 33ptC4QiGiud+410h9AFZ4g06bfSfRAG2MHgqx2xEh0l/D3/QZA51yePG
 guMA+h/5rx7TwAUZw0JMGbav/UK5PP/E8h9RfTaWQnbBIkV35SsBwDc3E
 bYWmdNWq//LpCF53fIbxKvtJK6qr7xIxXdaKjAld+6pRuK1miZtTyBbQ1
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b+I4l2Hu
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 da7f4acd91388ad2757831ad019ed0ac0d1eaa60
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
branch HEAD: da7f4acd91388ad2757831ad019ed0ac0d1eaa60  ice: Correctly handle aux device when num channels change

elapsed time: 781m

configs tested: 59
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
alpha                            allyesconfig
x86_64                              defconfig
m68k                             allmodconfig
s390                                defconfig
arc                              allyesconfig
m68k                             allyesconfig
x86_64                           allyesconfig
s390                             allyesconfig
x86_64                               rhel-8.3
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
sh                               allmodconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
ia64                             allmodconfig
arc                  randconfig-r043-20221115
riscv                randconfig-r042-20221115
x86_64                        randconfig-a002
s390                 randconfig-r044-20221115
x86_64                        randconfig-a004
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
i386                                defconfig
arm                                 defconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arm                              allyesconfig
arm64                            allyesconfig
i386                             allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                            allnoconfig

clang tested configs:
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a012
hexagon              randconfig-r041-20221115
x86_64                        randconfig-a005
x86_64                        randconfig-a001
hexagon              randconfig-r045-20221115
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
