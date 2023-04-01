Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B700D6D32CE
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Apr 2023 19:27:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E8EB418B7;
	Sat,  1 Apr 2023 17:27:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E8EB418B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680370063;
	bh=Zu507rj2ovyC5qWn9WfaobHePcfYYC5JfrTH17yEoMU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DnWb72Acbxyx1mi9TSKgNFjfTsfCJQkPVNACmldk4SeycT2E/D5juhTzx/Pr7jHGP
	 t6zFrDiRZ1cWQ/vDD1q/csGjXgK9A1D0Rp3/TxleZKXDWkyr2K6tEufTO6qzUK+lPf
	 uzoLM5R9Nxy3J3zvcazcu9dOJna4jEijoEqhii1Wp5Y2vlRLTOvgRYp1xPbSxZ6elD
	 f2nBVmX0F+K/imUuAhnJgQCIbaJOtb11Un7EFQSRoQkH/37oHAoY2oIiVcODDiT+Lj
	 FQ1RfaSXTSBXUn57E/W2Rpmfou4zMcLvcM+I5UKvIuxQNRzy6SiWP7aqn1Ep3SsN4H
	 kaRE+pFb+JdHg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CPH3VvWjP0fI; Sat,  1 Apr 2023 17:27:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0ECE141840;
	Sat,  1 Apr 2023 17:27:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0ECE141840
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CD9A21BF318
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 17:27:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B0DC982342
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 17:27:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0DC982342
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BW4WU-XmqNUx for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Apr 2023 17:27:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6076B8233C
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6076B8233C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 17:27:35 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-100-CXvKmh8KONOQ43oj7pfbaA-1; Sat, 01 Apr 2023 13:27:29 -0400
X-MC-Unique: CXvKmh8KONOQ43oj7pfbaA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 89C661C0432F;
 Sat,  1 Apr 2023 17:27:28 +0000 (UTC)
Received: from toolbox.redhat.com (ovpn-192-6.brq.redhat.com [10.40.192.6])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 804BC40C83A9;
 Sat,  1 Apr 2023 17:27:26 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat,  1 Apr 2023 19:26:58 +0200
Message-Id: <20230401172659.38508-4-mschmidt@redhat.com>
In-Reply-To: <20230401172659.38508-1-mschmidt@redhat.com>
References: <20230401172659.38508-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680370054;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wz6xzGykGjupfPcoHnVNwCZVW1yafvvkAMwb1MFDQJY=;
 b=H+v0qwxfwoARZsBSsflagt62y6FeTVOuylEFpioE7Gj9X0OKOvO3gkpE9VnVGjRD+tSIcW
 8bbg6SGp2yonr1choYCHs6JHa4K20FDAU72LTaX2yacYySOg6jGFYqwh7FjfzvUJhuxJx/
 PGMmLCcFx5vgFUOw4bYXnRFgzgTk3cw=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=H+v0qwxf
Subject: [Intel-wired-lan] [PATCH net-next 3/4] ice: remove unused buffer
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
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
index 14cffe49fa8c..539b756f227c 100644
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
