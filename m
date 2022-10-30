Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 169E961275F
	for <lists+intel-wired-lan@lfdr.de>; Sun, 30 Oct 2022 05:55:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CB4181344;
	Sun, 30 Oct 2022 04:55:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1CB4181344
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667105744;
	bh=HjTDwqDj/POw6jf0Hpjq2ByoPrGP2DYNimArIqT7Qb4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=odZBVUWk8vkTbtY60HZb9Aiu5a6Caibs4d+mthKoktHBtFQgu6jOy7m5siAUt2ytD
	 +j9DDbY1UJp8mn7uCifb8qwa2gSC9uOxISnmzHizPiDMWiHNf8QkY9NBjwbn/f9gfW
	 18FASmkTCzyW+KXCodRAjJLYiJqDAlPa/JdzC+W+t6XRriEP+tlnWLXGk73QD1PocE
	 LnICvbHPVUEdkGqV/35NF04B9Ix9w1CMXziJxFcgDwcc4VnGZD61jgR6mgvAS3ns3i
	 k7cDHxtTdqwzr7zSUD2F92J9TESEVEriEcXH0BT1dxna7Jt8uRDFZuMnBkMxSCRLiS
	 k1VCHKp4GB30Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iT8SeqK3FhOu; Sun, 30 Oct 2022 04:55:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 16F9181331;
	Sun, 30 Oct 2022 04:55:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16F9181331
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B97CD1BF36A
 for <intel-wired-lan@osuosl.org>; Sun, 30 Oct 2022 04:55:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8E0C5404F1
 for <intel-wired-lan@osuosl.org>; Sun, 30 Oct 2022 04:55:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E0C5404F1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7rwaGS7eM157 for <intel-wired-lan@osuosl.org>;
 Sun, 30 Oct 2022 04:55:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CB27401FB
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9CB27401FB
 for <intel-wired-lan@osuosl.org>; Sun, 30 Oct 2022 04:55:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10515"; a="335367891"
X-IronPort-AV: E=Sophos;i="5.95,225,1661842800"; d="scan'208";a="335367891"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2022 21:55:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10515"; a="635707881"
X-IronPort-AV: E=Sophos;i="5.95,225,1661842800"; d="scan'208";a="635707881"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga007.fm.intel.com with ESMTP; 29 Oct 2022 21:55:10 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Sun, 30 Oct 2022 12:53:19 +0800
Message-Id: <20221030045324.25207-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667105736; x=1698641736;
 h=from:to:cc:subject:date:message-id;
 bh=UvWRl6N32ZS0qI1vUrpNPE27elh0bqjKkLNyI4bXixc=;
 b=Bb3LpNObwoiTp0v0AzGR9GAk8EgzgmjBVZKq/NQFZimBHq81XVwGe/L7
 sBzm1mAiiy9gAw0vm+pigL1/3pNbyBhln+hwbYQqKjHio5HNELvGtP6ji
 LWF1+7YGTGAodvQfJGHjBiMyLziytN7epSKhyHWcBKcpn5poJWXfVcvk+
 LBKMl1+ac2ALiSYZx6sPddL8R90vgtnGh7LI6AO41UWnn44Q0nCzWvDOU
 vn2N6BwFfagjxnJqOsg2SPQHMTMYxiLGo+0Kkn1OLhJJ8KTBP7F0dcF/M
 lJs3Qrnkgdu0Sqa9ezZuR6SvoE12GFGNAcOWeIJGzTs7Fv1iE7aGW60ch
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Bb3LpNOb
Subject: [Intel-wired-lan] [PATCH 0/5] igc: TSN Qbv Improvement for I226
 Stepping
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
Cc: muhammad.husaini.zulkifli@intel.com, tee.min.tan@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello!

This patch series improve the Time-Sensitive Networking(TSN) Qbv Scheduling
features. Since the previous I225 stepping had some hardware
restrictions, this new stepping enables us to further enhance the driver
code and offer more Qbv capabilities.

An overview of each patch series is given below:

Patch 1: Allow configuring the basetime with a value of zero.
Patch 2: To enable basetime scheduling in the future, remove the existing
restriction for i226 stepping while maintain the restriction for i225.
Patch 3: Handle the Qbv end time correctly if cycle time parameter is
configured during the Gate Control List. Applicable for both i225 and i226.
Patch 4: Remove the restriction which require a controller reset when
setting the basetime register for new i226 steps and enable the second
GCL configuration.
Patch 5: Setting the Qbv start time and end time properly if the particular
gate is close in the Gate Control List due to hardware bug.

Test Procedure:
Talker: udp_tai application is being used to generate the Qbv packet.
Receiver : Capture using tcpdump to analyze the packet using wireshark.

Muhammad Husaini Zulkifli (1):
  igc: remove I226 Qbv BaseTime restriction

Tan Tee Min (4):
  igc: allow BaseTime 0 enrollment for Qbv
  igc: recalculate Qbv end_time by considering cycle time
  igc: enable Qbv configuration for 2nd GCL
  igc: Set Qbv start_time and end_time to end_time if not being
    configured in GCL

 drivers/net/ethernet/intel/igc/igc.h         |  1 +
 drivers/net/ethernet/intel/igc/igc_base.c    | 29 +++++++++++
 drivers/net/ethernet/intel/igc/igc_base.h    |  2 +
 drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
 drivers/net/ethernet/intel/igc/igc_main.c    | 45 +++++++++++++---
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 55 +++++++++++++-------
 drivers/net/ethernet/intel/igc/igc_tsn.h     |  2 +-
 7 files changed, 110 insertions(+), 25 deletions(-)

--
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
