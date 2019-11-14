Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E6594FCE14
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2019 19:45:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5C5D889188;
	Thu, 14 Nov 2019 18:45:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bc82tHLGTKIS; Thu, 14 Nov 2019 18:45:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 702478917F;
	Thu, 14 Nov 2019 18:45:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3DFB91BF289
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 31621882C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tIf_wABl86qr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2019 18:45:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C0691882C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:25 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id s5so4853827pfh.9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 10:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EgZP9Qg8jKjpYCoDh3oNRwu6jLyNFPvdVGbrs0P5gb0=;
 b=QKP/0O4PMONo3xuGbZDoiCP+GoyoTIvuu+fdiqkeYkxppDvBf5cHolmMn0r6KzxOwz
 KIojTVA54ky42bwHGtf7NSOZ9nVRu0zOkf+u3y7KbvOfERfoN+kZl+7UH0E3KU3MNgG7
 IiFOOPXKGxjscRIkF2pYkeGRmth5ABZK3mbXftYCS0dZDXfHXoKdVSPSc6T3HywHoMgW
 8jfTe4uNr/iWdPiz6XzKj6BRzVRqLd1end1+M5Aicszem0FHIkAWs3rTQLlQQcPUMgms
 zql7sulv+U9j50eYWjH5iyRVbdE1cMoj/wZi03mVkM/HmAjIo2sS/VPCqBEF4tbct521
 izQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EgZP9Qg8jKjpYCoDh3oNRwu6jLyNFPvdVGbrs0P5gb0=;
 b=LGVaQKgdr2lvKss6kvLlaJBxqiAI657O/MMp/GSJQVaMfOJlX3PYKK/yxSO7Lf0VR9
 bENd14r/KS3JmtpYZmSacAlfNDuVcijCB7Gv1kRdzWlYBwp/RLuOfFEuzUk6seQW+3Oq
 bAunfHjFicaQHXyPuyi42t2ZUJ0oGvbv0q2gfFdVUYZfmLnCqwFiaJuG7XvjQ9sNSK4+
 FlVgHLQIDOe8NRsalDg6TWyFIiT5rU6CfImPyyrflJcdU/Dlr28SWZBe0r6JUTB8y99w
 MrEqJh5rVgFX+r4N0tP8McOy4g3797cXcSqymZsyMUlwFIloKZbQYSJzxSXpLhECArOb
 O9mg==
X-Gm-Message-State: APjAAAU9f73YzFy6kNW3MRHqs2BOMthrC08fT8AtZPs2glLolUdV5D9e
 E5rArL8ov0st2e+tW65Lb9I=
X-Google-Smtp-Source: APXvYqwbWZHVJXyM6LwZqG93BFEVswnKFIib/1vA31agwuV1XgvHF/y2aw+qgyQO4OxTpj8+2SWDzA==
X-Received: by 2002:a17:90a:b109:: with SMTP id
 z9mr13948112pjq.108.1573757125454; 
 Thu, 14 Nov 2019 10:45:25 -0800 (PST)
Received: from localhost.localdomain (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id 23sm6819507pgw.8.2019.11.14.10.45.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 10:45:24 -0800 (PST)
From: Richard Cochran <richardcochran@gmail.com>
To: netdev@vger.kernel.org
Date: Thu, 14 Nov 2019 10:45:05 -0800
Message-Id: <20191114184507.18937-12-richardcochran@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 11/13] igb: Reject requests that fail
 to enable time stamping on both edges.
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

This hardware always time stamps rising and falling edges, and so this
patch validates that the request does contains both edges.

Signed-off-by: Richard Cochran <richardcochran@gmail.com>
---
 drivers/net/ethernet/intel/igb/igb_ptp.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index 3fd60715bca7..c39e921757ba 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -528,6 +528,12 @@ static int igb_ptp_feature_enable_i210(struct ptp_clock_info *ptp,
 					PTP_STRICT_FLAGS))
 			return -EOPNOTSUPP;
 
+		/* Reject requests failing to enable both edges. */
+		if ((rq->extts.flags & PTP_STRICT_FLAGS) &&
+		    (rq->extts.flags & PTP_ENABLE_FEATURE) &&
+		    (rq->extts.flags & PTP_EXTTS_EDGES) != PTP_EXTTS_EDGES)
+			return -EOPNOTSUPP;
+
 		if (on) {
 			pin = ptp_find_pin(igb->ptp_clock, PTP_PF_EXTTS,
 					   rq->extts.index);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
