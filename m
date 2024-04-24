Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C0C8B0DF2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 17:19:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F3D2D416CA;
	Wed, 24 Apr 2024 15:19:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id km8GMsbNSEi0; Wed, 24 Apr 2024 15:19:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D925416B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713971983;
	bh=gidUAIU6zNq3nqwNVk0FnSKhJXDhb87LidO9RgqJHX8=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HSCaI4mJyfGfqpKC7lACmy0+UnQVzk1dinqfOGzXL8HrE7YU3X16TLZcG9cbsl/Hm
	 3gMqe/Wx0VbKFYYOunIkVzW2r7wfcJYtGXeT4T5meyMPFjW8DJGA2B8UFYsMQhOtTz
	 B6tSw4ROtwQtCtaejKmb9dP3v8V5SHaHlyRiINoXh7L1+/xLRtvQQR7BVjNTgKfLqy
	 k2XDvkQMCvpn7oovkji8mKUFY5jF1wjC2ylcxvpZE7DnnayQ1DCZ5k5+9YIZArcXQU
	 Hqw2I7cbPQidwBuBBnTT8/r5TaeWcWTE9L6oCuxeehlFDjqiFsFPVE6W2K8T3ydpED
	 Fn7++DsjxeGLw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D925416B1;
	Wed, 24 Apr 2024 15:19:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B9131BF57C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:45:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 358DF405C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:45:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zH6AeVDACbfO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 14:45:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::435; helo=mail-pf1-x435.google.com;
 envelope-from=minhquangbui99@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7796240198
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7796240198
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com
 [IPv6:2607:f8b0:4864:20::435])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7796240198
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:45:38 +0000 (UTC)
Received: by mail-pf1-x435.google.com with SMTP id
 d2e1a72fcca58-6ecec796323so7006530b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 07:45:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713969938; x=1714574738;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=gidUAIU6zNq3nqwNVk0FnSKhJXDhb87LidO9RgqJHX8=;
 b=ek/OaWOm/+Niy+QH18IsNfpPYEaouwt49+P6wcq+CIgDsEVVD/MweODAjPF29DO0CA
 yfKvNKYy+D8rADthBDz6TASlFgeVZc9O6yKtmQtBouInwQt+pkJKTqBvWAFwqmApcxCS
 tpamQsB4uHlN8Sk+y0HfMAvA9U5clx+/XQdDvz2GgVkSurWIPzj6NSowlqRTmvxTZtus
 WqgDofNmrYELdwmZSCf4gEKtCpp0k93igHz6yoZ8/C6cmztydJzd9dmEC/KGFQA6xvpH
 Pm6+Ay7b1mQYPg8wHgmnDsEIlEQGg/YlkCFHFs6xNPqJve1ye21YnmCssBlwTe8zdFh+
 qCQg==
X-Gm-Message-State: AOJu0Yzk2WcV6rZY6z/BzO0QPAW3N2hwfQU1TVMeA9jf2ixqH8eRyGTE
 m/sXPSU8xVMwRXR+krHh8UYia0h0Dya6R/IUhBfHqKqwsLBcG1Yi
X-Google-Smtp-Source: AGHT+IGeNjB3NpMCWzCQbPhAaZQV6llgvyRG5b7gCOW/NIIlVaFwAk61/hP/yLztj3BEfPsY05pjOw==
X-Received: by 2002:a05:6a20:3d87:b0:1a7:892b:5f89 with SMTP id
 s7-20020a056a203d8700b001a7892b5f89mr3307558pzi.11.1713969937682; 
 Wed, 24 Apr 2024 07:45:37 -0700 (PDT)
Received: from [127.0.1.1] ([2001:ee0:50f5:5d0:6ca6:7f20:5242:67cc])
 by smtp.googlemail.com with ESMTPSA id
 a5-20020aa78e85000000b006e554afa254sm11495743pfr.38.2024.04.24.07.45.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Apr 2024 07:45:37 -0700 (PDT)
From: Bui Quang Minh <minhquangbui99@gmail.com>
Date: Wed, 24 Apr 2024 21:44:23 +0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240424-fix-oob-read-v2-6-f1f1b53a10f4@gmail.com>
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
 d=gmail.com; s=20230601; t=1713969938; x=1714574738; darn=lists.osuosl.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=gidUAIU6zNq3nqwNVk0FnSKhJXDhb87LidO9RgqJHX8=;
 b=f6wasrm8MnuHPusWT1eJwzsTa6WcMR+qfx9wGFJcueirSO4DMRqAHNNN3LEcCLy5QM
 ZZe5bbayFJbxsdc1YTcQh7ObAStqHX6i47NV/JR0RyxXES4Yts6IldajHo5ib6lI7JdS
 6migLWY5uCkG4PXbrOpVx4aPuC2Sd0yJJbzYKwaff/l4HVvNvJkglkeRUFaO7AjNtWLm
 jgt3i2Rc6vWVbZ5MkPcoFAmrtLpe8UihYgGawja0ay2IgVQRmOiHPGCZV/w5H8azn2gw
 J1Wbwv0CTPvfI+x04OV+tOenX2AifUwclnatfBFbn8vPmWa1u4fyPILhCwP4+D8U4BB5
 MjMw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=f6wasrm8
Subject: [Intel-wired-lan] [PATCH v2 6/6] octeontx2-af: avoid off-by-one
 read from userspace
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

We try to access count + 1 byte from userspace with memdup_user(buffer,
count + 1). However, the userspace only provides buffer of count bytes and
only these count bytes are verified to be okay to access. To ensure the
copied buffer is NUL terminated, we use memdup_user_nul instead.

Fixes: 3a2eb515d136 ("octeontx2-af: Fix an off by one in rvu_dbg_qsize_write()")
Signed-off-by: Bui Quang Minh <minhquangbui99@gmail.com>
---
 drivers/net/ethernet/marvell/octeontx2/af/rvu_debugfs.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/marvell/octeontx2/af/rvu_debugfs.c b/drivers/net/ethernet/marvell/octeontx2/af/rvu_debugfs.c
index 2500f5ba4f5a..881d704644fb 100644
--- a/drivers/net/ethernet/marvell/octeontx2/af/rvu_debugfs.c
+++ b/drivers/net/ethernet/marvell/octeontx2/af/rvu_debugfs.c
@@ -999,12 +999,10 @@ static ssize_t rvu_dbg_qsize_write(struct file *filp,
 	u16 pcifunc;
 	int ret, lf;
 
-	cmd_buf = memdup_user(buffer, count + 1);
+	cmd_buf = memdup_user_nul(buffer, count);
 	if (IS_ERR(cmd_buf))
 		return -ENOMEM;
 
-	cmd_buf[count] = '\0';
-
 	cmd_buf_tmp = strchr(cmd_buf, '\n');
 	if (cmd_buf_tmp) {
 		*cmd_buf_tmp = '\0';

-- 
2.34.1

