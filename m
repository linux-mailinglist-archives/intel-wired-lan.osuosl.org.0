Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BCEBE9F465F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Dec 2024 09:46:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0A388433D;
	Tue, 17 Dec 2024 08:46:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YVv4d0yALFAJ; Tue, 17 Dec 2024 08:46:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0481C843D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734425176;
	bh=DANgJX5B+e8ghUsL1ks3H+WRdxDzAQe7jNh5Uly4bsE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ygFRnJvM3rxhjLsDMc4vO2I8RVCk+tiftaobXqqrmeg8HbZAqtSdRfXjxDVJwXUDC
	 3ZX09oDahONZZJaxUn66BFaSHqKn+2CYLzH7C6Jhi17Fql6IdcoX9eCcVR/T2bRe56
	 sQiVETJk+wHf1j6ecND/6q5PbL2aSkTyKaArjQQVmr/zGhDPwNbicqTQgblx1Sgm82
	 MvtPZFZt+ICEF/NRKBE9o5AfyUGJAsb50btJkcA0yZwGP6nA4sDx+dxqxudukUIX+X
	 p3Udc2P63pWVp/uHKspmmQDygJRUoTEBmX+cs/hXqX/ozcQ++sZpSGPFNzYzmccKJ2
	 GcAkxWIoMlg8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0481C843D6;
	Tue, 17 Dec 2024 08:46:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B3BB1C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 08:46:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9289A84435
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 08:46:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tnc454HgLHpC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Dec 2024 08:46:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::330; helo=mail-wm1-x330.google.com;
 envelope-from=olteanv@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9A0958433D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A0958433D
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9A0958433D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 08:46:13 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 5b1f17b1804b1-434e8ed6389so4459675e9.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 00:46:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734425171; x=1735029971;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=DANgJX5B+e8ghUsL1ks3H+WRdxDzAQe7jNh5Uly4bsE=;
 b=I8rvE/qSF/ObTWKQx92karCUSj38PQrrw06/NyCNh8HB7edHGbOUF0MI4rsO6S+/mX
 GqlHA8Fr/bWECyxg39zloiNghuULO7G30U06FpdsX2KMFkm6WofgCHhOMYEkh4JqmcHl
 0O3B2dULLxO3UiWSjFzEoj0nFsfYuXa9Ex/uFHfSr2kSkEAACwwrY9rXdNGZrGgcTHWA
 gDQQMcNr80MxXEPXy4qTmq6omdT9POJhammoi4VkG8w3ngZ0uP/7G21LoD1N4fFfvdKj
 04zIffkSNnGQf8v3Du2V34izX5GMQlJtdkeyypehK3CljqHHDEwIW0Eoe8LKRxv8StPI
 t3MA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWmhERtDmApZ92zt4+bqQtLrZBCLDP/hkulqE3F/FeutIgqlqkNsk7mhPWqEZEJFK+abfdrRLCf7t66h1ztLsU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzEV0DQg+IFb1NrlLqGcHw12Ahd1IPwQNZ6uUwO/r0bFMLVPIun
 VXHf7IRrPG17wM0fHW29BjlZZzO9z3+gJgCdeMjoWiDOtDOWT94i
X-Gm-Gg: ASbGnctnwI96WQ897is5WgLFp1m7mY8SKImvKDFOPATYPTx/bW1W69pqQblIgC329pr
 AlEGAp+KdiYE+VusCQB6xWErXZBiOVod3yFBVpLbU/Cak/8+JN5wgbTBJvi+A9zhKFCKC4oitYH
 pBc4YhPhPWO3H7kdUAUtYaqmsLohEnF/eju7M+TNRdo4xVH7jKVayyYdbzORk7l6AR3crk8HnkP
 wI2fJ7YnUTF+KQSDUQODaJHjdefwf/Pn37o6MTr4Ako
X-Google-Smtp-Source: AGHT+IGO3QFP0qqBnYh1mqcB6H4pNm+oGioUq900aBrsRIHsJrRzcrb969fkxZI5Qt2wJjRhv1ydDA==
X-Received: by 2002:a05:600c:450e:b0:434:f001:8680 with SMTP id
 5b1f17b1804b1-4362aa26e0emr52929955e9.2.1734425170963; 
 Tue, 17 Dec 2024 00:46:10 -0800 (PST)
Received: from skbuf ([86.127.124.81]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4364b0566f1sm10142665e9.2.2024.12.17.00.46.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2024 00:46:09 -0800 (PST)
Date: Tue, 17 Dec 2024 10:46:06 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Furong Xu <0x1207@gmail.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Message-ID: <20241217084606.3lbne7kv4rlkhoct@skbuf>
References: <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-7-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-7-faizal.abdul.rahim@linux.intel.com>
 <20241217002254.lyakuia32jbnva46@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241217002254.lyakuia32jbnva46@skbuf>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1734425171; x=1735029971; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=DANgJX5B+e8ghUsL1ks3H+WRdxDzAQe7jNh5Uly4bsE=;
 b=X7kuEzdrCEemCxWGFRQsdhntFLIO3aCE8EoDyEsyHJkZYcxwAZ7ug3dV5LTUioCWZf
 +xnkeKWwIvhrSKGIDH4dH09TQh4rCqwYcvUqwWvz+ioONaGLRnNBXotEXY9rAr09jMXl
 8oJ0bk17vm9Q/2fQLskwQrSOrg0qIK8VXh7UY16+FVN5EcTHodjqi5KT7ylB8lrEmR7+
 qUORogRsJSke4qVApqBcAz3uAXsCW/26rEhav9updB1OxUJEWji5HjNyQCD7cQiFnm0S
 pR0wXrH37yK7j4NWN1rwzcaaWICmK6wMBWh9g90tBoJTsxOPrkWhve4O5dZvEy1zZ5+i
 9eUg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=X7kuEzdr
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 6/9] igc: Add support for
 frame preemption verification
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

On Tue, Dec 17, 2024 at 02:22:54AM +0200, Vladimir Oltean wrote:
> I spent a bit of time extracting stmmac's core logic and putting it in
> ethtool.

There's at least one bug in this conversion:

-- >8 --
diff --git a/net/ethtool/mm.c b/net/ethtool/mm.c
index 3063fe00eef7..d305208dd0c8 100644
--- a/net/ethtool/mm.c
+++ b/net/ethtool/mm.c
@@ -292,7 +292,7 @@ static void ethtool_mmsv_configure_tx(struct ethtool_mmsv *mmsv,
 static void ethtool_mmsv_configure_pmac(struct ethtool_mmsv *mmsv,
 					bool pmac_enabled)
 {
-	mmsv->ops->configure_tx(mmsv, pmac_enabled);
+	mmsv->ops->configure_pmac(mmsv, pmac_enabled);
 }
 
 static void ethtool_mmsv_send_mpacket(struct ethtool_mmsv *mmsv,
-- >8 --
