Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CFARGV9+72lKBwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 17:18:55 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 921A5475079
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 17:18:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B0A5404E9;
	Mon, 27 Apr 2026 15:18:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 187cyHeDtTUx; Mon, 27 Apr 2026 15:18:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C441404C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777303131;
	bh=eP255AJKi20CdWJSLl90PUo6dc/xnZcS6fxVydD/CJk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SZxcgXw8D99kkWHwoq4FKygaCF4Nqj4BRepXwwNbukyQ+Ap3XKUIzY8BbnmqRlM/h
	 6BCUOvLsMgOotEtGSnnPVvnPSe5VJJzTs6hwV9j2Z/jbVZ0iel2tr71kfUjw1sClvY
	 2MbKCspAcybANXWakF3QLQIg9HgB4dMWLffaSnME8EPzlTIh4bWv7zbBVsueEUc643
	 md66Ez4hdMTt2Zi4GkFCWPDk0UcvYfGX7fP++1EorxAp/7dQo4Hil7afo59EePwhVF
	 DF5jRNG45fErfky7NoKPanz0M0zDHzzjn9LN00PhTBu5lbyyONjp7U0QErV+ERA+22
	 iKFj42U2FJgEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C441404C8;
	Mon, 27 Apr 2026 15:18:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 121C91B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 15:18:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EAC934048D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 15:18:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MiDLZ4t-gDSk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2026 15:18:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C97BD404A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C97BD404A8
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C97BD404A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 15:18:46 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-551-fctzMtMrNLG8LE1L4Putxw-1; Mon,
 27 Apr 2026 11:18:41 -0400
X-MC-Unique: fctzMtMrNLG8LE1L4Putxw-1
X-Mimecast-MFC-AGG-ID: fctzMtMrNLG8LE1L4Putxw_1777303120
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id E4DA01956059; Mon, 27 Apr 2026 15:18:39 +0000 (UTC)
Received: from mschmidt-thinkpadp1gen4i.tpbc.com (unknown [10.44.34.211])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id A9401195608E; Mon, 27 Apr 2026 15:18:35 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Jacob Keller <jacob.e.keller@intel.com>,
 Petr Oros <poros@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Mon, 27 Apr 2026 17:18:26 +0200
Message-ID: <20260427151827.43342-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-MFC-PROC-ID: 5Jb_C9dJ06po5IaViaouu6YJC-WahVlO8A2pKvu1Rg4_1777303120
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1777303125;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=eP255AJKi20CdWJSLl90PUo6dc/xnZcS6fxVydD/CJk=;
 b=V4leo3pOwRt/3inuiLW+Hs/w8BCf9JVV62Z5TcltCLU9bwOVsLvGQ9SpC8lSQwGLO/Ij16
 tdHEI1WuQ3vcDg7DdayQNxUQCF/lQGNpxg1zgpPH2HrTao1d9WmA1TiyDB+ybR5lJ49qgj
 hl+xBMEn+PBKVTSeQcu5zAFV3e1OLdA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=V4leo3pO
Subject: [Intel-wired-lan] [PATCH net] ice: fix stats array overflow when VF
 requests more queues
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
X-Rspamd-Queue-Id: 921A5475079
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jacob.e.keller@intel.com,m:poros@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[mschmidt@redhat.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[atlassian.net:url];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mschmidt@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]

When a VF increases its queue count via VIRTCHNL_OP_REQUEST_QUEUES,
ice_vc_request_qs_msg() sets vf->num_req_qs and triggers a VF reset.
The reset calls ice_vf_reconfig_vsi(), which does ice_vsi_decfg()
followed by ice_vsi_cfg(). ice_vsi_decfg() does not free the per-ring
stats arrays. Inside ice_vsi_cfg_def(), ice_vsi_set_num_qs() updates
alloc_txq/alloc_rxq to the new larger value, but
ice_vsi_alloc_stat_arrays() returns early because the stats already
exist. ice_vsi_alloc_ring_stats() then iterates using the new larger
alloc_txq and writes beyond the bounds of the old, smaller
tx_ring_stats/rx_ring_stats pointer arrays, corrupting adjacent SLUB
metadata.

KASAN detects the bug:
 ==================================================================
 BUG: KASAN: slab-out-of-bounds in ice_vsi_alloc_ring_stats+0x385/0x4a0 [ice]
 Read of size 8 at addr ffff88810affea60 by task kworker/u131:7/221

 CPU: 24 UID: 0 PID: 221 Comm: kworker/u131:7 Not tainted 7.1.0-rc1+ #1 PREEMPT(lazy)
 ...
 Workqueue: ice ice_service_task [ice]
 Call Trace:
  <TASK>
  ...
  kasan_report+0xd7/0x120
  ice_vsi_alloc_ring_stats+0x385/0x4a0 [ice]
  ice_vsi_cfg_def+0x12e2/0x2060 [ice]
  ice_vsi_cfg+0xb5/0x3c0 [ice]
  ice_reset_vf+0x858/0xf80 [ice]
  ice_vc_request_qs_msg+0x1da/0x290 [ice]
  ice_vc_process_vf_msg+0xb15/0x1430 [ice]
  __ice_clean_ctrlq+0x70d/0x9d0 [ice]
  ice_service_task+0x840/0xf20 [ice]
  process_one_work+0x690/0xff0
  worker_thread+0x4d9/0xd20
  kthread+0x322/0x410
  ret_from_fork+0x332/0x660
  ret_from_fork_asm+0x1a/0x30
  </TASK>

 Allocated by task 2439:
  kasan_save_stack+0x1c/0x40
  kasan_save_track+0x10/0x30
  __kasan_kmalloc+0x96/0xb0
  __kmalloc_noprof+0x1d8/0x580
  ice_vsi_cfg_def+0x115c/0x2060 [ice]
  ice_vsi_cfg+0xb5/0x3c0 [ice]
  ice_vsi_setup+0x180/0x320 [ice]
  ice_start_vfs+0x1f3/0x590 [ice]
  ice_ena_vfs+0x66d/0x798 [ice]
  ice_sriov_configure.cold+0xe4/0x121 [ice]
  sriov_numvfs_store+0x279/0x480
  kernfs_fop_write_iter+0x331/0x4f0
  vfs_write+0x4c4/0xe40
  ksys_write+0x10c/0x240
  do_syscall_64+0xd9/0x650
  entry_SYSCALL_64_after_hwframe+0x76/0x7e

 The buggy address belongs to the object at ffff88810affea40
                which belongs to the cache kmalloc-32 of size 32
 The buggy address is located 0 bytes to the right of
                allocated 32-byte region [ffff88810affea40, ffff88810affea60)
 ...
 ==================================================================

ice_vsi_rebuild() handles this correctly by calling
ice_vsi_realloc_stat_arrays() before reconfiguration, but
ice_vf_reconfig_vsi() was missing this call.

Fix by calling ice_vsi_realloc_stat_arrays() in ice_vf_reconfig_vsi()
before ice_vsi_decfg(), mirroring the ice_vsi_rebuild() pattern. Set
vsi->req_txq/req_rxq from vf->num_req_qs so the realloc function knows
the target array size.

See the linked RHEL Jira item for a reproducer.

Fixes: 2a2cb4c6c181 ("ice: replace ice_vf_recreate_vsi() with ice_vf_reconfig_vsi()")
Closes: https://redhat.atlassian.net/browse/RHEL-164321
Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
Assisted-by: Claude:claude-opus-4-6 semcode
---
 drivers/net/ethernet/intel/ice/ice_lib.c    | 2 +-
 drivers/net/ethernet/intel/ice/ice_lib.h    | 1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 7 +++++++
 3 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 837b71b7b2b7..fc78176a2a8d 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3015,7 +3015,7 @@ ice_vsi_rebuild_set_coalesce(struct ice_vsi *vsi,
  * ice_vsi_realloc_stat_arrays - Frees unused stat structures or alloc new ones
  * @vsi: VSI pointer
  */
-static int
+int
 ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi)
 {
 	u16 req_txq = vsi->req_txq ? vsi->req_txq : vsi->alloc_txq;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 49454d98dcfe..6f7da84384e5 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -66,6 +66,7 @@ int ice_ena_vsi(struct ice_vsi *vsi, bool locked);
 void ice_vsi_decfg(struct ice_vsi *vsi);
 void ice_dis_vsi(struct ice_vsi *vsi, bool locked);
 
+int ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi);
 int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags);
 int ice_vsi_cfg(struct ice_vsi *vsi);
 struct ice_vsi *ice_vsi_alloc(struct ice_pf *pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 772f6b07340d..9edb2c14f553 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -268,6 +268,13 @@ static int ice_vf_reconfig_vsi(struct ice_vf *vf)
 
 	vsi->flags = ICE_VSI_FLAG_NO_INIT;
 
+	vsi->req_txq = vf->num_req_qs;
+	vsi->req_rxq = vf->num_req_qs;
+
+	err = ice_vsi_realloc_stat_arrays(vsi);
+	if (err)
+		return err;
+
 	ice_vsi_decfg(vsi);
 	ice_fltr_remove_all(vsi);
 
-- 
2.54.0

