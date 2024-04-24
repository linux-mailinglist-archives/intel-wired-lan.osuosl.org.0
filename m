Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C7D8B0DEF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 17:19:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 76E0E401B7;
	Wed, 24 Apr 2024 15:19:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eFoxRqCBQpFU; Wed, 24 Apr 2024 15:19:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AD681416AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713971979;
	bh=iDVH41VbP2tcWCidq0GxDLy5uHVpzfSuy3cESbFhDE4=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sLy0ZF/CK46Hg7olMrGl6buNkTE4mTqczv83UPD71xzftw+Lk5z8pKet/O5HzPMz4
	 1baTvXXI550OzAAuJOstUc/NzTnIWrUTzXeIZiIwF7jNCaLW0bmDi89Pd3DGeLXOLF
	 huizJ8UBrod2TXuRxiyz8vdEufxYJBJ08zrnu2ZiiNyDW2VoPdnzfPCTdo0LTX5ZTE
	 NH+DEpn2F3jvqI9LkcrQBLoLOc6VuUbFENNDIuMTFFd9uwLhQBWuT/cKkODBGg41ir
	 Ms+DkNHVP2587zdW8Anx8BWqy8lLJ5f52lhX39XBmKkymm06MfrDVgOc1a+KujgdAs
	 Ppp2TNyLCuZ7w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AD681416AB;
	Wed, 24 Apr 2024 15:19:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C89291BF57C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:45:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C2481607B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:45:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bDxwHyXNoRkP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 14:45:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42e; helo=mail-pf1-x42e.google.com;
 envelope-from=minhquangbui99@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2A09960BD9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A09960BD9
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com
 [IPv6:2607:f8b0:4864:20::42e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2A09960BD9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:45:10 +0000 (UTC)
Received: by mail-pf1-x42e.google.com with SMTP id
 d2e1a72fcca58-6eddff25e4eso5916625b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 07:45:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713969909; x=1714574709;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=iDVH41VbP2tcWCidq0GxDLy5uHVpzfSuy3cESbFhDE4=;
 b=tPqAqkOD0IHdqepngpuumklp447XEJqFnYm9aFHCg6SVYveekQi3PRAXpUhFZ7VIQo
 6dkX8HBerlyoGbnyIU10WpH5RIEoPfvP+P7g5XG77vuuFXL/ve4XLjcTNivv+YM5cFoL
 giK3viHVGc4EjRrMFUR5Lemo8UMZbjPOzL2e2XJWgKly1/y9tL7jsySfgeODQgmD4xjN
 wyALHNvr5Xj0th174Ecz6LbvMTQMoOeRlQTl5g271ZwKHG+G9DwyiUbT3rM25Zze3hAz
 3iDnt7WMcR9zpfe42YtXVn9Y/fpi15p2UXYbRHtjGXItDpDQwD4cbXyAymaDLOJ/BHi4
 1RMg==
X-Gm-Message-State: AOJu0Yz11R9TDJ1ZihOhrB/VHy2wvN5+F8MS+jXIwuPEwamOn0NbLmrR
 1ERk1oUejMJjq0FSXU1XsuSB0XGiFQF9wZQgpT7vKvoZCsAiPE+W
X-Google-Smtp-Source: AGHT+IH7hDlGcLTpV6B9afh5y3sKseUhS0nuv4tpE75qoG+uPsjDp5Z57e8vcBnEwXBPXU5/z8LMfQ==
X-Received: by 2002:a05:6a00:2405:b0:6f3:c10a:7bf3 with SMTP id
 z5-20020a056a00240500b006f3c10a7bf3mr503754pfh.0.1713969909373; 
 Wed, 24 Apr 2024 07:45:09 -0700 (PDT)
Received: from [127.0.1.1] ([2001:ee0:50f5:5d0:6ca6:7f20:5242:67cc])
 by smtp.googlemail.com with ESMTPSA id
 a5-20020aa78e85000000b006e554afa254sm11495743pfr.38.2024.04.24.07.45.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Apr 2024 07:45:09 -0700 (PDT)
From: Bui Quang Minh <minhquangbui99@gmail.com>
Date: Wed, 24 Apr 2024 21:44:20 +0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240424-fix-oob-read-v2-3-f1f1b53a10f4@gmail.com>
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
 d=gmail.com; s=20230601; t=1713969909; x=1714574709; darn=lists.osuosl.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=iDVH41VbP2tcWCidq0GxDLy5uHVpzfSuy3cESbFhDE4=;
 b=gojFKm87jzyJtrylWiChwBGXy0JYm3UAdvmRPk6Qld3TiiGnKGJZqMDOKTOkhAB+Dk
 iIbxI0cEnR86HMEzSHEH7IoePceOJv19ZmaEj6CD+sDmelrACBv9cGGFBdBYaHUsMYPf
 gunYMbKaSJoSURW30ZMdS+KboPDLlqANffHvUGF/OLTwXMUfbXmcGFYsMJDleaHEusOZ
 JPjiU3kCZ/6Z4WOuOrLvrOnLTD2tjt8/ZaHUc2+roOMz6MMKe2/0ufKrZZzh3zJvNB3a
 u9ClR+6kZ4P87/MfcSsGSODRBSbnbh6alkQk19qx01xpz1PAyAd8tQFCHyxo15vaf3Mr
 QgGw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=gojFKm87
Subject: [Intel-wired-lan] [PATCH v2 3/6] bfa: ensure the copied buf is NUL
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

