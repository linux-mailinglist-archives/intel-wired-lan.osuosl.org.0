Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D32A8AD35A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Apr 2024 19:39:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 99C3060AC1;
	Mon, 22 Apr 2024 17:39:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FjmLCDN7NYeB; Mon, 22 Apr 2024 17:39:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9DD460A91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713807577;
	bh=iDVH41VbP2tcWCidq0GxDLy5uHVpzfSuy3cESbFhDE4=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d9BOdb7f+psMW8WYM4dLM3YZYXIMIa0C41agoB6u/Ej9OuhNXN6cGM9HRZi9AYg0h
	 b8ZDd4H/5J5L+J4dfF335ZZwCeHJoxh2GXiQa3MfXTWtvm8CwTsPZwUqLUuG5Zsf69
	 eDGPBgHqv8qRKVQCfIeM85EdIaS3Sq2aZZJ1IV9PfEb8xQamFg2I/q+d2M+sdZwpkG
	 hKkw8nQeZKJOcPApZ5uUdIphlRiV1n1G63KLLpFKl5hKisfFDUb8N9r5URFzLpUvV5
	 M7qfsNDUQPj+etxQsDQu+qyl/woqfoBvIjdxsKMeCloO2j9hILqWMi/TCKZpWwscMI
	 PQ6wjwWkRsg6A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9DD460A91;
	Mon, 22 Apr 2024 17:39:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C92311BF48B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 16:42:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B529860731
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 16:42:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jGUGdntN6hYo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Apr 2024 16:42:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62d; helo=mail-pl1-x62d.google.com;
 envelope-from=minhquangbui99@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2317D60708
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2317D60708
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2317D60708
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 16:42:37 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id
 d9443c01a7336-1e411e339b8so35388585ad.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 09:42:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713804157; x=1714408957;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=iDVH41VbP2tcWCidq0GxDLy5uHVpzfSuy3cESbFhDE4=;
 b=DdP7E8gej5fNI2CFazDNcWJJX9Tu+Ck0iCw3lvNT6cT9SxPz1giFHboqb2xJij7ejb
 v4zDnv49G6RPfLBCnBGPUppgWLBN5fpKnavWHo/KvGGImgQ3XGzItFUuwpvHrY5c+PPB
 E61CQxS1GzeF0IvSWHwX/otAY3a34rbZ8AzbyByQSUxm1LWP0fq1t2B0gNR+kHez+MJT
 DkG3freQXRMoI6wPTbkhpZNEe8j9gV1Q2TBz2CGl7M5ECDWiWOrcJsf03uEoHIfTOSTX
 IA+g4qWBhilBuk+bGKmr3sR6OMyfakndiFy2kwdhjNBCHQd20qq9zQHieEgaQ8RjyvH6
 0zcA==
X-Gm-Message-State: AOJu0YzyI039OF7Fmeyl0c+k9Ds3lJvBm9ND5fHCzepSnNRIao1dgnUT
 pd1pedYGl48FlVIFcxu9goa5IKFenHvQKsurG4EuMtsI7w/cx/HA
X-Google-Smtp-Source: AGHT+IGFR0UrE8vlHS9G1xyCFL9Kk8tc6zrtPIBXdEQTIZOCIFTVAjgPZfeNjdeZQpipcvC3xcdlSQ==
X-Received: by 2002:a17:903:584:b0:1e5:d083:c5b3 with SMTP id
 jv4-20020a170903058400b001e5d083c5b3mr11983186plb.5.1713804157395; 
 Mon, 22 Apr 2024 09:42:37 -0700 (PDT)
Received: from [127.0.1.1] ([2001:ee0:50f5:5d0:f32d:f608:a763:3732])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a170902780300b001e7b8c21ebesm8461702pll.225.2024.04.22.09.42.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Apr 2024 09:42:37 -0700 (PDT)
From: Bui Quang Minh <minhquangbui99@gmail.com>
Date: Mon, 22 Apr 2024 23:41:38 +0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240422-fix-oob-read-v1-3-e02854c30174@gmail.com>
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
 d=gmail.com; s=20230601; t=1713804157; x=1714408957; darn=lists.osuosl.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=iDVH41VbP2tcWCidq0GxDLy5uHVpzfSuy3cESbFhDE4=;
 b=hOnXCtaMMDMSJVzP3cyj8bGqaDjPwv+1jUfwojWVpbAPRgJxBU/Mqgo5E9S3nQD3x3
 5eTIprxd6FeFrVZ1drhDdr2qWthlliih9MXSKhU4FbuMsRFCDgcSQLgYpkoeUBwlV+Tk
 XZr3g/JItWYsb7Td1CVp82zmf+qC/+ucJD198PZ2XLUwKjC1FBNKikaOJV71vtZ2QHzo
 VqkdAk3bOuR2hkXCGtlfkNAEn8JxbNy9c7ezCZqec0akq3Yl7q+iLPr420iXoTN8fdep
 5d9JFRTj3C8829X/rOdjKI9Qht4cLmbsIq6BubXi6a15T1NHuhrH3V6H1hGwmpq1Yj4d
 CCDg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=hOnXCtaM
Subject: [Intel-wired-lan] [PATCH 3/5] drivers/scsi/bfa/bfad: ensure the
 copied buf is NULL terminated
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

Currently, we allocate a nbytes-sized kernel buffer and copy nbytes from
userspace to that buffer. Later, we use sscanf on this buffer but we don't
ensure that the string is terminated inside the buffer, this can lead to
OOB read when using sscanf. Fix this issue by using memdup_user_nul
instead of memdup_user.

Fixes: 9f30b674759b ("bfa: replace 2 kzalloc/copy_from_user by memdup_user")
Signed-off-by: Bui Quang Minh <minhquangbui99@gmail.com>
---
 drivers/scsi/bfa/bfad_debugfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/bfa/bfad_debugfs.c b/drivers/scsi/bfa/bfad_debugfs.c
index 52db147d9979..f6dd077d47c9 100644
--- a/drivers/scsi/bfa/bfad_debugfs.c
+++ b/drivers/scsi/bfa/bfad_debugfs.c
@@ -250,7 +250,7 @@ bfad_debugfs_write_regrd(struct file *file, const char __user *buf,
 	unsigned long flags;
 	void *kern_buf;
 
-	kern_buf = memdup_user(buf, nbytes);
+	kern_buf = memdup_user_nul(buf, nbytes);
 	if (IS_ERR(kern_buf))
 		return PTR_ERR(kern_buf);
 
@@ -317,7 +317,7 @@ bfad_debugfs_write_regwr(struct file *file, const char __user *buf,
 	unsigned long flags;
 	void *kern_buf;
 
-	kern_buf = memdup_user(buf, nbytes);
+	kern_buf = memdup_user_nul(buf, nbytes);
 	if (IS_ERR(kern_buf))
 		return PTR_ERR(kern_buf);
 

-- 
2.34.1

