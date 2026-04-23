Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id R8oYG/4Y6mmzuAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 15:05:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BF0452722
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 15:05:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB92E40310;
	Thu, 23 Apr 2026 13:05:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yfoYB1QU0QlX; Thu, 23 Apr 2026 13:04:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B196A403F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776949499;
	bh=hNxPm0l1Sh7y0ewMYZbtJKVp2OY0iO3QRahnfY38HjY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Dic1PCFnkIqc8/o4L0GztUAM41HrVUqBc4Iult0Jfi1yGZ1bdI4MIybB5FupQuUCx
	 Xr9yOPBX3esKzUbMTYxCyWj0B38z/z40Hr1XXE7P/glL/JVt1ZW+9u0nAWLA9Bpiol
	 ZVaI41IDVwpG4JfyPsvY7WVoXIURHDYli+HpcU6B54cF5nfYJ13BGatRRi57JIZJND
	 6d89lS0B5KPqV4xctxPhu3UoP/2egeCLvYpWAcuqgEHjtol+fokQy669EtU1ZEttdW
	 45DGe9hlRgiZk2tAEqrgZyV3rpYSVGFln1qL2QYDXjEMqXI/4nKmjpb1VWd6PZ4fuW
	 XT9HOtP4PLHwg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B196A403F5;
	Thu, 23 Apr 2026 13:04:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 676F6206
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 13:04:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4CC7E6059E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 13:04:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fw6et_B1HjwT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2026 13:04:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=jtornosm@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8C76960B36
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C76960B36
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8C76960B36
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 13:04:51 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-380-gryGd0IUPd6ToVTN0eyAgA-1; Thu,
 23 Apr 2026 09:04:45 -0400
X-MC-Unique: gryGd0IUPd6ToVTN0eyAgA-1
X-Mimecast-MFC-AGG-ID: gryGd0IUPd6ToVTN0eyAgA_1776949482
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 76A0A1935303; Thu, 23 Apr 2026 13:04:42 +0000 (UTC)
Received: from fedora.redhat.com (unknown [10.44.32.35])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 4036E19560AB; Thu, 23 Apr 2026 13:04:37 +0000 (UTC)
From: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 aleksandr.loktionov@intel.com, jacob.e.keller@intel.com, horms@kernel.org,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
Date: Thu, 23 Apr 2026 15:04:05 +0200
Message-ID: <20260423130405.139568-5-jtornosm@redhat.com>
In-Reply-To: <20260423130405.139568-1-jtornosm@redhat.com>
References: <20260423130405.139568-1-jtornosm@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-MFC-PROC-ID: MnXGOP_7jSAfP4xv52G9WYWht6ia3YVFK0AP_wncd-I_1776949482
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1776949490;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hNxPm0l1Sh7y0ewMYZbtJKVp2OY0iO3QRahnfY38HjY=;
 b=Elh+3OeFvqIl4ZvNclOeZV6aLq5o0L1YxG0mKp0ylv1r9Xm7dGcfnrAexI7xoZRo/sKMEx
 hL9+7MK+KfEDhFQsFjL85jdILYJ1bBIvfc7xBcZZCwoJNegZCq7axBESxgOm/woj+DNrKm
 E76nSZOrc0HLyHjfhbQKPdHT2Z8zqok=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Elh+3OeF
Subject: [Intel-wired-lan] [PATCH net v4 4/4] ice: skip unnecessary VF reset
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:horms@kernel.org,m:jesse.brandeburg@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jtornosm@redhat.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,sashiko.dev:url];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[jtornosm@redhat.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jtornosm@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 27BF0452722
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Similar to the i40e fix, ice_set_vf_trust() unconditionally calls
ice_reset_vf() when the trust setting changes. While the delay is smaller
than i40e this reset is still unnecessary in most cases.

Additionally, the original code has a race condition: it deletes MAC LLDP
filters BEFORE resetting the VF. During this deletion, the VF is still
ACTIVE and can add new MAC LLDP filters concurrently, potentially
corrupting the filter list.

When granting trust, no reset is needed - we can just set the capability
flag to allow privileged operations.

When revoking trust, we need to:
1. Clear the capability flag to block privileged operations
2. Disable promiscuous mode if it was enabled (trusted VFs can enable it)
3. Only reset if MAC LLDP filters exist (to clean them up)

When we do reset (MAC LLDP case), we fix the race condition by resetting
first to clear VF state (which blocks new MAC LLDP filter additions), then
delete existing filters safely. During cleanup, vf->trusted remains true so
ice_vf_is_lldp_ena() works properly. Only after cleanup do we set
vf->trusted = false.

When we don't reset, we manually handle capability flag and promiscuous
mode via helper function.

The ice driver already has logic to clean up MAC LLDP filters when
removing trust. After this cleanup, the VF reset is only necessary if
there were actually filters to remove (num_mac_lldp was non-zero).

This saves time and eliminates unnecessary service disruption when
changing VF trust settings in most cases, while properly handling filter
cleanup.

Fixes: 2296345416b0 ("ice: receive LLDP on trusted VFs")
Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
---
v4:
    - Address AI review (sashiko.dev) from Simon Horman:
      vf->trusted ordering bug
    - Fix upstream race condition when comparing with i40e code
    - Apply capability flag and promiscuous mode fixes from i40e AI review
    - Add helper function ice_setup_vf_trust() for non-reset path
    - Export ice_vf_clear_all_promisc_modes() for code reuse 
v3: https://lore.kernel.org/all/20260414110006.124286-5-jtornosm@redhat.com/

 drivers/net/ethernet/intel/ice/ice_sriov.c  | 41 +++++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_vf_lib.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.h |  1 +
 3 files changed, 39 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 7e00e091756d..d0da7f6adc23 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1364,6 +1364,34 @@ int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 	return __ice_set_vf_mac(ice_netdev_to_pf(netdev), vf_id, mac);
 }
 
+/**
+ * ice_setup_vf_trust - Enable/disable VF trust mode without reset
+ * @vf: VF to configure
+ * @setting: trust setting
+ *
+ * Manually handle capability flag and promiscuous mode when changing trust
+ * without performing a VF reset.
+ * When reset is performed, this is not necessary as the reset procedure
+ * already handles this.
+ **/
+static void ice_setup_vf_trust(struct ice_vf *vf, bool setting)
+{
+	struct ice_vsi *vsi;
+
+	if (setting) {
+		set_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
+	} else {
+		clear_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
+
+		if (test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states) ||
+		    test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states)) {
+			vsi = ice_get_vf_vsi(vf);
+			if (vsi)
+				ice_vf_clear_all_promisc_modes(vf, vsi);
+		}
+	}
+}
+
 /**
  * ice_set_vf_trust
  * @netdev: network interface device structure
@@ -1399,11 +1427,16 @@ int ice_set_vf_trust(struct net_device *netdev, int vf_id, bool trusted)
 
 	mutex_lock(&vf->cfg_lock);
 
-	while (!trusted && vf->num_mac_lldp)
-		ice_vf_update_mac_lldp_num(vf, ice_get_vf_vsi(vf), false);
-
+	/* Reset only if revoking trust with MAC LLDP filters */
+	if (!trusted && vf->num_mac_lldp) {
+		ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
+		while (vf->num_mac_lldp)
+			ice_vf_update_mac_lldp_num(vf, ice_get_vf_vsi(vf), false);
+	} else {
+		ice_setup_vf_trust(vf, trusted);
+	}
 	vf->trusted = trusted;
-	ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
+
 	dev_info(ice_pf_to_dev(pf), "VF %u is now %strusted\n",
 		 vf_id, trusted ? "" : "un");
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index c8bc952f05cd..81bbf30e5c29 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -623,7 +623,7 @@ ice_vf_get_promisc_masks(struct ice_vf *vf, struct ice_vsi *vsi,
  *
  * Clear all promiscuous/allmulticast filters for a VF
  */
-static int
+int
 ice_vf_clear_all_promisc_modes(struct ice_vf *vf, struct ice_vsi *vsi)
 {
 	struct ice_pf *pf = vf->pf;
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 7a9c75d1d07c..a3501bd92311 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -310,6 +310,7 @@ bool ice_is_any_vf_in_unicast_promisc(struct ice_pf *pf);
 void
 ice_vf_get_promisc_masks(struct ice_vf *vf, struct ice_vsi *vsi,
 			 u8 *ucast_m, u8 *mcast_m);
+int ice_vf_clear_all_promisc_modes(struct ice_vf *vf, struct ice_vsi *vsi);
 int
 ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m);
 int
-- 
2.53.0

