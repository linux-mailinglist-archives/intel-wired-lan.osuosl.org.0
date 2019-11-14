Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A399BFCE13
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2019 19:45:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3DC62882EB;
	Thu, 14 Nov 2019 18:45:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z1J5GPWR6i9i; Thu, 14 Nov 2019 18:45:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D208F882BE;
	Thu, 14 Nov 2019 18:45:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0037D1BF289
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DA68E89C8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tB24dmqFKwOq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2019 18:45:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4221289C8B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:24 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id q22so4358183pgk.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 10:45:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=o0poRh66g/qqcAtxprleBKed73eICCEv6L8Oqc9jcrg=;
 b=miDGPt321IibkYm9srsINKjfZCosucoHt8gtkG+k7OX4GrhuTKA/j4l/Q6pXyiYoEU
 vnEcMx3/OqTBHAYzh/BEGEcBKyAUg/rpcivOFRCwbz+IphJg5lWYZR8rmGFAAAb27RlJ
 ku5qrWNtmE66LzaKsugPW8ZOZ7ChP3RbN0XaVlIjnmHhKiTJwOCgbbHtn8oqEeLKjcMW
 MHi4wQbrWuSE9qTcieRUDv2cB7E3O+7br0wbfhy//xEg7xbTi4yx7sjH4gK0FonNRDTW
 kvqlOX6FZD4+La2fO4iBYZ1CCxemvk502Qgz4/l7H0MYuTrwqZPkaLPwMZM6stcK+c70
 vBDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=o0poRh66g/qqcAtxprleBKed73eICCEv6L8Oqc9jcrg=;
 b=Jr6zh84IEU7zoBPEvLpDYA52HP6Acj4aiSkTskxn55yx+1+OVDn+zbhY6WtLPV34fM
 urpmSWxws46OikHA6nw25MaOD+Sxon0dbomul4t5agRTfTN7HrwncVRgLQJgv1Rt9S90
 NTe5mmEPbSa8y7l4GGSJI5LvETAkHEeyUP8ffWWSp9qgqdFbWedRHaoJ6pyMU63DnlTM
 kj76HvG8eukgJFynJbB4S2AEhMNpfhYZHOTM89U1bQJTdiVbzj2H6ExXPMRZHztuiMu6
 ePa8YVBnlFarRoVfB10yRZW62dkhx8Z20Xz6kBJXscUxEDrW1YuNELuQeafjALFMEMg6
 UtLg==
X-Gm-Message-State: APjAAAWVmuc/jZyhC63mM1okU1Qte0ZC5echnMdcc/0shezmGQ1rhcIh
 gNbyOHeafyAJyKAcUuRYeWk=
X-Google-Smtp-Source: APXvYqyt+sDREmYpkh+77thPoRhBNaWyB0Ipzg5X3TtSKyogbAMclFXkc3Z+1wclRekRUL8UnSfYsg==
X-Received: by 2002:a65:6482:: with SMTP id e2mr8679115pgv.20.1573757123822;
 Thu, 14 Nov 2019 10:45:23 -0800 (PST)
Received: from localhost.localdomain (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id 23sm6819507pgw.8.2019.11.14.10.45.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 10:45:23 -0800 (PST)
From: Richard Cochran <richardcochran@gmail.com>
To: netdev@vger.kernel.org
Date: Thu, 14 Nov 2019 10:45:04 -0800
Message-Id: <20191114184507.18937-11-richardcochran@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 10/13] dp83640: Reject requests to
 enable time stamping on both edges.
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
 drivers/net/phy/dp83640.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/phy/dp83640.c b/drivers/net/phy/dp83640.c
index 3bba2bea3a88..8f241b57fcf6 100644
--- a/drivers/net/phy/dp83640.c
+++ b/drivers/net/phy/dp83640.c
@@ -475,6 +475,13 @@ static int ptp_dp83640_enable(struct ptp_clock_info *ptp,
 					PTP_FALLING_EDGE |
 					PTP_STRICT_FLAGS))
 			return -EOPNOTSUPP;
+
+		/* Reject requests to enable time stamping on both edges. */
+		if ((rq->extts.flags & PTP_STRICT_FLAGS) &&
+		    (rq->extts.flags & PTP_ENABLE_FEATURE) &&
+		    (rq->extts.flags & PTP_EXTTS_EDGES) == PTP_EXTTS_EDGES)
+			return -EOPNOTSUPP;
+
 		index = rq->extts.index;
 		if (index >= N_EXT_TS)
 			return -EINVAL;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
