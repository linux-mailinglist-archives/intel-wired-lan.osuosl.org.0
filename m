Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B474FCE0C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2019 19:45:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B6B3722849;
	Thu, 14 Nov 2019 18:45:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gfST7zJklbip; Thu, 14 Nov 2019 18:45:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E787023280;
	Thu, 14 Nov 2019 18:45:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8F7831BF289
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8B088882C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q54mH3A0FOny for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2019 18:45:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0DCCE882BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:20 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id z4so4847427pfn.12
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 10:45:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xN6Ff/rEmda33ktJVzl9KCXqa8Sx0iaIjbPXMuf+NBQ=;
 b=AlEKTmOxNzExN9wdwBJvmv0HnbxXq1IGPPAOjrul0f//SeZAyapcuM+wRs24y3ZSfJ
 N146GR1cZ5+UBaUA2yGMWpQZ4x3dD31x4WG93L34XXvtjSng4ZWYZVitWj53MvFlSCml
 NYVbAHg6RkS6z2BOwCv/hUA5fGn0JOFY8tvv/VDBdhHFRJPeZxVyJzpD7kZF1LlCt/F4
 uIL2Z8Uo+geC/x/dUQdwJ8lB23Wqypbn2AEXSCnlulaZp8sJ6bJVcd9FHFZ27IglZH32
 lyholkefIYZEkqBz56FfeRjNL+UsNakB+6klomVEldPPZumS3tyvQH4W321erYo3iH4T
 1xgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xN6Ff/rEmda33ktJVzl9KCXqa8Sx0iaIjbPXMuf+NBQ=;
 b=G9spCJwDG65IGGEgB911pFcOPxmn2M7KoTUIIDDMYDl9l73SkT8/RZXqD2qBFRgjvh
 xRbVXwKsaELJwV8wOrWXJkCWL1ioYbKv4w9iqXq5asdtV88nEm8mAmuJk78yjQvPVRQy
 1qnYy21oN2jcj1zinDhtnjqkUdiI++A4KG8Jcyt7NAxgzaLR2R1aV/763xf+TUr4vS9+
 zM1slq/Qbyf4djn6SPbrpWvRPNM+HDJpRlYofHvOjZHsG9FgV3rNlGPA3jVh1VF4tv/7
 qnPplxVPdIvxJi3dl4A39/QVjKyQ/EYWqb3BdroFaxRqPwGp/dalb5akFyV8BL8HaTtI
 hq/Q==
X-Gm-Message-State: APjAAAUaydJ6ZuOzKB6oBdV193kkWDSot+z2ndFgfHB1bTTKZlZnO+V1
 oGkT9ORHk0o4BjrAInN1+hzVM01N
X-Google-Smtp-Source: APXvYqyDM6CBaERu9pdWS5TIezYmH40TxWm+Pok5B/6Lxu+q5I4mi1XpJkzUaRDheD35nYOcra1FHg==
X-Received: by 2002:aa7:9432:: with SMTP id y18mr913814pfo.250.1573757119716; 
 Thu, 14 Nov 2019 10:45:19 -0800 (PST)
Received: from localhost.localdomain (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id 23sm6819507pgw.8.2019.11.14.10.45.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 10:45:19 -0800 (PST)
From: Richard Cochran <richardcochran@gmail.com>
To: netdev@vger.kernel.org
Date: Thu, 14 Nov 2019 10:45:01 -0800
Message-Id: <20191114184507.18937-8-richardcochran@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 07/13] renesas: reject unsupported
 external timestamp flags
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

From: Jacob Keller <jacob.e.keller@intel.com>

Fix the renesas PTP support to explicitly reject any future flags that
get added to the external timestamp request ioctl.

In order to maintain currently functioning code, this patch accepts all
three current flags. This is because the PTP_RISING_EDGE and
PTP_FALLING_EDGE flags have unclear semantics and each driver seems to
have interpreted them slightly differently.

Cc: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Richard Cochran <richardcochran@gmail.com>
Reviewed-by: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
---
 drivers/net/ethernet/renesas/ravb_ptp.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/renesas/ravb_ptp.c b/drivers/net/ethernet/renesas/ravb_ptp.c
index 638f1fc2166f..666dbee48097 100644
--- a/drivers/net/ethernet/renesas/ravb_ptp.c
+++ b/drivers/net/ethernet/renesas/ravb_ptp.c
@@ -182,6 +182,12 @@ static int ravb_ptp_extts(struct ptp_clock_info *ptp,
 	struct net_device *ndev = priv->ndev;
 	unsigned long flags;
 
+	/* Reject requests with unsupported flags */
+	if (req->flags & ~(PTP_ENABLE_FEATURE |
+			   PTP_RISING_EDGE |
+			   PTP_FALLING_EDGE))
+		return -EOPNOTSUPP;
+
 	if (req->index)
 		return -EINVAL;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
