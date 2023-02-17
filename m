Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF0669AAFE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Feb 2023 13:06:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 68EF741B48;
	Fri, 17 Feb 2023 12:06:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68EF741B48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676635562;
	bh=5NlSVLkOovXGB9TFnEGd2I15S8BdB7ONz1xuAcNwERA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=iZ6KYx3eHbhrmnt2tmoq4xxSnsVzbomxPa0QCe/AX3rE5bZQSb2BG7NOtWTm+HLNb
	 BdxGjHiz1aKc1Id4aA7oIDu432se9NOn345BuDY0nz93r7CEXnEW31sBIhqXpypQap
	 Iyp1ZdwIUa2NOd8+fP4DFnwvBZoxAGD+TBahQmsKsquLRdV8jFOoSDAe9b7pQgADpT
	 +5+DPM4WPporsRvj1DwISn6ydhp5znWwlMUcv3brHMQ1qyO2ZE1tyNWUv8ZnGmx2do
	 DDROWCEXdCzyOfm37cOTxF4dhYw//IAPE7IbDg+IMldRBCQ+u1nqHBv8Q3Q8gWDodz
	 8evFgPkH+SrOg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PMhqkIUeVMJJ; Fri, 17 Feb 2023 12:06:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2082E41B30;
	Fri, 17 Feb 2023 12:06:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2082E41B30
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6A84F1BF37A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 12:05:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 423836177D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 12:05:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 423836177D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MP4ma1JLnU3V for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Feb 2023 12:05:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 13CFC60E1A
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 13CFC60E1A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 12:05:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="418192934"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="418192934"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 04:05:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="794385087"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="794385087"
Received: from kkolacin-desk1.elements.local ([10.102.102.152])
 by orsmga004.jf.intel.com with ESMTP; 17 Feb 2023 04:05:52 -0800
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 17 Feb 2023 13:05:41 +0100
Message-Id: <20230217120541.16745-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676635554; x=1708171554;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lwpVw0aj0ofEEqmKZ1SwOnpjC8V2lyIl7z9ufsvcDfc=;
 b=JKALjyt5YZB3WTpWTrmz7a69XGeoBrppVKl/poJFNA5+8mP8fhn/6z/M
 QVJdIrhlwaycCsDwtgK34mqyzNQNtHXpZFhVRSKs0bZIB/N1fFxu8Kkuj
 EX1BgLOm2sgU/DF5u+fgWQH7LzeQ8lTBfGRuiuM0NNMy/DaWByd547atM
 beSTn5XxQud3KiPq8NvN7TzwAWmSYHhcs6sSR7v3ZSK98EikJozcVpoWy
 MV0qtTj7XN5k9R7JyxYW1bQ6ZxTKmdOSs8N2UGYdmH7wYOQFASBt+Uj2J
 g7GUk7BqC6fwOI9DxV7Hf/ZtnfSTZwDnDNMNknoXNgY6MeVHtLPvL2f8z
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JKALjyt5
Subject: [Intel-wired-lan] [PATCH v3 net] ice: Write all GNSS buffers
 instead of first one
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When user writes multiple messages in a short period of time, the driver
writes only the first one and buffers others in a linked list.

Fix this behavior to write all pending buffers instead of only the first
one.

To reproduce this issue, open the GNSS device with cat, send a few
messages to the device, e.g. multiple commands using echo. The issue
manifests itself as response to only first message. Then, after issuing
a single or multiple commands, user can see that response from the
device was not for recent ones but for the next single buffered one from
the first batch.

Fixes: d6b98c8d242a ("ice: add write functionality for GNSS TTY")
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V2 -> V3: Switched to net-queue tree instead of next-queue.
V1 -> V2: Added reproduction steps in the commit message.

 drivers/net/ethernet/intel/ice/ice_gnss.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index 43e199b5b513..02533014f24a 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -82,7 +82,7 @@ static void ice_gnss_write_pending(struct kthread_work *work)
 						write_work);
 	struct ice_pf *pf = gnss->back;
 
-	if (!list_empty(&gnss->queue)) {
+	while (!list_empty(&gnss->queue)) {
 		struct gnss_write_buf *write_buf = NULL;
 		unsigned int bytes;
 
-- 
2.37.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
