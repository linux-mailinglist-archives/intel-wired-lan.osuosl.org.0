Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5981E377F87
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 May 2021 11:39:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F008F40610;
	Mon, 10 May 2021 09:39:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MfadBTrm1E13; Mon, 10 May 2021 09:39:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ACF0440452;
	Mon, 10 May 2021 09:39:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7F5401BF316
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 09:39:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6E7CE400CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 09:39:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rzULiAqEOhpx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 May 2021 09:39:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B6454400C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 09:39:19 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id v12so15858517wrq.6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 02:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZUYE8uhwJ5aoRnKQOShutBC+Cl1nbGcNA8ZVeVX77ro=;
 b=g6VAjI18Lug5NcuzobpmsdpjILQ2lxpBmOJUpRwhUHQY+xI8gLTxoq5L7sSrvLrwxy
 WS6i0J7xjBsz36UdipReASh4l5FBMbQ8Ilv8H9HYZJIxHrNOOTXuob1S1zdgooRhkxWV
 lHTOx9ZNADFpbtaw135iFb2mAOe8P6KT3UqY6yZNBSO08nLyZz7peAQ3xfvms01ySAuP
 I3qU6FsedXsL+lZZWDv09C0nni3mHGep2ilXF0GIkhMP85Gq5Hn36axO5n7vW4e9qnCk
 R588ESAM2rYsxOp3IFXiQJv+hgOkuEsKDbIKVIc4I0yornrSwBKUfjOdP4v+geVA4bvt
 7gtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZUYE8uhwJ5aoRnKQOShutBC+Cl1nbGcNA8ZVeVX77ro=;
 b=pqL1ilULhBEc7uuINpFnQu1UoUtdxGD24p5COMXE3cwFcbceRdeawHmVqaM297k1uu
 Gs92cH3gjrH9wytDad3ZE5tcDRQU1BoUU4MNZC6jddnbnBJFdTvd449C1fEIHcLYBhLR
 WZ5WmRv2lZGfeG5eEvoTyKjCKA+LmoCDr0M462pmUIgAFjlxlmrkkS+Af8fU17NuohJs
 9aoHh8I2cFl/ArXndukx1as6X0Jo0l+fhY0tO0a8wjEG0ECbRKFNDazBEpu/6aGO/qgd
 U0lbzZCu/WVYNsoipmpWBiEPR1d9KV6TAyA56pDuMGiYS/m76gG/UOZq+Si+7tJ2SU6F
 I3wg==
X-Gm-Message-State: AOAM533at/qBmKESSNPEOcUIxGfGpchGlPeC01t1vw/Wjhht0kgiHHzh
 2uftNQLJHsmCZfc1iWCF/OY=
X-Google-Smtp-Source: ABdhPJxpY8ooez7lOvBhPv0kqt2ownholonszizPwCfgQoTwG1Y4eWCQ4FeqfLhCkEHfkl5xR/LG/A==
X-Received: by 2002:a05:6000:110c:: with SMTP id
 z12mr28866989wrw.188.1620639557856; 
 Mon, 10 May 2021 02:39:17 -0700 (PDT)
Received: from localhost.localdomain (h-47-246.A165.priv.bahnhof.se.
 [46.59.47.246])
 by smtp.gmail.com with ESMTPSA id i2sm25892933wro.0.2021.05.10.02.39.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 May 2021 02:39:17 -0700 (PDT)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, maciej.fijalkowski@intel.com
Date: Mon, 10 May 2021 11:38:49 +0200
Message-Id: <20210510093854.31652-2-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210510093854.31652-1-magnus.karlsson@gmail.com>
References: <20210510093854.31652-1-magnus.karlsson@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net v2 1/6] i40e: add correct
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

Add missing exception tracing to XDP when a number of different errors
can occur. The support was only partial. Several errors where not
logged which would confuse the user quite a lot not knowing where and
why the packets disappeared.

Fixes: 74608d17fe29 ("i40e: add support for XDP_TX action")
Fixes: 0a714186d3c0 ("i40e: add AF_XDP zero-copy Rx support")
Reported-by: Jesper Dangaard Brouer <brouer@redhat.com>
Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 7 ++++++-
 drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 8 ++++++--
 2 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index de70c16ef619..b883ab809df3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2313,15 +2313,20 @@ static int i40e_run_xdp(struct i40e_ring *rx_ring, struct xdp_buff *xdp)
 	case XDP_TX:
 		xdp_ring = rx_ring->vsi->xdp_rings[rx_ring->queue_index];
 		result = i40e_xmit_xdp_tx_ring(xdp, xdp_ring);
+		if (result == I40E_XDP_CONSUMED)
+			goto out_failure;
 		break;
 	case XDP_REDIRECT:
 		err = xdp_do_redirect(rx_ring->netdev, xdp, xdp_prog);
-		result = !err ? I40E_XDP_REDIR : I40E_XDP_CONSUMED;
+		if (err)
+			goto out_failure;
+		result = I40E_XDP_REDIR;
 		break;
 	default:
 		bpf_warn_invalid_xdp_action(act);
 		fallthrough;
 	case XDP_ABORTED:
+out_failure:
 		trace_xdp_exception(rx_ring->netdev, xdp_prog, act);
 		fallthrough; /* handle aborts by dropping packet */
 	case XDP_DROP:
diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 46d884417c63..68f177a86403 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -162,9 +162,10 @@ static int i40e_run_xdp_zc(struct i40e_ring *rx_ring, struct xdp_buff *xdp)
 
 	if (likely(act == XDP_REDIRECT)) {
 		err = xdp_do_redirect(rx_ring->netdev, xdp, xdp_prog);
-		result = !err ? I40E_XDP_REDIR : I40E_XDP_CONSUMED;
+		if (err)
+			goto out_failure;
 		rcu_read_unlock();
-		return result;
+		return I40E_XDP_REDIR;
 	}
 
 	switch (act) {
@@ -173,11 +174,14 @@ static int i40e_run_xdp_zc(struct i40e_ring *rx_ring, struct xdp_buff *xdp)
 	case XDP_TX:
 		xdp_ring = rx_ring->vsi->xdp_rings[rx_ring->queue_index];
 		result = i40e_xmit_xdp_tx_ring(xdp, xdp_ring);
+		if (result == I40E_XDP_CONSUMED)
+			goto out_failure;
 		break;
 	default:
 		bpf_warn_invalid_xdp_action(act);
 		fallthrough;
 	case XDP_ABORTED:
+out_failure:
 		trace_xdp_exception(rx_ring->netdev, xdp_prog, act);
 		fallthrough; /* handle aborts by dropping packet */
 	case XDP_DROP:
-- 
2.29.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
