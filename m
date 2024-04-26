Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A64388B3A47
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Apr 2024 16:44:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9101441F68;
	Fri, 26 Apr 2024 14:44:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q5XzEeOffum5; Fri, 26 Apr 2024 14:44:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B958A41EDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714142680;
	bh=xuq3eFnW4wuBkZ3mDODNgP4BiQjcXktdda7scHooKGY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=JRKQL54uoFTZEnkmDAcQ2Amn/zPpqSd9/MLJXDGJjAuQVLlFhphSviIGVt3zOGPXo
	 M5s6vVG0te+1a2XDW7QAeRCqVsiCuSlYIR7i0Q6uWN7ysvqGLQRLNzzkryVyE0dLIl
	 keYuXwVVYpQNiYRaeaa9wCdlzePFXxj4m1rUR1rut/3HDyn1g1ZMT1wZxg3aoDg9CD
	 xaLcyZvAS48Wx5pgetK91ND7Wr91+cHjTJBcDBi4IYY70Goezxt/DZpOom5/mTMuad
	 fY+mXzfUIzzld9ZoiSYiivCGYAcp0BDKzv8l1cDUQ/j4XMI8cqlooSA/3+UB+i3DlT
	 Q9MGFzRw8jiAA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B958A41EDA;
	Fri, 26 Apr 2024 14:44:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 558F31BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 14:44:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 41050613E2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 14:44:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G1H8HJXp6AMK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Apr 2024 14:44:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DA55E613B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA55E613B8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DA55E613B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 14:44:36 +0000 (UTC)
X-CSE-ConnectionGUID: 2/FfEzGATsefRWNe4lkAAQ==
X-CSE-MsgGUID: j2iET+ESRhSdMp359I1KgQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11056"; a="21027169"
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="21027169"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 07:44:36 -0700
X-CSE-ConnectionGUID: TSpeNl3CRVa+TG14ajS9gA==
X-CSE-MsgGUID: lRRvpSkZQn6dyH8QEoaxqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="25441219"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa007.fm.intel.com with ESMTP; 26 Apr 2024 07:44:33 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 26 Apr 2024 16:44:08 +0200
Message-ID: <20240426144408.1353962-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714142677; x=1745678677;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=c0dO8Re1PPSOl6/PX/WShnH30RI1DTXQ2uGy1lx3ZGY=;
 b=QxHf3TveYWXhXkZs6VpVLsMZ8hCHVNxNzGmRuJ5SDkv5NciWWk45Xut0
 US/KD4LApuDQ8VbilrbLhbvyx90hJVP/3oOByjv7yEYMouKaBQPT5TBBa
 vvOE4CS6cIrkxawuG02Lab7kQwHeNIsrXEcOgncH+sowT8eyQgIF0fEWG
 rPP7XGDToKC0mBblX7WyAxnglr1ePH6KsQ6LPNr9OlapAUHwkPVWb4kgG
 ZTzGcp40dhhaFENcFdFrO4r35g5vTDrWkxv4Cgue8YcEooaTSwsuo6OCT
 NoRiNHUGvjm4MrRnNnjb4ktGAg2oh+5IetB1d8jMTdwEhxUiVYGCOkxaq
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QxHf3Tve
Subject: [Intel-wired-lan] [PATCH iwl] idpf: don't enable NAPI and
 interrupts prior to allocating Rx buffers
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, idpf enables NAPI and interrupts prior to allocating Rx
buffers.
This may lead to frame loss (there are no buffers to place incoming
frames) and even crashes on quick ifup-ifdown. Interrupts must be
enabled only after all the resources are here and available.
Split interrupt init into two phases: initialization and enabling,
and perform the second only after the queues are fully initialized.
Note that we can't just move interrupt initialization down the init
process, as the queues must have correct a ::q_vector pointer set
and NAPI already added in order to allocate buffers correctly.
Also, during the deinit process, disable HW interrupts first and
only then disable NAPI. Otherwise, there can be a HW event leading
to napi_schedule(), but the NAPI will already be unavailable.

Fixes: d4d558718266 ("idpf: initialize interrupts and enable vport")
Reported-by: Michal Kubiak <michal.kubiak@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |  1 +
 drivers/net/ethernet/intel/idpf/idpf_lib.c  |  1 +
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 12 +++++++-----
 3 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 3d046b81e507..551391e20464 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -990,6 +990,7 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport);
 void idpf_vport_intr_update_itr_ena_irq(struct idpf_q_vector *q_vector);
 void idpf_vport_intr_deinit(struct idpf_vport *vport);
 int idpf_vport_intr_init(struct idpf_vport *vport);
+void idpf_vport_intr_ena(struct idpf_vport *vport);
 enum pkt_hash_types idpf_ptype_to_htype(const struct idpf_rx_ptype_decoded *decoded);
 int idpf_config_rss(struct idpf_vport *vport);
 int idpf_init_rss(struct idpf_vport *vport);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 5d3532c27d57..ae8a48c48070 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1394,6 +1394,7 @@ static int idpf_vport_open(struct idpf_vport *vport, bool alloc_res)
 	}
 
 	idpf_rx_init_buf_tail(vport);
+	idpf_vport_intr_ena(vport);
 
 	err = idpf_send_config_queues_msg(vport);
 	if (err) {
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 285da2177ee4..b023704bbbda 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3746,9 +3746,9 @@ static void idpf_vport_intr_ena_irq_all(struct idpf_vport *vport)
  */
 void idpf_vport_intr_deinit(struct idpf_vport *vport)
 {
+	idpf_vport_intr_dis_irq_all(vport);
 	idpf_vport_intr_napi_dis_all(vport);
 	idpf_vport_intr_napi_del_all(vport);
-	idpf_vport_intr_dis_irq_all(vport);
 	idpf_vport_intr_rel_irq(vport);
 }
 
@@ -4179,7 +4179,6 @@ int idpf_vport_intr_init(struct idpf_vport *vport)
 
 	idpf_vport_intr_map_vector_to_qs(vport);
 	idpf_vport_intr_napi_add_all(vport);
-	idpf_vport_intr_napi_ena_all(vport);
 
 	err = vport->adapter->dev_ops.reg_ops.intr_reg_init(vport);
 	if (err)
@@ -4193,17 +4192,20 @@ int idpf_vport_intr_init(struct idpf_vport *vport)
 	if (err)
 		goto unroll_vectors_alloc;
 
-	idpf_vport_intr_ena_irq_all(vport);
-
 	return 0;
 
 unroll_vectors_alloc:
-	idpf_vport_intr_napi_dis_all(vport);
 	idpf_vport_intr_napi_del_all(vport);
 
 	return err;
 }
 
+void idpf_vport_intr_ena(struct idpf_vport *vport)
+{
+	idpf_vport_intr_napi_ena_all(vport);
+	idpf_vport_intr_ena_irq_all(vport);
+}
+
 /**
  * idpf_config_rss - Send virtchnl messages to configure RSS
  * @vport: virtual port
-- 
2.44.0

