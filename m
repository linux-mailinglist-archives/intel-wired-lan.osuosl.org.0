Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD2A5878E5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Aug 2022 10:20:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 43A1840500;
	Tue,  2 Aug 2022 08:20:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43A1840500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659428412;
	bh=SZhVcm+ZBfenuCDvaVJ8ObbErtqaU1fJXN6FKjYXEB0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fHL+HA/DDPzzMvMhv/HGL6wZxYw6LMm7cZk9cSgMYdgspFn29c4zYbkTQl6nE2ACK
	 5rIVddJxbmi8JM58IvEUD+MRaCeQrEYzq/C0Ul4pYZXCXiUmnyCSqP9fl1I/rIU70a
	 mg1GGtrxbWjbVWlx8IRJHdxN9f2K1yO0UNKlQTZPWAIKseziffe2rPj8TXy1BVmmQP
	 Q3mBUEMii6B8SU6x0atTAQh2DlMkDfHVlZ1OxRO3nbHi7aVO9MLbtOIRgehkZMOLDy
	 SNjD4G/QDw4jwBIiikEAg1doYVSVh9f5QCa4HkeGx41RIGAmvpd8oYMjHtAnqH3Xwa
	 CA8lAoXCkowrQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o1FGKkmaKZLy; Tue,  2 Aug 2022 08:20:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 30E4C404EE;
	Tue,  2 Aug 2022 08:20:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 30E4C404EE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9A4BF1BF37E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 08:20:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 73BAE404F5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 08:20:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 73BAE404F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zDmtAT5Mrsln for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Aug 2022 08:20:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D16EA404F1
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D16EA404F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 08:20:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="353357583"
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="353357583"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 01:20:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="848124605"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga006.fm.intel.com with ESMTP; 02 Aug 2022 01:20:02 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Aug 2022 10:19:17 +0200
Message-Id: <20220802081917.86798-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659428404; x=1690964404;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0HBZEDQ2aITc42H36j7SRl0T2o1mALAdZkY8i43tbKw=;
 b=QErBD30LDnxy5NPbDhLXhiis9lbIqLg3U4gYIncl5kZKNhq56igm0j57
 G4lrt9DVmFRE9WtzyQ1I2hHeJ/RBSUnp7gQB9ESDb/o6WUO3QSNnNfbvP
 nGP7yzmVc43jdip7LXWzzXnFbkps5UtCu2v+TFwGXGc/YEzEmi5V1/8cc
 Q5lZmvNOjlSi9M7KKZV8FC5J1FTdr2CNxqyc07q/G2wsJwnvC1RqdYQys
 3KRgkqPMLERH1XMMTAGLi+zN26+zM030eS8Td8YJiILhIbDiZZ6DVfLZf
 Kfh3b+8VH4RcaAcrSRTmboSyvDXEDjefsNrVw472CO841EWK7ZIaBiXiL
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QErBD30L
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix to stop tx_timeout
 recovery if GLOBR fails
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

From: Alan Brady <alan.brady@intel.com>

When a tx_timeout fires, the PF attempts to recover by incrementally
resetting.  First we try a PFR, then CORER and finally a GLOBR.  If the
GLOBR fails, then we keep hitting the tx_timeout and incrementing the
recovery level and issuing dmesgs, which is both annoying to the user
and accomplishes nothing.

If the GLOBR fails, then we're pretty much totally hosed, and there's
not much else we can do to recover, so this makes it such that we just
kill the VSI and stop hitting the tx_timeout in such a case.

Fixes: 41c445ff0f48 ("i40e: main driver core")
Signed-off-by: Alan Brady <alan.brady@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v2: Changed the author
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 685556e968f2..71a8e1698ed4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -384,7 +384,9 @@ static void i40e_tx_timeout(struct net_device *netdev, unsigned int txqueue)
 		set_bit(__I40E_GLOBAL_RESET_REQUESTED, pf->state);
 		break;
 	default:
-		netdev_err(netdev, "tx_timeout recovery unsuccessful\n");
+		netdev_err(netdev, "tx_timeout recovery unsuccessful, device is in non-recoverable state.\n");
+		set_bit(__I40E_DOWN_REQUESTED, pf->state);
+		set_bit(__I40E_VSI_DOWN_REQUESTED, vsi->state);
 		break;
 	}
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
