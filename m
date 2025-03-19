Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B4299A69AC4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Mar 2025 22:22:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85F0241421;
	Wed, 19 Mar 2025 21:22:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6jF2xduAOOao; Wed, 19 Mar 2025 21:22:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A372413E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742419330;
	bh=cDWNLxb1CzYSCvOOKpH+bW9L/oTxpk65TwCMBk+ej2A=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iwWuDMT1GgtpVBnPVJroBVi7SgTe5e2cdq+MNwyC2/v3hVd4jlt/+VWQgtsCRuw7m
	 emnkicAJ9Hv/TkpycyHkF4XYA0me0fDtZJehOxyW6Q+BffTvDA5iiCl1Fitl7YpEv7
	 qTCWsAMI7w5I7I9ljDUeWQXqWMOvXTeqr8byg1D4eJOm1ca9xmJVC+4/ODOHVdKFot
	 JRY+a7dzGfaK3qQ6xvgKxwpDJD8F0/WDcK6sB6cJGiM0HU30y4XdhIdfPE6/oAy2GF
	 7ISZxQbMiCPs3tW/aca7JvzZXW6UtI3O6FlsbOKKa1nx7VHJkKflA/+HE4nm1RXKBp
	 +V8XN2xvXF/JA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A372413E0;
	Wed, 19 Mar 2025 21:22:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 308CF1A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 21:22:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1548A413ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 21:22:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0F3XHW9DLE_R for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Mar 2025 21:22:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 189F7413E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 189F7413E9
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 189F7413E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 21:22:03 +0000 (UTC)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-621-F471J6nmOLas-ZnIZY2dJQ-1; Wed, 19 Mar 2025 17:21:59 -0400
X-MC-Unique: F471J6nmOLas-ZnIZY2dJQ-1
X-Mimecast-MFC-AGG-ID: F471J6nmOLas-ZnIZY2dJQ_1742419318
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-39143311936so28215f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 14:21:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742419318; x=1743024118;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=cDWNLxb1CzYSCvOOKpH+bW9L/oTxpk65TwCMBk+ej2A=;
 b=QT/zPHiTtOSPGhZyPyBDyB37Yfu8RwLNCFXjTQNXEJKapnrUxQP/dPz1PzqJw3jGdu
 UlQNQV4OM4sa7kmaHkcJdncgdD5WW/ESGht3KSC/Hw24IfK4p7nTjfwiELEl7WUtsVAh
 IYOn0xnrhNHR+EDNql7orby9+zGG7YI8055jybHhQWShayxdEv7w1xFJkSL4gFMuWUCJ
 IdzESSVzfC50ZCynXYAL6oHgtJ0IQsZg40UZlmi9LOehcNbbOR4/wdKzOnzo5875qKZ2
 uDo5xs/EnfsbB64mgzcYi7osD1vGt3wyIg4ZiyeLqM+NsX4D997OCjfItcd1rX+LC1SG
 8foQ==
X-Gm-Message-State: AOJu0YyKzcZ3YoFn54sUsZLNDPlay6ZqrUbFTce7y1MptWtgA2+2G21d
 K0QSMLlhcK2aKWE42BbPkR8LCgN00x1S1iIr9YYHXJ521jNLPpzbJeEX5N+uqbSJLw5BkYpq+JU
 3QV8vq24XUpgoyyR3TSMhys4B94o9/qn7DvjB/L9Drgi7iDYQ16h19P+8vySNqd4dMMY=
X-Gm-Gg: ASbGncuLyxg0JDqzURc4tvCL0Y1yQvhHcRYDHyOPyEIKG3/z6DCeWKxU9J6MkIzoiza
 /s2s+BW5myG3BpkOMtI7q2PMmypasDWQAqxzNx2iQXnkyMBYmr6qUo1KSUw4epJRVmVV0dPk4do
 u+35UXrNBLXujNJSrGeBOykAqFnA+rloH1wCgXeXw/v8wrbn7xbDvLVy/aQ4R8uDxFjz56tqUuP
 NouXeUI9jXaTpk2pnG7c/s8dQhqXsTDXXuUmyjDBhUYEej0EX5KLZep/3NCVzb+FtOm1sGUZ5lS
 yJnYElnwSr11t0FjEpLYk4o7xGXIcsQkR6LjG/Ddzj6ZLQ==
X-Received: by 2002:a5d:47af:0:b0:391:10c5:d1a8 with SMTP id
 ffacd0b85a97d-399739b4417mr4041363f8f.6.1742419317804; 
 Wed, 19 Mar 2025 14:21:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEaLSnhNgHajpagGDMQ1+5o7+6Po7P4WxyuDoDHztzaTcHpWdvzD63DxuxxFMe7m0VyNcvBCQ==
X-Received: by 2002:a5d:47af:0:b0:391:10c5:d1a8 with SMTP id
 ffacd0b85a97d-399739b4417mr4041347f8f.6.1742419317363; 
 Wed, 19 Mar 2025 14:21:57 -0700 (PDT)
Received: from [192.168.88.253] (146-241-10-172.dyn.eolo.it. [146.241.10.172])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-395cb7e9f8asm21826669f8f.81.2025.03.19.14.21.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Mar 2025 14:21:56 -0700 (PDT)
Message-ID: <4cfeb80e-8799-44dc-9b8b-7b7e0e329541@redhat.com>
Date: Wed, 19 Mar 2025 22:21:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Richard Cochran
 <richardcochran@gmail.com>, Ruud Bos <kernel.hbk@gmail.com>,
 Paul Barker <paul.barker.ct@bp.renesas.com>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Bryan Whitehead <bryan.whitehead@microchip.com>,
 UNGLinuxDriver@microchip.com,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Lasse Johnsen <l@ssejohnsen.me>, Vadim Fedorenko
 <vadim.fedorenko@linux.dev>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <20250312-jk-net-fixes-supported-extts-flags-v2-0-ea930ba82459@intel.com>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20250312-jk-net-fixes-supported-extts-flags-v2-0-ea930ba82459@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 6H-ouoEuQIUNPGYk6zmIttqW7oW-0AZ1R1iXNFb6dGo_1742419318
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1742419322;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cDWNLxb1CzYSCvOOKpH+bW9L/oTxpk65TwCMBk+ej2A=;
 b=fAIfDo3svILugxdWCEUMVAGw0+08jbavt/uinSNMXzpHy3MVTGcCGjnl7Tnl/yK8bO/eTC
 I0rJNmQl4MZwblWZoJxkR5NVQUFFRkUHTWuT88AtY1CC3JwPkuYKU1hRupDwH0rfPxHHUx
 fAfo95neuoun7pNu8BDu4M++XtjGSC8=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=fAIfDo3s
Subject: Re: [Intel-wired-lan] [PATCH net v2 0/5] net: ptp: fix egregious
 supported flag checks
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

On 3/12/25 11:15 PM, Jacob Keller wrote:
> In preparation for adding .supported_extts_flags and
> .supported_perout_flags to the ptp_clock_info structure, fix a couple of
> places where drivers get existing flag gets grossly incorrect.
> 
> The igb driver claims 82580 supports strictly validating PTP_RISING_EDGE
> and PTP_FALLING_EDGE, but doesn't actually check the flags. Fix the driver
> to require that the request match both edges, as this is implied by the
> datasheet description.
> 
> The renesas driver also claims to support strict flag checking, but does
> not actually check the flags either. I do not have the data sheet for this
> device, so I do not know what edge it timestamps. For simplicity, just
> reject all requests with PTP_STRICT_FLAGS. This essentially prevents the
> PTP_EXTTS_REQUEST2 ioctl from working. Updating to correctly validate the
> flags will require someone who has the hardware to confirm the behavior.
> 
> The lan743x driver supports (and strictly validates) that the request is
> either PTP_RISING_EDGE or PTP_FALLING_EDGE but not both. However, it does
> not check the flags are one of the known valid flags. Thus, requests for
> PTP_EXT_OFF (and any future flag) will be accepted and misinterpreted. Add
> the appropriate check to reject unsupported PTP_EXT_OFF requests and future
> proof against new flags.
> 
> The broadcom PHY driver checks that PTP_PEROUT_PHASE is not set. This
> appears to be an attempt at rejecting unsupported flags. It is not robust
> against flag additions such as the PTP_PEROUT_ONE_SHOT, or anything added
> in the future. Fix this by instead checking against the negation of the
> supported PTP_PEROUT_DUTY_CYCLE instead.
> 
> The ptp_ocp driver supports PTP_PEROUT_PHASE and PTP_PEROUT_DUTY_CYCLE, but
> does not check unsupported flags. Add the appropriate check to ensure
> PTP_PEROUT_ONE_SHOT and any future flags are rejected as unsupported.
> 
> These are changes compile-tested, but I do not have hardware to validate the
> behavior.
> 
> There are a number of other drivers which enable periodic output or
> external timestamp requests, but which do not check flags at all. We could
> go through each of these drivers one-by-one and meticulously add a flag
> check. Instead, these drivers will be covered only by the upcoming
> .supported_extts_flags and .supported_perout_flags checks in a net-next
> series.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

I admit I'm the most significant source of latency, but this series is
IMHO a bit risky to land this late in the cycle in the net tree,
especially considering the lack of H/W testing for the BCM phy.

What about applying this to net-next instead?

Thanks,

Paolo

