Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLhsG/IY6mk7uAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 15:04:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FBF45270B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 15:04:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 629AC8067A;
	Thu, 23 Apr 2026 13:04:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dwQT4sX4jXHa; Thu, 23 Apr 2026 13:04:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8595183B8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776949484;
	bh=V4Q0MOn1u0gAM7/dNJGpsnMsr1o6R0pQuwhdX44mvZo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SBYqP3jKhMjOOX/s6yPZTOa/YXmqloxCgXwIO6WumosFY1Kveax69LHGB6Tl6Wo5D
	 dQE9TFu8gLht6X0A/otD8ym+TerU1RArv2B8O3DSJUyDIcEB/nf2Cj/1MvDqNVqVy/
	 wtJ+UCHHIIePGfqpSdLf15u2NKRwcmXTN2GiMP7TUInn6KsLIN8dktZfi+XnEhwP2T
	 olbFhQdiAIsSMp1+p+ji74eYVN8Ku1R5uH65wCBGkHNfJuJzgMNqhe2bJWGhk7Gy7Y
	 w0m+4SuV8ngqrsXZ5pslvXONxpW7e2Rq0zHM5ZReM1PtOFSdb4m+m0xAxkHyvPeNl/
	 HczU2WVo79JvA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8595183B8B;
	Thu, 23 Apr 2026 13:04:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 132E4206
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 13:04:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ED29D83B89
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 13:04:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0brcuwxhz_Nh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2026 13:04:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=jtornosm@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4F6B183B8B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4F6B183B8B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4F6B183B8B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 13:04:37 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-583-IprX85EhNc2mqjLH94ZZ7Q-1; Thu,
 23 Apr 2026 09:04:32 -0400
X-MC-Unique: IprX85EhNc2mqjLH94ZZ7Q-1
X-Mimecast-MFC-AGG-ID: IprX85EhNc2mqjLH94ZZ7Q_1776949470
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id DAFF619560A3; Thu, 23 Apr 2026 13:04:29 +0000 (UTC)
Received: from fedora.redhat.com (unknown [10.44.32.35])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 8C96E19560AB; Thu, 23 Apr 2026 13:04:25 +0000 (UTC)
From: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 aleksandr.loktionov@intel.com, jacob.e.keller@intel.com, horms@kernel.org,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
Date: Thu, 23 Apr 2026 15:04:03 +0200
Message-ID: <20260423130405.139568-3-jtornosm@redhat.com>
In-Reply-To: <20260423130405.139568-1-jtornosm@redhat.com>
References: <20260423130405.139568-1-jtornosm@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-MFC-PROC-ID: Z91TOhJZ7cwhBiGwpuD2Loy_vMxmAqe5UPaLyM-vL_g_1776949470
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1776949476;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=V4Q0MOn1u0gAM7/dNJGpsnMsr1o6R0pQuwhdX44mvZo=;
 b=XRjWG6O0ZhK+5MBlnNgsK+YuWDRahdxDailUZXFXPkpHcG8AlvfKseNNfnDVMA+NfsN83c
 cRZROyCx718C4BbI183xc/3AJo/k/hgnFjIbXatylJb+rCWtMNOoMg5R4vU6i+giSgCfva
 +qHILLlpq3PNL2kjmEciETcXOJxECCI=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=XRjWG6O0
Subject: [Intel-wired-lan] [PATCH net v4 2/4] i40e: skip unnecessary VF
 reset when setting trust
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
X-Spamd-Result: default: False [1.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:horms@kernel.org,m:jesse.brandeburg@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jtornosm@redhat.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jtornosm@redhat.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,sashiko.dev:url,osuosl.org:dkim];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jtornosm@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: F3FBF45270B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The current implementation triggers a VF reset when changing the trust
setting, causing a ~10 second delay during bonding setup.

In all the cases, the reset causes a ~10 second delay during which:
- VF must reinitialize completely
- Any in-progress operations (like bonding enslave) fail with timeouts
- VF is unavailable

When granting trust, no reset is needed - we can just set the capability
flag to allow privileged operations.

When revoking trust, we need to:
1. Clear the capability flag to block privileged operations
2. Disable promiscuous mode if it was enabled (trusted VFs can enable it)
3. Only reset if ADQ is enabled (to clean up cloud filters)

When we do reset (ADQ case), we reset first to clear VF_STATE_ACTIVE
(which blocks new cloud filter additions), then delete existing cloud
filters safely. This avoids the race condition where VF could add filters
during deletion.

When we don't reset, we manually handle capability flag and promiscuous
mode via helper function, eliminating the delay.

Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
---
v4: Address AI review (sashiko.dev) from Simon Horman:
    - Manually set/clear capability flag when not resetting
    - Explicitly disable promiscuous mode when revoking trust                                        
    - Fix cloud filter race: reset FIRST (clears VF_STATE_ACTIVE),
      delete filters AFTER (no race window)
    - Add helper function i40e_setup_vf_trust() for non-reset path
v3: https://lore.kernel.org/all/20260414110006.124286-3-jtornosm@redhat.com/

 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 42 ++++++++++++++-----
 1 file changed, 32 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index a26c3d47ec15..69f68fec6809 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -4943,6 +4943,30 @@ int i40e_ndo_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool enable)
 	return ret;
 }
 
+/**
+ * i40e_setup_vf_trust - Enable/disable VF trust mode without reset
+ * @vf: VF to configure
+ * @setting: trust setting
+ *
+ * Manually handle capability flag and promiscuous mode when changing trust
+ * without performing a VF reset.
+ * When reset is performed, this is not necessary as the reset procedure
+ * already handles this.
+ **/
+static void i40e_setup_vf_trust(struct i40e_vf *vf, bool setting)
+{
+	if (setting) {
+		set_bit(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
+	} else {
+		clear_bit(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
+
+		if (test_bit(I40E_VF_STATE_UC_PROMISC, &vf->vf_states) ||
+		    test_bit(I40E_VF_STATE_MC_PROMISC, &vf->vf_states))
+			i40e_config_vf_promiscuous_mode(vf, vf->lan_vsi_idx,
+							false, false);
+	}
+}
+
 /**
  * i40e_ndo_set_vf_trust
  * @netdev: network interface device structure of the pf
@@ -4987,19 +5011,17 @@ int i40e_ndo_set_vf_trust(struct net_device *netdev, int vf_id, bool setting)
 	set_bit(__I40E_MACVLAN_SYNC_PENDING, pf->state);
 	pf->vsi[vf->lan_vsi_idx]->flags |= I40E_VSI_FLAG_FILTER_CHANGED;
 
-	i40e_vc_reset_vf(vf, true);
+	/* Reset only if revoking trust with ADQ (for cloud filter cleanup) */
+	if (vf->adq_enabled && !setting) {
+		i40e_vc_reset_vf(vf, true);
+		i40e_del_all_cloud_filters(vf);
+	} else {
+		i40e_setup_vf_trust(vf, setting);
+	}
+
 	dev_info(&pf->pdev->dev, "VF %u is now %strusted\n",
 		 vf_id, setting ? "" : "un");
 
-	if (vf->adq_enabled) {
-		if (!vf->trusted) {
-			dev_info(&pf->pdev->dev,
-				 "VF %u no longer Trusted, deleting all cloud filters\n",
-				 vf_id);
-			i40e_del_all_cloud_filters(vf);
-		}
-	}
-
 out:
 	clear_bit(__I40E_VIRTCHNL_OP_PENDING, pf->state);
 	return ret;
-- 
2.53.0

