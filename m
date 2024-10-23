Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 410229ABC14
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2024 05:21:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8A726080C;
	Wed, 23 Oct 2024 03:21:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p-mjCl8BSc8J; Wed, 23 Oct 2024 03:21:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10EF1605E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729653694;
	bh=29eHXV9bqIXK5xc3pmwxd96Tf3JMnOuCUVgc44dHjjo=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=I7xzuUAm39FcI2WaHqLaYS19Q94AAjFrhFN6m7OzHKSEci2aAo4EO6ME9vGpvSkAq
	 JreZUbTx3TChu1N7sS4rjBHPJZQbTe50eKzCaTT7HfZWCMN7bKbibO1DHIhv0j0K67
	 zsveWEw0oRChVj4ZHtHWHwfvKF6mn/g27qQ2S5Ah7UX58kVwxtojkx3xUnXqkvaCLN
	 6fxaUDLXm2WKx57z2HN5PIRN0QToGOq02NjYgUc4utrn81YkfKK2OTQ9owAthgbaV4
	 72plWJzJfr63FQLEBrab/t0Wa6Nfh7ZB4W0jYfCy+SyS8vl6YJWhSGCwsAcpWDZyxn
	 jVPdRNQKJXZ7Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10EF1605E7;
	Wed, 23 Oct 2024 03:21:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 673AD2072
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 03:21:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 53EFE80AB6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 03:21:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WxFso8zdZw5I for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2024 03:21:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62e; helo=mail-pl1-x62e.google.com;
 envelope-from=pjohnny0508@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BB8C580A7B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB8C580A7B
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BB8C580A7B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 03:21:31 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id
 d9443c01a7336-20cdb889222so61391615ad.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 20:21:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729653691; x=1730258491;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=29eHXV9bqIXK5xc3pmwxd96Tf3JMnOuCUVgc44dHjjo=;
 b=WUrD26UVPKXQurd6lAhEM399q+YX+V04D8A+0hB1X3R1ZRI5oucChdZp+ca1PkHyGN
 TNmEZrFvItY+13m94BvFGYzny971DCPOy2tu05SJqZWHGPeDucY86wbBSDudelALVHmj
 JrYqWPQWapAG9mrFKhVNy7J0kczbnEYWxoGxFt/8XyDBJDiVe+ZcVvTjDkfT3nLm+8+A
 yWcC8bLqKc9vpiTmiMQ9DG+gaHqR+2Xt1RkH/R7fztLF1S6EQs7aDSlls6Cp1PjtrUpO
 cicKLasfqmX8W5kC0Q8uHI+wMiTibKGYeW/6kAPvjdL7URNiXH6B21+uYQ1X87pqkhBr
 PZng==
X-Forwarded-Encrypted: i=1;
 AJvYcCVkPwR+s33ycdvUAYtdFqQqO2sHYsyAXX1g8jveNQuKDvb9Qy8eKw7tuI6/MOWktDU5PV8ZSaYeI5FPygT4q9U=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzyH5wTs+QtGW1wJUn0OR8lJTtC4reGx0unCOFgqUY1+jYY3qs6
 yd7/ZEv9X4NK8do/oBE71SoRUxSrUILk3PR/OcPIRyTymRU7SVvy
X-Google-Smtp-Source: AGHT+IHzluk/mO7QsiX7WblFK/SH2YN/WhRfpbiFtyyiimjV/181mnxEUMWR1GEWvL8QX5ADLxcu+g==
X-Received: by 2002:a17:902:f64c:b0:20b:7a46:1071 with SMTP id
 d9443c01a7336-20fa9deb645mr19087025ad.4.1729653690929; 
 Tue, 22 Oct 2024 20:21:30 -0700 (PDT)
Received: from Fantasy-Ubuntu ([2001:56a:7eb6:f700:b2d3:e25a:778e:1172])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20e7f0f65e1sm48994225ad.285.2024.10.22.20.21.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2024 20:21:30 -0700 (PDT)
Date: Tue, 22 Oct 2024 21:21:28 -0600
From: Johnny Park <pjohnny0508@gmail.com>
To: horms@kernel.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, andrew@lunn.ch, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <ZxhruNNXvQI-xUwE@Fantasy-Ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1729653691; x=1730258491; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=29eHXV9bqIXK5xc3pmwxd96Tf3JMnOuCUVgc44dHjjo=;
 b=nQ87jtb3tHEfVvLOuFewVqW+0ZohHgDBWpEc02liUzofwGdhni3qpkfThgPA3BiKfK
 aoaP8shDFLvWiO28R4ucQzDdD8gjki7fHgTAxG0xWMXc6/3Tyh9W0ma9kk1D/EOlG7eH
 XwT6hbv1TDLAzEvTdTNl/sVJMO2aK1EakjkP9aVa9aTjNDTy4VNrDjbES1hXt28ZquiJ
 a13dmi2l8t9EyROCRnFhftH4JMJiegQumID8EgfLVKhBMZ/Zqvoy9yDR3xyuE0I5rFvk
 VEjWgr64XEpFKyR4OnxJ8WVm2yJkIgYuMbjIYW7b3zwNcBv67wVsTTIfezMYlHtWn12Z
 z0yg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=nQ87jtb3
Subject: [Intel-wired-lan] [PATCH v2 1/1] [net-next] igb: Fix spelling in
 igb_main.c
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Simple patch that fix spelling mistakes in igb_main.c

Signed-off-by: Johnny Park <pjohnny0508@gmail.com>
---
Changes in v2:
  - Fix spelling mor -> more
---
 drivers/net/ethernet/intel/igb/igb_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 1ef4cb871452..fc587304b3c0 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -1204,7 +1204,7 @@ static int igb_alloc_q_vector(struct igb_adapter *adapter,
 	/* initialize pointer to rings */
 	ring = q_vector->ring;
 
-	/* intialize ITR */
+	/* initialize ITR */
 	if (rxr_count) {
 		/* rx or rx/tx vector */
 		if (!adapter->rx_itr_setting || adapter->rx_itr_setting > 3)
@@ -3906,7 +3906,7 @@ static void igb_remove(struct pci_dev *pdev)
  *
  *  This function initializes the vf specific data storage and then attempts to
  *  allocate the VFs.  The reason for ordering it this way is because it is much
- *  mor expensive time wise to disable SR-IOV than it is to allocate and free
+ *  more expensive time wise to disable SR-IOV than it is to allocate and free
  *  the memory for the VFs.
  **/
 static void igb_probe_vfs(struct igb_adapter *adapter)
-- 
2.43.0

