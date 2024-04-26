Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 614DB8B3E98
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Apr 2024 19:50:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6DE983B25;
	Fri, 26 Apr 2024 17:50:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k_lOovhWrPEo; Fri, 26 Apr 2024 17:50:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A420883ABF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714153823;
	bh=9tFVCkuBtcueGN0p1piynNZfeLjIXAW4XnpIAwyZRkU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Bz+ppiZ3iLvYgG0KOWyJuusi8yzscHWcTo3kahVhIkfbHmWyN0EjHc1kh/i1vCC5f
	 sCeF0uaKxFNN7ikJ/2rzZcdbXwCHgBMHfCpJBNtxU5UTDgdQtwrbakgu9V68ObgloQ
	 sM5W10ZGE4G1YgCoKy5xyGAXHmk2XYQ5TvWLZHWtU+k7dWrvyNSGhUy72/KcSJoHgq
	 tPNP7vnAFPCY0OQ1e2VdREaBhpcGECG+YtKCtbMmKe2md/Ri+o+sQtF8/sefjxyVnr
	 VjmCW3AF1fVDtZugZkBSbfHvBRDduD5qumH7sirzSE0KkEE74VzFckpXBAfFcLHm37
	 bFhJVE/OjXk6Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A420883ABF;
	Fri, 26 Apr 2024 17:50:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C39BC1BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 17:50:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AF5F641F86
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 17:50:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6-QKKStIp8bO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Apr 2024 17:50:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9ECEF401E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9ECEF401E2
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9ECEF401E2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 17:50:17 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-594-CrzqDw66NOCW_3eXG-w3NA-1; Fri, 26 Apr 2024 13:50:12 -0400
X-MC-Unique: CrzqDw66NOCW_3eXG-w3NA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 96C12800935;
 Fri, 26 Apr 2024 17:50:11 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B4B43C13FA3;
 Fri, 26 Apr 2024 17:50:09 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Fri, 26 Apr 2024 19:49:45 +0200
Message-ID: <20240426174953.208591-7-ivecera@redhat.com>
In-Reply-To: <20240426174953.208591-1-ivecera@redhat.com>
References: <20240426174953.208591-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1714153816;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9tFVCkuBtcueGN0p1piynNZfeLjIXAW4XnpIAwyZRkU=;
 b=A3Y3Qv4f7G5hc+z23NFfzrzZVdTOeNZ1BXJ+7OOqD9wGHi5b5rYfkXDjKCkAMh4S5yuXIQ
 snUoQs9PzEtZcTQUCoFVnYxgOYDugC5HT2Q4dYLlxeKPxpK7K4qGD18tvs6XGA8H3pJpTu
 N4fJ7JsktZ73B05LkQgzHj+Jy/p4+aA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=A3Y3Qv4f
Subject: [Intel-wired-lan] [PATCH net-next v3 6/7] i40e: Add helper to
 access main VEB
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
Cc: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add a helper to access main VEB:

i40e_pf_get_main_veb(pf) replaces 'pf->veb[pf->lan_veb]'

Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h        | 11 ++++++++
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  9 +++----
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 27 ++++++++++++-------
 3 files changed, 31 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index fb0b913692e1..2f135db416cf 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -1401,4 +1401,15 @@ i40e_pf_get_veb_by_seid(struct i40e_pf *pf, u16 seid)
 	return NULL;
 }
 
+/**
+ * i40e_pf_get_main_veb - get pointer to main VEB
+ * @pf: pointer to a PF
+ *
+ * Return pointer to main VEB or NULL if it does not exist
+ **/
+static inline struct i40e_veb *i40e_pf_get_main_veb(struct i40e_pf *pf)
+{
+	return (pf->lan_veb != I40E_NO_VEB) ? pf->veb[pf->lan_veb] : NULL;
+}
+
 #endif /* _I40E_H_ */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 5cd0d1b45f01..4e28785c9fb2 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -2425,14 +2425,11 @@ static void i40e_get_ethtool_stats(struct net_device *netdev,
 	if (vsi->type != I40E_VSI_MAIN || pf->hw.partition_id != 1)
 		goto check_data_pointer;
 
-	veb_stats = ((pf->lan_veb != I40E_NO_VEB) &&
-		     (pf->lan_veb < I40E_MAX_VEB) &&
-		     test_bit(I40E_FLAG_VEB_STATS_ENA, pf->flags));
+	veb = i40e_pf_get_main_veb(pf);
+	veb_stats = veb && test_bit(I40E_FLAG_VEB_STATS_ENA, pf->flags);
 
-	if (veb_stats) {
-		veb = pf->veb[pf->lan_veb];
+	if (veb_stats)
 		i40e_update_veb_stats(veb);
-	}
 
 	/* If veb stats aren't enabled, pass NULL instead of the veb so that
 	 * we initialize stats to zero and update the data pointer
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 85d609ad81dc..26e5c21df19d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -2481,7 +2481,7 @@ static int i40e_set_promiscuous(struct i40e_pf *pf, bool promisc)
 	int aq_ret;
 
 	if (vsi->type == I40E_VSI_MAIN &&
-	    pf->lan_veb != I40E_NO_VEB &&
+	    i40e_pf_get_main_veb(pf) &&
 	    !test_bit(I40E_FLAG_MFP_ENA, pf->flags)) {
 		/* set defport ON for Main VSI instead of true promisc
 		 * this way we will get all unicast/multicast and VLAN
@@ -9909,6 +9909,7 @@ static void i40e_veb_link_event(struct i40e_veb *veb, bool link_up)
 static void i40e_link_event(struct i40e_pf *pf)
 {
 	struct i40e_vsi *vsi = i40e_pf_get_main_vsi(pf);
+	struct i40e_veb *veb = i40e_pf_get_main_veb(pf);
 	u8 new_link_speed, old_link_speed;
 	bool new_link, old_link;
 	int status;
@@ -9948,8 +9949,8 @@ static void i40e_link_event(struct i40e_pf *pf)
 	/* Notify the base of the switch tree connected to
 	 * the link.  Floating VEBs are not notified.
 	 */
-	if (pf->lan_veb < I40E_MAX_VEB && pf->veb[pf->lan_veb])
-		i40e_veb_link_event(pf->veb[pf->lan_veb], new_link);
+	if (veb)
+		i40e_veb_link_event(veb, new_link);
 	else
 		i40e_vsi_link_event(vsi, new_link);
 
@@ -14881,7 +14882,8 @@ static void i40e_setup_pf_switch_element(struct i40e_pf *pf,
 		/* Main VEB? */
 		if (uplink_seid != pf->mac_seid)
 			break;
-		if (pf->lan_veb >= I40E_MAX_VEB) {
+		veb = i40e_pf_get_main_veb(pf);
+		if (!veb) {
 			int v;
 
 			/* find existing or else empty VEB */
@@ -14895,12 +14897,15 @@ static void i40e_setup_pf_switch_element(struct i40e_pf *pf,
 				pf->lan_veb = v;
 			}
 		}
-		if (pf->lan_veb >= I40E_MAX_VEB)
+
+		/* Try to get again main VEB as pf->lan_veb may have changed */
+		veb = i40e_pf_get_main_veb(pf);
+		if (!veb)
 			break;
 
-		pf->veb[pf->lan_veb]->seid = seid;
-		pf->veb[pf->lan_veb]->uplink_seid = pf->mac_seid;
-		pf->veb[pf->lan_veb]->pf = pf;
+		veb->seid = seid;
+		veb->uplink_seid = pf->mac_seid;
+		veb->pf = pf;
 		break;
 	case I40E_SWITCH_ELEMENT_TYPE_VSI:
 		if (num_reported != 1)
@@ -15045,13 +15050,15 @@ static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit, bool lock_acqui
 	/* first time setup */
 	main_vsi = i40e_pf_get_main_vsi(pf);
 	if (!main_vsi || reinit) {
+		struct i40e_veb *veb;
 		u16 uplink_seid;
 
 		/* Set up the PF VSI associated with the PF's main VSI
 		 * that is already in the HW switch
 		 */
-		if (pf->lan_veb < I40E_MAX_VEB && pf->veb[pf->lan_veb])
-			uplink_seid = pf->veb[pf->lan_veb]->seid;
+		veb = i40e_pf_get_main_veb(pf);
+		if (veb)
+			uplink_seid = veb->seid;
 		else
 			uplink_seid = pf->mac_seid;
 		if (!main_vsi)
-- 
2.43.2

