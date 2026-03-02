Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ILRqKkl3pWkNBgYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 12:40:57 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1FE1D7A60
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 12:40:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB6E06125E;
	Mon,  2 Mar 2026 11:40:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rw3AEiZWSR41; Mon,  2 Mar 2026 11:40:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DE7961234
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772451654;
	bh=6Bb+I9g2d7bQxdwADL6SA7iVdzmM7hNyUv0fUe9nErk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qP/F9YU9K40LfMnnJg+0yKBRy3jWMzNG10DHGj57liSM7EymqjV34M9eywTg7qaAJ
	 ujWDAC4100HH83WRX6UTKdtQPjRNeGfAa9lS1+kFk1Ky5+ZrfMyp8OK22Gr8ktyvp5
	 7RueOPIk0uvEzUGsiKHYYO76uNZt/ue40su8qPf60Cw3EGzKOi8RnRv6GDvYwo0Awq
	 XrgXYMHgu8uN4+/ykVVa7q4LgYjr5xLyFRzWPdZmcpn9TSMrIlAI5POEVGhfOSL/M9
	 H45QjIenPnWNUlsbizQCnQXoLoTBVmuPg+UuokoiV4zjpBDLSUzKWD2pU3alItc6Vi
	 I3QsiO8Rs+OCQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DE7961234;
	Mon,  2 Mar 2026 11:40:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 38D4E231
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 11:40:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2ABFC40075
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 11:40:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3DgbpOXsRkBr for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2026 11:40:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1F77E412A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F77E412A5
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1F77E412A5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 11:40:49 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-92-87jLJdzeMBKVrMfpdPhnSA-1; Mon,
 02 Mar 2026 06:40:45 -0500
X-MC-Unique: 87jLJdzeMBKVrMfpdPhnSA-1
X-Mimecast-MFC-AGG-ID: 87jLJdzeMBKVrMfpdPhnSA_1772451644
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 0CDDB19560AD; Mon,  2 Mar 2026 11:40:44 +0000 (UTC)
Received: from ShadowPeak.redhat.com (unknown [10.44.32.50])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id DD3D11956053; Mon,  2 Mar 2026 11:40:40 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Mon,  2 Mar 2026 12:40:24 +0100
Message-ID: <20260302114025.1017985-4-poros@redhat.com>
In-Reply-To: <20260302114025.1017985-1-poros@redhat.com>
References: <20260302114025.1017985-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-MFC-PROC-ID: l7b04sayXZJ9chQajk75EgP-gg7qeX2rYue38t3uTh4_1772451644
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1772451648;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6Bb+I9g2d7bQxdwADL6SA7iVdzmM7hNyUv0fUe9nErk=;
 b=TsS+nNn0/Ihw5rrlRnVgpP8WS2dBVVHkpi0rQAJbqxjRMdqjgy3Qwmizhb57T5EVOAxAoI
 +3B2bgSyplL4nokBCUbdkm2O9/NUjh8s+CASz32uxbppzkBl4+g4vjsvOHiYyT4koyydkf
 4Vb/lJ0hj2UHqVvwzC84SiI+TSnKb24=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=TsS+nNn0
Subject: [Intel-wired-lan] [PATCH RFC iwl-next 3/4] iavf: wait for PF
 confirmation before removing VLAN filters
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 6E1FE1D7A60
X-Rspamd-Action: no action

The VLAN filter DELETE path was asymmetric with the ADD path: ADD
waits for PF confirmation (ADD -> ADDING -> ACTIVE), but DELETE
immediately frees the filter struct after sending the DEL message
without waiting for the PF response.

This is problematic because:
 - If the PF rejects the DEL, the filter remains in HW but the driver
   has already freed the tracking structure, losing sync.
 - Race conditions between DEL pending and other operations
   (add, reset) cannot be properly resolved if the filter struct
   is already gone.

Add IAVF_VLAN_REMOVING state to make the DELETE path symmetric:

  REMOVE -> REMOVING (send DEL) -> PF confirms -> kfree
                                -> PF rejects  -> ACTIVE

In iavf_del_vlans(), transition filters from REMOVE to REMOVING
instead of immediately freeing them. The new DEL completion handler
in iavf_virtchnl_completion() frees filters on success or reverts
them to ACTIVE on error.

Update iavf_add_vlan() to handle the REMOVING state: if a DEL is
pending and the user re-adds the same VLAN, queue it for ADD so
it gets re-programmed after the PF processes the DEL.

The !VLAN_FILTERING_ALLOWED early-exit path still frees filters
directly since no PF message is sent in that case.

Signed-off-by: Petr Oros <poros@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  1 +
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  9 +++--
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 37 +++++++++++++------
 3 files changed, 32 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 1ad00690622c8e..f9ad814d18b1da 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -161,6 +161,7 @@ enum iavf_vlan_state_t {
 	IAVF_VLAN_ADDING,	/* ADD sent to PF, waiting for response */
 	IAVF_VLAN_ACTIVE,	/* PF confirmed, filter is in HW */
 	IAVF_VLAN_REMOVE,	/* filter queued for DEL from PF */
+	IAVF_VLAN_REMOVING,	/* DEL sent to PF, waiting for response */
 };
 
 struct iavf_vlan_filter {
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index f1ab68f5f4050b..212a23ead20c57 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -782,10 +782,13 @@ iavf_vlan_filter *iavf_add_vlan(struct iavf_adapter *adapter,
 		adapter->num_vlan_filters++;
 		iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_ADD_VLAN_FILTER);
 	} else if (f->state == IAVF_VLAN_REMOVE) {
-		/* IAVF_VLAN_REMOVE means that VLAN wasn't yet removed.
-		 * We can safely only change the state here.
-		 */
+		/* DEL not yet sent to PF, cancel it */
 		f->state = IAVF_VLAN_ACTIVE;
+	} else if (f->state == IAVF_VLAN_REMOVING) {
+		/* DEL already sent to PF, re-add after completion */
+		f->state = IAVF_VLAN_ADD;
+		iavf_schedule_aq_request(adapter,
+					 IAVF_FLAG_AQ_ADD_VLAN_FILTER);
 	}
 
 clearout:
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index d62c0d6394149e..9f2b64bb4ed9e7 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -948,12 +948,10 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
 
 		vvfl->vsi_id = adapter->vsi_res->vsi_id;
 		vvfl->num_elements = count;
-		list_for_each_entry_safe(f, ftmp, &adapter->vlan_filter_list, list) {
+		list_for_each_entry(f, &adapter->vlan_filter_list, list) {
 			if (f->state == IAVF_VLAN_REMOVE) {
 				vvfl->vlan_id[i] = f->vlan.vid;
-				list_del(&f->list);
-				kfree(f);
-				adapter->num_vlan_filters--;
+				f->state = IAVF_VLAN_REMOVING;
 				i++;
 				if (i == count)
 					break;
@@ -990,7 +988,7 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
 
 		vvfl_v2->vport_id = adapter->vsi_res->vsi_id;
 		vvfl_v2->num_elements = count;
-		list_for_each_entry_safe(f, ftmp, &adapter->vlan_filter_list, list) {
+		list_for_each_entry(f, &adapter->vlan_filter_list, list) {
 			if (f->state == IAVF_VLAN_REMOVE) {
 				struct virtchnl_vlan_supported_caps *filtering_support =
 					&adapter->vlan_v2_caps.filtering.filtering_support;
@@ -1005,9 +1003,7 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
 				vlan->tci = f->vlan.vid;
 				vlan->tpid = f->vlan.tpid;
 
-				list_del(&f->list);
-				kfree(f);
-				adapter->num_vlan_filters--;
+				f->state = IAVF_VLAN_REMOVING;
 				i++;
 				if (i == count)
 					break;
@@ -2370,10 +2366,6 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			ether_addr_copy(adapter->hw.mac.addr, netdev->dev_addr);
 			wake_up(&adapter->vc_waitqueue);
 			break;
-		case VIRTCHNL_OP_DEL_VLAN:
-			dev_err(&adapter->pdev->dev, "Failed to delete VLAN filter, error %s\n",
-				iavf_stat_str(&adapter->hw, v_retval));
-			break;
 		case VIRTCHNL_OP_DEL_ETH_ADDR:
 			dev_err(&adapter->pdev->dev, "Failed to delete MAC filter, error %s\n",
 				iavf_stat_str(&adapter->hw, v_retval));
@@ -2896,6 +2888,27 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		spin_unlock_bh(&adapter->mac_vlan_list_lock);
 		}
 		break;
+	case VIRTCHNL_OP_DEL_VLAN:
+	case VIRTCHNL_OP_DEL_VLAN_V2: {
+		struct iavf_vlan_filter *f, *ftmp;
+
+		spin_lock_bh(&adapter->mac_vlan_list_lock);
+		list_for_each_entry_safe(f, ftmp, &adapter->vlan_filter_list,
+					 list) {
+			if (f->state == IAVF_VLAN_REMOVING) {
+				if (v_retval) {
+					/* PF rejected DEL, filter is still in HW */
+					f->state = IAVF_VLAN_ACTIVE;
+				} else {
+					list_del(&f->list);
+					kfree(f);
+					adapter->num_vlan_filters--;
+				}
+			}
+		}
+		spin_unlock_bh(&adapter->mac_vlan_list_lock);
+		}
+		break;
 	case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING:
 		/* PF enabled vlan strip on this VF.
 		 * Update netdev->features if needed to be in sync with ethtool.
-- 
2.52.0

