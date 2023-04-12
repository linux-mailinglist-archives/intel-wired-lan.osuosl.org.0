Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3296DED6F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 10:20:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF543614E7;
	Wed, 12 Apr 2023 08:20:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF543614E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681287615;
	bh=BOZaQD13Xjj3QQb6bLWTF9UAX8pHRl20ClKCwcREtP0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xzTFrsL1uEnWP2DmAabOuxtFTwr9p5urBqHBVZcERixGicNaC7aqPY6YiAYRxEddt
	 co0jjtKhSB37stK4kO4/8IHSFSTa4zL/UkQ9Y8iwikc71kmB2wN4imwOK/bWlFcshV
	 twhJb/ndC8YMQkKDqqTThM+XsXs+oXPdCx2YjAsfztktRErVukSGWwE3QurNP2mwTm
	 QV1M5CkTogRuPtjazZoBbsf2U1MkVU6dN9ioR2LxglSJQmQt1xrKe76J5c4nOb/+86
	 HPjI7J/6vzXI6Hpi+sE8id0spF/ZHh5CHFdyEKVyqtk5Bi4NDADaSiKB/PjYfVbzwx
	 guLVGtJu6XP7A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wYBAmlahl8eB; Wed, 12 Apr 2023 08:20:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A70366140E;
	Wed, 12 Apr 2023 08:20:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A70366140E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD4C81BF47D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 08:20:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 89AE7614E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 08:20:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89AE7614E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yixe4oeyQ21s for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 08:20:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B65A0606EB
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B65A0606EB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 08:20:00 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-367-BA94o5TDM0eoeJ4N_aoxmg-1; Wed, 12 Apr 2023 04:19:55 -0400
X-MC-Unique: BA94o5TDM0eoeJ4N_aoxmg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AB7121C0754E;
 Wed, 12 Apr 2023 08:19:54 +0000 (UTC)
Received: from toolbox.infra.bos2.lab (ovpn-192-9.brq.redhat.com [10.40.192.9])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D49E01415117;
 Wed, 12 Apr 2023 08:19:52 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 12 Apr 2023 10:19:26 +0200
Message-Id: <20230412081929.173220-4-mschmidt@redhat.com>
In-Reply-To: <20230412081929.173220-1-mschmidt@redhat.com>
References: <20230412081929.173220-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681287599;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hrDM6RNDF8iazisvGqbzUFWdh4RCgV/FJAY9/jrsClg=;
 b=C7bL8w8T5wl0+qDArvOx9r3oiRDKnTsNEv6VtKK3ndri6Kaq5hONY30vNwJAJGklGTnV/7
 Dm+EgEKuPwl+XCEOtS/u+iPobvB263EN1MTj2OFxjltW7jzmcV0fBvtjenIPFmQDuaPFQv
 SPsrrAhS/0xUeUHIMTKH7B4/nTtGJBE=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=C7bL8w8T
Subject: [Intel-wired-lan] [PATCH net-next v2 3/6] ice: remove
 ice_ctl_q_info::sq_cmd_timeout
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

sq_cmd_timeout is initialized to ICE_CTL_Q_SQ_CMD_TIMEOUT and never
changed, so just use the constant directly.

Suggested-by: Simon Horman <simon.horman@corigine.com>
Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c   | 2 +-
 drivers/net/ethernet/intel/ice/ice_controlq.c | 5 +----
 drivers/net/ethernet/intel/ice/ice_controlq.h | 1 -
 3 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index c2fda4fa4188..f4c256563248 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2000,7 +2000,7 @@ void ice_release_res(struct ice_hw *hw, enum ice_aq_res_ids res)
 	/* there are some rare cases when trying to release the resource
 	 * results in an admin queue timeout, so handle them correctly
 	 */
-	while ((status == -EIO) && (total_delay < hw->adminq.sq_cmd_timeout)) {
+	while ((status == -EIO) && (total_delay < ICE_CTL_Q_SQ_CMD_TIMEOUT)) {
 		mdelay(1);
 		status = ice_aq_release_res(hw, res, 0, NULL);
 		total_delay++;
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index 6bcfee295991..c8fb10106ec3 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -637,9 +637,6 @@ static int ice_init_ctrlq(struct ice_hw *hw, enum ice_ctl_q q_type)
 		return -EIO;
 	}
 
-	/* setup SQ command write back timeout */
-	cq->sq_cmd_timeout = ICE_CTL_Q_SQ_CMD_TIMEOUT;
-
 	/* allocate the ATQ */
 	ret_code = ice_init_sq(hw, cq);
 	if (ret_code)
@@ -1066,7 +1063,7 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 
 		udelay(ICE_CTL_Q_SQ_CMD_USEC);
 		total_delay++;
-	} while (total_delay < cq->sq_cmd_timeout);
+	} while (total_delay < ICE_CTL_Q_SQ_CMD_TIMEOUT);
 
 	/* if ready, copy the desc back to temp */
 	if (ice_sq_done(hw, cq)) {
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.h b/drivers/net/ethernet/intel/ice/ice_controlq.h
index c07e9cc9fc6e..e790b2f4e437 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.h
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.h
@@ -87,7 +87,6 @@ struct ice_ctl_q_info {
 	enum ice_ctl_q qtype;
 	struct ice_ctl_q_ring rq;	/* receive queue */
 	struct ice_ctl_q_ring sq;	/* send queue */
-	u32 sq_cmd_timeout;		/* send queue cmd write back timeout */
 	u16 num_rq_entries;		/* receive queue depth */
 	u16 num_sq_entries;		/* send queue depth */
 	u16 rq_buf_size;		/* receive queue buffer size */
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
