Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D03EABFBAE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 May 2025 18:54:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 352FB81464;
	Wed, 21 May 2025 16:54:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id crcsV_KHJEgH; Wed, 21 May 2025 16:54:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8FCF181516
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747846449;
	bh=BIQ1Rxc2ZpLERkR7gGmNgkdIGIhV9bfqR3o6mxkItNk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bbS8HE+TBX5UnnTKLygaZ6k5dwfnu2mkziigX6u+7Q4akDNmmjsrTOkg/MNNyJBrw
	 gDHdWz0IJtPtBO/87avHapvELkzwGeyXchCHDKDGnvhOPh4hXj1N2dF1DOIkFHNiVE
	 bH788M/vH+x/qPhW0U0v657jjOa25fZXRjBx+fnfcOwhFuyxdBZTb9DOjBP4ZAO4Uw
	 rRThT9JOhm50oaEzRSoL3q6otNRkM9G0qIMzwPcKR0GS6ETdtOvb3sBp2F1/QIpTD6
	 UtL5yEyTYLlce7umZMF6byLe5Uz4ohgheWQ10ngCj42/A8IG9aLzggmVHlSAqV7TiP
	 aA40+cKWdLYiQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8FCF181516;
	Wed, 21 May 2025 16:54:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 47DA661
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 16:54:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 77D1140BD6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 16:54:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pMnz2hOzChth for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 May 2025 16:54:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::631; helo=mail-pl1-x631.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C2A5840AEC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2A5840AEC
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C2A5840AEC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 16:54:05 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id
 d9443c01a7336-23211e62204so33392655ad.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 09:54:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747846445; x=1748451245;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=BIQ1Rxc2ZpLERkR7gGmNgkdIGIhV9bfqR3o6mxkItNk=;
 b=ZOXnsQq/z94cSKt7rg8cDKbUvVpfjYNxWo6lA0eSxH2hQyzsJVK7q/daeG4uiSm0Qw
 N14cliN7nyHhl4DSSUI9fI1/5TUHCqJtS/tx2N0tZklQM4mB58DUdU3lh2iA2lq8EKKc
 wENLxuRyf2chL4a1B7MmyFki8O/w455FnigDCIfgZFNW0MyEQkd4rSfebN57zca4ztZo
 UmZymaOOvkBYrfgiOw1gzbhfsIqp+g+/Jtgo39Ash6ORkkTh2ITfDTqSp4L8ws2p7ZPN
 AblV3Jp5ryQzny+AbUtwNk9lGvQsTMBHFtu9JLxMH7bzaiM8jTxbemfVWeFLnsXcpd5o
 fdfQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV8qHke/izsHdVJv7oFwiI+bX0TE14MJcl7M3qeMNBWbLla4/etXdkG2PeWkG59BqkSxzYz3AEfpomB8RYY1aM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxNeZLo6+F+HxA7/kMpOIKi3lfBIr2ZQsFK9mYNGG/AjxM+KQBm
 aR5WG9Bo8zaxNyjcv9/drxY+EKpvCGP3q5gEL9Pg+8G9jlXUTrup8Wk=
X-Gm-Gg: ASbGncsKL3TR1XkomircBXy3efMt8LnqcSVQlc9Se1MdSzH/E1aVcq1jiW5YIR/Lm/9
 mo5o45g08jro8rZqigN1Zal6qqHmWXRnQ9Pib/F8kIkZMsYCo9tlZipYnlE47W2licjY8fy7AOq
 dEf49L2tyX78fYcFnNJR3t7kffypFWk7+CJWdAh/FPYNZx0Cml9eQnUitSHfbCkW07gvrdrklRJ
 a5KabHY7ZZCn3AfzWghbnduEHn6Oh2j+d34pqBGq/RlRfTLV1RD2xXXwtCpDqc/OlDUfAJHRmpM
 CqU5AxQ64EbyWFS8zX8z4ojQ0FyJyAqqS7Vb+2JyKZOHUkfkXp1xGG59Sn7kNNqXWS5pREqHmWh
 aq6ZvCHYN4HeVesp8T7x8CMw=
X-Google-Smtp-Source: AGHT+IFzVnTQj3n+QIgHnz/hXPz29MCKOLBHAPXbLuIFeELI/UwoDe/CHhh1zQ3pSSR6qsSCjVi80w==
X-Received: by 2002:a17:902:d4c3:b0:232:4f8c:1af9 with SMTP id
 d9443c01a7336-2324f8c1c69mr153349335ad.21.1747846444917; 
 Wed, 21 May 2025 09:54:04 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d9443c01a7336-231d4b0d5f0sm94966375ad.102.2025.05.21.09.54.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 May 2025 09:54:04 -0700 (PDT)
Date: Wed, 21 May 2025 09:54:03 -0700
From: Stanislav Fomichev <stfomichev@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, skalluru@marvell.com, manishc@marvell.com,
 andrew+netdev@lunn.ch, michael.chan@broadcom.com,
 pavan.chebbi@broadcom.com, ajit.khaparde@broadcom.com,
 sriharsha.basavapatna@broadcom.com, somnath.kotur@broadcom.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 tariqt@nvidia.com, saeedm@nvidia.com, louis.peens@corigine.com,
 shshaikh@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 ecree.xilinx@gmail.com, horms@kernel.org, dsahern@kernel.org,
 ruanjinjie@huawei.com, mheib@redhat.com,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, oss-drivers@corigine.com,
 linux-net-drivers@amd.com, leon@kernel.org
Message-ID: <aC4FK0fmUoaXYt4k@mini-arch>
References: <20250520203614.2693870-1-stfomichev@gmail.com>
 <20250520203614.2693870-3-stfomichev@gmail.com>
 <20250521073401.67fbd1bc@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250521073401.67fbd1bc@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1747846445; x=1748451245; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=BIQ1Rxc2ZpLERkR7gGmNgkdIGIhV9bfqR3o6mxkItNk=;
 b=gTxhgLd+ujGJOdXFTDUxvQNWqlSRfedvvUnXkiwzeHISO4aQB2N6jKzkCAIGu3uY1k
 t/amXid91M3iHYBFvLKdhZmcR5AUnafNvp2w5iHY2zbrjLftd8wzOPtfOJwmPfuRoTex
 igsplk8TY5RoY8tB8C27SqQl5voGIBsbBQTGij1gal7OkAJMv1oyV11Cy9IXKlTppN20
 pahTks72MLwMCH2wOb0g1pLpdWV/G+iasZJ18UWsqGonfzK9pa5hYUTQEzLUnft/n+ld
 J599jdXlCASBAPAdlS93KYKF2Rut2CqH3kYLgoarjdSnYAygRXFxNf+7jgGZjjRM/eMp
 3Gew==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=gTxhgLd+
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] udp_tunnel: remove
 rtnl_lock dependency
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

On 05/21, Jakub Kicinski wrote:
> On Tue, 20 May 2025 13:36:13 -0700 Stanislav Fomichev wrote:
> > Drivers that are using ops lock and don't depend on RTNL lock
> > still need to manage it because udp_tunnel's RTNL dependency.
> > Introduce new udp_tunnel_nic_lock and use it instead of
> > rtnl_lock. Drop non-UDP_TUNNEL_NIC_INFO_MAY_SLEEP mode from
> > udp_tunnel infra (udp_tunnel_nic_device_sync_work needs to
> > grab udp_tunnel_nic_lock mutex and might sleep).
> 
> There is a netdevsim-based test for this that needs to be fixed up.

Oh, I did not see that one, let me try to find and run it.

> > diff --git a/include/net/udp_tunnel.h b/include/net/udp_tunnel.h
> > index 2df3b8344eb5..7f5537fdf2c9 100644
> > --- a/include/net/udp_tunnel.h
> > +++ b/include/net/udp_tunnel.h
> > @@ -221,19 +221,17 @@ static inline void udp_tunnel_encap_enable(struct sock *sk)
> >  #define UDP_TUNNEL_NIC_MAX_TABLES	4
> >  
> >  enum udp_tunnel_nic_info_flags {
> > -	/* Device callbacks may sleep */
> > -	UDP_TUNNEL_NIC_INFO_MAY_SLEEP	= BIT(0),
> 
> Could we use a different lock for sleeping and non-sleeping drivers?

We can probably do it if we reorder the locks (as you ask/suggest
below). Overall, I'm not sure I understand why we want to have two
paths here. If we can do everything via work queue, why have a separate
path for the non-sleepable callback? (more code -> more bugs)

> > @@ -554,11 +543,11 @@ static void __udp_tunnel_nic_reset_ntf(struct net_device *dev)
> >  	struct udp_tunnel_nic *utn;
> >  	unsigned int i, j;
> >  
> > -	ASSERT_RTNL();
> > +	mutex_lock(&udp_tunnel_nic_lock);
> >  
> >  	utn = dev->udp_tunnel_nic;
> 
> utn and info's lifetimes are tied to the lifetime of the device
> I think their existence can remain protected by the external locks

SG, will move the lock down a bit.

> >  	if (!utn)
> > -		return;
> > +		goto unlock;
> >  
> >  	utn->need_sync = false;
> >  	for (i = 0; i < utn->n_tables; i++)
> 
> > -	rtnl_lock();
> > +	mutex_lock(&udp_tunnel_nic_lock);
> >  	utn->work_pending = 0;
> >  	__udp_tunnel_nic_device_sync(utn->dev, utn);
> >  
> > -	if (utn->need_replay)
> > +	if (utn->need_replay) {
> > +		rtnl_lock();
> >  		udp_tunnel_nic_replay(utn->dev, utn);
> > -	rtnl_unlock();
> > +		rtnl_unlock();
> > +	}
> > +	mutex_unlock(&udp_tunnel_nic_lock);
> >  }
> 
> What's the lock ordering between the new lock and rtnl lock?

From ops-locked, we'll get: ops->tunnel_lock (__udp_tunnel_nic_reset_ntf)
From non-ops locked, we'll get: rtnl->tunnel_lock

I see your point, we need to do rtnl->tunnel_lock here as well.

> BTW the lock could live in utn, right? We can't use the instance
> lock because of sharing, but we could put the lock in utn?

I was thinking that there is some global state besides udp_tunnel_nic,
but I don't see any, will move the lock, thanks!
