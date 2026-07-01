Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nIXIF9wXRWqD6woAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 15:36:28 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E87086EE320
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 15:36:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=nWVNDzOq;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=redhat.com (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9874460E63;
	Wed,  1 Jul 2026 13:36:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kD9_lpBB8ddv; Wed,  1 Jul 2026 13:36:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB96C60E3F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782912985;
	bh=evzkY3YGf4YJJC7YMd3NRNo5nQ0F0rinUPW0d4GugcU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nWVNDzOqLk61UaFZYRw4OO18avB+os0tkwdYp8tOZTeEwrGAO0ltfl16tEl8KBs+H
	 bXXxXR37vvC3gVD9ncO84JeNwovdD90Qfgu4gG8piFEtBlmDJH9XKvrSMaLlLPy/dI
	 /uTDRYT8xG2AVDs9xs13F1LY9Iuelsvyygtqh6lSTChRTO22XzIHm+Aih/iowINIcU
	 FfcMu6FgqvjfbBsudRR/m2MleaipGBH/HbebAcYgvJyfzc4oTFX5vsKRgbo8s2xVrF
	 9UYBkr1f91jC3Xm35WNbdyB+SS4u1lN6JAgh8BtNQ6loxJL3Gaj5qwjZi4n3zt/qFL
	 TPMI6r2TArNrw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB96C60E3F;
	Wed,  1 Jul 2026 13:36:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 897642D5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 13:36:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6F5884018E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 13:36:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pf5LPU0PCU0w for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2026 13:36:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 489CB40132
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 489CB40132
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 489CB40132
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 13:36:22 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-642-O2za4V6nMB62QdVa6aFdlg-1; Wed,
 01 Jul 2026 09:36:17 -0400
X-MC-Unique: O2za4V6nMB62QdVa6aFdlg-1
X-Mimecast-MFC-AGG-ID: O2za4V6nMB62QdVa6aFdlg_1782912975
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id C1E221933E8D; Wed,  1 Jul 2026 13:36:14 +0000 (UTC)
Received: from ShadowPeak.redhat.com (unknown [10.44.49.212])
 by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id D218B180074B; Wed,  1 Jul 2026 13:36:09 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Wed,  1 Jul 2026 15:36:00 +0200
Message-ID: <20260701133601.2118382-2-poros@redhat.com>
In-Reply-To: <20260701133601.2118382-1-poros@redhat.com>
References: <20260701133601.2118382-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-MFC-PROC-ID: vdkZ3qEJZ7y1P41ej0iLRSU6HDH_0dhfzdx6fEayNBo_1782912975
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1782912982;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=evzkY3YGf4YJJC7YMd3NRNo5nQ0F0rinUPW0d4GugcU=;
 b=ZgTjrqTkpaRMFs2m0L92NILVgyWmPuO2+KQOxk0K3F2gOPGkYd+eD6JAosqjqaL4PUDi3H
 t8VxEFEz7RyCbC1fcbBUtyOAs28fVxyKu4drP4qtp5mdwb7x0IHLync0e2klFfZzmILeFU
 SH3HZc7Yeuli+TGAZMRiDdB9LOAlbI0=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ZgTjrqTk
Subject: [Intel-wired-lan] [PATCH iwl-net v3 1/2] ice: skip per-VLAN promisc
 rules when default VSI Rx rule is set
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: Ivan Vecera <ivecera@redhat.com>, Alice Michael <alice.michael@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:alice.michael@intel.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:martyna.szapar-mudlaw@linux.intel.com,m:andrew+netdev@lunn.ch,m:marcin.szycik@linux.intel.com,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,osuosl.org:dkim,osuosl.org:from_smtp];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E87086EE320

When an ice port in a vlan-filtering bridge goes promiscuous (typical for
bond slaves), the driver installs a per-VLAN ICE_SW_LKUP_PROMISC_VLAN rule
for every VID on top of the broad ICE_SW_LKUP_DFLT VSI Rx rule. Each rule
consumes one of the ~32K Flow Lookup Unit (FLU) entries the device shares
across PFs, so a wide trunk (vid 2-4094) over several PFs overruns the
pool: firmware rejects further Add Switch Rules with ENOSPC (AQ 0x10) and
the DFLT Rx rule itself fails to install:

  ice 0000:5c:00.1: Failed to set VSI 14 as the default forwarding
                    VSI, error -5
  ice 0000:5c:00.1 ens1f1: Error -5 setting default VSI 14 Rx rule

Once a switch context is overrun the retries can also come back as ENOENT
(AQ 0x2), which has misled triage toward a perceived recipe binding defect
rather than a capacity issue.

The DFLT rule already catches every packet on the port regardless of VLAN
tag, so the per-VLAN promisc expansion is redundant while it is installed.
Skip it at the two sites that drive it, ice_set_promisc() and
ice_vlan_rx_add_vid(), keyed on ice_is_vsi_dflt_vsi() rather than the
netdev IFF_PROMISC flag so a failed or LAG-suppressed DFLT install still
falls back to the per-VLAN rules.

IFF_ALLMULTI and IFF_PROMISC can reach ice_vsi_sync_fltr() in separate
passes (a bridge join sets them through separate calls), so the allmulti
pass may expand the per-VID rules before the DFLT rule exists. Drop those
now-redundant rules right after ice_set_dflt_vsi() installs the DFLT rule;
ice_vsi_exit_dflt_promisc() reinstates them when promisc is cleared.

ice_vsi_sync_fltr() subscribed multicast promiscuity only inside the
"default VSI not yet in use" branch, so a promiscuous VSI that finds the
default VSI rule already present (owned by another VSI, or preserved
across a switchdev session) ended up in unicast promisc with no multicast
subscription. Issue ice_set_promisc(ICE_MCAST_PROMISC_BITS) whenever the
netdev is promiscuous; it is idempotent and returns 0 if the rule is
already present.

Fixes: 1273f89578f2 ("ice: Fix broken IFF_ALLMULTI handling")
Signed-off-by: Petr Oros <poros@redhat.com>
---
v3:
- Dropped the two vid=0 ICE_SW_LKUP_PROMISC <-> ICE_SW_LKUP_PROMISC_VLAN
  recipe-swap guards in ice_vlan_rx_add_vid() and ice_vlan_rx_kill_vid();
  each swap is net-zero and guarding the demote stranded the vid=0 rule
  in ICE_SW_LKUP_PROMISC_VLAN when the last VLAN was removed under the
  DFLT rule. Reported by review.
- Drop the now-redundant per-VID multicast promisc rules right after
  ice_set_dflt_vsi(). A bridge join raises IFF_ALLMULTI and IFF_PROMISC
  in separate sync passes, so the allmulti pass expands the per-VID rules
  before the DFLT rule exists; the cleanup keeps them from lingering and
  exhausting the FLU pool. ice_vsi_exit_dflt_promisc() reinstates them on
  promisc off. Reported by review.
- Issue ice_set_promisc(ICE_MCAST_PROMISC_BITS) whenever the netdev is
  promiscuous, not only when this VSI installs the default VSI rule, so
  multicast promisc is not lost when the rule is already in use (owned by
  another VSI, or preserved across a switchdev session). Reported by
  review.
- Hoisted the combined VLAN promisc mask in ice_clear_promisc() into a
  local for alignment. Dropped Aleksandr's Reviewed-by since the code
  changed.

v2: https://lore.kernel.org/all/20260622113428.2565255-2-poros@redhat.com/
v1: https://lore.kernel.org/all/89efbea9831175e6f57e9fe8557f7a0e48e050b7.1781786935.git.poros@redhat.com/
---
 drivers/net/ethernet/intel/ice/ice_main.c | 111 ++++++++++++++++++----
 1 file changed, 90 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index b43d420ece99ca..a84de6cf6eb078 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -274,7 +274,8 @@ static int ice_set_promisc(struct ice_vsi *vsi, u8 promisc_m)
 	if (vsi->type != ICE_VSI_PF)
 		return 0;
 
-	if (ice_vsi_has_non_zero_vlans(vsi)) {
+	/* skip per-VID expansion; the DFLT Rx rule already covers every VID */
+	if (ice_vsi_has_non_zero_vlans(vsi) && !ice_is_vsi_dflt_vsi(vsi)) {
 		promisc_m |= (ICE_PROMISC_VLAN_RX | ICE_PROMISC_VLAN_TX);
 		status = ice_fltr_set_vlan_vsi_promisc(&vsi->back->hw, vsi,
 						       promisc_m);
@@ -304,9 +305,20 @@ static int ice_clear_promisc(struct ice_vsi *vsi, u8 promisc_m)
 		return 0;
 
 	if (ice_vsi_has_non_zero_vlans(vsi)) {
-		promisc_m |= (ICE_PROMISC_VLAN_RX | ICE_PROMISC_VLAN_TX);
+		u8 vlan_promisc_m = promisc_m | ICE_PROMISC_VLAN_RX |
+				    ICE_PROMISC_VLAN_TX;
+		int vid0_status;
+
+		/* set time used either recipe (per-VID PROMISC_VLAN, or vid=0
+		 * PROMISC via the ice_set_promisc() else branch), so clear
+		 * both; clearing an absent rule succeeds
+		 */
 		status = ice_fltr_clear_vlan_vsi_promisc(&vsi->back->hw, vsi,
-							 promisc_m);
+							 vlan_promisc_m);
+		vid0_status = ice_fltr_clear_vsi_promisc(&vsi->back->hw,
+							 vsi->idx, promisc_m, 0);
+		if (!status)
+			status = vid0_status;
 	} else {
 		status = ice_fltr_clear_vsi_promisc(&vsi->back->hw, vsi->idx,
 						    promisc_m, 0);
@@ -317,6 +329,59 @@ static int ice_clear_promisc(struct ice_vsi *vsi, u8 promisc_m)
 	return status;
 }
 
+/**
+ * ice_vsi_exit_dflt_promisc - drop the default VSI Rx rule on promisc off
+ * @vsi: the VSI leaving promiscuous mode
+ *
+ * For an IFF_ALLMULTI VSI with VLANs the per-VID multicast rules are
+ * reinstated before the default rule is cleared so coverage never lapses;
+ * the then redundant vid=0 rule is dropped best-effort. The callees log
+ * their own failures, so error returns are not re-logged here.
+ *
+ * Return: 0 on success, negative on error with the default rule left in place.
+ */
+static int ice_vsi_exit_dflt_promisc(struct ice_vsi *vsi)
+{
+	struct ice_vsi_vlan_ops *vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
+	struct net_device *netdev = vsi->netdev;
+	struct ice_hw *hw = &vsi->back->hw;
+	bool restore_mc;
+	int err;
+
+	restore_mc = (vsi->current_netdev_flags & IFF_ALLMULTI) &&
+		     ice_vsi_has_non_zero_vlans(vsi);
+
+	if (restore_mc) {
+		err = ice_fltr_set_vlan_vsi_promisc(hw, vsi,
+						    ICE_MCAST_VLAN_PROMISC_BITS);
+		if (err && err != -EEXIST)
+			return err;
+	}
+
+	err = ice_clear_dflt_vsi(vsi);
+	if (err)
+		return err;
+
+	if (netdev->features & NETIF_F_HW_VLAN_CTAG_FILTER)
+		vlan_ops->ena_rx_filtering(vsi);
+
+	if (restore_mc)
+		ice_fltr_clear_vsi_promisc(hw, vsi->idx, ICE_MCAST_PROMISC_BITS,
+					   0);
+
+	return 0;
+}
+
+/* Drop the per-VID multicast promisc rules, redundant once the default
+ * VSI Rx rule covers every VID. A no-op when the VSI has no VLANs.
+ */
+static void ice_vsi_clear_vlan_mc_promisc(struct ice_vsi *vsi)
+{
+	if (ice_vsi_has_non_zero_vlans(vsi))
+		ice_fltr_clear_vlan_vsi_promisc(&vsi->back->hw, vsi,
+						ICE_MCAST_VLAN_PROMISC_BITS);
+}
+
 /**
  * ice_vsi_sync_fltr - Update the VSI filter list to the HW
  * @vsi: ptr to the VSI
@@ -429,30 +494,35 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 				err = 0;
 				vlan_ops->dis_rx_filtering(vsi);
 
-				/* promiscuous mode implies allmulticast so
-				 * that VSIs that are in promiscuous mode are
-				 * subscribed to multicast packets coming to
-				 * the port
+				/* DFLT now covers every VID; drop the per-VID
+				 * multicast promisc rules a prior IFF_ALLMULTI
+				 * pass may have installed (separate passes on a
+				 * bridge join) so they do not linger and exhaust
+				 * the FLU pool. exit_dflt_promisc() reinstates
+				 * them on promisc off.
 				 */
-				err = ice_set_promisc(vsi,
-						      ICE_MCAST_PROMISC_BITS);
-				if (err)
-					goto out_promisc;
+				ice_vsi_clear_vlan_mc_promisc(vsi);
 			}
+
+			/* Promiscuous mode implies allmulticast. Subscribe
+			 * the VSI to all multicast even when the default VSI
+			 * rule is already in use and the block above is
+			 * skipped (it may be owned by another VSI, or
+			 * preserved across a switchdev session); the unicast
+			 * catch-all does not cover the multicast subscription.
+			 */
+			err = ice_set_promisc(vsi, ICE_MCAST_PROMISC_BITS);
+			if (err)
+				goto out_promisc;
 		} else {
 			/* Clear Rx filter to remove traffic from wire */
 			if (ice_is_vsi_dflt_vsi(vsi)) {
-				err = ice_clear_dflt_vsi(vsi);
+				err = ice_vsi_exit_dflt_promisc(vsi);
 				if (err) {
-					netdev_err(netdev, "Error %d clearing default VSI %i Rx rule\n",
-						   err, vsi->vsi_num);
 					vsi->current_netdev_flags |=
 						IFF_PROMISC;
 					goto out_promisc;
 				}
-				if (vsi->netdev->features &
-				    NETIF_F_HW_VLAN_CTAG_FILTER)
-					vlan_ops->ena_rx_filtering(vsi);
 			}
 
 			/* disable allmulti here, but only if allmulti is not
@@ -3676,10 +3746,9 @@ int ice_vlan_rx_add_vid(struct net_device *netdev, __be16 proto, u16 vid)
 	while (test_and_set_bit(ICE_CFG_BUSY, vsi->state))
 		usleep_range(1000, 2000);
 
-	/* Add multicast promisc rule for the VLAN ID to be added if
-	 * all-multicast is currently enabled.
-	 */
-	if (vsi->current_netdev_flags & IFF_ALLMULTI) {
+	/* skip the per-VID rule when the DFLT Rx rule already covers this VID */
+	if ((vsi->current_netdev_flags & IFF_ALLMULTI) &&
+	    !ice_is_vsi_dflt_vsi(vsi)) {
 		ret = ice_fltr_set_vsi_promisc(&vsi->back->hw, vsi->idx,
 					       ICE_MCAST_VLAN_PROMISC_BITS,
 					       vid);
-- 
2.54.0

