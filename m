Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kCyTMkt3pWkNBgYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 12:40:59 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA1E1D7A68
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 12:40:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4DDEA6124A;
	Mon,  2 Mar 2026 11:40:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id du0n8Qb-WB4T; Mon,  2 Mar 2026 11:40:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE6EE6125A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772451654;
	bh=4GboqBNjOxLnkJWlCgoSfV3V8BCKz0Frnmh0ecySpFw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rckN31lgqegLoUFvCwBXJobxCv3hDiVyA9y+pgD4Dr9vzgK46eM4R6r2XxIwiYSlU
	 ACJctgchj5jWOeQRUD0U6EVYHOiJlZzmv7wxdTmddw3n4tDddL57rZuo9Oj1JdPMnk
	 8BlqVVM38yJg+faI869tX3xIL/ujYdU7JBS4UdHYNoAhFMLMwtdXtn8/BRQRw9zzyj
	 WiJbWpOhvXaP+4C53P7Nk0y4zOpl1ogHtsOVkqLb5xZ40GZ4B9QPy8m4AUXIiOUW6E
	 GU2JkWARdQxDlymdKxUkJmGVM1U3lxIlUImIsebgk3/PqVYmTPMQMni+izdV7Xh0Zf
	 OX/QlN1D9x2HQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE6EE6125A;
	Mon,  2 Mar 2026 11:40:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9D6531EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 11:40:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9A93F412A5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 11:40:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A_464im1mcSf for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2026 11:40:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9361640075
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9361640075
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9361640075
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 11:40:51 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-658-6LHR4HLJPYyz3bgR0kwY0Q-1; Mon,
 02 Mar 2026 06:40:49 -0500
X-MC-Unique: 6LHR4HLJPYyz3bgR0kwY0Q-1
X-Mimecast-MFC-AGG-ID: 6LHR4HLJPYyz3bgR0kwY0Q_1772451647
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 9915F195608F; Mon,  2 Mar 2026 11:40:47 +0000 (UTC)
Received: from ShadowPeak.redhat.com (unknown [10.44.32.50])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 70AEB1955D85; Mon,  2 Mar 2026 11:40:44 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Mon,  2 Mar 2026 12:40:25 +0100
Message-ID: <20260302114025.1017985-5-poros@redhat.com>
In-Reply-To: <20260302114025.1017985-1-poros@redhat.com>
References: <20260302114025.1017985-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-MFC-PROC-ID: 84mWze4CVyfWvEORwofl0Cx0_8cRnSwzvlQrAf6cbIg_1772451647
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1772451650;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4GboqBNjOxLnkJWlCgoSfV3V8BCKz0Frnmh0ecySpFw=;
 b=FLKO+7x7neW/6eYY9d3eLJuESMfsbP2U2uvS4icdBQeMjhpgGZuPHUqMVfmQ67BvrlL7le
 i5eAmWCvZPNJT9Kz1QbjjfyrbUSAiWYr54tS+BCCkkjILL4enpnc+yd+W57okZUM9m6dFy
 mMwijM7jn472eDRGs1qxmd2Go8zB43Y=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=FLKO+7x7
Subject: [Intel-wired-lan] [PATCH RFC iwl-next 4/4] iavf: harden VLAN filter
 state machine race handling
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
X-Rspamd-Queue-Id: 5FA1E1D7A68
X-Rspamd-Action: no action

Address remaining race windows in the VLAN filter state machine that
were identified during cross-state analysis of ADD and DEL paths.

1. Add VIRTCHNL_OP_ADD_VLAN to the success completion handler.

   The V1 ADD_VLAN opcode had no success handler -- filters sent via V1
   stayed in ADDING state permanently.  Add a fallthrough case so V1
   filters also transition ADDING -> ACTIVE on PF confirmation.

   Critically, add an `if (v_retval) break` guard: the error switch
   in iavf_virtchnl_completion() does NOT return after handling errors,
   it falls through to the success switch.  Without this guard, a
   PF-rejected ADD would incorrectly mark ADDING filters as ACTIVE,
   creating a driver/HW mismatch where the driver believes the filter
   is installed but the PF never accepted it.

   For V2, this is harmless: iavf_vlan_add_reject() in the error
   block already kfree'd all ADDING filters, so the success handler
   finds nothing to transition.

2. Skip DEL on filters already in REMOVING state.

   In iavf_del_vlan(), if a filter is in IAVF_VLAN_REMOVING (DEL
   already sent to PF, waiting for response), do not overwrite to
   REMOVE and schedule a redundant DEL.  The pending DEL's
   completion handler will either kfree the filter (PF confirms)
   or revert to ACTIVE (PF rejects).

   Without this, the sequence DEL(pending) -> user-del -> second DEL
   could result in PF returning an error for the second DEL (filter
   already gone), causing the completion handler to incorrectly revert
   a deleted filter back to ACTIVE.

Signed-off-by: Petr Oros <poros@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c     | 5 ++++-
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 4 ++++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 212a23ead20c57..9bcf34f581e748 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -816,11 +816,14 @@ static void iavf_del_vlan(struct iavf_adapter *adapter, struct iavf_vlan vlan)
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
index 9f2b64bb4ed9e7..d5264e1d5d5699 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -2877,9 +2877,13 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		spin_unlock_bh(&adapter->adv_rss_lock);
 		}
 		break;
+	case VIRTCHNL_OP_ADD_VLAN:
 	case VIRTCHNL_OP_ADD_VLAN_V2: {
 		struct iavf_vlan_filter *f;
 
+		if (v_retval)
+			break;
+
 		spin_lock_bh(&adapter->mac_vlan_list_lock);
 		list_for_each_entry(f, &adapter->vlan_filter_list, list) {
 			if (f->state == IAVF_VLAN_ADDING)
-- 
2.52.0

