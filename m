Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 227E3FCDFF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2019 19:45:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 54596882C0;
	Thu, 14 Nov 2019 18:45:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AvXcJ_gkCcI8; Thu, 14 Nov 2019 18:45:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 900AE882C2;
	Thu, 14 Nov 2019 18:45:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6C6F51BF289
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6902022849
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YldmQdiin-hs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2019 18:45:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 78F81204C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:11 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id z24so4352430pgu.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 10:45:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8TxLlnJ4BoD9B2pwZqmboySs4KscSO6XXXhYyisKwIU=;
 b=Yhgj/vq+K/+BgF6v37h/l60TDGEItYnX6OCRofzkA61wbx49rVsGKH+4YsuHT2Uhnp
 4QpbcgT1wxH4xljcubgW+/bugWjNhDnNs+2gkJ2KTbc+Ei0sZYtYF4c8FK5Yl8U+uJaB
 G4KL+ATeMI5EFBbLr1HIFt0bE3yEfFN6BQkwQQZ30ww9FSJFrVx/o/+Nqoz7E9kQNQjK
 g7t4PFtSI2VgBFCmolQFS9rWrcy8bwypgG63oBwvE70CJ4greNJgg0fpu9XJuH7Bh8AB
 BzPosknm+rZTNH475+KpvoRmLpmDbrHeqqoixq0Lv0LkSnZy0KZRPHIYr83AXVB2IRk/
 N4vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8TxLlnJ4BoD9B2pwZqmboySs4KscSO6XXXhYyisKwIU=;
 b=G/Tyvkb3vpsRnX6juEL2bqvnNdUHkB61i9QEGfxqMLIzkF0pkMkommvnJ7xbRkJvAK
 DjYoMAJY3/06LURmOcctm2eDMDrTqRyWIz3psDV4dEexC9EEuvOKwh4s87+XjR5JK6L6
 klohCwMSaxCMco2P5iKKbdbNcX/uciqyVEiXG6DFCdDpeRc51TdzmLAK77RCPaX1nMTV
 HFQrHFXUgWwSyblkIP0JAeIhIB3tBEs6dx8wzIfS9b50As7H6Y06G4WYUvu52gveRBog
 /U/92+7Ttz4HZ8IQVRsg0048iIzPaCD0dnH0f0eymHHKZ2CtXwasWqMS75WH07zdwysk
 aSAQ==
X-Gm-Message-State: APjAAAWLhThVojxKFJDCLsY8clj94lq3SostwMTaDqed6Xx2/2RP/4mW
 eMqJoleoNnYsoMrki472JeI=
X-Google-Smtp-Source: APXvYqwdUBwNxm3Oy7UhcAMIgUJqoM+tDDV+OBw4iaOzMUqv+8BqU++lw7P+Laz3rFiRtH1VW7yWXw==
X-Received: by 2002:a63:4d12:: with SMTP id a18mr11506093pgb.451.1573757110991; 
 Thu, 14 Nov 2019 10:45:10 -0800 (PST)
Received: from localhost.localdomain (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id 23sm6819507pgw.8.2019.11.14.10.45.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 10:45:10 -0800 (PST)
From: Richard Cochran <richardcochran@gmail.com>
To: netdev@vger.kernel.org
Date: Thu, 14 Nov 2019 10:44:55 -0800
Message-Id: <20191114184507.18937-2-richardcochran@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 01/13] ptp: Validate requests to
 enable time stamping of external signals.
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

Commit 415606588c61 ("PTP: introduce new versions of IOCTLs")
introduced a new external time stamp ioctl that validates the flags.
This patch extends the validation to ensure that at least one rising
or falling edge flag is set when enabling external time stamps.

Signed-off-by: Richard Cochran <richardcochran@gmail.com>
---
 drivers/ptp/ptp_chardev.c      | 18 +++++++++++++-----
 include/uapi/linux/ptp_clock.h |  1 +
 2 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/ptp/ptp_chardev.c b/drivers/ptp/ptp_chardev.c
index 67d0199840fd..cbbe1237ff8d 100644
--- a/drivers/ptp/ptp_chardev.c
+++ b/drivers/ptp/ptp_chardev.c
@@ -149,11 +149,19 @@ long ptp_ioctl(struct posix_clock *pc, unsigned int cmd, unsigned long arg)
 			err = -EFAULT;
 			break;
 		}
-		if (((req.extts.flags & ~PTP_EXTTS_VALID_FLAGS) ||
-			req.extts.rsv[0] || req.extts.rsv[1]) &&
-			cmd == PTP_EXTTS_REQUEST2) {
-			err = -EINVAL;
-			break;
+		if (cmd == PTP_EXTTS_REQUEST2) {
+			/* Make sure no reserved bit is set. */
+			if ((req.extts.flags & ~PTP_EXTTS_VALID_FLAGS) ||
+			    req.extts.rsv[0] || req.extts.rsv[1]) {
+				err = -EINVAL;
+				break;
+			}
+			/* Ensure one of the rising/falling edge bits is set. */
+			if ((req.extts.flags & PTP_ENABLE_FEATURE) &&
+			    (req.extts.flags & PTP_EXTTS_EDGES) == 0) {
+				err = -EINVAL;
+				break;
+			}
 		} else if (cmd == PTP_EXTTS_REQUEST) {
 			req.extts.flags &= PTP_EXTTS_V1_VALID_FLAGS;
 			req.extts.rsv[0] = 0;
diff --git a/include/uapi/linux/ptp_clock.h b/include/uapi/linux/ptp_clock.h
index 59e89a1bc3bb..304059b1609d 100644
--- a/include/uapi/linux/ptp_clock.h
+++ b/include/uapi/linux/ptp_clock.h
@@ -31,6 +31,7 @@
 #define PTP_ENABLE_FEATURE (1<<0)
 #define PTP_RISING_EDGE    (1<<1)
 #define PTP_FALLING_EDGE   (1<<2)
+#define PTP_EXTTS_EDGES    (PTP_RISING_EDGE | PTP_FALLING_EDGE)
 
 /*
  * flag fields valid for the new PTP_EXTTS_REQUEST2 ioctl.
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
