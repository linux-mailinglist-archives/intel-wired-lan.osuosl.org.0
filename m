Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8094C8E34
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Mar 2022 15:49:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EABCB404C3;
	Tue,  1 Mar 2022 14:49:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yAH8lE_7mLZf; Tue,  1 Mar 2022 14:49:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B97A540122;
	Tue,  1 Mar 2022 14:49:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 898A21BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 14:48:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 734BA402A2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 14:48:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Q4Mj-JDMtSC for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Mar 2022 14:48:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4C7214029A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 14:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646146137;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=ET15GgI57duVbTvcVtFigSD+iRUjJs12PG+P2LL5kB0=;
 b=ZcWfRAUzagOn/p3YTbiDy36cmVzURh8oTvneVhD0rOzakFNtWtwEabkXSCRayqpZTKR6nz
 rM2M04va89+SvOjnBHIBGZ5OtfGP4axSLcG9QoDhWAH0GgRvQ2/jl7a9v6P1ap0dFKsRq3
 FNHhYD06uW+OtyPWGTCkxefscjuLZVU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-281-z7946cAUOFeUJBROxtD_Rw-1; Tue, 01 Mar 2022 09:48:53 -0500
X-MC-Unique: z7946cAUOFeUJBROxtD_Rw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1EE821854E21;
 Tue,  1 Mar 2022 14:48:52 +0000 (UTC)
Received: from jtoppins.rdu.csb (unknown [10.22.34.174])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2F90D838BC;
 Tue,  1 Mar 2022 14:48:49 +0000 (UTC)
From: Jonathan Toppins <jtoppins@redhat.com>
To: intel-wired-lan@lists.osuosl.org,
	lihong.yang@intel.com
Date: Tue,  1 Mar 2022 09:48:45 -0500
Message-Id: <370e9909d8e00d4a1c8abcd405c321fc41646478.1646146125.git.jtoppins@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Subject: [Intel-wired-lan] [PATCH] ice: use msleep instead of mdelay
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
Cc: Jocelyn Falempe <jfalempe@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use msleep for long delays instead of spinning in the driver.

Suggested-by: Jocelyn Falempe <jfalempe@redhat.com>
Signed-off-by: Jonathan Toppins <jtoppins@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 0e4434e3c290..75860259c6d7 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1107,7 +1107,7 @@ int ice_check_reset(struct ice_hw *hw)
 			GLGEN_RSTCTL_GRSTDEL_S) + 10;
 
 	for (cnt = 0; cnt < grst_timeout; cnt++) {
-		mdelay(100);
+		msleep(100);
 		reg = rd32(hw, GLGEN_RSTAT);
 		if (!(reg & GLGEN_RSTAT_DEVSTATE_M))
 			break;
@@ -3235,7 +3235,7 @@ ice_set_fc(struct ice_port_info *pi, u8 *aq_failures, bool ena_auto_link_update)
 			if (!status)
 				break;
 
-			mdelay(100);
+			msleep(100);
 		}
 
 		if (status)
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
