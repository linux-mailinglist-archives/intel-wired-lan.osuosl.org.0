Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D84886A15C5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Feb 2023 05:16:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CF86F4031D;
	Fri, 24 Feb 2023 04:16:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF86F4031D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677212177;
	bh=yimPOQuc1Ri6w7/IoY2rPT04nprqk1PPm+Lshoep8AI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nxvWfOLGL7MAf1fAXK0K+ey55wqwqOLd+gG+IBkzxSrHJ31gItXOFFbxWPMBgHDFd
	 BHNGMI7Lsp07S5d4yzT8bNelNrVeJV134CBTcjstqCvXHbdpEK9/dae9q695ejqJIo
	 l5eCkfa15MI3jrdjN6CFRx3pMLNlrNzwHtJqi/LZstMrlIkkJdxLK3a3cQJKcfsC2e
	 2JQMHeWA874Zwc423n78OVyP0S0eoSkgkd5QkYeOtgLTv9LVPIhakPE8dalIVZOknc
	 MseW2FNiXm9qAM7myKqwhruD+1KnJWiP3LX5LJYluEwYWlpZXVcaFFDkJ0Rs+mC8/1
	 7G5rqL6hKfE8w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a_lSLJnhl19E; Fri, 24 Feb 2023 04:16:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B2A8F40116;
	Fri, 24 Feb 2023 04:16:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2A8F40116
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7972B1BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 04:16:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5378060A63
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 04:16:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5378060A63
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pniLpSOmwbGX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Feb 2023 04:16:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E69160644
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com
 [IPv6:2607:f8b0:4864:20::12c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9E69160644
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 04:16:07 +0000 (UTC)
Received: by mail-il1-x12c.google.com with SMTP id i4so5242877ils.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Feb 2023 20:16:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lqH7N7uaBkOCzr1hnwZ19qUyYAeJpV9ahTDpqeJHd+g=;
 b=Jm/u3TWJZQayZGh9PHXm7usZQNIHQnJYWPKVNyfC7LDGEb8xy8JIYyAMAQMT/REzzM
 XMefVBDkpuT9S1NTrLEhwQkO8BlHnpKYtreSUeDlPy8DMqgIuWw37C6u2X8hGYaSer1y
 88HP9g1g/ALx16G7AMs8Op5TuZd8ulgNc87epWvbQXbqsWNTaVxbQkgrXm5i/ZyOjM++
 XX7NE7nOv89RkDX9EpbhVV76WgUbZ3bnyUv4pOW8wodTrmqcfC+8gompcJ3K2vRVJrxh
 NjGIlMu+jVaQdMi2R75yT7fbQN7fZUej0s2J0yZzHiR2+dfDqjENo/3OeY0/6lG3t7S8
 gIlg==
X-Gm-Message-State: AO0yUKX5YzJf7nAOm87xwCC38fEiPSr/1+9NWhxCZtqoqB/cvEaWP4Ce
 IQTX2H534o430O8GHYlYbjY=
X-Google-Smtp-Source: AK7set8KmX2GXue/WAKm1TalipiACk5vFlQuSnXwrGz6mr8anfKnHXXZ+kJ/AAxXpx5+3DLqaxahpA==
X-Received: by 2002:a05:6e02:1c89:b0:315:9937:600a with SMTP id
 w9-20020a056e021c8900b003159937600amr14879503ill.26.1677212166731; 
 Thu, 23 Feb 2023 20:16:06 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 l20-20020a02ccf4000000b003a4419ba0c2sm2155388jaq.139.2023.02.23.20.16.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Feb 2023 20:16:05 -0800 (PST)
Date: Thu, 23 Feb 2023 20:16:04 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20230224041604.GA1353778@roeck-us.net>
References: <20230211074113.2782508-1-o.rempel@pengutronix.de>
 <20230211074113.2782508-7-o.rempel@pengutronix.de>
 <20230224035553.GA1089605@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230224035553.GA1089605@roeck-us.net>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
 :reply-to;
 bh=lqH7N7uaBkOCzr1hnwZ19qUyYAeJpV9ahTDpqeJHd+g=;
 b=fVIB2hhqmWhf9RXMqATrsA/BSwTEse/PqfkjmYPy5j+67+nB9BtVr/117YTSqgEbYB
 I9WQ7jBX96IckIWE78BXbw2EQz1ZHQckUFMaDqi900lFwH2Y+8et6wOlCjuk+rcAFlGU
 34nyGBUpmliNWtyCzjrSVm20sqwFB0XEoXm8EIF7j9EbUZGMVlF6fz0/jfPxFjaV72pg
 AhP4KXbOVu39HJXdE2BF7/Hy1ZrmPDKopERVmKv75u4YFTB77Sv9/93tHOedkEdEZsCN
 qiA/yym84BvbStGzemRJ1NYdI0kYlCTcdKKnsJNsGyX+ypPGdh1xsy+LEUst5kz9ieog
 0c5g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=fVIB2hhq
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 6/9] net: phy: c22:
 migrate to genphy_c45_write_eee_adv()
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
Cc: Woojung Huh <woojung.huh@microchip.com>, Andrew Lunn <andrew@lunn.ch>,
 Arun.Ramadoss@microchip.com, Florian Fainelli <f.fainelli@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Wei Fang <wei.fang@nxp.com>, kernel@pengutronix.de,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 23, 2023 at 07:55:55PM -0800, Guenter Roeck wrote:
> On Sat, Feb 11, 2023 at 08:41:10AM +0100, Oleksij Rempel wrote:
> > Migrate from genphy_config_eee_advert() to genphy_c45_write_eee_adv().
> > 
> > It should work as before except write operation to the EEE adv registers
> > will be done only if some EEE abilities was detected.
> > 
> > If some driver will have a regression, related driver should provide own
> > .get_features callback. See micrel.c:ksz9477_get_features() as example.
> > 
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> 
> This patch causes network interface failures with all my xtensa qemu
> emulations. Reverting it fixes the problem. Bisect log is attached
> for reference.
> 

Also affected are arm:cubieboard emulations, with same symptom.
arm:bletchley-bmc emulations crash. In both cases, reverting this patch
fixes the problem.

Guenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
