Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0184E7429
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Mar 2022 14:25:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F238740289;
	Fri, 25 Mar 2022 13:25:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VzjEKJM9eutb; Fri, 25 Mar 2022 13:25:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E001240277;
	Fri, 25 Mar 2022 13:25:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EFDC91BF35D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 13:25:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EAAFA605B7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 13:25:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gwWr9nnUvQEY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Mar 2022 13:25:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0CF09605AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Mar 2022 13:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1648214733;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=4vE69ZpuUGjCHMISLHB6KELn4cvD790slh3DG8ORMVU=;
 b=hCnMi82QDKpUyN0bGEauATaR5e8e8aNm9+0VodLa4MQ21HDKqzi730DLIjOGl84rFm+nGk
 wkDzYAKz25t1+jC1PEj1MZODs9aTB5VpuGH09HnJOizx/UpZNwBF5e3BbS/puOmKXjE8Oh
 3fJ0arTsMc4U7zyK15xUT919zqBigOE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-639-v-9MVSKENS2ttd0ofVIC0A-1; Fri, 25 Mar 2022 09:25:28 -0400
X-MC-Unique: v-9MVSKENS2ttd0ofVIC0A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BF8C31066543;
 Fri, 25 Mar 2022 13:25:27 +0000 (UTC)
Received: from ceranb.redhat.com (unknown [10.40.192.65])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EFB9B1454535;
 Fri, 25 Mar 2022 13:25:24 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Fri, 25 Mar 2022 14:25:23 +0100
Message-Id: <20220325132524.1765342-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Subject: [Intel-wired-lan] [PATCH net v2] ice: Fix MAC address setting
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
Cc: "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 mschmidt@redhat.com, open list <linux-kernel@vger.kernel.org>,
 poros@redhat.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 2ccc1c1ccc671b ("ice: Remove excess error variables") merged
the usage of 'status' and 'err' variables into single one in
function ice_set_mac_address(). Unfortunately this causes
a regression when call of ice_fltr_add_mac() returns -EEXIST because
this return value does not indicate an error in this case but
value of 'err' remains to be -EEXIST till the end of the function
and is returned to caller.

Prior mentioned commit this does not happen because return value of
ice_fltr_add_mac() was stored to 'status' variable first and
if it was -EEXIST then 'err' remains to be zero.

Fix the problem by reset 'err' to zero when ice_fltr_add_mac()
returns -EEXIST.

Fixes: 2ccc1c1ccc671b ("ice: Remove excess error variables")
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index b588d7995631..d755ce07869f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5475,16 +5475,19 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
 
 	/* Add filter for new MAC. If filter exists, return success */
 	err = ice_fltr_add_mac(vsi, mac, ICE_FWD_TO_VSI);
-	if (err == -EEXIST)
+	if (err == -EEXIST) {
 		/* Although this MAC filter is already present in hardware it's
 		 * possible in some cases (e.g. bonding) that dev_addr was
 		 * modified outside of the driver and needs to be restored back
 		 * to this value.
 		 */
 		netdev_dbg(netdev, "filter for MAC %pM already exists\n", mac);
-	else if (err)
+
+		return 0;
+	} else if (err) {
 		/* error if the new filter addition failed */
 		err = -EADDRNOTAVAIL;
+	}
 
 err_update_filters:
 	if (err) {
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
