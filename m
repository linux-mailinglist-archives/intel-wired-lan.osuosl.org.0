Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF9D36900A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 12:05:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0D7DB400C4;
	Fri, 23 Apr 2021 10:05:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uQlbHpfyeEdw; Fri, 23 Apr 2021 10:05:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F69D4060B;
	Fri, 23 Apr 2021 10:05:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E144B1C11B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 10:05:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CFCCA404D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 10:05:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 92zkSQuZMfEy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Apr 2021 10:05:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F331B404C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 10:05:07 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id e5so19109636wrg.7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 03:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ICila3w9bfvENDGrDK3/90N1VTO1RwjzN2ngo0a/tfI=;
 b=Ee4RHyuAuNRKDVyl9fGJ4NYG4bhrIL31yp8l+uV2/ERs2waDxP7tDvAs3HR5mSB69F
 xGaB6sRZc+EKI7Ifjy7WytBHFPPHujiQDmz/2LzuilJk5TfRySU3X/+pISrV8k1lnLOs
 YG3xVRl8YLVHNQnSJC+jnrxHHn3JH1KG+6IbWCuyID4h7C+r5CfaK29038K7vpIzvnpw
 rSmr7KFaMtvSOYKl8eSTb3xovJZPYbXl+JHnCYr7uEoENxUX8sb+v7gPZnaN/SFoPqk+
 jNgOMyUsVht1yuKfTevdSN1roUG8Ajob3tasqI1TTDMo4nYqf+92tWOv8GBf+cSc+Zyo
 dbGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ICila3w9bfvENDGrDK3/90N1VTO1RwjzN2ngo0a/tfI=;
 b=tC77l85jiw87kcJsQ4C5JnhDQj6BR636SJeWlLOaOqN8s5XKLcRw/o249uojfEwrQu
 HdHOyMUvEJOC4d9Uf5qWFxo15S/JvOAAytEEaDTboWkxBYCjMjFc5/6gJnqtukVFXAML
 UyNFOPddwvQQYFc96GpgQC2Gj/xS7h22OoKK3LdTLXmrCEJXXGNw2dOcgSUlXBlZuih0
 dsA+TmF/ms/u65gmp9zuOS5MxXlN9murzTqxk4EBg0DT97TeOeNSEpoXOC5ZwHQlFB0Y
 Wgwdw+yOK5VOlFimyzi0jTk1bFhXzP+byRwnvOj2vz6cxXEFzE++pOuGm/afdxS16EbH
 tI2g==
X-Gm-Message-State: AOAM532dQoixPwWGXPrMhL7zI2yHzukgVCfhyUGZic0eI07If3iXjKFk
 bvc3WroNnS3WqG9/itnZDG8=
X-Google-Smtp-Source: ABdhPJzufyqoI6Buar2H/VQ0xGkUoK7rmeMcyvMRqdF2BIqahSLtfxcLOYBK08DJBSzCXNBg41MiCg==
X-Received: by 2002:a5d:6b81:: with SMTP id n1mr3622036wrx.265.1619172306327; 
 Fri, 23 Apr 2021 03:05:06 -0700 (PDT)
Received: from localhost.localdomain ([188.149.128.194])
 by smtp.gmail.com with ESMTPSA id t12sm8599481wrs.42.2021.04.23.03.05.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 23 Apr 2021 03:05:05 -0700 (PDT)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, maciej.fijalkowski@intel.com
Date: Fri, 23 Apr 2021 12:04:43 +0200
Message-Id: <20210423100446.15412-3-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210423100446.15412-1-magnus.karlsson@gmail.com>
References: <20210423100446.15412-1-magnus.karlsson@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net 2/5] ice: add correct exception
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
 drivers/net/ethernet/intel/ice/ice_xsk.c  |  7 ++++++-
 2 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index b91dcfd12727..b0a58d463441 100644
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
index 9f94d9159acd..ec8d590bccdd 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -479,15 +479,20 @@ ice_run_xdp_zc(struct ice_ring *rx_ring, struct xdp_buff *xdp)
 	case XDP_TX:
 		xdp_ring = rx_ring->vsi->xdp_rings[rx_ring->q_index];
 		result = ice_xmit_xdp_buff(xdp, xdp_ring);
+		if (result == ICE_XDP_CONSUMED)
+			goto out_failure;
 		break;
 	case XDP_REDIRECT:
 		err = xdp_do_redirect(rx_ring->netdev, xdp, xdp_prog);
-		result = !err ? ICE_XDP_REDIR : ICE_XDP_CONSUMED;
+		if (err)
+			goto out_failure;
+		result = ICE_XDP_REDIR;
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
