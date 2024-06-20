Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B167290FAC4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2024 03:06:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E66D24160F;
	Thu, 20 Jun 2024 01:06:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id thKzaNjoAdfX; Thu, 20 Jun 2024 01:06:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 70A1443356
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718845567;
	bh=xgAfbE8LwdSd7jwi+4x+QZ/Anv0ZVaXH/HCcJ9pzKIs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=8QfoyA+bW/s+t76/u0VRbNFQpXMvZ9mC0qMQVqFOe3I0NPgffUIgrA4TxlUT/dfCd
	 5as4LkauZ2W5bDF+J7warpoQbgVcfZNQHqpJfl5M+svn/6VcU97eRZVJSUSkne6p3o
	 ce7FArchVEstOX2uQv68hiOlGN1H/Znj4L++EEnR7AXCj3u2pY6sAsOvdMwQiruklM
	 s10/GXs7cjhkU0VcK5pd8IrhYNm+G4lNiqsgVCfS58TBuh5lGC/Y801BMqcqasUzgN
	 mRwhyEPWBrLnw1A2Eamrv84p2GImnI0HTT5A4lzgF/43tKBQ53Ov3s4uYiKGO0oaV4
	 aB62nUlItFBzg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 70A1443356;
	Thu, 20 Jun 2024 01:06:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1F7C51BF3E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 01:06:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 156FB42C19
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 01:06:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SwrO385jjPfS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2024 01:06:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 78D7D42C16
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78D7D42C16
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 78D7D42C16
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 01:06:03 +0000 (UTC)
X-CSE-ConnectionGUID: bvtIdmE/QTSa1qUkCaBcAA==
X-CSE-MsgGUID: gSbyrC41TGqR0Cjcb8mHGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="15566214"
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; d="scan'208";a="15566214"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 18:06:03 -0700
X-CSE-ConnectionGUID: nLVVwIpfQpSiGBZBnFRjUw==
X-CSE-MsgGUID: X3TWZ/cQT9i9JyWwTxPjpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; d="scan'208";a="46528506"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 19 Jun 2024 18:06:02 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sK6FT-0007AE-3A
 for intel-wired-lan@lists.osuosl.org; Thu, 20 Jun 2024 01:05:59 +0000
Date: Thu, 20 Jun 2024 09:05:35 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202406200933.UTo6qmrW-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718845565; x=1750381565;
 h=date:from:to:subject:message-id;
 bh=FAoJjFZnuogYghJIPZaSLQapzuTc8s0u9Vv5af7dDh0=;
 b=gGZ8eJQcCvTvPm1G51rFT02IfMCpSU6taZbaSkludnqQQnZkQ6VMXwRb
 NhyNRC7wY9k9P4KhMqvswwKLL/uHCKXz/m46oL9hH7Uaso/rZAvQL0lWu
 IkFQ/LkktfLxkJTG9OwA505TVE2rfdNPmIAK5Dc7SW5/Eb6A4QRsz3xM4
 MoyYS3IgQCKaSPlqH54Yat3WV656b8Ag40oEIr2mw+HM0tYF8/ezEQWQM
 s8J/J9+RZFaa/L9meRYdkURQ39TUE4lM/kxgIy5zi/cNbheE+SL5Adrun
 lIXFKKi4IOBEo59uBX6zcJ0/q5lhFMyaBj+DmjqWL3eTweUra+uPn3EM9
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gGZ8eJQc
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD REGRESSION
 0edf6b789635c79b4c2db5d6bab907d4cb26823e
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 0edf6b789635c79b4c2db5d6bab907d4cb26823e  ice: Distinguish driver reset and removal for AQ shutdown

Error/Warning ids grouped by kconfigs:

clang_recent_errors
`-- x86_64-buildonly-randconfig-001-20240620
    `-- drivers-net-ethernet-intel-ice-ice_virtchnl.c:error:call-to-undeclared-function-ice_ptp_read_src_clk_reg-ISO-C99-and-later-do-not-support-implicit-function-declarations

elapsed time: 1659m

configs tested: 39
configs skipped: 0

tested configs:
i386         buildonly-randconfig-001-20240620   gcc-13
i386         buildonly-randconfig-002-20240620   clang-18
i386         buildonly-randconfig-003-20240620   gcc-13
i386         buildonly-randconfig-004-20240620   gcc-10
i386         buildonly-randconfig-005-20240620   gcc-13
i386         buildonly-randconfig-006-20240620   clang-18
i386                  randconfig-001-20240620   clang-18
i386                  randconfig-002-20240620   clang-18
i386                  randconfig-003-20240620   gcc-13
i386                  randconfig-004-20240620   gcc-10
i386                  randconfig-005-20240620   clang-18
i386                  randconfig-006-20240620   gcc-10
i386                  randconfig-011-20240620   gcc-7
i386                  randconfig-012-20240620   clang-18
i386                  randconfig-013-20240620   clang-18
i386                  randconfig-014-20240620   gcc-7
i386                  randconfig-015-20240620   clang-18
i386                  randconfig-016-20240620   clang-18
x86_64       buildonly-randconfig-001-20240620   clang-18
x86_64       buildonly-randconfig-002-20240620   gcc-10
x86_64       buildonly-randconfig-003-20240620   clang-18
x86_64       buildonly-randconfig-004-20240620   gcc-13
x86_64       buildonly-randconfig-005-20240620   clang-18
x86_64       buildonly-randconfig-006-20240620   gcc-13
x86_64                randconfig-001-20240620   clang-18
x86_64                randconfig-002-20240620   gcc-13
x86_64                randconfig-003-20240620   clang-18
x86_64                randconfig-004-20240620   clang-18
x86_64                randconfig-005-20240620   gcc-11
x86_64                randconfig-006-20240620   clang-18
x86_64                randconfig-011-20240620   gcc-13
x86_64                randconfig-012-20240620   gcc-13
x86_64                randconfig-013-20240620   gcc-13
x86_64                randconfig-014-20240620   gcc-13
x86_64                randconfig-015-20240620   clang-18
x86_64                randconfig-016-20240620   clang-18
x86_64                randconfig-071-20240620   gcc-13
x86_64                randconfig-072-20240620   gcc-13
x86_64                randconfig-073-20240620   gcc-13

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
