Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cG4GB2Ee3mk1ngkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 13:00:49 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E863F90D0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 13:00:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7D7A61CDA;
	Tue, 14 Apr 2026 11:00:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U5NRqt5CCZTK; Tue, 14 Apr 2026 11:00:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3AD5D61CDB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776164446;
	bh=VAmbrQbBI4SBbRZx1DWmHOcKHdFiGv6B3VCsYo5YKNM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BwVm1SjeOQIK4/Vk5OKLDrL8ZqII5DJnQdzf2Q2d0T51FKakwCKFKXVx2yT1Eo8Eb
	 gqN2c8+O9puG3HfL9HJCxQPUeC0d4b6uQjdWOeAPdZq7TS9EbLQhiNWW5tyDJHhGwQ
	 RhFYuNDWOA/MCUIcxTNHQndC/JcLoJYuTqKaS2vUj+fxznB2vowkIEC7sVtoQygQv0
	 pLE+9ScWQUZBxWhG0VimGnL4P3CfiOFNFqYl97goqzvV8367muInPYM/Gd2iLwsNYf
	 KlQhwHPQbixqTNZHJ3Nkt9EGWZHepW3db4n+JGUthZyYMrVEVv3/GhVHsRs6+wHesC
	 ZIx/r64sDOf4A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3AD5D61CDB;
	Tue, 14 Apr 2026 11:00:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 249B8283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 11:00:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 15B8761CD4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 11:00:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jVLbsEliDPN5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 11:00:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=jtornosm@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6D0FB61CB8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D0FB61CB8
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6D0FB61CB8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 11:00:43 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-173-LDUkDDjlMG2Z7qpSdvqFag-1; Tue,
 14 Apr 2026 07:00:38 -0400
X-MC-Unique: LDUkDDjlMG2Z7qpSdvqFag-1
X-Mimecast-MFC-AGG-ID: LDUkDDjlMG2Z7qpSdvqFag_1776164437
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 4BF2819560A3; Tue, 14 Apr 2026 11:00:37 +0000 (UTC)
Received: from fedora.redhat.com (unknown [10.44.48.43])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id EACFA3000C21; Tue, 14 Apr 2026 11:00:33 +0000 (UTC)
From: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
Date: Tue, 14 Apr 2026 13:00:05 +0200
Message-ID: <20260414110006.124286-5-jtornosm@redhat.com>
In-Reply-To: <20260414110006.124286-1-jtornosm@redhat.com>
References: <20260414110006.124286-1-jtornosm@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-MFC-PROC-ID: zAHQdfVg7paI1g7UMKSpVjRn7zqpEnjEqQsuxH5kCIQ_1776164437
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1776164442;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VAmbrQbBI4SBbRZx1DWmHOcKHdFiGv6B3VCsYo5YKNM=;
 b=WGdNQbYY0E9HZttsnNrEtqlTMmRYMcLDq9a48AvhfJ0L/whmlk1fsD5iEVlBuLbbFCOgmW
 B9d8m/y6SgjTMn/0WPOwLAN+2htgKtV+4oQa/3ZtCyYWS11lWqHbk1rsJQAO4tTLuzSCLQ
 RfKEdYNK4DVSVIOqBcWEq5+APMXDZPA=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=WGdNQbYY
Subject: [Intel-wired-lan] [PATCH net v3 4/5] ice: skip unnecessary VF reset
 when setting trust
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jtornosm@redhat.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:jesse.brandeburg@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jtornosm@redhat.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[jtornosm@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 86E863F90D0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Similar to the i40e fix, ice_set_vf_trust() unconditionally calls
ice_reset_vf() when the trust setting changes.

The ice driver already has logic to clean up MAC LLDP filters when
removing trust, which is the only operation that requires filter
synchronization. After this cleanup, the VF reset is only necessary if
there were actually filters to remove.

For all other trust state changes (setting trust, or removing trust
when no filters exist), the reset is unnecessary as filter
synchronization happens naturally through normal VF operations.

Fix by only triggering the VF reset when removing trust AND filters
were actually cleaned up (num_mac_lldp was non-zero).

This saves some time and eliminates unnecessary service disruption when
changing VF trust settings if not necessary.

Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 7e00e091756d..23f692b1e86c 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1399,14 +1399,19 @@ int ice_set_vf_trust(struct net_device *netdev, int vf_id, bool trusted)
 
 	mutex_lock(&vf->cfg_lock);
 
-	while (!trusted && vf->num_mac_lldp)
-		ice_vf_update_mac_lldp_num(vf, ice_get_vf_vsi(vf), false);
-
 	vf->trusted = trusted;
-	ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
 	dev_info(ice_pf_to_dev(pf), "VF %u is now %strusted\n",
 		 vf_id, trusted ? "" : "un");
 
+	/* Only reset VF if removing trust and there are MAC LLDP filters
+	 * to clean up. Reset is needed to ensure filter removal completes.
+	 */
+	if (!trusted && vf->num_mac_lldp) {
+		while (vf->num_mac_lldp)
+			ice_vf_update_mac_lldp_num(vf, ice_get_vf_vsi(vf), false);
+		ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
+	}
+
 	mutex_unlock(&vf->cfg_lock);
 
 out_put_vf:
-- 
2.53.0

