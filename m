Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAAA2CC053
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Dec 2020 16:07:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 64BDD2E272;
	Wed,  2 Dec 2020 15:07:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hwi0uSuRFu07; Wed,  2 Dec 2020 15:07:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4B3292E270;
	Wed,  2 Dec 2020 15:07:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F3B021BF359
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 15:07:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F00D48701F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 15:07:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pbAmMrPAjbe2 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Dec 2020 15:07:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D18B886FDE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 15:07:39 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id e23so1222415pgk.12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Dec 2020 07:07:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bL8GQBSptP0Gq3pqr4BlBhH/zVnBYN2CeKoCMXNaK1I=;
 b=uo17RS5PP7aNMn3Hyk4DS49/NlHZEGUzUaggsVxu+I9yNLTTE3MN1JrylLETQ8RkXy
 eosiIMktNPsdbdquRHAYXsfZcj0xCzSMSiqp8NVJfsKX/K98/7Gky2+UuvKXgolmP0Il
 0IO27UJuy2QKzThdKovd5a/CzMEi4Vu1jTXuBJtnW83mKZ7kvImfR5iE5WhYE5hTbRGU
 I4sXTOhetvK7nAn7KcaixbTO2+n2EgKGuSxOqhxWAFYeDgpO5ZO9ABc240xdPdfINHoE
 ae8i0HOp1uHPjAfqnbB0AeRIw9opYbYG4Sp8xL+UWhPrk+VUh5B/Wiw4ff72rgdoc2ng
 QUYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bL8GQBSptP0Gq3pqr4BlBhH/zVnBYN2CeKoCMXNaK1I=;
 b=iho2ctUTnguzDeKbFGzaGH/aW0VCCo5H1mWRZ86GHzc2CNV4sftALzqGnhR0zW+6eh
 9R1IjP3e9U1AxdlpeMRNa5VIPnAwXCOpu1hY+pbFnQ9FkoA8/26nuLtJW+vGb7TK0Htl
 rVUruXu7hr3wkOrLN0q5cugoY/Z2enlR0mdNyg/dq5F8RGVF8E1XGcnKzjWRgKkyWuQ/
 nvQ4hOT7qoOwP9w/zLXUvvkc7kwkAjRpSaip1Tx3Pa6uMeWjYkUWpxOmoUOmV0z+ar6T
 GaZyrKt/VKXbKqF7iiE8JcRS/U8WMows+GPsioZcW6pkngkce8UHsORO10ZJaSXsSefO
 oBfA==
X-Gm-Message-State: AOAM533GCcBTG1gmPslTMA4rwQShzsFq1695S2L5KjS3y/ByWo2Vy+MX
 0s/NSuLYcmmS+2snqbtGvG0=
X-Google-Smtp-Source: ABdhPJw9ZoYVEZ77jgu/AcWe9PFdfzPR5IVCbe3FNDvNqMSTqUqhpD1JFduPPw6g9g10kPwMhJf9dg==
X-Received: by 2002:a63:7f03:: with SMTP id a3mr241963pgd.313.1606921659445;
 Wed, 02 Dec 2020 07:07:39 -0800 (PST)
Received: from VM.ger.corp.intel.com ([192.55.55.41])
 by smtp.gmail.com with ESMTPSA id p21sm148537pfn.87.2020.12.02.07.07.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 02 Dec 2020 07:07:38 -0800 (PST)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com
Date: Wed,  2 Dec 2020 16:07:22 +0100
Message-Id: <20201202150724.31439-2-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201202150724.31439-1-magnus.karlsson@gmail.com>
References: <20201202150724.31439-1-magnus.karlsson@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 1/3] i40: optimize for
 XDP_REDIRECT in xsk path
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
Cc: netdev@vger.kernel.org, maciejromanfijalkowski@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Magnus Karlsson <magnus.karlsson@intel.com>

Optimize i40e_run_xdp_zc() for the XDP program verdict being
XDP_REDIRECT in the zsk zero-copy path. This path is only used when
having AF_XDP zero-copy on and in that case most packets will be
directed to user space. This provides a little over 100k extra packets
in throughput on my server when running l2fwd in xdpsock.

Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 67febc7b6798..fbf76c67d77d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -159,6 +159,13 @@ static int i40e_run_xdp_zc(struct i40e_ring *rx_ring, struct xdp_buff *xdp)
 	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
 	act = bpf_prog_run_xdp(xdp_prog, xdp);
 
+	if (likely(act == XDP_REDIRECT)) {
+		err = xdp_do_redirect(rx_ring->netdev, xdp, xdp_prog);
+		result = !err ? I40E_XDP_REDIR : I40E_XDP_CONSUMED;
+		rcu_read_unlock();
+		return result;
+	}
+
 	switch (act) {
 	case XDP_PASS:
 		break;
@@ -166,10 +173,6 @@ static int i40e_run_xdp_zc(struct i40e_ring *rx_ring, struct xdp_buff *xdp)
 		xdp_ring = rx_ring->vsi->xdp_rings[rx_ring->queue_index];
 		result = i40e_xmit_xdp_tx_ring(xdp, xdp_ring);
 		break;
-	case XDP_REDIRECT:
-		err = xdp_do_redirect(rx_ring->netdev, xdp, xdp_prog);
-		result = !err ? I40E_XDP_REDIR : I40E_XDP_CONSUMED;
-		break;
 	default:
 		bpf_warn_invalid_xdp_action(act);
 		fallthrough;
-- 
2.29.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
