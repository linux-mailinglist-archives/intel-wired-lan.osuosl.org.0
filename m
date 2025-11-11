Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7547C4E85F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Nov 2025 15:39:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C693A60BBE;
	Tue, 11 Nov 2025 14:39:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7TrBEQpWiSR7; Tue, 11 Nov 2025 14:39:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2ABBD60BC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762871958;
	bh=BbZiM31j3hF7yHeWrzWbDvWSfA60EWmb9ONaywmv4Bg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=398yrkNKkZCwnHxlmB3o+d3x5nwrrRrzwZ0vdJvPsy/kNyRpcKZ+YmNizP54pGSp/
	 faO2x975RGi8jRvTJcT7xNlVdO0RbsDXQGRd2l24HBmwcCx5xaY7H/8hzjbX+l2rVt
	 o1e0hOgZ0NKavJzRX691yYvBgdJeRYdgU0GC3+6dZd8nooAvrb6qkGiaUyu5aW0Aoo
	 HRt4kXVtg6Us3mFRv1qNL2l4xnKdNCj7d/ldkpoPgyFcBLutYyD75zxAVkxoP8wakb
	 KbsCh5b3hEQ/CPJQRKlz7/8s1t4FjHllIhFW/JEW0EiSCCDkHhlcldh441IDYK6z5I
	 p1aonLp9UDbYA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2ABBD60BC0;
	Tue, 11 Nov 2025 14:39:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D3E7EFA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 14:39:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C5D26407D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 14:39:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jf8sTw2r6HDL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Nov 2025 14:39:15 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32a; helo=mail-wm1-x32a.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AE83C406CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE83C406CD
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AE83C406CD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 14:39:12 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 5b1f17b1804b1-47118259fd8so30308675e9.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 06:39:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762871950; x=1763476750;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=BbZiM31j3hF7yHeWrzWbDvWSfA60EWmb9ONaywmv4Bg=;
 b=jme6vr6p+Y0g9eONsTCjJI7o3+N1Uj9e/HlVR/PRB+6mg5z9DbBd/7oHBgnTMfHAzl
 0lE3fSAZk7WxnAqpD+Vhy2KsfcSJ7/Ofpn3/C68fPxISl3iHwLqTVbNplWOiXfgxV3tq
 lemR5qS7IPwko1JdlouvihkPAkVQwfFZxSr9FE6uGXMIUxllaLnIybcyxIumpMSbXM/O
 LRXuvChPKbgyys+Xn7l8/hHff6MoG8KTgnqibVdodAjSLBsiIewavPNAfmnq4gDdjgzo
 Gywnw4GbhTrdbfzLIPM7AHxFae59NO9/viFRYLLM5TUY2YQ/4OXc/8Z+DpMElWpl6Vzj
 P/eg==
X-Forwarded-Encrypted: i=1;
 AJvYcCW3E73hAitO0zZIyW6rMBhElWqSgrpWaKGCg0h9jG2RIld8rYh8cwLyX6aiUNp+rd5rVZYUTqmP3iVtl3nHiWA=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx9wUPgFa17t+q0lqws/2SqB5a9X5Z+Eu2w5I7eyRvY9tL3HjTh
 H4LgXGomFOWogh+uevd1ASniN5FFW1y0xU9Bye+7Hqz4zprOqBlpPZp77pijxrxYteE=
X-Gm-Gg: ASbGncuZE768da5McSX5wf/Jj8FGJoCMuU6fSfTYqaiv/LlFJBPxq6JdslswvTmeXNC
 Snhxs/3QL4Hh6BM8/vXV2I+/Ys2yn1pkZKk7JegjI/TJSDzOWH9CgpSuQ1JopZc/rzafWdar4/4
 caktEPFpFCfq6OGP5UJw5yN+maLs7myKhApD0S6+kVn8C6++cyP6WXPfuX/o/aKwOh6Ra30rjq0
 Ri7w236X7FSF08ms8pdtqp7pGl2+3MuXnnRUhxjSKwMUUlIR+YolcsHTkg5pCA+bISPpNF5hlaC
 bceY65bG7zkDC0wKiX/Eah8llKZT9sLhiPxJeeGchplKYXZPoK6tY2ckAWBocpvuiolfMBrUg/u
 ZwXTAL5d/6NwZ1op1xOyKYwjsTdDCWD4eWjoHLuTCUqGEP6W2F9wkt0laqK2fft/yMvttI93IG/
 soJ02s62qx
X-Google-Smtp-Source: AGHT+IEWdT0uV5uWHBTGFPHzbW80DutwkV0QHsEFy4zvFBG9BlThbgSAanJ2aRukrqMaWzzZN+v30Q==
X-Received: by 2002:a05:600c:350b:b0:46e:5100:326e with SMTP id
 5b1f17b1804b1-4777327e71bmr107922525e9.23.1762871950232; 
 Tue, 11 Nov 2025 06:39:10 -0800 (PST)
Received: from jiri-mlt ([140.209.217.211]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-477815faadesm21513965e9.0.2025.11.11.06.39.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Nov 2025 06:39:08 -0800 (PST)
Date: Tue, 11 Nov 2025 15:39:03 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Saeed Mahameed <saeed@kernel.org>
Cc: Jakub Kicinski <kuba@kernel.org>, 
 Daniel Zahka <daniel.zahka@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Srujana Challa <schalla@marvell.com>, 
 Bharat Bhushan <bbhushan2@marvell.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, 
 Brett Creeley <brett.creeley@amd.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Sunil Goutham <sgoutham@marvell.com>, Linu Cherian <lcherian@marvell.com>, 
 Geetha sowjanya <gakula@marvell.com>, Jerin Jacob <jerinj@marvell.com>, 
 hariprasad <hkelam@marvell.com>, Subbaraya Sundeep <sbhatta@marvell.com>, 
 Tariq Toukan <tariqt@nvidia.com>, Saeed Mahameed <saeedm@nvidia.com>, 
 Leon Romanovsky <leon@kernel.org>, Mark Bloch <mbloch@nvidia.com>,
 Ido Schimmel <idosch@nvidia.com>, 
 Petr Machata <petrm@nvidia.com>, Manish Chopra <manishc@marvell.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Siddharth Vadapalli <s-vadapalli@ti.com>, Roger Quadros <rogerq@kernel.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Sergey Ryazanov <ryazanov.s.a@gmail.com>, 
 Johannes Berg <johannes@sipsolutions.net>, Vladimir Oltean <olteanv@gmail.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Dave Ertman <david.m.ertman@intel.com>,
 Vlad Dumitrescu <vdumitrescu@nvidia.com>, 
 "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>, 
 Lorenzo Bianconi <lorenzo@kernel.org>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-omap@vger.kernel.org
Message-ID: <cgg6fxjjf6zq6yyzx4njhjmetrlhjgor4lzktwe6nls6rgqd6s@c3abd3ehlzvr>
References: <20251107204347.4060542-1-daniel.zahka@gmail.com>
 <20251107204347.4060542-3-daniel.zahka@gmail.com>
 <aQ7f1T1ZFUKRLQRh@x130>
 <jhmdihtp63rblcjiy2pibhnz2sikvbm6bhnkclq3l2ndxgbqbb@e3t23x2x2r46>
 <20251110154643.66d15800@kernel.org> <aRKs6jXqSvC3G_R0@x130>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aRKs6jXqSvC3G_R0@x130>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1762871950; x=1763476750;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=BbZiM31j3hF7yHeWrzWbDvWSfA60EWmb9ONaywmv4Bg=;
 b=WMtfyD7I2Oz7gfWe4MpWa2bqiE0v6Dq+DHrOjMykJC5uldTORVC0R74nZ43SQf5o/6
 tuga6BxnVzzXgSl67F3I5DCVt2Mr+/PSFxa0yLEX4YcGRBD17adx+cBzcwSrnHab4vYk
 jlL1gx0MWzor1sTI4eUCiuyUTK/JveBF6mGv31OrMdRgC6AKZNF88IAv5G6y3MDMEX4r
 4mRLTHDiO1mph0W663n5A3YiaFw08FNGs/shaOm0fLhF+SMhr+qlWTEWP4LFX1a9XqB/
 kUc2lxPT9wZb0K9sKQNtfpz8kQ9hTpKQKm3GbJG5yJdzP7aaGKcC1DuEhNwoOB8ltbn/
 Scmg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=WMtfyD7I
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/2] net/mlx5: implement
 swp_l4_csum_mode via devlink params
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

Tue, Nov 11, 2025 at 04:26:34AM +0100, saeed@kernel.org wrote:
>On 10 Nov 15:46, Jakub Kicinski wrote:
>> On Sun, 9 Nov 2025 11:46:37 +0100 Jiri Pirko wrote:
>> > >So, I checked a couple of flows internally, and it seems this allows
>> > >some flexibility in the FW to decide later on which mode to pick,
>> > >based on other parameters, which practically means
>> > >"user has no preference on this param". Driver can only find out
>> > >after boot, when it reads the runtime capabilities, but still
>> > >this is a bug, by the time the driver reads this (in devlink), the
>> > >default value should've already been determined by FW, so FW must
>> > >return the actual runtime value. Which can only be one of the following
>> > 
>> > I don't think it is correct to expose the "default" as a value.
>> > 
>> > On read, user should see the configured value, either "full_csum" or
>> > "l4_only". Reporting "default" to the user does not make any sense.
>> > On write, user should pass either "full_csum" or "l4_only". Why we would
>> > ever want to pass "default"?
>> 
>> FWIW I agree that this feels a bit odd. Should the default be a flag
>> attr? On get flag being present means the value is the FW default (no
>> override present). On set passing the flag means user wants to reset
>> to FW default (remove override)?
>> 
>> > Regardless this patch, since this is param to be reflected on fw reboot
>> > (permanent cmode), I think it would be nice to expose indication if
>> > param value passed to user currently affects the fw, or if it is going
>> > to be applied after fw reboot. Perhaps a simple bool attr would do?
>> 
>> IIUC we're basically talking about user having no information that
>> the update is pending? Could this be done by the core? Core can do
>> a ->get prior to calling ->set and if the ->set succeeds and
>> cmode != runtime record that the update is pending?
>> 
>
>Could work if on GET driver reads 'current' value from FW, then it should
>be simpler if GET != SET then 'pending', one problem though is if SET was
>done by external tool or value wasn't applied after reboot, then we loose
>that information, but do we care? I think we shouldn't.
>
>> That feels very separate from the series tho, there are 3 permanent
>> params in mlx5, already. Is there something that makes this one special?

Agreed. That is why I wrote "regardless this patch". But I think the
pending indication is definitelly nice to have.


>
>In mlx5 they all have the same behavior, devlink sets 'next' value, devlink
>reads 'next' value. The only special thing about the new param
>is that it has a 'device_default' value and when you read that from 'next' it
>will always show 'device_default' as the actual value is only
>known at run time ,e.g. 'next boot'.
>
>I think the only valid solution for permanent and drv_init params is to
>have 'next' and 'current' values reported by driver on read. Or maybe go just
>with  'set' != 'get' then 'pending' as discussed above ?

Hmm, is it possible to rebind the driver without fw going through
next-boot phase? I'm wondering if it wouldn't be safer to have this
pending flag set to be responsibility of the driver...


>
