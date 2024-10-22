Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F147A9AB74F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 22:00:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6410340321;
	Tue, 22 Oct 2024 20:00:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QMeyhOot2x6U; Tue, 22 Oct 2024 20:00:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 517FA402D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729627256;
	bh=cf57IdvfhRrsCh7RnxCCaHPG51VLTTsW/2BLHH3AQ0E=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xszbQdNBG6rgo2PWKZTaMpIjJCjPXS+Cl8+rGsS7kiOHZ6scFjZl7kTK0cATPkA9y
	 Y4Y0sGhVM3hRXI1CZIebKYlIPkGOhhMYOcMr9hht/hBADeQ64kHRLot3MZAxUwO1bv
	 sV6owxvbfQBNT0p2Kf8nr7skQrVtMVFK4OTo9HwLta2G9BbZGiuPzfxZTyF67v54oG
	 dooZCLanBw5ypfkAC1CXDyTzy63CTHxOF3QFhhKemYdvC25qC2zJcBdOoWxB0f9J7U
	 IYMdPj5dMvZfO0hTJSS1835Z26rQcId+aPyaYQmqpvKVpqmo/sPIggiXVy56vjRXQE
	 itCe/KmVeIdew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 517FA402D7;
	Tue, 22 Oct 2024 20:00:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E66662072
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 20:00:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C73B540302
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 20:00:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MuJxXcgRwv5X for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 20:00:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1036; helo=mail-pj1-x1036.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 91F85402D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 91F85402D7
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 91F85402D7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 20:00:52 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id
 98e67ed59e1d1-2e31af47681so4727556a91.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 13:00:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729627252; x=1730232052;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=cf57IdvfhRrsCh7RnxCCaHPG51VLTTsW/2BLHH3AQ0E=;
 b=K8klEDmu9yDoRg3Hh6SSA71J0xCdpIy20sRdNZ98EefwF5MM7KvO4R0tc34UR0TBB9
 dZdom3EG3dPyudS6OLSRXNdAq7W+VRnozLTGx15MNrA5ai+R9pn6JQhd6vl3YEbMR/nC
 T5914uw9E6hH8MR2SJTKtNbKrA/Dp78tDZ2D2zaEjzNF9on7uMaEKj1AdN5d22fwrFBg
 WIrAbw3UX9OJlL9bYZRmx1DP0cSgBqKkKBqj4hZztk0hFtId27t/mImfjWhSzdLJZQYc
 78AQm8wh+LnzBFCr7whGJLGM/2qn+Uv542l0jByro/X94cHoG3OyN/SjdekTImz4RHR1
 jDGw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWnTsx8GdI69NEkLnSX6+1L3O4T7uprBQwdoxbYlU0W8omezQ08BFskpnBu5vHPY4E8lB88YvPEzcB0seJw/F0=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw9fe6cUsi+blF85W11E/0x3Jx0ZsxuLK5FycmUo50p9OG96qY5
 lW3QKENpQv6Wa+7ZX9wTMXK8IQ5nc4P+s6YhX8TUR4dgU3veIVtJLSEH7lYBMVw=
X-Google-Smtp-Source: AGHT+IHAhsM57JFqrnl5WExxOcZT26xz5WKpMt8kr/USHG17C5v6KjFuSb/JdmQAVaMNBs5fRvraBw==
X-Received: by 2002:a17:90a:b383:b0:2e2:b2ce:e41e with SMTP id
 98e67ed59e1d1-2e76b5dde2dmr122577a91.13.1729627251084; 
 Tue, 22 Oct 2024 13:00:51 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e5ad368b25sm6662797a91.24.2024.10.22.13.00.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2024 13:00:50 -0700 (PDT)
Date: Tue, 22 Oct 2024 13:00:47 -0700
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Cc: dmantipov@yandex.ru, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>
Message-ID: <ZxgEb0N0cJt1BRte@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>, netdev@vger.kernel.org,
 dmantipov@yandex.ru, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20241022172153.217890-1-jdamato@fastly.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241022172153.217890-1-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1729627252; x=1730232052; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=cf57IdvfhRrsCh7RnxCCaHPG51VLTTsW/2BLHH3AQ0E=;
 b=g+Ex+lp7yulUwrqlgq92gOqlB1RH+kote5Rqw1EcvejLT170e5hBulxm7kdWbbPH5R
 E+9Uah48Jvgizd6uRyaA29/7veXxceXeECU/QEB2NpQh7eUfvjgR+XF0F+Kufr4/Oyie
 nzuxBFGvSZbVVCg7D2W+8HWFL86TPmIuWCL24=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=g+Ex+lp7
Subject: Re: [Intel-wired-lan] [RFC iwl-net] e1000: Hold RTNL when
 e1000_down can be called
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

On Tue, Oct 22, 2024 at 05:21:53PM +0000, Joe Damato wrote:
> e1000_down calls netif_queue_set_napi, which assumes that RTNL is held.
> 
> There are a few paths for e1000_down to be called in e1000 where RTNL is
> not currently being held:
>   - e1000_shutdown (pci shutdown)
>   - e1000_suspend (power management)
>   - e1000_reinit_locked (via e1000_reset_task delayed work)
> 
> Hold RTNL in two places to fix this issue:
>   - e1000_reset_task
>   - __e1000_shutdown (which is called from both e1000_shutdown and
>     e1000_suspend).

It looks like there's one other spot I missed:

e1000_io_error_detected (pci error handler) which should also hold
rtnl_lock:

+       if (netif_running(netdev)) {
+               rtnl_lock();
                e1000_down(adapter);
+               rtnl_unlock();
+       }

I can send that update in the v2, but I'll wait to see if Intel has suggestions
on the below.
 
> The other paths which call e1000_down seemingly hold RTNL and are OK:
>   - e1000_close (ndo_stop)
>   - e1000_change_mtu (ndo_change_mtu)
> 
> I'm submitting this is as an RFC because:
>   - the e1000_reinit_locked issue appears very similar to commit
>     21f857f0321d ("e1000e: add rtnl_lock() to e1000_reset_task"), which
>     fixes a similar issue in e1000e
> 
> however
> 
>   - adding rtnl to e1000_reinit_locked seemingly conflicts with an
>     earlier e1000 commit b2f963bfaeba ("e1000: fix lockdep warning in
>     e1000_reset_task").
> 
> Hopefully Intel can weigh in and shed some light on the correct way to
> go.
> 
> Fixes: 8f7ff18a5ec7 ("e1000: Link NAPI instances to queues and IRQs")
> Reported-by: Dmitry Antipov <dmantipov@yandex.ru>
> Closes: https://lore.kernel.org/netdev/8cf62307-1965-46a0-a411-ff0080090ff9@yandex.ru/
> Signed-off-by: Joe Damato <jdamato@fastly.com>
