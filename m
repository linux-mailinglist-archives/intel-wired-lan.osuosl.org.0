Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 516FD8B0DF0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 17:19:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B3792416C6;
	Wed, 24 Apr 2024 15:19:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mx49jfGEUtRN; Wed, 24 Apr 2024 15:19:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0DC4E416B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713971981;
	bh=jL5u74w472gVJgaoFOuurGlZOko3LllmO61ppXmRiz4=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U7hlFstSfIt5RvphHl5oyrH/2BTtEMp8eJKimD3qzYZN1NZsOWeVBEKmkPH566cnB
	 Airh7KCgylH5AEGXsLkNe+/x7UCxXUx2j35eaXSNf+uJFriVAA5Jy6pxUkdPFEV1Wv
	 3oyP9YPM0X2P3VSJK6kXvY9FrqItL9Jd0HK3Iv41hbNijiHz+PugFNbkODHAdE5xNX
	 NzKa2LjytvOzomUMSsB3KbiXnt23ojmVn8U5avrZHB2duceQ7fTFtqXq3bccfaEc9V
	 4vDb/XvUr1i6dvOSaTz90NEvhzu0nNPSUs7kCE+I/HTZz7tWvdUJZouNaTWrzV47EF
	 ypNYI4lZvB2vw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0DC4E416B1;
	Wed, 24 Apr 2024 15:19:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 450C61BF57C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:45:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3E2BF405C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:45:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s9Jg2Id-1JmH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 14:45:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::430; helo=mail-pf1-x430.google.com;
 envelope-from=minhquangbui99@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6855440198
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6855440198
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6855440198
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:45:19 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id
 d2e1a72fcca58-6f07de6ab93so6560398b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 07:45:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713969919; x=1714574719;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jL5u74w472gVJgaoFOuurGlZOko3LllmO61ppXmRiz4=;
 b=xMH14Zb4OtkGHrLAGLhf6bOt7VJIbTw0IMPIqICasq3B4cU91BYOHcUkS7zPFHqSkl
 oW8X25fC8uG9UK7DyfubeFPOPg+g2qCvb5Wwz98Oih+UfqYIbw+CGCjB6zhPdmxSSco3
 4STAAjcP04w0Mg8MxvSNYXDiQm9/0fbtwAIVeXT5UCQIyRJgYta2QZRRpVNkzW+LkIzX
 823gXlZIXYEY7J7bQ90ObQCfylKqC394qj+FydO5Hyo554YW51AtymdoYwzLk/x2dTJ3
 IkKsvur0A64vxofGfrOyYU3j4VyzKNXGvPwUHjyupawOwscaBNJLacGqVkA/21xpZur/
 YC5Q==
X-Gm-Message-State: AOJu0Yx/Rvcyo4VZIsFPgidbuJldLiHG6DTIoH9Sdc9/X0JQ8LXJu1SD
 w+WqCbW9trP6WIAKZVmFR9xKPNqaFQTjrX+xx9Ccv4eQ0yh+9XR1
X-Google-Smtp-Source: AGHT+IE49U7h6wBv9tAHHYnz5iq0qU+ilw050QEUjqScU0CG/D47UjZh+SWsBkObp/54Z41ZULTZ/Q==
X-Received: by 2002:a05:6a20:5606:b0:1a7:5184:8d14 with SMTP id
 ir6-20020a056a20560600b001a751848d14mr2731695pzc.46.1713969918691; 
 Wed, 24 Apr 2024 07:45:18 -0700 (PDT)
Received: from [127.0.1.1] ([2001:ee0:50f5:5d0:6ca6:7f20:5242:67cc])
 by smtp.googlemail.com with ESMTPSA id
 a5-20020aa78e85000000b006e554afa254sm11495743pfr.38.2024.04.24.07.45.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Apr 2024 07:45:18 -0700 (PDT)
From: Bui Quang Minh <minhquangbui99@gmail.com>
Date: Wed, 24 Apr 2024 21:44:21 +0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240424-fix-oob-read-v2-4-f1f1b53a10f4@gmail.com>
References: <20240424-fix-oob-read-v2-0-f1f1b53a10f4@gmail.com>
In-Reply-To: <20240424-fix-oob-read-v2-0-f1f1b53a10f4@gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>, 
 Rasesh Mody <rmody@marvell.com>, Sudarsana Kalluru <skalluru@marvell.com>, 
 GR-Linux-NIC-Dev@marvell.com, Anil Gurumurthy <anil.gurumurthy@qlogic.com>, 
 Sudarsana Kalluru <sudarsana.kalluru@qlogic.com>, 
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, 
 "Martin K. Petersen" <martin.petersen@oracle.com>, 
 Fabian Frederick <fabf@skynet.be>, Saurav Kashyap <skashyap@marvell.com>, 
 GR-QLogic-Storage-Upstream@marvell.com, 
 Nilesh Javali <nilesh.javali@cavium.com>, Arun Easi <arun.easi@cavium.com>, 
 Manish Rangankar <manish.rangankar@cavium.com>, 
 Vineeth Vijayan <vneethv@linux.ibm.com>, 
 Peter Oberparleiter <oberpar@linux.ibm.com>, 
 Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, 
 Alexander Gordeev <agordeev@linux.ibm.com>, 
 Christian Borntraeger <borntraeger@linux.ibm.com>, 
 Sven Schnelle <svens@linux.ibm.com>, Sunil Goutham <sgoutham@marvell.com>, 
 Linu Cherian <lcherian@marvell.com>, Geetha sowjanya <gakula@marvell.com>, 
 Jerin Jacob <jerinj@marvell.com>, hariprasad <hkelam@marvell.com>, 
 Subbaraya Sundeep <sbhatta@marvell.com>
X-Mailer: b4 0.13.0
X-Mailman-Approved-At: Wed, 24 Apr 2024 15:19:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1713969919; x=1714574719; darn=lists.osuosl.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=jL5u74w472gVJgaoFOuurGlZOko3LllmO61ppXmRiz4=;
 b=c4GdWDLw1RHs+/UkXCOu+/NCCH8RKfeooOsh2rYAsZ8qPY34gXuh4fr3ycULPzBBM3
 /6wLkQXdKHuvhj/T+8scDn90kWZeahgvlKkX5cRPqWlJUVeXaGzHhjxW1MUU4Jaf3VLz
 YayyXzxdqHG2jvKo0FreV4PSMt+k1bNP675Lq5ueyC2okrfdXlPUh9oy4jDLGv/JMUe6
 5hdaOoO8undDIZm3A5P/LEn3tUvuAnm75sIZemBbFlun2wo4+q64quU/slm5PLXeVMmj
 nBDzXtoR4cPlVA2QiP6f02qxDeDJYkpQFRyqCLb63QsyTF17MfZmJPhKseiI+38ZI+2F
 tLPw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=c4GdWDLw
Subject: [Intel-wired-lan] [PATCH v2 4/6] qedf: ensure the copied buf is NUL
 terminated
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

