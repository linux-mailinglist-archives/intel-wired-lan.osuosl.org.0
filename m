Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KA5dOpjet2mcWAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 11:42:32 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 620EC298121
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 11:42:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A1F7E60E3E;
	Mon, 16 Mar 2026 10:42:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vcsn3aLdAepH; Mon, 16 Mar 2026 10:42:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1092060E30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773657749;
	bh=ncsRh6apqUu7E9HPi27BmsmzD0caQNYcAoNEUyrUMUo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4tttps1zElv6nnRrOZKHcL/FRf5UaPhMVS71vhMy6gC41kpcovAwkgPSGsG7w/5XM
	 vnCts8Sch5RpKu8+tkB0mil0Wfa5F3GT+hPO/MdxkZQUdM3LiA4cZbXNGcyCmiF3X3
	 ZGN6k3cFVEs4ZXssYtljXUHyBlgM0q2duJDvZUQSNtH46G0rRnO3oI9EaRbGsQ3Hgx
	 WZi3b/so3u3xMeL1jHifafr5X8kse9Qpgu2GBZPtnY91mQp/SFl3Yvp+NTaaLvV/Og
	 fJVl4qmieXDYW1+xQX8gEAi/+KPvB+kcnBc0mSNPCUQ2W15BmPkA2mldfAcc8EA4Ss
	 3OYyrWtsOxM5w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1092060E30;
	Mon, 16 Mar 2026 10:42:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B72F8D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 10:42:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9D46D40984
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 10:42:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 708uFPLp2_jD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2026 10:42:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8E1BE40996
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E1BE40996
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8E1BE40996
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 10:42:26 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-663-k1oUlIuWOZai5fgpmNXITQ-1; Mon,
 16 Mar 2026 06:42:21 -0400
X-MC-Unique: k1oUlIuWOZai5fgpmNXITQ-1
X-Mimecast-MFC-AGG-ID: k1oUlIuWOZai5fgpmNXITQ_1773657740
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id CE89D1956065; Mon, 16 Mar 2026 10:42:19 +0000 (UTC)
Received: from ShadowPeak.redhat.com (unknown [10.45.224.235])
 by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 6D859180035F; Mon, 16 Mar 2026 10:42:16 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Mon, 16 Mar 2026 11:42:06 +0100
Message-ID: <20260316104209.1285962-2-poros@redhat.com>
In-Reply-To: <20260316104209.1285962-1-poros@redhat.com>
References: <20260316104209.1285962-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-MFC-PROC-ID: 3KqmDAY-SQCk0j6RJzkfHzCpY4aHEoqHsQsTVResN54_1773657740
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1773657745;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ncsRh6apqUu7E9HPi27BmsmzD0caQNYcAoNEUyrUMUo=;
 b=GpH1MwPfVHnnyyMVDxrCH4icLHPrWgKYtbhI7rIO7pRm1mb7htpbgn2nRx2Lz9ghTBeyLE
 nkbiMWWxgL1MBvJNLtJVNaxE19G2NASDR1wknzaZEIxNz8z+o6E6T5akAAnoCvS9FEnxG8
 Y9j5hWEw/TPN/ZuorygUxEUVTQnnzLs=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=GpH1MwPf
Subject: [Intel-wired-lan] [PATCH iwl-next 1/4] iavf: rename
 IAVF_VLAN_IS_NEW to IAVF_VLAN_ADDING
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
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
X-Rspamd-Queue-Id: 620EC298121
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Rename the IAVF_VLAN_IS_NEW state to IAVF_VLAN_ADDING to better
describe what the state represents: an ADD request has been sent to
the PF and is waiting for a response.

This is a pure rename with no behavioral change, preparing for a
cleanup of the VLAN filter state machine.

Signed-off-by: Petr Oros <poros@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h          | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index a87e0c6d4017ad..8e6db72828ae14 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -158,7 +158,7 @@ struct iavf_vlan {
 enum iavf_vlan_state_t {
 	IAVF_VLAN_INVALID,
 	IAVF_VLAN_ADD,		/* filter needs to be added */
-	IAVF_VLAN_IS_NEW,	/* filter is new, wait for PF answer */
+	IAVF_VLAN_ADDING,	/* ADD sent to PF, waiting for response */
 	IAVF_VLAN_ACTIVE,	/* filter is accepted by PF */
 	IAVF_VLAN_DISABLE,	/* filter needs to be deleted by PF, then marked INACTIVE */
 	IAVF_VLAN_INACTIVE,	/* filter is inactive, we are in IFF_DOWN */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 88156082a41da6..5114934fe81fa6 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -746,7 +746,7 @@ static void iavf_vlan_add_reject(struct iavf_adapter *adapter)
 
 	spin_lock_bh(&adapter->mac_vlan_list_lock);
 	list_for_each_entry_safe(f, ftmp, &adapter->vlan_filter_list, list) {
-		if (f->state == IAVF_VLAN_IS_NEW) {
+		if (f->state == IAVF_VLAN_ADDING) {
 			list_del(&f->list);
 			kfree(f);
 			adapter->num_vlan_filters--;
@@ -812,7 +812,7 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
 			if (f->state == IAVF_VLAN_ADD) {
 				vvfl->vlan_id[i] = f->vlan.vid;
 				i++;
-				f->state = IAVF_VLAN_IS_NEW;
+				f->state = IAVF_VLAN_ADDING;
 				if (i == count)
 					break;
 			}
@@ -874,7 +874,7 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
 				vlan->tpid = f->vlan.tpid;
 
 				i++;
-				f->state = IAVF_VLAN_IS_NEW;
+				f->state = IAVF_VLAN_ADDING;
 			}
 		}
 
@@ -2911,7 +2911,7 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 
 		spin_lock_bh(&adapter->mac_vlan_list_lock);
 		list_for_each_entry(f, &adapter->vlan_filter_list, list) {
-			if (f->state == IAVF_VLAN_IS_NEW)
+			if (f->state == IAVF_VLAN_ADDING)
 				f->state = IAVF_VLAN_ACTIVE;
 		}
 		spin_unlock_bh(&adapter->mac_vlan_list_lock);
-- 
2.52.0

