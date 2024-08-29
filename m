Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF6E964EB4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 21:22:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ADF9B41DBA;
	Thu, 29 Aug 2024 19:22:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SMAHsXBLdJ2H; Thu, 29 Aug 2024 19:22:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D273D41B8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724959375;
	bh=bMkm+29lh1erc5fAAFWmKKqMqM4uFrG7ZmX40+JvEqI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Ec2rgyEFKrNZyozP9D/JZ0prDOc1Irgad744La06dEmIUXKG/6m85Xm9DwwPnEaBv
	 LDMv4605D5kT6eVhyzZ6Ek3TMDvX19j4FaPBCkLY3jrVJMV5g37Ii5ZO3e8rM3a+yM
	 bPBX1sOHXYsMMH9Caq/rIYyNXpd3ICkDLre34elRipiuwxk6AAtEqk3Lowb/+5fpmo
	 g0WL/uHZ4dMJvkTlg/5izNeiRCs+xDeoIpOU3oZ3fMyyRpbqFnyKQDH/ZOTRDYMcBF
	 GIhHWDjPseTSPfDoeuCo0tjIT8bKaX7QWXlWOh7VotXG5zeBUgeYVTnTyx2Cwo30I0
	 Z2XTyigoHGo4w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D273D41B8B;
	Thu, 29 Aug 2024 19:22:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D31CA1BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 19:22:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BF87960D9D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 19:22:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uRnITYk3C6Yj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 19:22:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::330; helo=mail-wm1-x330.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C3F15605FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3F15605FF
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C3F15605FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 19:22:51 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 5b1f17b1804b1-42bb6d3e260so9081395e9.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 12:22:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724959370; x=1725564170;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=bMkm+29lh1erc5fAAFWmKKqMqM4uFrG7ZmX40+JvEqI=;
 b=d3K0+lMy3VzJaiTkmBOsCGGNSL9Q2S9cB5tZgVJPV7K5TD25PrSGlVOmqCXBYI1wO4
 lXTcnnk+BBEtdL6jbroWchf6keN7TAve9IuuB4r5G2fhv9HX/NdsdcXNBTp0wlw2uUSa
 d9KKPeP3gWk7NbmmMr+bmqe1xJZv4cWBodlqHOIs0fftKoiaUmUt5blF2k6D18F+dh2f
 pR5mfhdg6hHNoycqwgNaTMy22wa0D6wdnLXjpWj2PRCnUz1Zj0+bvZrfoXC7K74n1XxM
 0AfaCovWCSqOi10tK/tnDl3Zk6bwdBneq1EMNPa/IascgoIS+wC5hyC8jecuMVaiP4ur
 hScw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUaXAZsag01zdtu+6/wFUqPeImXepg6jcGFSvc4cwDP0YWTqvXxQcyyJ+CTjwl2Pc1dTZoAsolgD5zQ9GH8HCs=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwEblWdEjYWeqOamlvEnCR0Ekh7Q5M6KehaCcog5c/DRQEUlNZu
 jOQm1ISkeBvP/6gxTAhR80UL38v2AMtVZrihKerF56vUmoqC+HkZHBQxc5nNEJc=
X-Google-Smtp-Source: AGHT+IFLYl4gny5GWtr+JnUznytxaTDe9bdDxbaWEeIcz0+3LIEKDrXH219LvTPhwALagT9PKwLE3g==
X-Received: by 2002:a05:600c:310b:b0:429:a0d:b710 with SMTP id
 5b1f17b1804b1-42bb024db40mr31712775e9.12.1724959369673; 
 Thu, 29 Aug 2024 12:22:49 -0700 (PDT)
Received: from localhost ([196.207.164.177]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3749efafd65sm2124567f8f.93.2024.08.29.12.22.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2024 12:22:49 -0700 (PDT)
Date: Thu, 29 Aug 2024 22:22:45 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Sasha Neftin <sasha.neftin@intel.com>
Message-ID: <64a982d3-a2f5-4ef7-ad75-61f6bb1fae24@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1724959370; x=1725564170; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=bMkm+29lh1erc5fAAFWmKKqMqM4uFrG7ZmX40+JvEqI=;
 b=ZofFh0sxTtXmjoSoalTmC4w0T1u9zGRNNV0dfEriYvqre1LaXJZutl1AAqZUkho0eE
 grg8TxUfagjQSspHkZUds1nr+YvPpU+/aLT+UEwE69D3y26IACyVIvaetrEa7XqkLGp5
 c4AS7SaffSoeHU1OrVSBT9hVIqBIVrLixRJ2leozDrfu//iTRfrRCFKVM5rKDp8PC/EB
 F7Gh978POokAwrIs8J7Ts2yetbMovs89/rsaN80BosrZKHHJ4faltWenYUhv01yuZDNp
 Ewe9Kqle+SheQHV16SPNS1t6MGdhEx5Jtmlb1wEpyt21+XzYCoF09G1dqL4c5SrDCOYJ
 S2xQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=ZofFh0sx
Subject: [Intel-wired-lan] [PATCH net] igc: Unlock on error in
 igc_io_resume()
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Call rtnl_unlock() on this error path, before returning.

Fixes: bc23aa949aeb ("igc: Add pcie error handler support")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index dfd6c00b4205..0a095cdea4fb 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -7413,6 +7413,7 @@ static void igc_io_resume(struct pci_dev *pdev)
 	rtnl_lock();
 	if (netif_running(netdev)) {
 		if (igc_open(netdev)) {
+			rtnl_unlock();
 			netdev_err(netdev, "igc_open failed after reset\n");
 			return;
 		}
-- 
2.45.2

