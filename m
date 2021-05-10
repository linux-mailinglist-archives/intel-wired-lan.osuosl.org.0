Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E3145377F88
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 May 2021 11:39:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C2E9607A7;
	Mon, 10 May 2021 09:39:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Iu23505mP_sJ; Mon, 10 May 2021 09:39:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A1B1607CA;
	Mon, 10 May 2021 09:39:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7FD141BF316
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 09:39:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C5EE400CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 09:39:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AU3JaBMvnc3v for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 May 2021 09:39:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ACF9C400C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 09:39:20 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id a4so15881747wrr.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 02:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gJ24jMtfVd96yK7jKT2cYd+nQBdfHaBQjl52YeItdPE=;
 b=JlbZHLXkDCy4bzK91k18C4VTTUPUIcwMxego4GZjrjdtAMqZQFdiLY00HdIval+Tig
 vcp4roeukpCq4j9KSu7X+2FBN8oolg+AUpgBsSM0O0Kxw7/STyCfZyNTKraF4Zz2vTXP
 sYPWH49c/bNUm+S+YwulH9Pd+pZ9GfMaibTkepjgB87N2uQoGou0kQO3M9vRGWfqDXAL
 RPk7mmh30CNjXRpu1hhbHAlRgBYskQChJTAx2jF/c1cvnjP3MScMgTFSelZCEl0dEI7m
 k7AwgK+b6jHItqNbOsFpUkeiPD930oe3mBnqxoFAAqoCFIViYNx/ud/EYZ0pTXnZNJfq
 6hOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gJ24jMtfVd96yK7jKT2cYd+nQBdfHaBQjl52YeItdPE=;
 b=Ygh956L6hBF41GSyO7emVNFNdVRAfR3Igr64F39K2t2H9U5GKkr01DGAgmh5tD/uvg
 WMYOk8tRtVvIHqN5lbgpE7GTbU8A22eg6u2PldiISsRFVY01j1VvbO62d03RwnbraR52
 6y9upQK9kQ0J+ypiw2UZBSb0Vh6accN2hRiHITHQchyWo1ZB7m1F9dX+YxgRleN2Cok1
 ZBLpCOWAnyEl67qjd8qVZs/spwYwuvqm8cQSqNFJdtwGbgnq85VFAY3CpBFy7pK/2U1q
 eBwPEhU3c7LCgPfA3qKrkklcZHIWzGR7C+6wa/eSGcVaWdzBUZmmmyuKBcHWi0JJCKN6
 6m2g==
X-Gm-Message-State: AOAM530XUFM2pw8wrEqQqCMtEH9BzgyOnbOg0SYq6XXI68aSuaDDONF9
 Gxpme0xX2Dk5Z1kxIeMFFW8=
X-Google-Smtp-Source: ABdhPJxnpIiD0k4t+3U3jRK+IdwKX8g/C+ai+VmERwyYWvoENT7g+7O77KjOQqcxa0NdpLJMoQon6A==
X-Received: by 2002:a05:6000:144f:: with SMTP id
 v15mr28720897wrx.182.1620639559046; 
 Mon, 10 May 2021 02:39:19 -0700 (PDT)
Received: from localhost.localdomain (h-47-246.A165.priv.bahnhof.se.
 [46.59.47.246])
 by smtp.gmail.com with ESMTPSA id i2sm25892933wro.0.2021.05.10.02.39.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 May 2021 02:39:18 -0700 (PDT)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, maciej.fijalkowski@intel.com
Date: Mon, 10 May 2021 11:38:50 +0200
Message-Id: <20210510093854.31652-3-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210510093854.31652-1-magnus.karlsson@gmail.com>
References: <20210510093854.31652-1-magnus.karlsson@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net v2 2/6] ice: add correct
 exception tracing for XDP
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
Cc: netdev@vger.kernel.org, brouer@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Magnus Karlsson <magnus.karlsson@intel.com>

Add missing exception tracing to XDP when a number of different
errors can occur. The support was only partial. Several errors
where not logged which would confuse the user quite a lot not
knowing where and why the packets disappeared.

Fixes: efc2214b6047 ("ice: Add support for XDP")
Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Reported-by: Jesper Dangaard Brouer <brouer@redhat.com>
Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 12 +++++++++---
 drivers/net/ethernet/intel/ice/ice_xsk.c  |  8 ++++++--
 2 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index e2b4b29ea207..93e5d9ebfd74 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -523,7 +523,7 @@ ice_run_xdp(struct ice_ring *rx_ring, struct xdp_buff *xdp,
 	    struct bpf_prog *xdp_prog)
 {
 	struct ice_ring *xdp_ring;
-	int err;
+	int err, result;
 	u32 act;
 
 	act = bpf_prog_run_xdp(xdp_prog, xdp);
@@ -532,14 +532,20 @@ ice_run_xdp(struct ice_ring *rx_ring, struct xdp_buff *xdp,
 		return ICE_XDP_PASS;
 	case XDP_TX:
 		xdp_ring = rx_ring->vsi->xdp_rings[smp_processor_id()];
-		return ice_xmit_xdp_buff(xdp, xdp_ring);
+		result = ice_xmit_xdp_buff(xdp, xdp_ring);
+		if (result == ICE_XDP_CONSUMED)
+			goto out_failure;
+		return result;
 	case XDP_REDIRECT:
 		err = xdp_do_redirect(rx_ring->netdev, xdp, xdp_prog);
-		return !err ? ICE_XDP_REDIR : ICE_XDP_CONSUMED;
+		if (err)
+			goto out_failure;
+		return ICE_XDP_REDIR;
 	default:
 		bpf_warn_invalid_xdp_action(act);
 		fallthrough;
 	case XDP_ABORTED:
+out_failure:
 		trace_xdp_exception(rx_ring->netdev, xdp_prog, act);
 		fallthrough;
 	case XDP_DROP:
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index faa7b8d96adb..7228e4d427bc 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -473,9 +473,10 @@ ice_run_xdp_zc(struct ice_ring *rx_ring, struct xdp_buff *xdp)
 
 	if (likely(act == XDP_REDIRECT)) {
 		err = xdp_do_redirect(rx_ring->netdev, xdp, xdp_prog);
-		result = !err ? ICE_XDP_REDIR : ICE_XDP_CONSUMED;
+		if (err)
+			goto out_failure;
 		rcu_read_unlock();
-		return result;
+		return ICE_XDP_REDIR;
 	}
 
 	switch (act) {
@@ -484,11 +485,14 @@ ice_run_xdp_zc(struct ice_ring *rx_ring, struct xdp_buff *xdp)
 	case XDP_TX:
 		xdp_ring = rx_ring->vsi->xdp_rings[rx_ring->q_index];
 		result = ice_xmit_xdp_buff(xdp, xdp_ring);
+		if (result == ICE_XDP_CONSUMED)
+			goto out_failure;
 		break;
 	default:
 		bpf_warn_invalid_xdp_action(act);
 		fallthrough;
 	case XDP_ABORTED:
+out_failure:
 		trace_xdp_exception(rx_ring->netdev, xdp_prog, act);
 		fallthrough;
 	case XDP_DROP:
-- 
2.29.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
