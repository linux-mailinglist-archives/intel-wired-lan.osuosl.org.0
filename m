Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CC636900D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 12:05:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47BB960DD7;
	Fri, 23 Apr 2021 10:05:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rIw2dVwp4aQI; Fri, 23 Apr 2021 10:05:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5D8A60DC5;
	Fri, 23 Apr 2021 10:05:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4AA221BF281
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 10:05:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 37FD34060B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 10:05:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SPY89QosDikq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Apr 2021 10:05:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2C101400C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 10:05:09 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id p6so41102405wrn.9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 03:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JdL0Ez3l1Nos4wM54poc3BjM7zKIfXH2UXskbWVhJQ8=;
 b=BPfOgWrCFfFO+GSxopd1iPXmx6Fi/SDqLU5KGt04otBrlAsUPvTFVuFvUCCobsoK9n
 yhN+TF4rSwk/w/WAakBCsfp0l0YiQXpP8EVhKq+aZBOsY7sdPZcdhektO/kRVQ3V5EI7
 oYXnt2yveN9w2Cb/kqJyaz+4tgxtJehRueescJMizeu60ci9RtA1PDVMmdN1lnuKMlVo
 XBwPO1FwNs87YkQ8y7LxL+lV1xBBoKJITUKYv5NrgVmUCudCk45LHubg2RvNLWMNEi4f
 81S75sVpSsX4VHHwLFoupaA0xyWXqN+brasm0R+1OWCoHa23y5KoYZs6/nwhXa1SQaxt
 m32Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JdL0Ez3l1Nos4wM54poc3BjM7zKIfXH2UXskbWVhJQ8=;
 b=QD8+5Zem/gzHMvZooMGGbKoYJ3OBeVZNEoZKnlHS3j3UvqGnMfwQEl0cqt+h+XyjXm
 B1QuasVLja6Ln6OC063FUK+cxJomTFSudanSkbFFVIGk0KY94at9PqKT6+c+rujsdBSi
 odknev9migQWO/cAkQugX6JbPL0YHV3bGP/sIonR2ooDMWK0qi7Hg+6Jv3HVgGlBfeNN
 6C6S1GcwVdx5X/et8pxnyF0VPVQNuY0uogaBVIeydgo6XNFF0RTVNU/cxBCKLSSMgrs1
 lNl2N4jElY3jrZ0LwWMNSLSzD9OrhkRtFAHkF90Brpgf8jvBnbf592gCt5ySLjPe/c2T
 qB7w==
X-Gm-Message-State: AOAM533Zuz7f9+95/93MlsX5FuXe9eX+a038vG8cn4P+e4HX8ecEfu5j
 HuY6nF75cYlNQ0DzShU8BrZE11Lbcf/IaXkLo4g=
X-Google-Smtp-Source: ABdhPJxtd9/pnCXV3cMTAh5A+jskcQD0uwhYXOAEiYFQ3RRaBWlmASMQYIVwv37gq+gFdNSpj0NFqA==
X-Received: by 2002:adf:f5cc:: with SMTP id k12mr3626655wrp.117.1619172307458; 
 Fri, 23 Apr 2021 03:05:07 -0700 (PDT)
Received: from localhost.localdomain ([188.149.128.194])
 by smtp.gmail.com with ESMTPSA id t12sm8599481wrs.42.2021.04.23.03.05.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 23 Apr 2021 03:05:07 -0700 (PDT)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, maciej.fijalkowski@intel.com
Date: Fri, 23 Apr 2021 12:04:44 +0200
Message-Id: <20210423100446.15412-4-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210423100446.15412-1-magnus.karlsson@gmail.com>
References: <20210423100446.15412-1-magnus.karlsson@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net 3/5] ixgbe: add correct
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
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  | 13 ++++++++-----
 2 files changed, 16 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index cffb95f8f632..c194158a421c 100644
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
index 3771857cf887..5f01e724037a 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -109,20 +109,23 @@ static int ixgbe_run_xdp_zc(struct ixgbe_adapter *adapter,
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
 		err = xdp_do_redirect(rx_ring->netdev, xdp, xdp_prog);
-		result = !err ? IXGBE_XDP_REDIR : IXGBE_XDP_CONSUMED;
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
-- 
2.29.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
