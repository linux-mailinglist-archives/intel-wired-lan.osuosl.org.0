Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE386FCE15
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2019 19:45:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E51F89C95;
	Thu, 14 Nov 2019 18:45:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1Udj5tbbiG+7; Thu, 14 Nov 2019 18:45:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 02D9789CA1;
	Thu, 14 Nov 2019 18:45:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ACB7D1BF289
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A604D89C8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K0j-4TyuuJUB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2019 18:45:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 32A6389C8B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:27 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id k1so3027739pgg.12
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 10:45:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FM3VhSbSiafPaH1zDTjChkDXYC3HNrrA8QbibO1hxSM=;
 b=lzBnyKi+bZrh9wnaaq2maczx3IdNblvCteLtfehTKx3USUsi/YgVJfiyYCoJ8FwIMx
 jOszlkQOPBv7oUwdNL8Ma5NbuZ+bjI3QDV6px/IrnsL5e6RCuFx3oOsdfp6j1U9CDcR8
 h/YeE5zFtvUhJ0VEzErb5aB1q9OoT5cNtWfgII8Y9T8svrTQFXe986Y8VkFnSeALS4Yw
 lQ6mVbFnm0M0RAwSzmgpheESK+M5m3Umdj90RlC5g40WdFfY23+aM4LzX9upCNousnQB
 rqiVruVT2CFyYElyNfOqGEjgwV4L3MonyDqs6OSUpLd/Kc4UCnLlshKb05zqAVsUDILM
 ir/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FM3VhSbSiafPaH1zDTjChkDXYC3HNrrA8QbibO1hxSM=;
 b=Juwh7vgF+q8xlrBYKQP8WEhPATQoelUKd1yzdcVEoTKJFXCct9DDlOMnUpZrmSexWL
 FV4/hkM0JWDNbl90/V3jqVGC3JwICz78jBI1VRkY1nWSt4H34gRd6S0z4dvRmKNvmFGC
 IyKoTMy0xzjaa2tIWnZW2F1tM9OdHS6g7P02Q5oBb3Nv4Eh9TGhPFlgKhI7mKvdIXlNG
 ZyFleGWw+AYBG3BUZZTgOWj05qhdo+toJC47MFYGmdsaaCMoPiRttoKdnfyD+Pq3lTSd
 GXJ2xqci+sQTZSHFsvXSaNtp2X4SErtaRpNyu42oDRgPkUsVsAPTGUPTd/TNh25ktS7h
 +0Tw==
X-Gm-Message-State: APjAAAXV27Zz1j7fAmzkTZAkapszXIVHdVU8/ez0amaI0ivP66mRtP24
 1C4Nr/tl/ep50Xt6JUh0EtY=
X-Google-Smtp-Source: APXvYqziilQvp1gfUwYWyoR6VkMNhcHXbr/HTWJJBPcj/7VRsUUQYaXZldCvOUmsEfrY2kMf0OUFnw==
X-Received: by 2002:a17:90a:9dca:: with SMTP id
 x10mr13996788pjv.139.1573757126814; 
 Thu, 14 Nov 2019 10:45:26 -0800 (PST)
Received: from localhost.localdomain (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id 23sm6819507pgw.8.2019.11.14.10.45.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 10:45:26 -0800 (PST)
From: Richard Cochran <richardcochran@gmail.com>
To: netdev@vger.kernel.org
Date: Thu, 14 Nov 2019 10:45:06 -0800
Message-Id: <20191114184507.18937-13-richardcochran@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 12/13] mlx5: Reject requests to enable
 time stamping on both edges.
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
Cc: Christopher Hall <christopher.s.hall@intel.com>,
 Brandon Streiff <brandon.streiff@ni.com>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Eugenia Emantayev <eugenia@mellanox.com>, Feras Daoud <ferasda@mellanox.com>,
 intel-wired-lan@lists.osuosl.org, David Miller <davem@davemloft.net>,
 Stefan Sorensen <stefan.sorensen@spectralink.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This driver enables rising edge or falling edge, but not both, and so
this patch validates that the request contains only one of the two
edges.

Signed-off-by: Richard Cochran <richardcochran@gmail.com>
---
 drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c b/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
index 819097d9b583..43f97601b500 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
@@ -243,6 +243,12 @@ static int mlx5_extts_configure(struct ptp_clock_info *ptp,
 				PTP_STRICT_FLAGS))
 		return -EOPNOTSUPP;
 
+	/* Reject requests to enable time stamping on both edges. */
+	if ((rq->extts.flags & PTP_STRICT_FLAGS) &&
+	    (rq->extts.flags & PTP_ENABLE_FEATURE) &&
+	    (rq->extts.flags & PTP_EXTTS_EDGES) == PTP_EXTTS_EDGES)
+		return -EOPNOTSUPP;
+
 	if (rq->extts.index >= clock->ptp_info.n_pins)
 		return -EINVAL;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
