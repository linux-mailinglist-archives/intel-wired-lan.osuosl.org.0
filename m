Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAC7377F89
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 May 2021 11:39:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0E5640627;
	Mon, 10 May 2021 09:39:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cVs4r8ycj5Zf; Mon, 10 May 2021 09:39:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C71E40452;
	Mon, 10 May 2021 09:39:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1BE8C1BF316
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 09:39:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0A83D607A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 09:39:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H-S_jtlq7xOz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 May 2021 09:39:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2DCF86078A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 09:39:22 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 b19-20020a05600c06d3b029014258a636e8so8492652wmn.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 02:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nlEE7d+pfgB+nDRoRKdy3JbmugaRLKlWWEIWRuI///o=;
 b=TNAQofFA9Bi4PTYIJIT/nmwET2L6Yim2+BU6ZFkwuz3DtqxhkiOuf/jRXydWJc64yk
 LUidxssciot8G9JiAAbQTUyxX2q4VKljxafif+qzN5zRf6zHtLgfvrlF4NLxMjPJjvry
 gZDQ+shFkScjRUFSCcbjQPguLHO4vECwEyBHCBkC82HeBKcACUms+K9oDvUa8xqA1mvY
 NEY/F89YdgYfqUCdZmUFJKEDXTcBWcbjxPMyX9LocOWXvTYBZCY0TkaxheeOBKYztHW6
 EbRC0X7x1gxL0M/PMZJ5z0Yzj0rYmAESersoBaQx9VxPfIF3cTNIZ1xdcIICGiLpZwmg
 UH+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nlEE7d+pfgB+nDRoRKdy3JbmugaRLKlWWEIWRuI///o=;
 b=BdWF6DOdssLD5Wek+4ChCIEGLJCkDSY8MKYCcTif3Dk3e9Cn0aqNPpZRMXsfYUL6Pg
 voXatn5BDrSt7I5cd8vdaAPyzl1VVi7R6yn9FYyqO8RHkdmmrgcLf3je2AKNSQ/0+HO0
 kyCuGwkMKzpIaGxzhkq+XJXR007UMqmH2b+zQvIrKDT092pwsuVfhlgG5vygXmxCtr4i
 YmZigK8yuR79zggdXl+XXVoe5mBFO7+bGghmKR6ukKJeIr30ZBRhgoGOTsKSg2cdU0na
 E50dXVjdAlK9lzhdeo9e5B0qgr/s/hPMkk1Rhdt8Anf111Xz7t/JA1K+0BHxIBQdtwXj
 P2Qw==
X-Gm-Message-State: AOAM533UkJmtJO3iV43FXQOOQWe3HJMfzn+Vc8yloxMYKFVKHT+qfiet
 aNt3HGkMOnm+n9GnraJmPAY=
X-Google-Smtp-Source: ABdhPJyaiLBWLE3zFTCZLPlp+ZAwUyW27M71G7rGAITLCWWKI367KfUUS++FDzxLynxREvbGP+lHQQ==
X-Received: by 2002:a05:600c:4ba3:: with SMTP id
 e35mr24752681wmp.47.1620639560175; 
 Mon, 10 May 2021 02:39:20 -0700 (PDT)
Received: from localhost.localdomain (h-47-246.A165.priv.bahnhof.se.
 [46.59.47.246])
 by smtp.gmail.com with ESMTPSA id i2sm25892933wro.0.2021.05.10.02.39.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 May 2021 02:39:19 -0700 (PDT)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, maciej.fijalkowski@intel.com
Date: Mon, 10 May 2021 11:38:51 +0200
Message-Id: <20210510093854.31652-4-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210510093854.31652-1-magnus.karlsson@gmail.com>
References: <20210510093854.31652-1-magnus.karlsson@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net v2 3/6] ixgbe: add correct
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

Fixes: 33fdc82f0883 ("ixgbe: add support for XDP_TX action")
Fixes: d0bcacd0a130 ("ixgbe: add AF_XDP zero-copy Rx support")
Reported-by: Jesper Dangaard Brouer <brouer@redhat.com>
Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 16 ++++++++--------
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  | 14 ++++++++------
 2 files changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index c5ec17d19c59..2ac5b82676f3 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -2213,23 +2213,23 @@ static struct sk_buff *ixgbe_run_xdp(struct ixgbe_adapter *adapter,
 		break;
 	case XDP_TX:
 		xdpf = xdp_convert_buff_to_frame(xdp);
-		if (unlikely(!xdpf)) {
-			result = IXGBE_XDP_CONSUMED;
-			break;
-		}
+		if (unlikely(!xdpf))
+			goto out_failure;
 		result = ixgbe_xmit_xdp_ring(adapter, xdpf);
+		if (result == IXGBE_XDP_CONSUMED)
+			goto out_failure;
 		break;
 	case XDP_REDIRECT:
 		err = xdp_do_redirect(adapter->netdev, xdp, xdp_prog);
-		if (!err)
-			result = IXGBE_XDP_REDIR;
-		else
-			result = IXGBE_XDP_CONSUMED;
+		if (err)
+			goto out_failure;
+		result = IXGBE_XDP_REDIR;
 		break;
 	default:
 		bpf_warn_invalid_xdp_action(act);
 		fallthrough;
 	case XDP_ABORTED:
+out_failure:
 		trace_xdp_exception(rx_ring->netdev, xdp_prog, act);
 		fallthrough; /* handle aborts by dropping packet */
 	case XDP_DROP:
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index 91ad5b902673..f72d2978263b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -106,9 +106,10 @@ static int ixgbe_run_xdp_zc(struct ixgbe_adapter *adapter,
 
 	if (likely(act == XDP_REDIRECT)) {
 		err = xdp_do_redirect(rx_ring->netdev, xdp, xdp_prog);
-		result = !err ? IXGBE_XDP_REDIR : IXGBE_XDP_CONSUMED;
+		if (err)
+			goto out_failure;
 		rcu_read_unlock();
-		return result;
+		return IXGBE_XDP_REDIR;
 	}
 
 	switch (act) {
@@ -116,16 +117,17 @@ static int ixgbe_run_xdp_zc(struct ixgbe_adapter *adapter,
 		break;
 	case XDP_TX:
 		xdpf = xdp_convert_buff_to_frame(xdp);
-		if (unlikely(!xdpf)) {
-			result = IXGBE_XDP_CONSUMED;
-			break;
-		}
+		if (unlikely(!xdpf))
+			goto out_failure;
 		result = ixgbe_xmit_xdp_ring(adapter, xdpf);
+		if (result == IXGBE_XDP_CONSUMED)
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
