Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 474748AE3CD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 13:25:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E4932410A7;
	Tue, 23 Apr 2024 11:25:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9nJH3Ek7kuKI; Tue, 23 Apr 2024 11:25:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CE7241172
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713871544;
	bh=4Ts58eJPkRZYjhq39UoouhPsCYC7AlO1jJHeikqMxks=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1HsC+1BevsWGzR1lXh9NIp53gy3hNDRaZfJhdaW3KHv36/reuiRXpZoWTFjToiz9r
	 j6X9t+bs96UuHDDJVLoPc3JaDuPHKGVkyRov9WoFFmEQd5ypT6L8Dt7F/a38HvyErJ
	 tMDd56aq4hbuQtGKnq5VLj56bxFCDQv1nVg6yU/bf7bXTyf2FfY2+tw6drzDpQfi24
	 SYIdOUDBQMLK9+9520O3yKrzQRvceG+sY9jwa4jbahPtnlmmRbnYlMpIJs7khhGi57
	 LgoBoU223nW5rw7gpq+Dxe/RwN8DXhBBAox2Yy4dOgSflcZ3tBi9Z1jt2tfrHwTf9e
	 bEXB4KlDyVPsg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2CE7241172;
	Tue, 23 Apr 2024 11:25:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 25BBE1BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 11:25:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 12C1A6088F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 11:25:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vzR-gSMgohfh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 11:25:41 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32a; helo=mail-wm1-x32a.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A06F6608C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A06F6608C5
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A06F6608C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 11:25:38 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 5b1f17b1804b1-41a74e60753so14695525e9.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 04:25:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713871536; x=1714476336;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4Ts58eJPkRZYjhq39UoouhPsCYC7AlO1jJHeikqMxks=;
 b=ANbt4gYjN0053t/GWGK3OwfwgLxmdGZt/S0sYTUVQcrePPEndNRAdPeiSf2U0RQFvf
 qSZHIw7hVqBmqYnXSp4tKX9cq5Qopmn5MQu2XmhTfYvzk+MlnCSYvMXndhQEVKsvKFeq
 LDumvqvH5cnw0jO/AorDQMR9H6keUGQJE6lOAGR+deL1VMeXn4YKWvYGhyWnIJEopbF5
 j4QRBlS6yT5BihL3ipgEo+Ym8PiQ0e+rC/yfFQw0ektODZP5yTmZPO7+AbSXYqB65wt2
 ZlccZnj+EwP+gA5uF7H1liat5wUod3KwKrUkAXabrW9B9pIs4eVRGiCh5A0vbN1Zctlh
 HgEQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXR2Zwvhe1W9nUPcvtp1uBWRdJ0XJFVwP/RoBdeLmxwdnz0erbRm/y0V3+4H0E14t+Zbo+Z7Rteq11/iKyP34R0Eg/7QYv5Ja5eTb9F8LkXmg==
X-Gm-Message-State: AOJu0YzapTJS1PbwYkPPBXLUHkWf3NAGuFSAZpEnm6uZMH2y8KHr2JVH
 OXsifv/DUxchaaa5iuML2/uBf/d9q4vavMpaf6ked8I1bJkNN1KOsTlO4cj7TvM=
X-Google-Smtp-Source: AGHT+IHQ1tYaLYnkO0fKXpSIZbIQT7LVBosA4FsZ2oaaHc91RjU3SM1QOSDmXbn3CNE0uLouTvVptg==
X-Received: by 2002:a05:600c:3153:b0:41a:7c99:cb40 with SMTP id
 h19-20020a05600c315300b0041a7c99cb40mr3056734wmo.15.1713871536488; 
 Tue, 23 Apr 2024 04:25:36 -0700 (PDT)
Received: from localhost (78-80-105-131.customers.tmcz.cz. [78.80.105.131])
 by smtp.gmail.com with ESMTPSA id
 k41-20020a05600c1ca900b00417e8be070csm19980017wms.9.2024.04.23.04.25.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Apr 2024 04:25:35 -0700 (PDT)
Date: Tue, 23 Apr 2024 13:25:33 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Corinna Vinschen <vinschen@redhat.com>
Message-ID: <ZiearYVLLy22H2eG@nanopsycho>
References: <20240423102446.901450-1-vinschen@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240423102446.901450-1-vinschen@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1713871536; x=1714476336;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=4Ts58eJPkRZYjhq39UoouhPsCYC7AlO1jJHeikqMxks=;
 b=UfnV8iDLanePhCBrR+0Vj0eICp4geVY3Jen16gv4KHuWs3LRYf/ASUlgMMZX3cscc7
 rFmygUQV3E6UOO9i1jY4MSoa1OVURUCTQ3tUEv7NBll3YMD7BqaFu7d9vdn+w89QBMfg
 jJ3xbA+zbE+Z6dMQSw4iTC3vNQ4VRNMjmxGz3c7yXLLtFq9njzngjAHMgcFzVpmuDISC
 wLssK4oxCIBWfZuHiXElQmR+xDyCGMrX2jEXv3QHpNVag/B2AaB17P/EQx2zpzTXWswx
 spXwtrVELoPiRT9q2G4qEflS2N807upFC15rY4/kedZCQLrEDZrCzWRp2Caf8vvKpfVN
 isPA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=UfnV8iDL
Subject: Re: [Intel-wired-lan] [PATCH] igb: cope with large MAX_SKB_FRAGS.
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Apr 23, 2024 at 12:24:46PM CEST, vinschen@redhat.com wrote:
>From: Paolo Abeni <pabeni@redhat.com>
>
>Sabrina reports that the igb driver does not cope well with large
>MAX_SKB_FRAG values: setting MAX_SKB_FRAG to 45 causes payload
>corruption on TX.
>
>The root cause of the issue is that the driver does not take into
>account properly the (possibly large) shared info size when selecting
>the ring layout, and will try to fit two packets inside the same 4K
>page even when the 1st fraglist will trump over the 2nd head.
>
>Address the issue forcing the driver to fit a single packet per page,
>leaving there enough room to store the (currently) largest possible
>skb_shared_info.
>
>Fixes: 3948b05950fd ("net: introduce a config option to tweak MAX_SKB_FRAG")
>Reported-by: Jan Tluka <jtluka@redhat.com>
>Reported-by: Jirka Hladky <jhladky@redhat.com>
>Reported-by: Sabrina Dubroca <sd@queasysnail.net>
>Tested-by: Sabrina Dubroca <sd@queasysnail.net>
>Tested-by: Corinna Vinschen <vinschen@redhat.com>
>Signed-off-by: Paolo Abeni <pabeni@redhat.com>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>

Next time, please indicate target tree (net) in [patch] brackets.


>---
> drivers/net/ethernet/intel/igb/igb_main.c | 1 +
> 1 file changed, 1 insertion(+)
>
>diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
>index a3f100769e39..22fb2c322bca 100644
>--- a/drivers/net/ethernet/intel/igb/igb_main.c
>+++ b/drivers/net/ethernet/intel/igb/igb_main.c
>@@ -4833,6 +4833,7 @@ static void igb_set_rx_buffer_len(struct igb_adapter *adapter,
> 
> #if (PAGE_SIZE < 8192)
> 	if (adapter->max_frame_size > IGB_MAX_FRAME_BUILD_SKB ||
>+	    SKB_HEAD_ALIGN(adapter->max_frame_size) > (PAGE_SIZE / 2) ||
> 	    rd32(E1000_RCTL) & E1000_RCTL_SBP)
> 		set_ring_uses_large_buffer(rx_ring);
> #endif
>-- 
>2.44.0
>
>
