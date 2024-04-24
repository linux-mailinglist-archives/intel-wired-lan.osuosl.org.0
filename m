Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B8B8B0DEE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 17:19:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 321E9416BC;
	Wed, 24 Apr 2024 15:19:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tlRPf3N0Wut3; Wed, 24 Apr 2024 15:19:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 747EC4169C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713971978;
	bh=3MfksbOufaT50njTeYfjnrKEJiBfYKS364Z1TYz8n/g=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=h+fzlAEMNtafbUOyaoCOuUlsVQZ/rRiU2YCWoPCrRuerSMURNCN4YhXhzbTvUcupJ
	 Fb1Tp1y0wtBCeE2j240/bod//4hfBD5M6END3H41vfnsRuA1eWINlcTl3WwaoDPYfO
	 XpXz9p2r2FggXO2/LqAVR48KzaPojlvX2tXgs9ySegFnsztQY37Xy0R1uBFkhzZQI7
	 lZ2vQ46zMvXFzWwK3n0O5SDroq5g1tIOobY25w5keb4Y37qtV0Qyt34WkoiCP56/Kr
	 Yjh1J4yu4AWO0NdpHlnQDpdK5l2daTLiDqSo6OVCcQAMhd1gXincQeJWpyeaf9DsNE
	 +O8f/zCj+ikww==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 747EC4169C;
	Wed, 24 Apr 2024 15:19:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 054B21BF57C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:45:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E568B60BE4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:45:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 46EsyOuExhLe for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 14:45:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42f; helo=mail-pf1-x42f.google.com;
 envelope-from=minhquangbui99@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D21DF60BD9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D21DF60BD9
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D21DF60BD9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:45:00 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id
 d2e1a72fcca58-6ee0642f718so785904b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 07:45:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713969900; x=1714574700;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3MfksbOufaT50njTeYfjnrKEJiBfYKS364Z1TYz8n/g=;
 b=KKe/HvIStGW7mr4/rgP7Viu5l90zNN7Pgfll7dEqxpwC+8G8tTlrEcZUAK0AFWFBZl
 wfuhytAA/wFFZyksu2Ev9M8rykNk8oKokyDlZLAvjSwBGkMlLnWECr1ecDGo0grOFBpU
 rAPqVPJC1kOWI26M+YskZfsxdneTq/G84IJtIzH+PbprrXDJU9W3j771CBcAUiY3EGoh
 R3x0KyNsSn962WPXLi1Ojrw88K8o1xZ48OBaqBVAGuiHjVL4FFg9HaJgWF5NudSkDRbd
 SsNZwjjRKxJvZLv6ZhwV7SWuUbsA/qvfqhmlfgZjb0vzyBqWnKJsip7SBndawmWRQgn0
 1nPw==
X-Gm-Message-State: AOJu0YyhNnDhHzS7D0u73guhGpaC/fRVVbAjg/2LnQ1/FhsWlBYEPBse
 HgaKDv9OQm8cSlg8btFXBnWauGehbf+UeBYhc9ZUulQ+oelS7Yme
X-Google-Smtp-Source: AGHT+IE0vvv8401MvcZvFuTAKSMkOxij157Cp6pNYN59rTcTx6IrZpNRkSO5z4E6xJDmFbIVwPhxCA==
X-Received: by 2002:a05:6a21:6d96:b0:1a9:509c:eba6 with SMTP id
 wl22-20020a056a216d9600b001a9509ceba6mr4486348pzb.25.1713969900053; 
 Wed, 24 Apr 2024 07:45:00 -0700 (PDT)
Received: from [127.0.1.1] ([2001:ee0:50f5:5d0:6ca6:7f20:5242:67cc])
 by smtp.googlemail.com with ESMTPSA id
 a5-20020aa78e85000000b006e554afa254sm11495743pfr.38.2024.04.24.07.44.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Apr 2024 07:44:59 -0700 (PDT)
From: Bui Quang Minh <minhquangbui99@gmail.com>
Date: Wed, 24 Apr 2024 21:44:19 +0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240424-fix-oob-read-v2-2-f1f1b53a10f4@gmail.com>
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
 d=gmail.com; s=20230601; t=1713969900; x=1714574700; darn=lists.osuosl.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=3MfksbOufaT50njTeYfjnrKEJiBfYKS364Z1TYz8n/g=;
 b=lSEEx6Xg82likDqIYnFZH9iRkDGuRNQT0d01NwUdg5boCS8/Fmiv51mcQN+32pyvNI
 ULywBtZBdVo8mmCzQHl2QYUODS2En1b758cc5gYVgZIbqDISp/v/i5RMJOVyLqaZAnaj
 gKSjjt4FsIaBBEIWw5FQTnkBGqo5siDz2KAozT3XA7xztVfFiUFY2eo9VbD1GcZIXV1K
 ZJYdCmgW0wPZ1k2Vw7njKbo5h7BXPtYf1SmnsHmuzxSLxJunWbBNDeIhRePeHH2i6p6z
 sZ7Ww7QQlJ4Vb/PRhpOBbY3bGkV208TNZcZHgwzRpYr8hGET49WCWB20bAxe4JqXSDCS
 kmXw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=lSEEx6Xg
Subject: [Intel-wired-lan] [PATCH v2 2/6] bna: ensure the copied buf is NUL
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

