Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E168AD35C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Apr 2024 19:39:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E26F60ACC;
	Mon, 22 Apr 2024 17:39:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZGRjfTe9fTPR; Mon, 22 Apr 2024 17:39:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F1AFF608AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713807579;
	bh=VjDIyXeRN5F/Rz1j7hLtt0c+k3OrZr+6KVwQKgEg9NA=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nvi/1vIsagBoZPc1smPARBuHauJMdrd0kRsKGVyF14wUZA4JpX+PiEtFE2laZKzOY
	 1zLx5K1CPhPVFKSd8WW9zxsMzHhFSzNo3nffuHZuHJ76epp7EtPkcCmZ9Wd6rghtYp
	 SZNHmZgQqyj3xBrCvorQzbw7QjVMLu9IxpYKPRabSZEW0sH2YmBrDDinymp1fJYEbu
	 bydzG+PC67ax1x2lf6wmpUteOV1PAGB1niyBgHUZ1v9/dSorOqn5NSo8bMkdKaU1f4
	 oCfJjzzdL0wAJDl2zhIKxxINrutPO6daB5omGePYLVwghiu5w0BTBRAqzQF/bA/9zF
	 lJCllPHhL6Hpg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F1AFF608AB;
	Mon, 22 Apr 2024 17:39:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 684241BF48B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 16:42:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5576060731
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 16:42:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZLblDNlEzb9J for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Apr 2024 16:42:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62b; helo=mail-pl1-x62b.google.com;
 envelope-from=minhquangbui99@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 96D3E60708
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 96D3E60708
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 96D3E60708
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 16:42:55 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id
 d9443c01a7336-1e86d56b3bcso27541695ad.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 09:42:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713804175; x=1714408975;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=VjDIyXeRN5F/Rz1j7hLtt0c+k3OrZr+6KVwQKgEg9NA=;
 b=Sm1ROCfRuT8lszqPNwY4xISHReF2SaZmEGb5R6D4nTnWLE2WF3A+nl/0QAQrHlJKan
 2soFJpFP89DcS/qd0w7flUpIxRCQOA8sE5hu0pQdMHj6MzlwUEj447r1GDfrNUXeCADt
 uAAJ0xWZIRrA1CobkRbVoZ/dazo3/AJVF7jmbYByatL73QEIvaAqVwF0Mv+h9tFaR1HY
 Jl9xBbt7mwQrSZNzZ6jkPBgdCVhZOqxRClE5tp0R035IEl5fMhgBCp0Tih354hW1I0sh
 hxqnB4lIkMTRfQ6SNdOa5xdVpGgUSkhT2uNjHsEdB1yvAcfY+JlrZRPb4Aq3dBAaDMF8
 igxg==
X-Gm-Message-State: AOJu0Yzuv8/e5LBTmzFtO6drmnerbrRo1cAN1Vb9sIWfakoXczbdoVOY
 wwPGrTPrRloXX+Rt0/ldFySC8Bu8G92OfNq+YUm1N+9S6aoJIThm
X-Google-Smtp-Source: AGHT+IEBSDCtqMN9don4XWWjqMotOgj9q/MREDNxdL5MkB6wNycQQ0VxWmkAd//5A3lFd861WFvO0g==
X-Received: by 2002:a17:903:120e:b0:1e3:dfdc:6972 with SMTP id
 l14-20020a170903120e00b001e3dfdc6972mr13052319plh.9.1713804174824; 
 Mon, 22 Apr 2024 09:42:54 -0700 (PDT)
Received: from [127.0.1.1] ([2001:ee0:50f5:5d0:f32d:f608:a763:3732])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a170902780300b001e7b8c21ebesm8461702pll.225.2024.04.22.09.42.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Apr 2024 09:42:54 -0700 (PDT)
From: Bui Quang Minh <minhquangbui99@gmail.com>
Date: Mon, 22 Apr 2024 23:41:40 +0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240422-fix-oob-read-v1-5-e02854c30174@gmail.com>
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
 d=gmail.com; s=20230601; t=1713804175; x=1714408975; darn=lists.osuosl.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=VjDIyXeRN5F/Rz1j7hLtt0c+k3OrZr+6KVwQKgEg9NA=;
 b=XX2dtsGNp9JAG8nTrtlh09Ifjl976HrgpIqH4fagm8eJwLHXFAuiq9jlolkC4Dw/1I
 Cb6/yAQvN1tR4xvOyx0jhmiw3EGRuzRtaPvESA7Nxti+NxZ6RdquV2CGxERwoExgGF4B
 +JRY4syjsp52cQq4Joky3RBZndbQEa/rP9VV2gkfZ1pzqLFc281I/bndpnavCXGdxwPo
 8+f8p9RCDZakQVaZpJ+2l8gRQUbsyTq81VdOvgraysZdeWMuM3wXdHm7btfvkij+VQ43
 FN1q3US91c7XoPbeZ/2Xgv5q4geJpxi1bcmgTtIZm93BWYUeBQsbz3QlUXqdcqt87RAR
 V+8w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=XX2dtsGN
Subject: [Intel-wired-lan] [PATCH 5/5] drivers/s390/cio: ensure the copied
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

Currently, we allocate a lbuf-sized kernel buffer and copy lbuf from
userspace to that buffer. Later, we use scanf on this buffer but we don't
ensure that the string is terminated inside the buffer, this can lead to
OOB read when using scanf. Fix this issue by allocating 1 more byte to at
the end of buffer and write NULL terminator to the end of buffer after
userspace copying.

Fixes: a4f17cc72671 ("s390/cio: add CRW inject functionality")
Signed-off-by: Bui Quang Minh <minhquangbui99@gmail.com>
---
 drivers/s390/cio/cio_inject.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/s390/cio/cio_inject.c b/drivers/s390/cio/cio_inject.c
index 8613fa937237..9b69fbf49f60 100644
--- a/drivers/s390/cio/cio_inject.c
+++ b/drivers/s390/cio/cio_inject.c
@@ -95,10 +95,11 @@ static ssize_t crw_inject_write(struct file *file, const char __user *buf,
 		return -EINVAL;
 	}
 
-	buffer = vmemdup_user(buf, lbuf);
+	buffer = vmemdup_user(buf, lbuf + 1);
 	if (IS_ERR(buffer))
 		return -ENOMEM;
 
+	buffer[lbuf] = '\0';
 	rc = sscanf(buffer, "%x %x %x %x %x %x %x", &slct, &oflw, &chn, &rsc, &anc,
 		    &erc, &rsid);
 

-- 
2.34.1

