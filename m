Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C096F8020
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 May 2023 11:38:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4EC46616DE;
	Fri,  5 May 2023 09:38:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4EC46616DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683279499;
	bh=kxjRV4sZG3lsDYd67mVABcCwmfjzRzfHz/NGcrwzLQ0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=5igtKmScmlLiYw9oi9vPhGod7ADQmpehgEXJ+EPJo44gZHsEz32pljAyPXeAZchkt
	 sLTJDHeNVeiwIuubGsjzdF4oBIHZbBs7uSOhOGWAfXZ4dZ5yiwZhyYZkAAgnzWGaCE
	 PLIKQcMu2oF1NTYCiC9RZEnvp0l72tUGM0KVFy1BPHKrq38JVrFFIMMjYKC1NLdHCa
	 2ksA2TuJdgj5kxzDtSuBkRtikeI5xV8Bejvc3PJgcTL+1Zz6HC3Wtik5hUc5EZ3UsR
	 CBlB3F/7+ifG1qJdMEVgiRFZZVw5hswcN8F6NLkx7u4RtOWLSZZojSihRAoeK8jUrV
	 ny75ACX/9E8JA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BsiaSrhSNNpx; Fri,  5 May 2023 09:38:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2FD1D616E2;
	Fri,  5 May 2023 09:38:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FD1D616E2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C9A791BF393
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 09:38:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A8E9F616DF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 09:38:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A8E9F616DF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UE55rDAMtUEL for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 May 2023 09:38:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2516616DC
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E2516616DC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 09:38:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="346641568"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="346641568"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 02:37:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="821599999"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="821599999"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by orsmga004.jf.intel.com with ESMTP; 05 May 2023 02:37:55 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  5 May 2023 11:37:45 +0200
Message-Id: <20230505093749.218839-1-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683279491; x=1714815491;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=adXRZVFJEXhxmuGGwBPSoGMtvSsTjwuvRw7FL4d8FcI=;
 b=iNYpc0S7iAiNV5HemE1Cj905EkzJWxkUUGk4LC1Kmc3yJ+HKJ4eTazLe
 a8TJvowaEKJcOsSF33kHTG7/iglafy/vePyklaE1kP/GAL9GVi0QrV3j2
 1rUkgn1qrdldhlC8BYMKsQLhf7Pnbiini9PTu+qxYVNU3e1+dlOj9mgkq
 tQGnTCOMbr6fPqp/ABhJJ58DgAXAvw7HBJRxNsYMAzGf1FPdmKhWVPWCg
 duDlUBKLsv13jEfF8PfORbJMTGVzJRa/rM/MnpLk0IJ9yS+qNdWn12rKx
 ZH5jJggGhC0rhyJi+hJo3HJgM37RkYN5teANz4ya03cBOrqfoiD7pUqj0
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iNYpc0S7
Subject: [Intel-wired-lan] [PATCH iwl-net v5 0/4] iavf: fix reset task
 deadlock
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
Cc: Kamil Maziarz <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Changing the way we handle resets so that the callback operating under the RTNL lock will wait for the reset to
finish, the rtnl_lock sensitive functions in reset flow will schedule the netdev update for later.
This will eliminate circular dependency with the critical lock.

Marcin Szycik (4):
  iavf: Wait for reset in callbacks which trigger it
  iavf: Don't lock rtnl_lock twice in reset
  Revert "iavf: Detach device during reset task"
  Revert "iavf: Do not restart Tx queues after reset task failure"

 drivers/net/ethernet/intel/iavf/iavf.h        |   3 +
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |  31 +++--
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 112 +++++++++++++-----
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   1 +
 4 files changed, 100 insertions(+), 47 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
