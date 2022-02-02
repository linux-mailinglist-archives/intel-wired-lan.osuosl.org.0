Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5174A799C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Feb 2022 21:39:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C0EF402DC;
	Wed,  2 Feb 2022 20:39:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OEzAiAbBEX_u; Wed,  2 Feb 2022 20:39:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 754BE40265;
	Wed,  2 Feb 2022 20:39:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A64661BF346
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 20:39:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A114160745
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 20:39:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DRyobNFrG9NZ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Feb 2022 20:39:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C570D60585
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 20:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1643834339;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=S9TZGGpkY8ClrJIAqOZuOM+ORZH1aSNITt2XNgVBP98=;
 b=VXgoRQihhlYCQL59KD9VLYLj9AcKn0LIEmqlpYcMJCOGo0qAs/kfCYlUw+evOUvh/OSVqe
 sc1wahaqIutotE9/GMPPtJ1/WtKqyivPx9b6ekVuZLYENsJc7hffLYVRegVfPvMfYJtukP
 Dhbh9/44ly79Mw08aHmL08cB2/im9AU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-584-RBE7rWeDNaKCSpXrFXqccQ-1; Wed, 02 Feb 2022 15:38:56 -0500
X-MC-Unique: RBE7rWeDNaKCSpXrFXqccQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C9733835B66;
 Wed,  2 Feb 2022 20:38:54 +0000 (UTC)
Received: from jtoppins.rdu.csb (unknown [10.22.19.99])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C693D56F66;
 Wed,  2 Feb 2022 20:38:53 +0000 (UTC)
From: Jonathan Toppins <jtoppins@redhat.com>
To: netdev@vger.kernel.org
Date: Wed,  2 Feb 2022 15:38:49 -0500
Message-Id: <b25f9e524c404820b310c73012507c8e65a2ef97.1643834329.git.jtoppins@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Subject: [Intel-wired-lan] [PATCH] ice: change "can't set link" message to
 dbg level
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
Cc: linux-kernel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In the case where the link is owned by manageability, the firmware is
not allowed to set the link state, so an error code is returned.
This however is non-fatal and there is nothing the operator can do,
so instead of confusing the operator with messages they can do nothing
about hide this message behind the debug log level.

Signed-off-by: Jonathan Toppins <jtoppins@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 0c187cf04fcf..2c6dad56a48d 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -4117,7 +4117,7 @@ int ice_set_link(struct ice_vsi *vsi, bool ena)
 	 */
 	if (status == -EIO) {
 		if (hw->adminq.sq_last_status == ICE_AQ_RC_EMODE)
-			dev_warn(dev, "can't set link to %s, err %d aq_err %s. not fatal, continuing\n",
+			dev_dbg(dev, "can't set link to %s, err %d aq_err %s. not fatal, continuing\n",
 				 (ena ? "ON" : "OFF"), status,
 				 ice_aq_str(hw->adminq.sq_last_status));
 	} else if (status) {
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
