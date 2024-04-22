Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F318AD35B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Apr 2024 19:39:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9632660AB7;
	Mon, 22 Apr 2024 17:39:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lC8shS5V26Ct; Mon, 22 Apr 2024 17:39:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E214160AC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713807578;
	bh=jL5u74w472gVJgaoFOuurGlZOko3LllmO61ppXmRiz4=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aSd52dq99Nno3Iby4o+ymYzsQRgEp0pFbBZWfY3RC9gBLQMUedOWtWDAXZkJrVXOk
	 P9hkuBMqiZDQLDBHWLwNXL7O/4ksSKO+jNfX5iQsmhTrSoC3MMeb3gbDCSDKdls5Vp
	 LY+7mKzDlh5ij9YcYFnn6juo+L6HQyDsoOVwvzrzlL8EMg77hwYrOyZ3YGbgKA2NxH
	 QbM2SJ2SFi5kvR5dmDXYbkQudF+QnKKagUpewWoF1uREySt7rDA+BnXRnzCUyNJN5+
	 Qwb4hpnlReafDwJrNzAezFJM1jkAH79rLdOuATApUTOt8kYJDBDrjQ4IcF5GkhrE55
	 V9IlQOkzy6MqQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E214160AC4;
	Mon, 22 Apr 2024 17:39:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7B4D61BF48B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 16:42:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 68B9760731
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 16:42:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p57TMPhEtUSc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Apr 2024 16:42:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::636; helo=mail-pl1-x636.google.com;
 envelope-from=minhquangbui99@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BBA5C60708
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BBA5C60708
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BBA5C60708
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 16:42:46 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id
 d9443c01a7336-1e65b29f703so33703515ad.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 09:42:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713804166; x=1714408966;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jL5u74w472gVJgaoFOuurGlZOko3LllmO61ppXmRiz4=;
 b=K77NQRzBvcC1sapV2vf8mpsgnwOPlWIuF00wYqzd2Z6K/oXpcjFu0ejyhnCbDp2Nyu
 C2PJuXhMXMkb1T7sOeYTrlftTggvBguxV+nk8bnRKcFOnTAwUDfiUNVhrfOaV+BR9gZH
 GM0F3y5LtkmrLVm+pJjMDzM0yTEqNnl6pHVC4cH0GoFJb/xEbmRAtzCxdv20FtBfalBu
 XudPvPl1YQsdSBPhJh4ygjiZegN09zSsgvi+iKPApO2wPiV9eSItbQE4dRDyos3BZgPn
 rTEZrY/IC8AD7tdOT8bkeuI0if0ueh0+nZRE3Q2tVpV35lrn4HYapj069K/01/0JkHbu
 k29g==
X-Gm-Message-State: AOJu0YyptjtUPDIOS8dWeptzRXZ/uRC5PeV4L+j25BjxdU0Tzs/0j0yE
 BDV38xgk5+CpdPV2UXUMbGuGRRMF5MtLpoVMQSDOez5PFDaVMs6P
X-Google-Smtp-Source: AGHT+IGFYxmbMrycOqL+3S4jQuGH3EvQ4YJVKxorFUyzvblrMx0EhcdYzSTzQFFqrVCB/jUZ0HpnMA==
X-Received: by 2002:a17:902:b187:b0:1e4:17e4:3a30 with SMTP id
 s7-20020a170902b18700b001e417e43a30mr9577651plr.31.1713804166091; 
 Mon, 22 Apr 2024 09:42:46 -0700 (PDT)
Received: from [127.0.1.1] ([2001:ee0:50f5:5d0:f32d:f608:a763:3732])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a170902780300b001e7b8c21ebesm8461702pll.225.2024.04.22.09.42.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Apr 2024 09:42:45 -0700 (PDT)
From: Bui Quang Minh <minhquangbui99@gmail.com>
Date: Mon, 22 Apr 2024 23:41:39 +0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240422-fix-oob-read-v1-4-e02854c30174@gmail.com>
References: <20240422-fix-oob-read-v1-0-e02854c30174@gmail.com>
In-Reply-To: <20240422-fix-oob-read-v1-0-e02854c30174@gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>, 
 Rasesh Mody <rmody@marvell.com>, Sudarsana Kalluru <skalluru@marvell.com>, 
 GR-Linux-NIC-Dev@marvell.com, Krishna Gudipati <kgudipat@brocade.com>, 
 Anil Gurumurthy <anil.gurumurthy@qlogic.com>, 
 Sudarsana Kalluru <sudarsana.kalluru@qlogic.com>, 
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, 
 "Martin K. Petersen" <martin.petersen@oracle.com>, 
 Fabian Frederick <fabf@skynet.be>, Saurav Kashyap <skashyap@marvell.com>, 
 Javed Hasan <jhasan@marvell.com>, GR-QLogic-Storage-Upstream@marvell.com, 
 Nilesh Javali <nilesh.javali@cavium.com>, Arun Easi <arun.easi@cavium.com>, 
 Manish Rangankar <manish.rangankar@cavium.com>, 
 Vineeth Vijayan <vneethv@linux.ibm.com>, 
 Peter Oberparleiter <oberpar@linux.ibm.com>, 
 Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, 
 Alexander Gordeev <agordeev@linux.ibm.com>, 
 Christian Borntraeger <borntraeger@linux.ibm.com>, 
 Sven Schnelle <svens@linux.ibm.com>
X-Mailer: b4 0.13.0
X-Mailman-Approved-At: Mon, 22 Apr 2024 17:39:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1713804166; x=1714408966; darn=lists.osuosl.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=jL5u74w472gVJgaoFOuurGlZOko3LllmO61ppXmRiz4=;
 b=QeU6F/2LgqSmR+cftFc+aonw940m/coJsJZw2Fnr2VpKHPrSrRy9mfFhK4l1q1QolO
 UQ8CIrwwdK+PHZbfaaRsHKYDU3HQk9f/2Nk03r+sRWYWWV9NOTf6dYmh2KMWEU6cORZx
 d2H+vp+ZaUKDmn4vgQ6Ipgk3I6UEjO1DZdn6QWvsUoTxj6cwOGgi3sFRbKVsuBik/9Ea
 KnjnvExafS8i6UDcgtSrwWCSEzGhKtw4/OPZ9qdP4+hiQBJPvui2d63Gkpgl+86H89Dl
 gHPL5VbCdOI8Jq9wH+mKLbzazKq4QyActWcvevwjsiiMFhAc90r5+RIb0Ny193iFRnPl
 WYZw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=QeU6F/2L
Subject: [Intel-wired-lan] [PATCH 4/5] drivers/scsi/qedf: ensure the copied
 buf is NULL terminated
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Saurav Kashyap <saurav.kashyap@cavium.com>,
 Bui Quang Minh <minhquangbui99@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, we allocate a count-sized kernel buffer and copy count from
userspace to that buffer. Later, we use kstrtouint on this buffer but we
don't ensure that the string is terminated inside the buffer, this can
lead to OOB read when using kstrtouint. Fix this issue by using
memdup_user_nul instead of memdup_user.

Fixes: 61d8658b4a43 ("scsi: qedf: Add QLogic FastLinQ offload FCoE driver framework.")
Signed-off-by: Bui Quang Minh <minhquangbui99@gmail.com>
---
 drivers/scsi/qedf/qedf_debugfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/qedf/qedf_debugfs.c b/drivers/scsi/qedf/qedf_debugfs.c
index 451fd236bfd0..96174353e389 100644
--- a/drivers/scsi/qedf/qedf_debugfs.c
+++ b/drivers/scsi/qedf/qedf_debugfs.c
@@ -170,7 +170,7 @@ qedf_dbg_debug_cmd_write(struct file *filp, const char __user *buffer,
 	if (!count || *ppos)
 		return 0;
 
-	kern_buf = memdup_user(buffer, count);
+	kern_buf = memdup_user_nul(buffer, count);
 	if (IS_ERR(kern_buf))
 		return PTR_ERR(kern_buf);
 

-- 
2.34.1

