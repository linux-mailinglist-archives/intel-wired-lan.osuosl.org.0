Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E494A8A84
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 18:45:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D21083E11;
	Thu,  3 Feb 2022 17:45:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dtKkrgf0qC5I; Thu,  3 Feb 2022 17:45:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 639C9833CE;
	Thu,  3 Feb 2022 17:45:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 98AAE1BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 17:45:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9248740424
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 17:45:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kGU2HiTB_AoG for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 17:45:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BE2E740241
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 17:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1643910325;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=y0HNmgxmLxNYUa/mu5DTm3vHFzk7CSUGWJbL+LbLOPA=;
 b=Lxfz6TiGHoo96iPiwdGU/ZgpSofNniwvS5MP6Aa4H/U8yefnKYzqXYsZaj2QH46CzxmIaT
 ACa9R2MajOawOULpYV2wVJ7dZrYQPtDk9Fc81koCl4JbisQgmIMfCn7nyh80ZuDlkb0O6Z
 tIK490WyEKGoMNfDOcRXVH+OZKHray8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-107-R4gKHM00NCun__whOSiC9A-1; Thu, 03 Feb 2022 12:45:23 -0500
X-MC-Unique: R4gKHM00NCun__whOSiC9A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7F1671091DA1;
 Thu,  3 Feb 2022 17:45:21 +0000 (UTC)
Received: from jtoppins.rdu.csb (unknown [10.22.33.211])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 31E5F4CEC7;
 Thu,  3 Feb 2022 17:45:20 +0000 (UTC)
From: Jonathan Toppins <jtoppins@redhat.com>
To: netdev@vger.kernel.org
Date: Thu,  3 Feb 2022 12:45:16 -0500
Message-Id: <cfb30f5c84364c8eff96c0a3ea0231e5dfda17e4.1643910316.git.jtoppins@redhat.com>
In-Reply-To: <b25f9e524c404820b310c73012507c8e65a2ef97.1643834329.git.jtoppins@redhat.com>
References: <b25f9e524c404820b310c73012507c8e65a2ef97.1643834329.git.jtoppins@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Subject: [Intel-wired-lan] [PATCH v2] ice: change "can't set link" message
 to dbg level
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
 drivers/net/ethernet/intel/ice/ice_lib.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 0c187cf04fcf..81b152133d11 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -4117,9 +4117,9 @@ int ice_set_link(struct ice_vsi *vsi, bool ena)
 	 */
 	if (status == -EIO) {
 		if (hw->adminq.sq_last_status == ICE_AQ_RC_EMODE)
-			dev_warn(dev, "can't set link to %s, err %d aq_err %s. not fatal, continuing\n",
-				 (ena ? "ON" : "OFF"), status,
-				 ice_aq_str(hw->adminq.sq_last_status));
+			dev_dbg(dev, "can't set link to %s, err %d aq_err %s. not fatal, continuing\n",
+				(ena ? "ON" : "OFF"), status,
+				ice_aq_str(hw->adminq.sq_last_status));
 	} else if (status) {
 		dev_err(dev, "can't set link to %s, err %d aq_err %s\n",
 			(ena ? "ON" : "OFF"), status,
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
