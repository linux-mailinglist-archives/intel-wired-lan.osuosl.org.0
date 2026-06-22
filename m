Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id l7tSABXuOGrNkAcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 10:11:01 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D42A6AD8C6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 10:11:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=uGWphGVu;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=redhat.com (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 028F46F81C;
	Mon, 22 Jun 2026 08:10:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iUe4vHAaFsWh; Mon, 22 Jun 2026 08:10:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D9C8C6F773
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782115856;
	bh=UXZOP+NwpCh1BuWnj4b2yaRK6yxmJd5wVcCu1u/UBKQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=uGWphGVuUNRoc8sO+LA/lLp6ra8cUAj+671PEJ0Qkc4+RHMZpTa1KJbE0Ue7xVZuJ
	 XTKVpV9ud7aHH+EYkW1bhceVS75/Ttgo6BEj49a+vQdp8Jk8VTKXFZHakjZE29Hosh
	 QWSzJhZnd23ldhBKesbjw3R2ZcYuKL2NiLbsvwaIND+kvrHwTGwfVnwus7jb7JgLel
	 jVeayIZZ/bxp1ruund2UoPN7a1oYWVHro8MI1IsudfatjB8fYXD6/gR13v70fr35uL
	 40SYV2nQjod1Vx927tpXINv+XMCijlddEVU7kFUUXx7qABOAgg5EeNMKB4gMCTGhOD
	 VEXFr52Cvl97g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9C8C6F773;
	Mon, 22 Jun 2026 08:10:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id DCF19367
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 08:10:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C2BF542EA8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 08:10:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7qNlKcSqdz9p for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2026 08:10:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3000E42E61
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3000E42E61
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3000E42E61
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 08:10:53 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-117-aggsJLFBNk-VKOQ9s2tteA-1; Mon,
 22 Jun 2026 04:10:48 -0400
X-MC-Unique: aggsJLFBNk-VKOQ9s2tteA-1
X-Mimecast-MFC-AGG-ID: aggsJLFBNk-VKOQ9s2tteA_1782115847
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 493E21955E88; Mon, 22 Jun 2026 08:10:46 +0000 (UTC)
Received: from ShadowPeak.redhat.com (unknown [10.44.33.83])
 by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 82C9318005B5; Mon, 22 Jun 2026 08:10:42 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Mon, 22 Jun 2026 10:10:30 +0200
Message-ID: <20260622081030.2312129-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-MFC-PROC-ID: hnqtSoYggOf9I1RMYPOnMwGTOq_c3HhMQ2Iqvs5usOQ_1782115847
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1782115852;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=UXZOP+NwpCh1BuWnj4b2yaRK6yxmJd5wVcCu1u/UBKQ=;
 b=cOhjE5E6gLClfOvWR5saAE7YDHEHDXAXD4sNDqfEzxLN0dc/wP62Ndb7asZPvcq6Dp8OTe
 dBOZDzKPcb6eLDIatU7TXE2SuCZaJTb4MPSPk6cYlddb2+A4smZmvYerl1vxu6StIk258i
 F8RYUd9OV5jzRM4BvLK4WsA/DtBWAnw=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=cOhjE5E6
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: clear the default forwarding
 VSI rule when releasing a VSI
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
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:michal.swiatkowski@linux.intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
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
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6D42A6AD8C6

When a VSI is configured as the switch's default forwarding VSI
(ICE_SW_LKUP_DFLT) and is then torn down, the rule is left behind in
the switch. ice_vsi_release() no longer removes it, and the SR-IOV VF
free path (ice_free_vfs() -> ice_free_vf_res() -> ice_vf_vsi_release()
-> ice_vsi_release()) does not disable promiscuous mode either, which
only happens on VF reset in ice_vf_clear_all_promisc_modes().

A trusted VF that enters unicast promiscuous mode becomes the default
forwarding VSI (this is the default mode, when the PF does not have VF
true-promiscuous mode enabled). If the VFs are then destroyed without
the VF first leaving promiscuous mode, the ICE_SW_LKUP_DFLT rule for
the now-freed VSI is leaked. When VFs are recreated, a VSI reuses the
freed hw_vsi_id. If it is assigned a different VSI handle than the
leaked rule holds, ice_set_dflt_vsi() does not recognize it as
already-default, and ice_add_update_vsi_list() folds the dangling
(freed) handle into a VSI list, which the firmware rejects. The VSI
handle assigned on re-creation varies, so the failure is intermittent
rather than every cycle.

Reproduce by repeatedly running the cycle below on the two ports of the
same card, where $VF0 and $VF1 are the netdevs of vf 15 once they
appear. The VF must be brought up so iavf actually pushes the unicast
promiscuous request, and the rule must settle before the VFs are torn
down again:

  echo 16 > /sys/class/net/$PF0/device/sriov_numvfs
  echo 16 > /sys/class/net/$PF1/device/sriov_numvfs
  ip link set $PF0 vf 15 trust on
  ip link set $PF1 vf 15 trust on
  ip link set $VF0 up
  ip link set $VF1 up
  ip link set $VF0 promisc on
  ip link set $VF1 promisc on
  sleep 1
  echo 0 > /sys/class/net/$PF0/device/sriov_numvfs
  echo 0 > /sys/class/net/$PF1/device/sriov_numvfs

Within a few cycles the ice PF and iavf VF log:

  Failed to set VSI 25 as the default forwarding VSI, error -22
  Turning on/off promiscuous mode for VF 63 failed, error: -22
  PF returned error -53 (IAVF_ERR_ADMIN_QUEUE_ERROR) to our request 14

This cleanup used to live in ice_vsi_release() but was dropped by the
referenced refactor. Restore it. Clear the default forwarding VSI rule
in ice_vsi_release() when this VSI owns it, which covers every teardown
path.

Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
Signed-off-by: Petr Oros <poros@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 2717cc31bff8fe..408464434506ef 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2872,6 +2872,9 @@ int ice_vsi_release(struct ice_vsi *vsi)
 		return -ENODEV;
 	pf = vsi->back;
 
+	if (ice_is_vsi_dflt_vsi(vsi))
+		ice_clear_dflt_vsi(vsi);
+
 	if (test_bit(ICE_FLAG_RSS_ENA, pf->flags))
 		ice_rss_clean(vsi);
 
-- 
2.53.0

