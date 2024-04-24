Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B868B0DF1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 17:19:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7F57416CD;
	Wed, 24 Apr 2024 15:19:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y33cr2S0mx6n; Wed, 24 Apr 2024 15:19:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 378C3416B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713971982;
	bh=fvl1jMUGuwOdmWEm+br3UjKr3cLcAoB/+uMyF5RTu+Y=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2fkNCn2Zqoy2vJ/M9s1/tLKEahBTJAup2AblPv2oCZgABJu+CUMcozqf5ofTu94Pg
	 1JSDXp8PfsQBprDxYs01y4Wa7uE46IbAlJL2hJC42MmLTX+KTbZBlJf0CfZCBCgokM
	 PyCRHXDmFU7Xa+CCTxqd6wRXSehi1aCWJ8tphGJuEWF7Dpe5OsuGfaR8WCpN+WJP+5
	 YFU0Zhui8XjUxs3Yp9naIWwGmioKv709L2SG/bon+D2/iK/F8Q/OlW8jhW0l8QmsCH
	 FZnT/NNbKgi7p+PxehkCcSabg93Y2CL5Iv3pGZ3ucc3v2vwFjPrUkC5AwUuP2ECl6H
	 VRslvF+aOP46Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 378C3416B1;
	Wed, 24 Apr 2024 15:19:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CADC71BF57C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:45:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B6ED24040B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:45:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pBK8TTAdMMlk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 14:45:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42c; helo=mail-pf1-x42c.google.com;
 envelope-from=minhquangbui99@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C65014030C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C65014030C
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C65014030C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:45:28 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id
 d2e1a72fcca58-6f103b541aeso3897639b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 07:45:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713969928; x=1714574728;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=fvl1jMUGuwOdmWEm+br3UjKr3cLcAoB/+uMyF5RTu+Y=;
 b=P0ykd/vIC1zl0NiDkoBg1UqWoFy8Pku3P3PvRVmmich0/U6SzaUvTcEPZ178Utkf83
 erauSVqT4ijmN3JxKpN9k0ZO2uuOeHT9998/tSOtTWry8Q657aQNzPfaWVTKPl3mL5KJ
 Ua5cbBl8K/Fx+9feAzLhCqNZqmqpDsEyfFAdb5Q5IkXY7lxktRmWTnzdh011H8TcJO6D
 yPnAFBiA6RddQ0lFop5gWaTKmrIWiEd1PEcPBAvnLnjFmoxk9LEw51KZ0ojSBKm3elRu
 9+bzbIU6GZDy0CFbw++DL4qGGd+n2T62/t/1mVGAlXOGN8vCEbBbWfga2A75Fvu567cA
 A2yQ==
X-Gm-Message-State: AOJu0YyJxsOhvZ6/srrV7SYGDK/SbtUM8pnm77mAAe+e3U0Wvwhzuyd0
 RcggWlCUGJOBI4agmqH/bR4Afmb8n91vZTVYSsNTup3zXIaPWUM1UoUWfPKv
X-Google-Smtp-Source: AGHT+IHIplfZzFXa/iQYXqPqGxrFFD3ZiSSQJzv1wptjoAyF4wVcTuCyNZAS4Gj6injBtEh1O1LdTw==
X-Received: by 2002:a05:6a00:2e18:b0:6ed:d68d:948a with SMTP id
 fc24-20020a056a002e1800b006edd68d948amr3330617pfb.23.1713969928004; 
 Wed, 24 Apr 2024 07:45:28 -0700 (PDT)
Received: from [127.0.1.1] ([2001:ee0:50f5:5d0:6ca6:7f20:5242:67cc])
 by smtp.googlemail.com with ESMTPSA id
 a5-20020aa78e85000000b006e554afa254sm11495743pfr.38.2024.04.24.07.45.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Apr 2024 07:45:27 -0700 (PDT)
From: Bui Quang Minh <minhquangbui99@gmail.com>
Date: Wed, 24 Apr 2024 21:44:22 +0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240424-fix-oob-read-v2-5-f1f1b53a10f4@gmail.com>
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
 d=gmail.com; s=20230601; t=1713969928; x=1714574728; darn=lists.osuosl.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=fvl1jMUGuwOdmWEm+br3UjKr3cLcAoB/+uMyF5RTu+Y=;
 b=R69yEvLhZ2S+zlSruhBNbEvHrt2xvHjmkj6aolkjX0d6jGz6KRMooGP+ZzO3j/h3Ym
 q6ctB3Irw9His9bY3afOxzojmYa++2O3WOfmOg6X1gg2/iPQ7vXnRr2UaKdnzvcI+W8T
 OQ3lcI/SeKXNhGtEafUHjnC375+SgIwAoZH+nibFQxU0HSd7Db6OF0VIYFjoGigAIFkF
 r+uwORTBPkipZMiI82GscFrEKYAe5akSXRMKT5+kNG6QJX6QL8FqlJ0oaHxrUlwWTIO7
 C2qc79weUaYGliM3cK5iDw87uMYc79hHySANottz72pWVC55xBSYRoHHnz4OxOuzJnOx
 /v/g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=R69yEvLh
Subject: [Intel-wired-lan] [PATCH v2 5/6] cio: ensure the copied buf is NUL
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

Currently, we allocate a lbuf-sized kernel buffer and copy lbuf from
userspace to that buffer. Later, we use scanf on this buffer but we don't
ensure that the string is terminated inside the buffer, this can lead to
OOB read when using scanf. Fix this issue by using memdup_user_nul instead.

Fixes: a4f17cc72671 ("s390/cio: add CRW inject functionality")
Signed-off-by: Bui Quang Minh <minhquangbui99@gmail.com>
---
 drivers/s390/cio/cio_inject.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/s390/cio/cio_inject.c b/drivers/s390/cio/cio_inject.c
index 8613fa937237..a2e771ebae8e 100644
--- a/drivers/s390/cio/cio_inject.c
+++ b/drivers/s390/cio/cio_inject.c
@@ -95,7 +95,7 @@ static ssize_t crw_inject_write(struct file *file, const char __user *buf,
 		return -EINVAL;
 	}
 
-	buffer = vmemdup_user(buf, lbuf);
+	buffer = memdup_user_nul(buf, lbuf);
 	if (IS_ERR(buffer))
 		return -ENOMEM;
 

-- 
2.34.1

