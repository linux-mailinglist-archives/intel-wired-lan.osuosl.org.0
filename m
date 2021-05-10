Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9152D377F8F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 May 2021 11:39:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B0CB607D6;
	Mon, 10 May 2021 09:39:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pVHujHC8qRTV; Mon, 10 May 2021 09:39:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D5116078A;
	Mon, 10 May 2021 09:39:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0FC251BF316
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 09:39:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F12E3607A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 09:39:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ImwNRbx7sJEk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 May 2021 09:39:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4366A6078A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 09:39:24 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 a10-20020a05600c068ab029014dcda1971aso8636346wmn.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 02:39:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6+LTRB3VeUFqK10wpr4zxmf6+vUY37t/15OeIVQYx0c=;
 b=TzJR5KOFFl9YqEnH/MEwkVADy+gytZMw3a1UlDM1riIoHbLyRlQGfuK1g4Cz3NZWXx
 zOYeMiyNPxlBVQ9nLQsdtG6ePRAQ0cxBa+l+Pot50fyOrxnJhzlKZSCaGR6fZtcNUPQR
 0zAwye4vRwnTq0xPeGJq/koVWlk2PEB9PiKS0NlMrJH3PEm/fX0zL6QK6j22D7v3Y/E/
 ZNmdbpWbpUNSNR4qIBkeE6B2W/FSIC/D55YP/j2jqqpT00neN7Fl9LUjKeG6oraBsGxB
 Qn61siwM9Fuu1+Z+77tI1x+n+yUgWKsNcIS8+ywH6Zw6P2YfkqSTTJ2Rt8eukxFcAI+k
 JV8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6+LTRB3VeUFqK10wpr4zxmf6+vUY37t/15OeIVQYx0c=;
 b=siJGReZoG1HT3d8FWbMQLgVdVjjG+H2JSVtKqi/eVw3A7lvs4eRC1f2VwOYFdKb2IF
 Kb9ub1OlcXZNyxB7eJ348OKpNv41qjgx0uxm/IU5/SuEvplPg9/niN3P9qV6Y7KH3znK
 F//euuFExWtC9XdBG0J1OjZTECo2H8LOksBG5TS5cPAMswSRi9Clrv8wZ2zMdmka1CQs
 FWSQ8qF+15USM1QZGklOz0f7YRWKX1b7Ny5f0q4HXXVAFxn3veOXfhF75nm+Ek0uV5Iq
 ysIlusFx5Mnxk3RijQZyydb/MeLUxYSh+SxQEJpgX07qjxpqSjofKdb0EuTFx9Ta3hnh
 xzCg==
X-Gm-Message-State: AOAM531DtnYquM5gqwFZv6mkGBs596mmFJFWWlZsbMHqxfL+HfPsyqTi
 wvcJi++RAaJ5bVnY0A315VUCIwq8eTCBsA==
X-Google-Smtp-Source: ABdhPJw4IDSVTCDH95Xq0Ef9vi4FdUcD02zRAsTdyPWRHyY6/xpHdSOZoI9y9/QzBQosRl5dYlOWsg==
X-Received: by 2002:a1c:f705:: with SMTP id v5mr34937718wmh.69.1620639562547; 
 Mon, 10 May 2021 02:39:22 -0700 (PDT)
Received: from localhost.localdomain (h-47-246.A165.priv.bahnhof.se.
 [46.59.47.246])
 by smtp.gmail.com with ESMTPSA id i2sm25892933wro.0.2021.05.10.02.39.21
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 May 2021 02:39:22 -0700 (PDT)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, maciej.fijalkowski@intel.com
Date: Mon, 10 May 2021 11:38:53 +0200
Message-Id: <20210510093854.31652-6-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210510093854.31652-1-magnus.karlsson@gmail.com>
References: <20210510093854.31652-1-magnus.karlsson@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net v2 5/6] ixgbevf: add correct
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

Fixes: 21092e9ce8b1 ("ixgbevf: Add support for XDP_TX action")
Reported-by: Jesper Dangaard Brouer <brouer@redhat.com>
Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index ba2ed8a43d2d..0e733cc15c58 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -1067,11 +1067,14 @@ static struct sk_buff *ixgbevf_run_xdp(struct ixgbevf_adapter *adapter,
 	case XDP_TX:
 		xdp_ring = adapter->xdp_ring[rx_ring->queue_index];
 		result = ixgbevf_xmit_xdp_ring(xdp_ring, xdp);
+		if (result == IXGBEVF_XDP_CONSUMED)
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
