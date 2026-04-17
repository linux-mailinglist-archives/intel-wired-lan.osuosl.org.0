Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6B/PN/5D4mlh4AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 16:30:22 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C24341C0F8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 16:30:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5287D813B6;
	Fri, 17 Apr 2026 14:30:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aRJeFGxf6maX; Fri, 17 Apr 2026 14:30:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9682B8145C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776436219;
	bh=So3UL4GLmFGEb2cMh3LixTfYDLK8oXuy3PKPaHp8JM4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ytvr/f0hwWqsZoyxzia7CyIndULkeSjdhlTsRhrIwU6VIwjAWblIBt8JxL2q1CmXi
	 mcydokB41qfba3BanhnqaOhpeHAAbQO809kgcwliERInaBZoyskv2nszjyw0z796A4
	 N12IaaIein+fsop7cQps9Sv4+NGAm7Mgpc8ETQcASB0FOrxildopEX2oHMfg7S6Zsk
	 ZrY0bnnj0NlWbbFAGvGA1NSuYXNa8gQN2vDMnctm4iugrm6DzlLevfLpyHSs7AJ+4d
	 skDiLNJPgu32g40HvqU/7lwWv4Ny3UyHwrX7Q0SP+IYqPBUllTVqaKPnlgf0XEwLld
	 RWFYLn+J5oIoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9682B8145C;
	Fri, 17 Apr 2026 14:30:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 47DF8270
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 14:30:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3A05480C47
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 14:30:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZADmTKWbGW7I for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2026 14:30:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1D75F80A85
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1D75F80A85
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1D75F80A85
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 14:30:16 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-609-qN3pg3HzOBS6RW1OI8S-DA-1; Fri,
 17 Apr 2026 10:30:12 -0400
X-MC-Unique: qN3pg3HzOBS6RW1OI8S-DA-1
X-Mimecast-MFC-AGG-ID: qN3pg3HzOBS6RW1OI8S-DA_1776436207
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 1ADA1195609D; Fri, 17 Apr 2026 14:30:07 +0000 (UTC)
Received: from ShadowPeak.redhat.com (unknown [10.44.32.76])
 by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 73678180047F; Fri, 17 Apr 2026 14:30:02 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Fri, 17 Apr 2026 16:29:44 +0200
Message-ID: <dc7fb6f6bc737049a9ab8c42bd2f4b34b477907a.1776426683.git.poros@redhat.com>
In-Reply-To: <cover.1776426683.git.poros@redhat.com>
References: <cover.1776426683.git.poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-MFC-PROC-ID: 3KRT8FsTIiGIDr6mUpcYJEYH8u9w9U3VeDIcy1iMxek_1776436207
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1776436215;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=So3UL4GLmFGEb2cMh3LixTfYDLK8oXuy3PKPaHp8JM4=;
 b=NSnnsffYFG+qI1rEd6gm3AJjbYt0MPYFw7XY5iQOGzTV2rSKkf2/I/8eTWarx3yvxrvUVz
 he45X2pnWmywpBvBLdAf97u9Go6jJ9w28DL6X6nkdSQj/v6JSWqU8e89EKjo5/UVeWfIMU
 JS9v4NbDjuiEU3l8faIGjrR4gFzJIZ4=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=NSnnsffY
Subject: [Intel-wired-lan] [PATCH iwl-net v2 3/4] iavf: wait for PF
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 Aaron Brown <aaron.f.brown@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Mitch Williams <mitch.a.williams@intel.com>,
 Eric Dumazet <edumazet@google.com>, "David S. Miller" <davem@davemloft.net>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, jacob.e.keller@intel.com,
 Jakub Kicinski <kuba@kernel.org>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, Rafal Romanowski <rafal.romanowski@intel.com>,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
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
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:przemyslawx.patynowski@intel.com,m:aaron.f.brown@intel.com,m:przemyslaw.kitszel@intel.com,m:mitch.a.williams@intel.com,m:edumazet@google.com,m:davem@davemloft.net,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:jesse.brandeburg@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:jedrzej.jagielski@intel.com,m:pabeni@redhat.com,m:rafal.romanowski@intel.com,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 5C24341C0F8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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

Also update iavf_del_vlan() to skip filters already in REMOVING
state: DEL has been sent to PF and the completion handler will
free the filter when PF confirms. Without this guard, the sequence
DEL(pending) -> user-del -> second DEL could cause the PF to return
an error for the second DEL (filter already gone), causing the
completion handler to incorrectly revert a deleted filter back to
ACTIVE.

Fixes: 968996c070ef ("iavf: Fix VLAN_V2 addition/rejection")
Signed-off-by: Petr Oros <poros@redhat.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  1 +
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 13 ++++---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 37 +++++++++++++------
 3 files changed, 34 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 5765715914d6b2..050f8241ef5e6b 100644
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
index 12e102506011a6..d373feee4c7e9c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -757,10 +757,10 @@ iavf_vlan_filter *iavf_add_vlan(struct iavf_adapter *adapter,
 		adapter->num_vlan_filters++;
 		iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_ADD_VLAN_FILTER);
 	} else if (f->state == IAVF_VLAN_REMOVE) {
-		/* Re-add the filter since we cannot tell whether the
-		 * pending delete has already been processed by the PF.
-		 * A duplicate add is harmless.
-		 */
+		/* DEL not yet sent to PF, cancel it */
+		f->state = IAVF_VLAN_ACTIVE;
+	} else if (f->state == IAVF_VLAN_REMOVING) {
+		/* DEL already sent to PF, re-add after completion */
 		f->state = IAVF_VLAN_ADD;
 		iavf_schedule_aq_request(adapter,
 					 IAVF_FLAG_AQ_ADD_VLAN_FILTER);
@@ -791,11 +791,14 @@ static void iavf_del_vlan(struct iavf_adapter *adapter, struct iavf_vlan vlan)
 			list_del(&f->list);
 			kfree(f);
 			adapter->num_vlan_filters--;
-		} else {
+		} else if (f->state != IAVF_VLAN_REMOVING) {
 			f->state = IAVF_VLAN_REMOVE;
 			iavf_schedule_aq_request(adapter,
 						 IAVF_FLAG_AQ_DEL_VLAN_FILTER);
 		}
+		/* If REMOVING, DEL is already sent to PF; completion
+		 * handler will free the filter when PF confirms.
+		 */
 	}
 
 	spin_unlock_bh(&adapter->mac_vlan_list_lock);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 4f197d908124e6..93ca79c3e3b535 100644
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
@@ -2895,6 +2887,27 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
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
+					/* PF rejected DEL, keep filter */
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

