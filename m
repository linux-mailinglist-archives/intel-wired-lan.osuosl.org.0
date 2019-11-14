Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A7BFCE00
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2019 19:45:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 126BE882E7;
	Thu, 14 Nov 2019 18:45:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id paG4uccpEzax; Thu, 14 Nov 2019 18:45:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 607F1882CC;
	Thu, 14 Nov 2019 18:45:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ED7AC1BF289
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E9DD689168
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AAdO2o1E6YHf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2019 18:45:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5787B89153
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:14 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id k13so4350095pgh.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 10:45:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UJweYauEUzN1el5H7+jNKGxHUTrlFVlLLYMrPDFTPrw=;
 b=HmCxMPjYWo4iAoeAvkA0YrUNRCfDp1kQAfnh91Fp3uRWxaBE8edhI5L0TDjakPMYzV
 BrPSnGSnpa3jJwgggdbsPyazW2K26o2sJNohfKsVpf5zzr5ljGrOfaTNzonfZ7/oK/bs
 QuEdvxPcckNhDFqVg/yFdW4oTyA1V+6NLziwdH40RObMg/CDDFiZYLTCHvo8A7ZHQ0P1
 ULIScUZc89s9Z/ial9FcSnpjLnRVcV2vOsVoJaLaOo5ALiRcuv0K+dUcD6dUkcBZiIST
 kf25itJeHboIZnhkHRDHzcA7W1KCXMMh4Sj6s8SQFdCPiDbSfHz+MXOQkbXaXUXcmgB7
 rwSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UJweYauEUzN1el5H7+jNKGxHUTrlFVlLLYMrPDFTPrw=;
 b=fG/VeY5IF2XztyKMZtelKfIjecYJrms5pTKsxDpGes5n2gQA89QIpjfcIH65WmKexV
 /ch8AK4PRKoHb30sGL59ezwUSAjHZ0qxf9bznV2GsEz2UohxKJAjwGLVMqqcvO/3hiUl
 b7ViAYdyQW3aabunbGqsMYdTDx19O1kiJV+buSvcKkIUCneMy35XUA14IykBusinNucw
 wOtsB3iHS3VjmfYPzq7AWlnpdpnCmXlgwfyuU2DKlRYdN/xqODYtzMEMuvghyH4oiTRX
 30KG3BVHR8Q3Q/3SLiVGuIXXUfVxckV26b59JyIg7QnMI7ex9lRy7ynN3QDnvXgjyBfw
 2u2g==
X-Gm-Message-State: APjAAAVV8FNiBYLmDh2iHBaxVXcX6Xw/3xWPh4JSoF4BS5yBY7nx5QH2
 rhyDMsS1lQdaMjDQNg1gXHM=
X-Google-Smtp-Source: APXvYqzS8fKT7yamtldHOoBnAh+S2ZqlWam+5y5daaHTtrUwTXblAXw1esOngPaDfBJCQHEfoTdLFQ==
X-Received: by 2002:a65:678a:: with SMTP id e10mr11686445pgr.258.1573757113982; 
 Thu, 14 Nov 2019 10:45:13 -0800 (PST)
Received: from localhost.localdomain (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id 23sm6819507pgw.8.2019.11.14.10.45.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 10:45:13 -0800 (PST)
From: Richard Cochran <richardcochran@gmail.com>
To: netdev@vger.kernel.org
Date: Thu, 14 Nov 2019 10:44:57 -0800
Message-Id: <20191114184507.18937-4-richardcochran@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 03/13] mv88e6xxx: reject unsupported
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

Fix the mv88e6xxx PTP support to explicitly reject any future flags that
get added to the external timestamp request ioctl.

In order to maintain currently functioning code, this patch accepts all
three current flags. This is because the PTP_RISING_EDGE and
PTP_FALLING_EDGE flags have unclear semantics and each driver seems to
have interpreted them slightly differently.

For the record, the semantics of this driver are:

  flags                                                 Meaning
  ----------------------------------------------------  --------------------------
  PTP_ENABLE_FEATURE                                    Time stamp falling edge
  PTP_ENABLE_FEATURE|PTP_RISING_EDGE                    Time stamp rising edge
  PTP_ENABLE_FEATURE|PTP_FALLING_EDGE                   Time stamp falling edge
  PTP_ENABLE_FEATURE|PTP_RISING_EDGE|PTP_FALLING_EDGE   Time stamp rising edge

Cc: Brandon Streiff <brandon.streiff@ni.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Richard Cochran <richardcochran@gmail.com>
---
 drivers/net/dsa/mv88e6xxx/ptp.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/dsa/mv88e6xxx/ptp.c b/drivers/net/dsa/mv88e6xxx/ptp.c
index 073cbd0bb91b..076e622a64d6 100644
--- a/drivers/net/dsa/mv88e6xxx/ptp.c
+++ b/drivers/net/dsa/mv88e6xxx/ptp.c
@@ -273,6 +273,12 @@ static int mv88e6352_ptp_enable_extts(struct mv88e6xxx_chip *chip,
 	int pin;
 	int err;
 
+	/* Reject requests with unsupported flags */
+	if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
+				PTP_RISING_EDGE |
+				PTP_FALLING_EDGE))
+		return -EOPNOTSUPP;
+
 	pin = ptp_find_pin(chip->ptp_clock, PTP_PF_EXTTS, rq->extts.index);
 
 	if (pin < 0)
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
