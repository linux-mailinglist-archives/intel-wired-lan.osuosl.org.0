Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E16FCE09
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2019 19:45:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6249C89C87;
	Thu, 14 Nov 2019 18:45:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7EFq91cIb+B8; Thu, 14 Nov 2019 18:45:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 21BCB89C94;
	Thu, 14 Nov 2019 18:45:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CB2411BF289
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B942B89C8B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U+FB9nDMkxi3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2019 18:45:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3E7B889C87
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:17 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id 193so4841392pfc.13
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 10:45:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=v+ExKxfOT/Th93uAzKkGBPLkIVwaHS47X1LnIewKNKg=;
 b=Jx6Bgr7OwiyBrv9XwlgAsSg8fB3hGAJCkT+4nsx1I465GEmLhT1sx5CIbDJSvTaIuB
 rV40GkylC3E799Myh/jc1xnkP1is3JgGj9nx3thE8NwTfrLMn9lhNpPgYhi0HtUeTZ8o
 E31SPEoKaDSdlNTsTx+WO5Ya7twx45q1Nv+avQHMWf2B1zFViED/aQqpSqqWgLe79iTu
 fOTUxXSwEGLJbtLucVMN97twZZ3Myl47Fee4wdAK8bKph9Da8wDlf7odPiLEUCWTZfKN
 PboF1q2ZtOyGE9R1TvXvJ2EdR+otMhYBLM9D1LXZZ9T4544e8JJEoidmEVdxBKoEXacp
 q7dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=v+ExKxfOT/Th93uAzKkGBPLkIVwaHS47X1LnIewKNKg=;
 b=j089wMxok8k37H+Mx+AhCELxE/0MK9qs1x+HXx/TxnUBnOT7lTuvdavI3SUOxbvHpV
 srUUWMN+6emlTR1begdE/RHvOkrNozPELN5pGhjDa4BYasRMauNMetVV2ycBmGmuRkyT
 JTE9sMhJ7ohrNu6xYQeL0b+KNsLQhrliqgQx0QeOKlSR0auF3Rd+kERJCgu+OBDuK3EW
 0ABjGiyh7bP13vTPLRLFJYNT/CwDdm6Fj1QsSOA945j3UwtYvA+suNa+8mubRN0j78LP
 ljBMtc1Rdu3oMTVRPsYD4oIL6TedCv+c+C3z4GbPqyRBmeyatIgNUTjKWKzlh0hbBtAj
 ooew==
X-Gm-Message-State: APjAAAVVYZZNvzpSuzK11qbi6zjSmORtE5ZhSQYEWHuYusalSld4b+rv
 F0B37/B16WMEjAw7E2IYgNP0eiO5
X-Google-Smtp-Source: APXvYqx3b14oHrv5YzdxYBi25JaKUfo00uMLj9uVDs6L3mpvlGNoXso0STPsIC//nadxvp49vaY45w==
X-Received: by 2002:a63:d901:: with SMTP id r1mr11706173pgg.328.1573757116811; 
 Thu, 14 Nov 2019 10:45:16 -0800 (PST)
Received: from localhost.localdomain (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id 23sm6819507pgw.8.2019.11.14.10.45.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 10:45:16 -0800 (PST)
From: Richard Cochran <richardcochran@gmail.com>
To: netdev@vger.kernel.org
Date: Thu, 14 Nov 2019 10:44:59 -0800
Message-Id: <20191114184507.18937-6-richardcochran@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 05/13] igb: reject unsupported
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

Fix the igb PTP support to explicitly reject any future flags that
get added to the external timestamp request ioctl.

In order to maintain currently functioning code, this patch accepts all
three current flags. This is because the PTP_RISING_EDGE and
PTP_FALLING_EDGE flags have unclear semantics and each driver seems to
have interpreted them slightly differently.

This HW always time stamps both edges:

  flags                                                 Meaning
  ----------------------------------------------------  --------------------------
  PTP_ENABLE_FEATURE                                    Time stamp both edges
  PTP_ENABLE_FEATURE|PTP_RISING_EDGE                    Time stamp both edges
  PTP_ENABLE_FEATURE|PTP_FALLING_EDGE                   Time stamp both edges
  PTP_ENABLE_FEATURE|PTP_RISING_EDGE|PTP_FALLING_EDGE   Time stamp both edges

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
---
 drivers/net/ethernet/intel/igb/igb_ptp.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index 4997963149f6..0bce3e0f1af0 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -521,6 +521,12 @@ static int igb_ptp_feature_enable_i210(struct ptp_clock_info *ptp,
 
 	switch (rq->type) {
 	case PTP_CLK_REQ_EXTTS:
+		/* Reject requests with unsupported flags */
+		if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
+					PTP_RISING_EDGE |
+					PTP_FALLING_EDGE))
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
