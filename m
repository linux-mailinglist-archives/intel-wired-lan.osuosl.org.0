Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C89398AE3D3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 13:26:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6E02E41171;
	Tue, 23 Apr 2024 11:26:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2TTLVnceOsbv; Tue, 23 Apr 2024 11:26:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC11B41181
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713871587;
	bh=Y0wUJW0t6Ie4ZK0bmyTUKRo4VgTIuEz9KZzwLq9XTZM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dsy0LmivkwLFvo9z8XJSv1TG/xGx5n30x4RV/J5WfrMuYR927Pij2fGRlTH//2nWa
	 WPY5EyzAYQadp7G5AIFwDdIZBGG//dLahxTHer9MIT3dwQEDFriPpxAFUzjpJo6agA
	 0NDCHtnXB+zdglmhTW/jpQI+IU88Rlpw/mdL3dv+lCj9/iLqnirZ7JUjP2Bl+PmiUD
	 MSb3g++1iw5pFVWD2Lbcm73fFqB/2EhIzm92hXM95wl4T0F5BdQqySy5cOQjFYSfBY
	 nsNQ4+683JW34ZNd7vPBwFWq4VdaaYO9F8nqrJ4x4YyVZrCssb+FA1486ZWrLTI/fB
	 qMG3J3VlNyK8w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BC11B41181;
	Tue, 23 Apr 2024 11:26:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 524A61BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 11:26:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3E5D7608C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 11:26:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AWITWYg87W01 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 11:26:24 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::335; helo=mail-wm1-x335.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DC76A6088F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC76A6088F
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DC76A6088F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 11:26:23 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 5b1f17b1804b1-41a4f291f60so15993685e9.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 04:26:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713871582; x=1714476382;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Y0wUJW0t6Ie4ZK0bmyTUKRo4VgTIuEz9KZzwLq9XTZM=;
 b=WmJEwovT59arwHqsDyBJouaJNQq+S7xAY7UA/M9kFzNU+kgMQaeRjAC9XL4kTcYfua
 ip8VT9cSuEjdEmtDaUetI9kkFsk1L2/DqkhUgUCo/RNpjjmdyQZhQcBWUukTT6x1305R
 lK/5JEFwLcyPNd7tHdMtAacodCeta7CK+rEpnF9OTEn8T83kNEyEkC+izTceRqULi5FR
 93DJfabpiD+JNpGLeuD2bkgvIRaAwjpbdpV2qZSy4QL630JNVNgzac1Tg/ga7JY9ANqA
 Buua8iaU9znj1kOjV6YjW+a67Je0V7SZ3aNaq+6sQ64FUt740gPPjNJ8QAFUROUx4buy
 zXOg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXDQX+HgWQnSspO73DTV+fVkV7WEQKrxQ81MjboiEoefPvhg28ZITrZrqq3avzWIjvAx5Gxr4NaOgfga2DuNwg0H2+5YOV6yWaU8ImZzC2WmA==
X-Gm-Message-State: AOJu0Yzh6dhzG5sHCuDJlOaJhlzjhZTOrlvTvJkeoMu28zClAMbxdjv5
 kxTBaftiJ4b/H7J4ynldqv/VfGvffcKnKtFDRpa6t8OuEfvNrOWsQNqgcJMaeI4=
X-Google-Smtp-Source: AGHT+IEL990kAWyCPGWXzBuPt4RPV0UvlCNhSrRIU+jNVPPZYnALcPpTfBXbWu210DM4jNC0DttzhA==
X-Received: by 2002:a05:600c:46cc:b0:418:676d:2a51 with SMTP id
 q12-20020a05600c46cc00b00418676d2a51mr8451881wmo.15.1713871581962; 
 Tue, 23 Apr 2024 04:26:21 -0700 (PDT)
Received: from localhost (78-80-105-131.customers.tmcz.cz. [78.80.105.131])
 by smtp.gmail.com with ESMTPSA id
 d1-20020adfef81000000b0034a7a95c8cfsm10480609wro.9.2024.04.23.04.26.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Apr 2024 04:26:21 -0700 (PDT)
Date: Tue, 23 Apr 2024 13:26:19 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Corinna Vinschen <vinschen@redhat.com>
Message-ID: <Ziea2_SRYoGcy9Sw@nanopsycho>
References: <20240423102446.901450-1-vinschen@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240423102446.901450-1-vinschen@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1713871582; x=1714476382;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Y0wUJW0t6Ie4ZK0bmyTUKRo4VgTIuEz9KZzwLq9XTZM=;
 b=yciQKNdFuYdnX76IuxghYvrM25tl1t9oSs8kcDcQ9CNzDwBvl5FKOHWJ/sh8XSSNhU
 CjQbgoH0genqgaDwhQ1m7GErdyoVnolOSQIB7Vcjnsy1Or+pn3J8D39NJfURlor1XYCk
 xKgvsHyju3C8VVX0vmIjARmoKPzvtSDeusUjq8rG8ayBU1vGzgA7xIx1G3emf+lwDWUf
 KB+wRuUMT8Womagil/PqHY3r4QpqQ9XaUDbKxFz4wPG/y7qbtR2ei+qSDdlFoxwdSE4p
 0El3vRoLZu2chMPmVRHHyyXaEmtmPw+E/yAilaD2tzftkdNavAokjrx6k7m0/juQee+r
 hS6A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=yciQKNdF
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
>---
> drivers/net/ethernet/intel/igb/igb_main.c | 1 +

Also, please use get_maintainer.pl script to get cclist.
