Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 522DE8AD359
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Apr 2024 19:39:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 52D3760A98;
	Mon, 22 Apr 2024 17:39:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DNMVVbXsLDiW; Mon, 22 Apr 2024 17:39:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACB6760859
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713807575;
	bh=3MfksbOufaT50njTeYfjnrKEJiBfYKS364Z1TYz8n/g=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NY2eG4+Qa9ml+qCs0O9zfwQCCRe1WEJJTdgHBeja+AFdFhHGZIH8U0KeUBzYH2R/+
	 vIlf8n9NtB3eyAimTNSvA8Wz0h2FulupGVgpqbL2kDYIBOG1h9PGDXsMK2vu+LNnZN
	 tQTG1nhw5A/bYaYBnM6pj5nLotBpSxuwCdYEf3G/qnWz/xjMfPKXSmctsyK23cg4c0
	 kIwKd90tdpnxYn39TWamIbstwHH2NysNnYLyX8HJogxDqQf0QKb4HDX1qwV/gZW5Ct
	 wQZ7IXTPJqmwczu1uTe/lEqCKMb3K8PL9QnupdVSAYEpkjlIG+V2is0eea0ItYPjCG
	 Y8Vpjqbx+qNkg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ACB6760859;
	Mon, 22 Apr 2024 17:39:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4E1CA1BF48B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 16:42:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 47CE140604
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 16:42:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XQVgOzEMq1vZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Apr 2024 16:42:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62a; helo=mail-pl1-x62a.google.com;
 envelope-from=minhquangbui99@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8BF9540600
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8BF9540600
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8BF9540600
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 16:42:29 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id
 d9443c01a7336-1e9ffd3f96eso2398485ad.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 09:42:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713804149; x=1714408949;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3MfksbOufaT50njTeYfjnrKEJiBfYKS364Z1TYz8n/g=;
 b=fJsIQRtmCSomGAP3VIff6lyv9sVsxK+TMcMsS3X/wv1viZbs78t6egk6ZEvZL4vpQx
 jral1TQ3vk33ydaPpCnyIa+j3YehVo/Us55V2PhEUQExtlbiJ2sQzr4oLoRUwaBRvDy4
 DLIe+BtA0j/EuPTOX8yp60P9s/b3pRxBqIU7fiQhqglEuYUI22g3UJebiCWp9Et04QGW
 /F8PdTYpLdTJLoXpHZ7I5R+7Ir/qGzatXgOHAUNZ3Dv7f49OijkXIDnVZclhsvNwqLKy
 69eKiQFpHhDoj0Sb6pl5PkUAJVR8tM2PKJWu3SlB9mAuDSK8fYnHclInv6H+u2zJdZ4k
 Lngw==
X-Gm-Message-State: AOJu0Yx+ncI5Z0EcCdMv7xfOivI0vDdGkvxh6uR+BGjjqQHbOjy6i+OK
 rzsW779+3hS+Lw6VKiKvMdFxFvijcTvjdJUE9LgmoDCLlyDco2PX
X-Google-Smtp-Source: AGHT+IEZjvXoEzE/pLr5/NyZgZYKfFkXXVzG2RM6VjSf62Suz057xfGfAYyCLpKwX4NqzGd5KB79lQ==
X-Received: by 2002:a17:902:d88d:b0:1e2:a40d:b742 with SMTP id
 b13-20020a170902d88d00b001e2a40db742mr8782691plz.56.1713804148793; 
 Mon, 22 Apr 2024 09:42:28 -0700 (PDT)
Received: from [127.0.1.1] ([2001:ee0:50f5:5d0:f32d:f608:a763:3732])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a170902780300b001e7b8c21ebesm8461702pll.225.2024.04.22.09.42.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Apr 2024 09:42:28 -0700 (PDT)
From: Bui Quang Minh <minhquangbui99@gmail.com>
Date: Mon, 22 Apr 2024 23:41:37 +0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240422-fix-oob-read-v1-2-e02854c30174@gmail.com>
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
 d=gmail.com; s=20230601; t=1713804149; x=1714408949; darn=lists.osuosl.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=3MfksbOufaT50njTeYfjnrKEJiBfYKS364Z1TYz8n/g=;
 b=j3LCgKRoO5tnh4ETseGWQNAz63VuSh2aVRIViCIvILSzpK6Zj5qGigCL+QvhO4udYi
 xHftMT963XFjSXmbQ27Fasw8HCTbCuN0mdJPXkG4JhIW0SKStDiPHz+zIG45Noamr46f
 DorIO4AKVxH0oKXL7Ecd6Uup08I+vHkLRQGcYq+666qmgGN7T7P30RyVA1DWQrI1Zsl5
 Fo2pcjiaBLQare4f0T2ELwbbd8MaAp4RDg+KP03pSLwu2LU97/T8Hd2cLuwOL7PB6Nni
 BAPHVHfNdA08gK5lNtYOxUFCod/FNQuh4R5RCdw7vmwqacZxz3RZJc0qvXzhQ/2iTLsO
 rE2w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=j3LCgKRo
Subject: [Intel-wired-lan] [PATCH 2/5] drivers/net/brocade-bnad: ensure the
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

Fixes: 7afc5dbde091 ("bna: Add debugfs interface.")
Signed-off-by: Bui Quang Minh <minhquangbui99@gmail.com>
---
 drivers/net/ethernet/brocade/bna/bnad_debugfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/brocade/bna/bnad_debugfs.c b/drivers/net/ethernet/brocade/bna/bnad_debugfs.c
index 7246e13dd559..97291bfbeea5 100644
--- a/drivers/net/ethernet/brocade/bna/bnad_debugfs.c
+++ b/drivers/net/ethernet/brocade/bna/bnad_debugfs.c
@@ -312,7 +312,7 @@ bnad_debugfs_write_regrd(struct file *file, const char __user *buf,
 	void *kern_buf;
 
 	/* Copy the user space buf */
-	kern_buf = memdup_user(buf, nbytes);
+	kern_buf = memdup_user_nul(buf, nbytes);
 	if (IS_ERR(kern_buf))
 		return PTR_ERR(kern_buf);
 
@@ -372,7 +372,7 @@ bnad_debugfs_write_regwr(struct file *file, const char __user *buf,
 	void *kern_buf;
 
 	/* Copy the user space buf */
-	kern_buf = memdup_user(buf, nbytes);
+	kern_buf = memdup_user_nul(buf, nbytes);
 	if (IS_ERR(kern_buf))
 		return PTR_ERR(kern_buf);
 

-- 
2.34.1

