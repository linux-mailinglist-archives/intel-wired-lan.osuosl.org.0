Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A490369009
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 12:05:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C033E60DD7;
	Fri, 23 Apr 2021 10:05:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Bf3GnNwRQLF; Fri, 23 Apr 2021 10:05:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7B5E60DD6;
	Fri, 23 Apr 2021 10:05:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D17BD1BF281
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 10:05:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CD68A8428B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 10:05:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qgjfqKsjP7Mn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Apr 2021 10:05:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ECFFF83CE9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 10:05:06 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id e5so19109562wrg.7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 03:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iFvprk5eZdrkDBhOM9vDGXqzXgRtJo1NH3HF5wiCJ8w=;
 b=YzzxEQMRiIeqQutvaaH7MQMjSEZV9WesqCo+090HU0LoJ8dQ0JqFIqgKXeiuYFsEfh
 SLk19tIX/fWagO2H9UVV1KvqnhtHzbMPn4J5ZZ1nQ68Vzjcfou7LnFR0jNEikUSTn3eH
 sEmYkEtbhxulzeAJFx7OxoF6ziJhl9ygsx9gmqGHsiv4/rZ3mEqk3sOdm3lGjuopTH2P
 +BXrO7Y1UObb8W2xFbSqrGHM4lImuj/03vEf1plC4g/C8yWZwwR5CKlpOANIhC5gnUfV
 udK+1fMeY/7oU8ueYzREghu6D8eNltauj0aNI+vjQCWyhFOlH9b9l0uW4d6+UCBFpsbQ
 ytkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iFvprk5eZdrkDBhOM9vDGXqzXgRtJo1NH3HF5wiCJ8w=;
 b=R1c8W36JZkZmp3b8kztT5xJFpKigFhUTM1xunTVIJhtDKtRKhQfQWG3Bp5v7niTFN3
 fk+M4ond1bP21Z2ZMOV9FZJ6LdVAVKssZtvkUo9nBFwUTb1gRU4SerlbXbRsfZWEkZs7
 baY9HCVoG13AG6+9DEMGx14KySyIKjU4LD6Wv1y4nfSxdXnE/Sykz0CLXyn7MElU7UGz
 jjAqKF0htibYtg5D4kG92uMpBlzzsV16pmsxb/bul00LmLJthw+Nj9YIA7BfcM+Z1BJH
 1USMURyYajzPBz4b1toq51NeCsWU8nfktRE3KyIvZF62t/Tglmf4roJ+vg0z27TqYO/v
 AmXg==
X-Gm-Message-State: AOAM530GwL0aYNyz9rhYCeFqU+99tVPs05AVhrLGfwa+KrUar/vMHmDf
 rBgDKRIATeon/nP3ySuxChc=
X-Google-Smtp-Source: ABdhPJz007+yIfG8kVQNq3vhnps8FNbFbz+ahSJoEBlbfrw6OaUIMmevEzGzQ3ylD4MBd1FHHT6LrA==
X-Received: by 2002:adf:d20b:: with SMTP id j11mr3744318wrh.292.1619172305240; 
 Fri, 23 Apr 2021 03:05:05 -0700 (PDT)
Received: from localhost.localdomain ([188.149.128.194])
 by smtp.gmail.com with ESMTPSA id t12sm8599481wrs.42.2021.04.23.03.05.04
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 23 Apr 2021 03:05:04 -0700 (PDT)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, maciej.fijalkowski@intel.com
Date: Fri, 23 Apr 2021 12:04:42 +0200
Message-Id: <20210423100446.15412-2-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210423100446.15412-1-magnus.karlsson@gmail.com>
References: <20210423100446.15412-1-magnus.karlsson@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net 1/5] i40e: add correct exception
 tracing for XDP
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
 drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 7 ++++++-
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 06b4271219b1..08fbb2ec7ff8 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2317,15 +2317,20 @@ static int i40e_run_xdp(struct i40e_ring *rx_ring, struct xdp_buff *xdp)
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
index 12ca84113587..ca7dd1afe37a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -166,15 +166,20 @@ static int i40e_run_xdp_zc(struct i40e_ring *rx_ring, struct xdp_buff *xdp)
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
-- 
2.29.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
