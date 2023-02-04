Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4EF68A726
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Feb 2023 01:13:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29C9B82179;
	Sat,  4 Feb 2023 00:13:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29C9B82179
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675469624;
	bh=ypQcptsnD6gS8sa5+lAkpMSWlATYYk8oL4/Np4Y5xFY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SdZWIFqQxGhGLbK2olyd/DbR7AVJJEOqc263ifJkHBBzKUshIJ2nVNPMRXX+ri+jp
	 5EjkJxE1FoY7gHEMYcqpqSZBZMtFbpHZYWpH5/h5JFARLPLSvQVkw13+1pn4DZl+J+
	 26kCddc5c54JtjYnkjdeaQDMgR8zC/aQfYwoxJmDGr2i3CPfXtjADVQuGfo4XvotdR
	 swqhXbviGMKJMI+qsy20S2s1rcqyylT7rcYeuqIRLfCtpGlQMnivTW7Xwo55sEXRwe
	 NCZYw75oPI7bkbnk8htOVUaZCbsMbZo8SSFBg8yXwb6tQqSifqoaC+PKxUjdc0FV0R
	 ceh4emDpEM3pw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HaC32m1Cok5a; Sat,  4 Feb 2023 00:13:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CA7182043;
	Sat,  4 Feb 2023 00:13:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1CA7182043
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 45C921BF976
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 00:13:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 298F682043
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 00:13:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 298F682043
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RAV5l26JDD8d for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Feb 2023 00:13:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA7F58203C
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BA7F58203C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 00:13:36 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id qw12so19803682ejc.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 03 Feb 2023 16:13:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=u1RPD08p4//HERkdGmEsi6ZpAb1Ehupu6jKa9Bwx4Ug=;
 b=GAfKOTK3UDQAd4/w7I1UY3OTujnKvcB9AF5KMj/TFJruDuhe//lF/pKPljdPALGIH5
 jQLF6FiAiNCnn3KRJFHiCl7N0JT039GQpMPEhF3ycduSNV6iMAXDThCl13CxYQ9Y8Uk+
 +9XcP3ju8uLDloD8is84ADQvA5Sua0eJdXTVatvOXZEcZXhtFWdFsFL2+bd0zn8J0QUz
 E0p8XnZWzp1MxZtKVuiKz5JSlisXVMrdEgOpuccchxxG1IwP1qI+/ICQWzt4BiVa9wyW
 dfKz3fvcKhbFwidXMY6rhXpBDL4MUvry8Nsr84HKNHn7k1YQDkEiVzIqXLPT/0mdL2ur
 sSdQ==
X-Gm-Message-State: AO0yUKVBiC2BOHT7ft/RnsSNEKSUArqI0CK+pVGXfdJJ5s3lGlc8VIZ6
 HKGk1ra/2zyUNRIwH37QXdA=
X-Google-Smtp-Source: AK7set+KxCM0lI9jnGRvm6zsQmIKJorETTfiHEM/5QkXuia/mY2b9Vu2uszHP7DXs0RvqE0ivfpQEQ==
X-Received: by 2002:a17:906:5390:b0:878:5524:e92d with SMTP id
 g16-20020a170906539000b008785524e92dmr11768931ejo.33.1675469614875; 
 Fri, 03 Feb 2023 16:13:34 -0800 (PST)
Received: from skbuf ([188.26.57.116]) by smtp.gmail.com with ESMTPSA id
 s24-20020a1709060c1800b0088a0d645a5asm2095514ejf.99.2023.02.03.16.13.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Feb 2023 16:13:34 -0800 (PST)
Date: Sat, 4 Feb 2023 02:13:32 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20230204001332.dd4oq4nxqzmuhmb2@skbuf>
References: <20230201145845.2312060-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230201145845.2312060-1-o.rempel@pengutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=u1RPD08p4//HERkdGmEsi6ZpAb1Ehupu6jKa9Bwx4Ug=;
 b=g5SvMM3zIU/+ckWnrzKvg5/zyGhwmuEv6Ul+tNEW7pzJHxHnGYwg8CQ+3LlZf0lNrz
 L8zVAJvCGvwRFC8ye8tXIPXIfNOcgMP4fGqR1t2yncKzp8PcHw/Ni0DxZGwNEQbFoIjS
 z2qx7Rf0LMFwPSLWrpw6g2ZQFrnSvdMnlDEX7N/I7E2RWvZzlq7EscSVZ4By7ECDVT1V
 gTlILh8ghX60vwGlYiTxON7e82kbUV9+fHCSW5LNNc4osMCopmzrI0NHXNjhREFh+cCX
 icGay4oJijIhf4c6giu8rVU4CUHkx7osyjwN4qDwEP1tV+5DL9/y+L9WE+AVL2uLimNY
 5Wzg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=g5SvMM3z
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 00/23] net: add EEE
 support for KSZ9477 and AR8035 with i.MX6
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
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 kernel@pengutronix.de, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, UNGLinuxDriver@microchip.com,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Feb 01, 2023 at 03:58:22PM +0100, Oleksij Rempel wrote:
> With this patch series we provide EEE control for KSZ9477 family of switches and
> AR8035 with i.MX6 configuration.
> According to my tests, on a system with KSZ8563 switch and 100Mbit idle link,
> we consume 0,192W less power per port if EEE is enabled.

What is the code flow through the kernel with EEE? I wasn't able to find
a good explanation about it.

Is it advertised by default, if supported? I guess phy_advertise_supported()
does that.

But is that desirable? Doesn't EEE cause undesired latency for MAC-level
PTP timestamping on an otherwise idle link?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
