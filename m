Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 94867744039
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Jun 2023 18:57:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1FC07614A0;
	Fri, 30 Jun 2023 16:57:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1FC07614A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688144269;
	bh=QKb45OVgZpdefkvoe+4ItTDXTQAcQQIWGmwJgItaPUg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eDVaxYU8jnAbR2UcO0IbCowprxm3vmJMhBx/Kt82YY4diNRilXlsIrnMT5b+jPQ6N
	 o4yUJaPxWJivi77iheNvjU284aJEL6oX2hC/nJVIYGHWmicgGa+5NQImqfArpZHjhh
	 lUQ/K00qCBz02kY5fHPeKgffpaASCV5UoedPlynfo7o0jdd301eYIyK+2AuMc8Xo5w
	 gFAhNsDLvdUCeyZu8649JkdlRQdnFRLNboVZ8TUTaXbdVQ1wpS48bhrSF8YIcrr4cw
	 Tks8L2yDUmjgMJCThFeg+lVgOTqPuupiqXm+nOhJqzvHQ+WgVFIZwyRJQwM85D8hi2
	 ZKHQkxreEQNHw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bIHSBeX11RRU; Fri, 30 Jun 2023 16:57:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 13D1660F4A;
	Fri, 30 Jun 2023 16:57:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 13D1660F4A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 225201BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 16:57:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EBF8640295
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 16:57:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EBF8640295
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Oi5Z9YRtMm3l for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Jun 2023 16:57:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2503640120
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2503640120
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 16:57:42 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id
 98e67ed59e1d1-25eabe8b5fcso263623a91.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 09:57:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688144261; x=1690736261;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0WbvTFCty7AXhGWc17dVqnpVXlZ2ZnUtOfdshsodAAU=;
 b=kGOwlIZJYPxM/nkko1hV6/ohIFZ+sapQ8xl3pt6WkxBRdokb2p1qfbh3j0Zk1vk0yu
 chulUHUuiYH5qm4o2ADdYBpE6RoBdSPwsG9i4jVB4KJNOpKTLNRTiE07oSk8XgcLLAUN
 8JWLdI9TKe2rPLyJHNFdmAgpa8JCKGnW9e3/Z9wtyWx574mQpUcqXa9oJiNYdMcOEEb4
 eU8/HoXBIdk1XaBWEjXEblZBbOHTF/ZW1FkZckobc/5ES7/WtxC6UAeii/fE4qOK1kGm
 ELWpC0cwdysQQjdxc4tr/wxAcg9oK2c0UQN3k8dp3XHRnxjopBB1nK74aBPK40g56qSh
 yGIg==
X-Gm-Message-State: ABy/qLaL8Xhy0dUOZ/5xZF8LFQcvL4xhG6W/dPe/yfCXZQELp1pOwvFx
 mfcMXR4WszhOW9/pMCJB/Z4=
X-Google-Smtp-Source: APBJJlHGMy7JxCMfwvYk/+o/WTY+8mCPj7NC3s62ZuXEV9zpMn2iZz931YBUfxyRilftypsqm8WEdw==
X-Received: by 2002:a17:90a:be16:b0:262:c2a1:c029 with SMTP id
 a22-20020a17090abe1600b00262c2a1c029mr3096424pjs.2.1688144261502; 
 Fri, 30 Jun 2023 09:57:41 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:640:8000:54:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id
 22-20020a17090a031600b00262ffa796d7sm8417569pje.42.2023.06.30.09.57.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Jun 2023 09:57:40 -0700 (PDT)
Date: Fri, 30 Jun 2023 09:57:38 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Yoann Congal <yoann.congal@smile.fr>
Message-ID: <ZJ8Jgt60QQmCQlFi@hoboy.vegasvil.org>
References: <20230630154138.4041809-1-yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230630154138.4041809-1-yoann.congal@smile.fr>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1688144261; x=1690736261;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=0WbvTFCty7AXhGWc17dVqnpVXlZ2ZnUtOfdshsodAAU=;
 b=HNvUV70PBbb6z2cRbQ9PoHPkeNtGLZbLkn8RlNRkV2qGIW1OGPS8uSTjsMPDgBZTZJ
 82tRgf2GZPYwDfu4eYcqqBPQXqHnL1/TzI5bWHpX02Ojl7TC084orn/dwcY2BgbRBCQI
 poTzfuUMLZj2mfWruU5GDX68doWjrlbR/vjl9etkIbHe9BkD8aSrJSXwLmNaoEcsNzW9
 O2Hh0XCrgZCCj68PKLIdiQ4d3EzbRku1lQK5GIQzew54NJG020XykPX6mkF/6ZJUr8bg
 LNG23L4Hd46PTiNrZ3QGHKImnys6NSAuLtUFOhKuatiVgA6L442SwAOdzHyp1pz4bSAC
 f9aQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=HNvUV70P
Subject: Re: [Intel-wired-lan] [PATCH RFC] igb: Use TAI clock to reset PHC
 value
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jun 30, 2023 at 05:41:38PM +0200, Yoann Congal wrote:
> The PHC is usually synchronised in TAI (from PTP). By resetting it with
> the kernel TAI clock we avoid having to correct the PHC from REALTIME
> (usually UTC) to TAI (37s as of today).

Nothing guarantees that the kernel's time is correct.

When initializing a PHC, it is better to reset it to zero.  That way,
the fact that the clock is unsynchronized is obvious.  Otherwise,
people may believe the PHC is synchronized when in fact it is not.
 
> RFC: While this patch looks trivial and it does make linuxptp/ptp4l
> complain about a driver bug:
>   timed out while polling for tx timestamp
>   increasing tx_timestamp_timeout may correct this issue, but it is likely caused by a driver bug
>   port 1: send peer delay response failed
> 
> Increasing tx_timestamp_timeout to 1s does nothing different so I guess
> the driver does indeed freeze with this change but I can't figure out
> why... 
> 
> Do you have any idea/pointers? Thanks!

No idea, but you should figure that out before posting a "fix".

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
