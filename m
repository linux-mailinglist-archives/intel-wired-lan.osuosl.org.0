Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0277D6DED71
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 10:20:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 182CB614F4;
	Wed, 12 Apr 2023 08:20:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 182CB614F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681287625;
	bh=h2yh+1Y/hZTeCW06VHAHI2nFcNZvUa0dUIe8bBdkQio=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yzxbWhjI3B1Ahu1XGD7reNOYDv2h7QRhERalnmFtXq6cIugZm1pFNxaTlEieybsU9
	 rKXf28MfcQPOTqZpDvsYJBsWdM+TDzDsFAecwsXLHwTOfaArbzpuJy32VcBQG4Wv11
	 +Z7IhiTksKL342Qubz5gqH5FhRK9al3Kf/QQRYPKYx7vLc2q9eryFXT9hE2vpOoMvG
	 ELlopeMQ8oZY+yMWoFtkKBKJD3VQcfaQ0OSG4dYs7xOVYkpMFqzYeYktINjKZ0h7f2
	 JboCpyixhvN2i5ukjGFn7tJVyaAO698vbVglPpxVTYJ6/7HUwAsXQmLfJdTcQ9dvaO
	 Mk7dpL3pvSxhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tzqxf9lZ4JsX; Wed, 12 Apr 2023 08:20:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10DD86140E;
	Wed, 12 Apr 2023 08:20:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10DD86140E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 234191BF47D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 08:20:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA86760640
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 08:20:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA86760640
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J6r5Itl2P9vi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 08:20:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F7196140E
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9F7196140E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 08:20:04 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-248-BAp3Sv8PMkm3mdnslH5uyw-1; Wed, 12 Apr 2023 04:20:00 -0400
X-MC-Unique: BAp3Sv8PMkm3mdnslH5uyw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 75BCD8996F3;
 Wed, 12 Apr 2023 08:19:59 +0000 (UTC)
Received: from toolbox.infra.bos2.lab (ovpn-192-9.brq.redhat.com [10.40.192.9])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 805F91415117;
 Wed, 12 Apr 2023 08:19:57 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 12 Apr 2023 10:19:28 +0200
Message-Id: <20230412081929.173220-6-mschmidt@redhat.com>
In-Reply-To: <20230412081929.173220-1-mschmidt@redhat.com>
References: <20230412081929.173220-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681287603;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vgM1/2w5Awfz7kmbjPCU33iMsxdh570loH34gDEC38E=;
 b=NB3v00gpL6X+KVlsBxzPoeG7zKNrKn+4ZgekErIHq+s2JJrO5zZW6hRvI8MvsKkBwPYSgE
 MVOOCc3eff/XQ/Q+al/Mz/S3F8S9F8hFDFThGtEkp6P2qLSx7y0RXvJ6V2mTUxeVvY04ep
 Wp7hDbjOJzbtGjAtG6bpsdDykTGC2Xw=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=NB3v00gp
Subject: [Intel-wired-lan] [PATCH net-next v2 5/6] ice: remove unused buffer
 copy code in ice_sq_send_cmd_retry()
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <simon.horman@corigine.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The 'buf_cpy'-related code in ice_sq_send_cmd_retry() looks broken.
'buf' is nowhere copied into 'buf_cpy'.

The reason this does not cause problems is that all commands for which
'is_cmd_for_retry' is true go with a NULL buf.

Let's remove 'buf_cpy'. Add a WARN_ON in case the assumption no longer
holds in the future.

Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 3638598d732b..c6200564304e 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1619,7 +1619,6 @@ ice_sq_send_cmd_retry(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 {
 	struct ice_aq_desc desc_cpy;
 	bool is_cmd_for_retry;
-	u8 *buf_cpy = NULL;
 	u8 idx = 0;
 	u16 opcode;
 	int status;
@@ -1629,11 +1628,8 @@ ice_sq_send_cmd_retry(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	memset(&desc_cpy, 0, sizeof(desc_cpy));
 
 	if (is_cmd_for_retry) {
-		if (buf) {
-			buf_cpy = kzalloc(buf_size, GFP_KERNEL);
-			if (!buf_cpy)
-				return -ENOMEM;
-		}
+		/* All retryable cmds are direct, without buf. */
+		WARN_ON(buf);
 
 		memcpy(&desc_cpy, desc, sizeof(desc_cpy));
 	}
@@ -1645,17 +1641,12 @@ ice_sq_send_cmd_retry(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 		    hw->adminq.sq_last_status != ICE_AQ_RC_EBUSY)
 			break;
 
-		if (buf_cpy)
-			memcpy(buf, buf_cpy, buf_size);
-
 		memcpy(desc, &desc_cpy, sizeof(desc_cpy));
 
 		mdelay(ICE_SQ_SEND_DELAY_TIME_MS);
 
 	} while (++idx < ICE_SQ_SEND_MAX_EXECUTE);
 
-	kfree(buf_cpy);
-
 	return status;
 }
 
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
