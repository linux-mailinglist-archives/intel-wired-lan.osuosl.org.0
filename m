Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D594E2CC054
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Dec 2020 16:07:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9544D87996;
	Wed,  2 Dec 2020 15:07:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GtPXM8wNTYwe; Wed,  2 Dec 2020 15:07:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 319D18799A;
	Wed,  2 Dec 2020 15:07:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B58921BF359
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 15:07:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B1DFF87996
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 15:07:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ohVxpXMj7H7b for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Dec 2020 15:07:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 25CB887993
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 15:07:46 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id n7so789506pgg.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Dec 2020 07:07:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oVUxlFzvG0YeZ7OkR1qvNOs6zaHHh9gvJZg4hCR2xvQ=;
 b=IpoqE5R1/KO4eIB1irQiNBUHh+Cf6DHXFh9d0k80o0IRJGSNBJA2G5lnPFDV92IPxz
 yYumX2Bj9tqLIUJ15xTSpI4+sjxS+/qE0CLzEm316ic5zxs2wt1n24eNilU+LBR7KjH5
 j6kyiV4+x+InCWJ70out41tBtCOzVmF01RhayR+t+esMo4JTpfgzg3h3hk2PrpEDQIgq
 sBtVsfNQ/oe85vqSFxHLwQ+Q5fRPdc2h1fh4uzaO2lqQXD7Y7LplP0gHlTSsbWx/7v2W
 FuJVq2mRwvsR/98hHfd/tQnNgtlBS4SgP8UeWjbxq08DZPpMqcQ+dac/XZS+n1VzfsIW
 pJ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oVUxlFzvG0YeZ7OkR1qvNOs6zaHHh9gvJZg4hCR2xvQ=;
 b=pkvArir1lmvGBESlgJf9LLecYC/ST/O28EeKtfgl8gc/a6GawKF28v1aHzFp+9NaFs
 oHBtSDshlBS3G2uXGVyvORdH2z7tXbfw7fk3AdEBX+F1SRN0CRXYrSNlOy9QpHotul1a
 oHzGO+jPyhaqtFysH20PzXlFxi2K6tzzCOn1CKsdoxMWJi/xkkcvzIxbxtD+PhFfHzTG
 fQXFaRpRIcjXap4/w1F/sE9QqEhhCGC+gIl7TFeJgb9YuG0NHPzyaFV3UBUazGemcarf
 nCl4P/ZNVm3pGpVl+oMT40n3j0NB82sBVw+bsMPVfeJND/JXhrIB3CdlT+Q+Z1dgdYUM
 V1ZA==
X-Gm-Message-State: AOAM5305gLPvnufsgNQ6CCAURs0/iIQoi5jYDUPOqxOFXpUCIe1cnqou
 wwScNdPTTPk+yZa5MGjrVyw=
X-Google-Smtp-Source: ABdhPJyVqKylIIgWwX4bFqUPOpm3v1ZXtYI/7pXnEGQEgCAEpFQlGhF+/6wjHxKhsHJIT2T93P6cjA==
X-Received: by 2002:a63:f03:: with SMTP id e3mr273635pgl.316.1606921665773;
 Wed, 02 Dec 2020 07:07:45 -0800 (PST)
Received: from VM.ger.corp.intel.com ([192.55.55.41])
 by smtp.gmail.com with ESMTPSA id p21sm148537pfn.87.2020.12.02.07.07.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 02 Dec 2020 07:07:45 -0800 (PST)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com
Date: Wed,  2 Dec 2020 16:07:24 +0100
Message-Id: <20201202150724.31439-4-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201202150724.31439-1-magnus.karlsson@gmail.com>
References: <20201202150724.31439-1-magnus.karlsson@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 3/3] ice: optimize for
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

Optimize ice_run_xdp_zc() for the XDP program verdict being
XDP_REDIRECT in the zsk zero-copy path. This path is only used when
having AF_XDP zero-copy on and in that case most packets will be
directed to user space. This provides a little over 100k extra packets
in throughput on my server when running l2fwd in xdpsock.

Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 797886524054..3b180e52112f 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -521,6 +521,14 @@ ice_run_xdp_zc(struct ice_ring *rx_ring, struct xdp_buff *xdp)
 	}
 
 	act = bpf_prog_run_xdp(xdp_prog, xdp);
+
+	if (likely(act == XDP_REDIRECT)) {
+		err = xdp_do_redirect(rx_ring->netdev, xdp, xdp_prog);
+		result = !err ? ICE_XDP_REDIR : ICE_XDP_CONSUMED;
+		rcu_read_unlock();
+		return result;
+	}
+
 	switch (act) {
 	case XDP_PASS:
 		break;
@@ -528,10 +536,6 @@ ice_run_xdp_zc(struct ice_ring *rx_ring, struct xdp_buff *xdp)
 		xdp_ring = rx_ring->vsi->xdp_rings[rx_ring->q_index];
 		result = ice_xmit_xdp_buff(xdp, xdp_ring);
 		break;
-	case XDP_REDIRECT:
-		err = xdp_do_redirect(rx_ring->netdev, xdp, xdp_prog);
-		result = !err ? ICE_XDP_REDIR : ICE_XDP_CONSUMED;
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
