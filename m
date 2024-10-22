Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9619A9823
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 07:12:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1FF4F80DF4;
	Tue, 22 Oct 2024 05:12:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WWJ_l_bzmGCn; Tue, 22 Oct 2024 05:12:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A6A380E05
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729573922;
	bh=cKMBsCanZz1Gh8n+AXUDeahzWcX6egHuFJT38KRlsqs=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eb6rIe289TPcWaJjGkGnIRgn6Zbe1ZYSiA8ihRsTCwAOe5g+hNqhE4fMnSW/c/VjV
	 OujfqXUWmJIoV/6kgc1dYPXkpj88fR22uCyZeGpwK0q4e3JeyXlB7poZDGxKMiEhUs
	 VatR6VTzD1giUiLXDXb/JAssx6wMrJH/zvDWf7UKJlh5ZRI6BodSQTL3JHyFPGuYh0
	 69qsuGYgFOoYS3jpuR/rVcPDarxyIotmUxXTZb81fH1vBdYrNq4x5hK+mHZy23evaN
	 J87EIAZj6OiiHhj4XtKtctDAJ3PuWKEPYpUKV4pIhNzoo1RNUp4xR78xQX/1OWUQ2N
	 BbftD6dSw7Uqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A6A380E05;
	Tue, 22 Oct 2024 05:12:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 00F9471F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 05:12:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D8F8040339
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 05:12:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rQycQ34YT9Kz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 05:12:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::632; helo=mail-pl1-x632.google.com;
 envelope-from=pjohnny0508@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1B1E040235
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B1E040235
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com
 [IPv6:2607:f8b0:4864:20::632])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1B1E040235
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 05:11:59 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id
 d9443c01a7336-20cf3e36a76so50638075ad.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 22:11:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729573919; x=1730178719;
 h=content-disposition:content-description:mime-version:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cKMBsCanZz1Gh8n+AXUDeahzWcX6egHuFJT38KRlsqs=;
 b=OxoehVe27RUGV7+26anxorJefzWHiXgul6Zn3F+W8G4qjdaLxcaKCBVDthNEbOrVG/
 rz2yhaP+xcZ/51tb9fAKZo9tLfCy6oC2c8ZYEVzq36qaBT33oBA9+NAg9xDjWfq0xHoB
 MALJ0owHStkx/0LUq+99YGWrqajU9o9k1wsVL4yZF3tud175cYLh1nbOROoAD719POOg
 Dep+PIh28dbX56chddOuHo5Rq/zhwQ1KGEULg3KQjyc2qX7NQxibC/E4rAr2TVJQN+Dr
 XDL/PYi3RBMr28cQlBCsKutL6UjijAFViUW9x1hm5jck75ADNDTYrYspGLiqkHMoluld
 9Gng==
X-Gm-Message-State: AOJu0Yyx6YmehtMd/pL1GzWjXHJb6a4rCipIWLpRz3c4iE9nafECcamN
 fvzzqgwGBP7sr+KHfTeaggQ6aQRQxD9lYnvS4c7MRUZ59LGQ5n7ymXtRVSbA4js=
X-Google-Smtp-Source: AGHT+IFa0NskIKUN1a+IaBC/kiN3u+O4oI32iW4jSozQeLQ+HEEZ9YiELB5Tn/cEBttmtLXKufCSSw==
X-Received: by 2002:a17:903:2306:b0:205:3e6d:9949 with SMTP id
 d9443c01a7336-20e98596fc9mr18662135ad.52.1729573919236; 
 Mon, 21 Oct 2024 22:11:59 -0700 (PDT)
Received: from Fantasy-Ubuntu ([2001:56a:7eb6:f700:f589:b8ad:400:2216])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20e7f0f3665sm34705005ad.271.2024.10.21.22.11.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2024 22:11:58 -0700 (PDT)
Date: Mon, 21 Oct 2024 23:11:56 -0600
From: Johnny Park <pjohnny0508@gmail.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <Zxc0HP27kcMwGyaa@Fantasy-Ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Description: Typo fix "intialize" -> "initialize"
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1729573919; x=1730178719; darn=lists.osuosl.org;
 h=content-disposition:content-description:mime-version:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=cKMBsCanZz1Gh8n+AXUDeahzWcX6egHuFJT38KRlsqs=;
 b=WLDEnGkaows/sRys5+5fvX73VdCFvtbnrhYqYMqZSNlRvH4vEop9dai3q6xTiOUyrg
 mu+xtmEMREdIRcAj1ttFOInAJlsgGpy5QoFC5y0hDIzBoJKPuKXX8ZqCKrPAPngtjBoS
 Bmw6g/5ruQmUjll6aXQNjWT5gklW9yjQO8ljfKs1aER0CTe4Ysl2ReLnmiw29C+nzJDQ
 YT0iwh42K8NtUSq8Dg15EGgq616H0USsXOXvVDk1Mf9wpp8H2uESmEQmSqDeHxxaJova
 k16xDatc+1WrFEKpcdSGQGwvXKvcwxOyP53rxivfy7D/EGhWjtVSKYtL0AMIWQK/fUmG
 qb3g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=WLDEnGka
Subject: [Intel-wired-lan] [PATCH] [net-next] igb: Fix spelling
 "intialize"->"initialize"
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

Simple patch that fixes the spelling mistake "intialize" in igb_main.c

Signed-off-by: Johnny Park <pjohnny0508@gmail.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 1ef4cb871452..ad091179872b 100644
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
-- 
2.43.0

