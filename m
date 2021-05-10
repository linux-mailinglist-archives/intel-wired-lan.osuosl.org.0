Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE4F377F90
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 May 2021 11:39:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46E654061B;
	Mon, 10 May 2021 09:39:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q2NG7R5V0JOF; Mon, 10 May 2021 09:39:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 234AA4060D;
	Mon, 10 May 2021 09:39:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7536D1BF316
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 09:39:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5E73140452
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 09:39:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ez9ypVaoTJNr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 May 2021 09:39:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 61ABC40618
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 09:39:25 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id v12so15858859wrq.6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 02:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HZeUvAh+ikwDmY/Rpx/0dfPv/y2blsSGC/hug1HK8f4=;
 b=g+hWkqeGFjepemAxYPKAzvNKEJDCNCvG6+KeEY70i3mWYBFfhAUc9hFQ4FoFGuKkEc
 Nz+DIBzk2ttzCcpY+9TECzAZiuOJwnxcfC5lyaUoa6EEyZlrrdH3+y8inZ1LsZASZUxg
 bUatE/X7murdSa3ED9EuWTREHTvKhDL4kpnRCdinw63fDyFiSdnam478ebOOEE7mouw6
 3LvZnwSQDoVJLwk38iN0iTgBhuHAAga+KMsLjFJAj9j3k3QwBUOsZK/U7eeu8tFP3JP0
 eVWgukKJM0lQZqKScTzvIlCFUr13EPDD7JSbyvq1kR2Kj9x1pnRzqqvHg6lKOKzi9TR1
 HcAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HZeUvAh+ikwDmY/Rpx/0dfPv/y2blsSGC/hug1HK8f4=;
 b=i72PDb8W2Jyb+UPTmofDvGhOIjHsES4szgQnx9YKxBUwLi6SFUJVe9uFaIAJmPNWOS
 B6hBDfZ8crkwnS4+nhViV3bHiuubY1I5MT2M1UaeWp6BQfs2gRh8Dx0vIVRWnI9vQpOE
 IVVIqO4XfVcja/r3EvtEFedSQJ2wS4HFCmTgo0vEkct2ByU3YthOIzOEZfMgVhOYj2OP
 ClxG0MriydHR2oseJrmvMEVZboYI9ygViFNnLMF55X/jVlntvmBCprZyFXX1whDtEnRY
 9ajoOXCX9xqT0hdaIbX5g+n4X6M/0g0sTCOthIRT17JgzPNyRMe/VdH5y3PiNUzAIYRA
 joSw==
X-Gm-Message-State: AOAM533t7zQa6c0/AE+nMgRFKEUMCcOgEcX4xEWBWhPE7JIUtADhubmL
 VYG+U4PQIvtsyJLrsP5Dhpg=
X-Google-Smtp-Source: ABdhPJzfXM86VStYs4heIkT5ntqyyXLWNiqOsHG8TvgoNymz6mpUuml5xVSJJcN4Yt4d7S+LJ4At/g==
X-Received: by 2002:a5d:608a:: with SMTP id w10mr29751980wrt.342.1620639563688; 
 Mon, 10 May 2021 02:39:23 -0700 (PDT)
Received: from localhost.localdomain (h-47-246.A165.priv.bahnhof.se.
 [46.59.47.246])
 by smtp.gmail.com with ESMTPSA id i2sm25892933wro.0.2021.05.10.02.39.22
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 May 2021 02:39:23 -0700 (PDT)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, maciej.fijalkowski@intel.com
Date: Mon, 10 May 2021 11:38:54 +0200
Message-Id: <20210510093854.31652-7-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210510093854.31652-1-magnus.karlsson@gmail.com>
References: <20210510093854.31652-1-magnus.karlsson@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net v2 6/6] igc: add correct
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

Fixes: 73f1071c1d29 ("igc: Add support for XDP_TX action")
Fixes: 4ff320361092 ("igc: Add support for XDP_REDIRECT action")
Reported-by: Jesper Dangaard Brouer <brouer@redhat.com>
Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 069471b7ffb0..f1adf154ec4a 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2047,20 +2047,19 @@ static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
 		break;
 	case XDP_TX:
 		if (igc_xdp_xmit_back(adapter, xdp) < 0)
-			res = IGC_XDP_CONSUMED;
-		else
-			res = IGC_XDP_TX;
+			goto out_failure;
+		res = IGC_XDP_TX;
 		break;
 	case XDP_REDIRECT:
 		if (xdp_do_redirect(adapter->netdev, xdp, prog) < 0)
-			res = IGC_XDP_CONSUMED;
-		else
-			res = IGC_XDP_REDIRECT;
+			goto out_failure;
+		res = IGC_XDP_REDIRECT;
 		break;
 	default:
 		bpf_warn_invalid_xdp_action(act);
 		fallthrough;
 	case XDP_ABORTED:
+out_failure:
 		trace_xdp_exception(adapter->netdev, prog, act);
 		fallthrough;
 	case XDP_DROP:
-- 
2.29.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
