Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E6C8B0DED
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 17:19:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0F62E41690;
	Wed, 24 Apr 2024 15:19:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9dOFfmthYXzO; Wed, 24 Apr 2024 15:19:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 383A6416AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713971977;
	bh=3qdUgcHPztLd0lwxO193DGh85zNO3Tk4LAWPrMFFJ1g=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=svv/HyTnTCuDecYk7iCBglATFwTgjblhZA6xYhiJIr5ar3/4XRreRxO6onYdUjyCB
	 CPL2mpiOKSU1g5f1NE3MppWlyNFG6CYgGkX/IBq20Pec/Gj5BepEPMX47chYXFw3/0
	 BeoMzOw/+ph8CHilEHfcOxnNx5Q+vxq1DruehlJ0mOeygCUQPSY6ks12lrd6DcrOnG
	 oD5+hmJ09nArc0P2ryWrc6+YAj/NNIZargpbwYOAuqwUrMxFcarQbAod27UHHfgP1z
	 K04joK7Rv7S87O9tVaNRvnF7NTQC8pKvyuveixY5bvpZ/8qk7OkhouiJuIgv2Crpzt
	 cxhRtN1Bp3I2A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 383A6416AB;
	Wed, 24 Apr 2024 15:19:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8CEE41BF57C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:44:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7949F60BE4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:44:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id elsk38VuJ2Sq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 14:44:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::435; helo=mail-pf1-x435.google.com;
 envelope-from=minhquangbui99@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C3A8560BD9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3A8560BD9
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com
 [IPv6:2607:f8b0:4864:20::435])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C3A8560BD9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:44:51 +0000 (UTC)
Received: by mail-pf1-x435.google.com with SMTP id
 d2e1a72fcca58-6ed20fb620fso5886152b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 07:44:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713969891; x=1714574691;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3qdUgcHPztLd0lwxO193DGh85zNO3Tk4LAWPrMFFJ1g=;
 b=n5voIYNAVxSNMUicP6O5TMFO4cIjc0TsFYrh2PBqMaXG5NU38JtClWPf8mqkmL0Me2
 ady6AbTiVy02kDQWrsKqB9M/NTG0RTLDR6iOpcDDkLVoSE7PfVzuV1lBqfZauv4tRdEH
 9t0bX1mzb+q6+1QTOjogh3cyjkHCwpNGWAPjRPMDzwnpGZG2CKXBcd59F5yp8ZpEvOCa
 U4udLxCBjjPDmAbEs22l3X8g+VlMIaB8RB/CfIYpjvuzygFXFebVSg/8MT3gtNs/XcLI
 f9Me2oXRuPnHIGRE4ZOakShlyq17Cur6GW+Y20PgD+YD+1anQRRHgI4zJQr6LMaJVM1u
 8Dwg==
X-Gm-Message-State: AOJu0YyilBvR7mSTtexXOzJ/Pq8J9V3x7iSee4yS8HFInvVxZ8M6T6fK
 M4oaGRMaeduhiTsY990AhXRnNLjswNlHTubyEVZV2S4IZQRvfxQr
X-Google-Smtp-Source: AGHT+IFJ/y+DruBf2Lm1UhtzVWoEV8AN6SFg6+AIBmZtn4lSLmIs4uj6gpgqse0hCeEeacgja8d0pw==
X-Received: by 2002:a62:ab0f:0:b0:6ed:416d:e9a with SMTP id
 p15-20020a62ab0f000000b006ed416d0e9amr2762304pff.7.1713969890708; 
 Wed, 24 Apr 2024 07:44:50 -0700 (PDT)
Received: from [127.0.1.1] ([2001:ee0:50f5:5d0:6ca6:7f20:5242:67cc])
 by smtp.googlemail.com with ESMTPSA id
 a5-20020aa78e85000000b006e554afa254sm11495743pfr.38.2024.04.24.07.44.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Apr 2024 07:44:50 -0700 (PDT)
From: Bui Quang Minh <minhquangbui99@gmail.com>
Date: Wed, 24 Apr 2024 21:44:18 +0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240424-fix-oob-read-v2-1-f1f1b53a10f4@gmail.com>
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
 d=gmail.com; s=20230601; t=1713969891; x=1714574691; darn=lists.osuosl.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=3qdUgcHPztLd0lwxO193DGh85zNO3Tk4LAWPrMFFJ1g=;
 b=kXnxOhiI34CzmlN6BXu/2xHnXLXFEFUg1UImS8g3OJ39j/HzamMZObdVCrWF2QnA+b
 I7p+gECo/QCDF0wegiJrjnwm/YEYxe1VwliwJ9Do8jKV6Fqa+XYMcs5EGHZJ3EiEbO56
 cKLb86oPYeAn06Xx3vkCivAeoIdMtg20zCX+cLD7hEyamxdsOnHzqte5KJh6zPsobzwR
 7/AINpoD//bUaDc69u3vtcmle7MRYm9YHZNe/nfe2w6qv14wRPf0qjUCNveJNIbLdG5C
 dYqXr3ikJX230CgWJGXMuu4nT2DnHzzdMeBP0wSukEUJsJp3hQzhbJ+Pf9B48aPUw6lh
 ToTA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=kXnxOhiI
Subject: [Intel-wired-lan] [PATCH v2 1/6] ice: ensure the copied buf is NUL
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
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
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
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
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

