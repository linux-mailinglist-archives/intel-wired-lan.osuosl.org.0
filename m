Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 294C4377F8E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 May 2021 11:39:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B16954061A;
	Mon, 10 May 2021 09:39:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pImVfxn37jun; Mon, 10 May 2021 09:39:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B27E40610;
	Mon, 10 May 2021 09:39:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 81E601BF316
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 09:39:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C9259607A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 09:39:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SaSNlC0h19Gv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 May 2021 09:39:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 16A0E6078A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 09:39:23 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 y124-20020a1c32820000b029010c93864955so10752645wmy.5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 02:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vrGRBMEMBYdn7xsdOu9Vp0GY4DXrITa4gzZ8kQN2zME=;
 b=lOP0IvOfVhJVX0SdpTPVUaZmw0YtS+95e8JoBC5851SxngZkPhF9z4HPVov4sHZX3u
 +J9ik7XLJXmoaLDGL6W5wVSxBxI/Fsup3m/0L4XJ9stAQ5KNb3FuBSCreAYU2Jd2YLOZ
 SLx4uSVYt3X7XX9FEbHB1QX3Ys9MW2ltz2PXY02uEvywx6ccPdhfsx30q3KEn592iNEg
 rbD91S9HLV4eNq+ZbGwkx9cn5b8nsfp5p4RnzInb9MQ0Z15ZpCqGS1aRA/s09PQr/EKc
 UFMYIk/vy2HM6uJpVMlKLKYcQdSfw4h+USggPIaoc2hyQJvG6rOw+QWU6nK5oePsm4LM
 uPDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vrGRBMEMBYdn7xsdOu9Vp0GY4DXrITa4gzZ8kQN2zME=;
 b=WPxwS7u31oIeYrds3pZKf/yEQQvrDOuunuW8JxM+1eZ+EaK3tFX6JyE3ucRetlQnf9
 H9jWLdbnAd5tE0yILX9IZz7S6BzKaHwmSRxQLCsKNctmubLeOx8CO5TsJqAQoehlSipj
 taIYld8K1v18A1D+Oha0hQYXs/F/nsNWcR43tVRiGJKp7+BqCLN/OjQTZxASFpzOy+sf
 xjqyQOYuCtTU+cJG9QIqcXR5zpYZXfrABX+CM0u9qyry+OUXrcFB6zKazs577qna8fLh
 6P3o/0t++J0Zeq74dtC5rmIT9gmCfeyP+bW//ffCmB8oLANwbzUBUyuCRfDurDqIIfin
 SO8w==
X-Gm-Message-State: AOAM530poPAZAe/3q9SpdRDjpi2BYptsbqbQwgGME7Z5leyUSOrXviyq
 rjOIahVbBozInV0dUiQ35wU=
X-Google-Smtp-Source: ABdhPJxDq6hQN5O0/HVqWr9ddKcumjxbGtyJQZShCuo/z//KHYAFqRunTQkKv+3Vr8NNXS3Jm4G5MQ==
X-Received: by 2002:a05:600c:154a:: with SMTP id
 f10mr25597527wmg.31.1620639561387; 
 Mon, 10 May 2021 02:39:21 -0700 (PDT)
Received: from localhost.localdomain (h-47-246.A165.priv.bahnhof.se.
 [46.59.47.246])
 by smtp.gmail.com with ESMTPSA id i2sm25892933wro.0.2021.05.10.02.39.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 May 2021 02:39:21 -0700 (PDT)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, maciej.fijalkowski@intel.com
Date: Mon, 10 May 2021 11:38:52 +0200
Message-Id: <20210510093854.31652-5-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210510093854.31652-1-magnus.karlsson@gmail.com>
References: <20210510093854.31652-1-magnus.karlsson@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net v2 4/6] igb: add correct
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

Fixes: 9cbc948b5a20 ("igb: add XDP support")
Reported-by: Jesper Dangaard Brouer <brouer@redhat.com>
Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 038a9fd1af44..004a5b15fadb 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -8401,18 +8401,20 @@ static struct sk_buff *igb_run_xdp(struct igb_adapter *adapter,
 		break;
 	case XDP_TX:
 		result = igb_xdp_xmit_back(adapter, xdp);
+		if (result == IGB_XDP_CONSUMED)
+			goto out_failure;
 		break;
 	case XDP_REDIRECT:
 		err = xdp_do_redirect(adapter->netdev, xdp, xdp_prog);
-		if (!err)
-			result = IGB_XDP_REDIR;
-		else
-			result = IGB_XDP_CONSUMED;
+		if (err)
+			goto out_failure;
+		result = IGB_XDP_REDIR;
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
