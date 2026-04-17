Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QBnzKwdE4mlh4AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 16:30:31 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6538741C10A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 16:30:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2F578149A;
	Fri, 17 Apr 2026 14:30:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NlGqRftexiCO; Fri, 17 Apr 2026 14:30:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 32CA381441
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776436225;
	bh=qRDouEYakfTZkhMNAyg/NTmNR2IdKqr6QrkWdzUnTo4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3itJfkVuTX/Bgf94e9nBMa5IoV0uoXBJdQEyu+F2DD1GROFzNqZRZsr4uhs5oHOZT
	 Cjle+BF7j1MvNI4NQORwmvSEF4VU1TFPoNpVbCVUrPpaidEERCH6W0ocdjt6r++w45
	 2dFZEDl+OzSpK122ZSGOZEZcWVCa/rRa+lFycJlUx0hIGUmou55ObO3pYeDHDmseuZ
	 OQjO1M5kHosNXH7m/yjE4cX7/8S4OAy8iDnGRr0vyi9O3ykUOt0GISxz+TBlfMlrzB
	 TCBlGevOUOI3XEFZ2xKl6uxXEz3RCe56l7bewyceFXv6rBQ4Gv0slwTPKkNLJq0len
	 sxM4HBZy5nEIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 32CA381441;
	Fri, 17 Apr 2026 14:30:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B8239396
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 14:30:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9DFDE81441
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 14:30:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kPlf_M1R_rko for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2026 14:30:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 86E7880887
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86E7880887
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 86E7880887
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 14:30:21 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-99-RMI_5dtWPXyyCSXpo-w3Xg-1; Fri,
 17 Apr 2026 10:30:14 -0400
X-MC-Unique: RMI_5dtWPXyyCSXpo-w3Xg-1
X-Mimecast-MFC-AGG-ID: RMI_5dtWPXyyCSXpo-w3Xg_1776436212
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 4BA7C1955DDB; Fri, 17 Apr 2026 14:30:12 +0000 (UTC)
Received: from ShadowPeak.redhat.com (unknown [10.44.32.76])
 by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 7DBCB180047F; Fri, 17 Apr 2026 14:30:07 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Fri, 17 Apr 2026 16:29:45 +0200
Message-ID: <eee27aa38501fb359aed227cb121ed552edbaa72.1776426683.git.poros@redhat.com>
In-Reply-To: <cover.1776426683.git.poros@redhat.com>
References: <cover.1776426683.git.poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-MFC-PROC-ID: eRsrKLe7hKQYJd2Wty8FLflTil0iOhXUiINBtG_p6fg_1776436212
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1776436220;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qRDouEYakfTZkhMNAyg/NTmNR2IdKqr6QrkWdzUnTo4=;
 b=HIsSvCsAleBiIhwDNG6QuhhHatbfTdpHqMVw4bX7EAo4TPwaeihmmpdtvdHh0O1fdS2ASN
 lAZUla7wj6+tMVH7EyLDKmF0fV4JoS2KbnxjXq3INuc0T+Nu9MPNa+KoSsH/1TdHHcVKvB
 wJkPPsitHn9ybdZYnFkOkoF+PYdYqpk=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=HIsSvCsA
Subject: [Intel-wired-lan] [PATCH iwl-net v2 4/4] iavf: add
 VIRTCHNL_OP_ADD_VLAN to success completion handler
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
X-Spamd-Result: default: False [3.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:przemyslawx.patynowski@intel.com,m:aaron.f.brown@intel.com,m:przemyslaw.kitszel@intel.com,m:mitch.a.williams@intel.com,m:edumazet@google.com,m:davem@davemloft.net,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:jesse.brandeburg@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:jedrzej.jagielski@intel.com,m:pabeni@redhat.com,m:rafal.romanowski@intel.com,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
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
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 6538741C10A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The V1 ADD_VLAN opcode had no success handler; filters sent via V1
stayed in ADDING state permanently.  Add a fallthrough case so V1
filters also transition ADDING -> ACTIVE on PF confirmation.

Critically, add an `if (v_retval) break` guard: the error switch in
iavf_virtchnl_completion() does NOT return after handling errors,
it falls through to the success switch.  Without this guard, a
PF-rejected ADD would incorrectly mark ADDING filters as ACTIVE,
creating a driver/HW mismatch where the driver believes the filter
is installed but the PF never accepted it.

For V2, this is harmless: iavf_vlan_add_reject() in the error
block already kfree'd all ADDING filters, so the success handler
finds nothing to transition.

Fixes: 968996c070ef ("iavf: Fix VLAN_V2 addition/rejection")
Signed-off-by: Petr Oros <poros@redhat.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 93ca79c3e3b535..4f2defd2331b17 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -2876,9 +2876,13 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
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

