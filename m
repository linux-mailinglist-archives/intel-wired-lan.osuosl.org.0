Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5925E8AD358
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Apr 2024 19:39:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58CAC608DB;
	Mon, 22 Apr 2024 17:39:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id erTxRuWgvDkA; Mon, 22 Apr 2024 17:39:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9ECC0606C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713807574;
	bh=eL4ffxjrw/Oouw+LwAu0XgJYOaiP8blt+5qz96VZZiY=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=V/fn18edsFY2g/Xkxd4gsKbBFYdhPLLDEDDLWRgnEbP3My4rKUU9W/nILX7LZNFry
	 RgY1XOizbuNgcVVost2dVV3EvWlx+oiATo5b9kdIRa9OWEGN6FbwoRP5YzVl/VHrOk
	 b/svhduQ9JlRy295eihiGdM4bhAnEMpnC16Z+VfY8tqSX7DHo539gBxbAda+3a+VYj
	 splh9jhmpy97wxYRMWctzmQS6MFJ0tcl6VuCPmrVXhc1pVtw6G8YGKyEV1QWw5cTj4
	 OONE9flP8KX2pccsTQDbpmFlU/XK2m4RncnJIDIBZd+Y9JCQdpY3vaTxKVYsOirJWv
	 my88UJVUfUUjQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9ECC0606C2;
	Mon, 22 Apr 2024 17:39:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1DEED1BF48B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 16:42:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 091F981FE0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 16:42:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3yCnn-vuHiKx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Apr 2024 16:42:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::635; helo=mail-pl1-x635.google.com;
 envelope-from=minhquangbui99@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E7CEF81FDE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7CEF81FDE
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E7CEF81FDE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 16:42:20 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id
 d9443c01a7336-1e2c725e234so42674745ad.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 09:42:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713804140; x=1714408940;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=eL4ffxjrw/Oouw+LwAu0XgJYOaiP8blt+5qz96VZZiY=;
 b=UfL7iSa3viiPkJ5BkMFgFdfdJkQW7VDP7l8CC8cSF+FHJ6pyCO3h1FDR+b2os6O8mt
 YQH/s/q5k0cBxLRXtw5M2gveX1mNJcBAoZrVInqh6vi/MLL0aODLoeiawWZkyPJ7G41v
 A/7x9pJzvAoKT2kbJ3xdmOffgIgZ071YIWtDEww4YzXldPxXHEoVO3q7PaVtTakqg++W
 mAkjJ4GGoG6nUHJQhJ45vAzhryfrnZb/glk4YwAkQ9JqErbBX5NUPMD1zLIhJxVHt2Db
 aJX7/w6ggCKqw4XSFgd0srjVM3bFIJOsY0mdhYB1THvwqGNoUMgzWOrqlfw+NeR1zxzB
 2uqg==
X-Gm-Message-State: AOJu0YwsD3KUFgAp/vtCl2qSE5ohxGAHPywdyM9jmq8Ofs6ZUZ8LNJMc
 qetxSu4GjGacCWiI0TSS9d9P5yHi0jUBl9KZbweYaVmqcq5rH4Ju
X-Google-Smtp-Source: AGHT+IEE3zCzjNrxH/2KcNM7PIDosav5wc2WckggravkOccoGJpeEQnzKLmEsUt2/yyWlk73nUulDg==
X-Received: by 2002:a17:903:1ce:b0:1e2:abc5:e28b with SMTP id
 e14-20020a17090301ce00b001e2abc5e28bmr216891plh.19.1713804140098; 
 Mon, 22 Apr 2024 09:42:20 -0700 (PDT)
Received: from [127.0.1.1] ([2001:ee0:50f5:5d0:f32d:f608:a763:3732])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a170902780300b001e7b8c21ebesm8461702pll.225.2024.04.22.09.42.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Apr 2024 09:42:19 -0700 (PDT)
From: Bui Quang Minh <minhquangbui99@gmail.com>
Date: Mon, 22 Apr 2024 23:41:36 +0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240422-fix-oob-read-v1-1-e02854c30174@gmail.com>
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
 d=gmail.com; s=20230601; t=1713804140; x=1714408940; darn=lists.osuosl.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=eL4ffxjrw/Oouw+LwAu0XgJYOaiP8blt+5qz96VZZiY=;
 b=edb18EsP35KJ2iAH4Pw+te29mgTHauV1A87COA3TkDRBnMBfAE1/5e8LD3Qn4RLfS1
 2uZYVvkwKbNYDugJD3KFIEQ4sE2qUHQwUDnXIMB9B+y6PgWFX6Y4kHJaFL6tdhl6+3Ez
 HHyfu1lUUn5+nETIIXU7TuCdvoZT3q6EPa/QOrBjZZHO63XSvtCMN7w32hhMyDXr8jWl
 xLd+UImkyDc0umR2gfXyAgIykxLwYgg82gh160CFULop4ns31a+sY0qLAPCQ8dszFh8h
 t/qgzpVjRLktIN5bql/FtVcv5tWDEfDE0LJmeyyigfPdR5ELbPLzDZ6nUhA9G3b7PMxq
 fmEw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=edb18EsP
Subject: [Intel-wired-lan] [PATCH 1/5] drivers/net/ethernet/intel-ice:
 ensure the copied buf is NULL terminated
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

Currently, we allocate a count-sized kernel buffer and copy count bytes
from userspace to that buffer. Later, we use sscanf on this buffer but we
don't ensure that the string is terminated inside the buffer, this can lead
to OOB read when using sscanf. Fix this issue by using memdup_user_nul
instead of memdup_user.

Fixes: 96a9a9341cda ("ice: configure FW logging")
Fixes: 73671c3162c8 ("ice: enable FW logging")
Signed-off-by: Bui Quang Minh <minhquangbui99@gmail.com>
---
 drivers/net/ethernet/intel/ice/ice_debugfs.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
index d252d98218d0..9fc0fd95a13d 100644
--- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -171,7 +171,7 @@ ice_debugfs_module_write(struct file *filp, const char __user *buf,
 	if (*ppos != 0 || count > 8)
 		return -EINVAL;
 
-	cmd_buf = memdup_user(buf, count);
+	cmd_buf = memdup_user_nul(buf, count);
 	if (IS_ERR(cmd_buf))
 		return PTR_ERR(cmd_buf);
 
@@ -257,7 +257,7 @@ ice_debugfs_nr_messages_write(struct file *filp, const char __user *buf,
 	if (*ppos != 0 || count > 4)
 		return -EINVAL;
 
-	cmd_buf = memdup_user(buf, count);
+	cmd_buf = memdup_user_nul(buf, count);
 	if (IS_ERR(cmd_buf))
 		return PTR_ERR(cmd_buf);
 
@@ -332,7 +332,7 @@ ice_debugfs_enable_write(struct file *filp, const char __user *buf,
 	if (*ppos != 0 || count > 2)
 		return -EINVAL;
 
-	cmd_buf = memdup_user(buf, count);
+	cmd_buf = memdup_user_nul(buf, count);
 	if (IS_ERR(cmd_buf))
 		return PTR_ERR(cmd_buf);
 
@@ -428,7 +428,7 @@ ice_debugfs_log_size_write(struct file *filp, const char __user *buf,
 	if (*ppos != 0 || count > 5)
 		return -EINVAL;
 
-	cmd_buf = memdup_user(buf, count);
+	cmd_buf = memdup_user_nul(buf, count);
 	if (IS_ERR(cmd_buf))
 		return PTR_ERR(cmd_buf);
 

-- 
2.34.1

