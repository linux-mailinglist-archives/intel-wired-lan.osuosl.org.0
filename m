Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C4668F78E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Feb 2023 19:57:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 47A1040C82;
	Wed,  8 Feb 2023 18:57:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 47A1040C82
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675882653;
	bh=2i5aKJ8JkWrMt0uVSQ9OXyV9dbwryk+56zWQ7zMrUmU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1tV6Xmn8Q/HkjRpJziHePNOQObFIMZYUOHXjKW92hMG/ax80e29EkKt6wF82nN6+G
	 /ZiAnS4sZGkUeRE2nS8I8Lkyn0vCBQJNbRNmRI0cbaGj8mNtHI3HLkzFLgFuxCbff/
	 QKhlJ9wkMlkYTkpejZOwO2sjiJQGniL77+FSRY4IFc4KtI1gcWKI3j1RYHKKeLqmwk
	 Ji/dhhVa5GBYATEy5rmY6umUINRbWdO6vFH0ziRIKSm1DhL+Mp1+U1O94efquRNfmt
	 +QhXM/lQqjfDofW+FaC1DtZa3yzZb5UWvRbg5h3WZYobyYuYfoGm0KSPIDdGWWRAzh
	 oH3LiEhGDMnKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G7vc6BxAG03T; Wed,  8 Feb 2023 18:57:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D377402D7;
	Wed,  8 Feb 2023 18:57:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D377402D7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B258B1BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 18:57:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8A9FD82029
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 18:57:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A9FD82029
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gkF5VK3eiZxf for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Feb 2023 18:57:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C0FB982024
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com
 [IPv6:2607:f8b0:4864:20::632])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C0FB982024
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 18:57:25 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id z1so20387206plg.6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Feb 2023 10:57:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=j3gXZ1TblZrGsoecGG9XeywAEV6+Fe6bvuuVedUahH8=;
 b=N3cJtcstxXMAl0FzzQ2VPk6CeiWs/VTOqnHKcFWeSrKb4//MXY9QqdI+6yJcPs5Nii
 scuGtu47DBgewT8sW+fw3VEsqdB2OCOoVFnfeIqxddxDZjSQoKXYsYkmb0vn570mPa2L
 jB46W3ixpzQqSx2/4/fu+4LKNT1XuAxoRYGHTB1bhvqYOXQATwLH6S/X6sFCL4en/eJM
 GfftmUoEZyeo0O7M5UidAHkHr+AqRm8IylaFtvGwDqlWoaEXNmebhq7yN7CmDROKDiPL
 HguJsbhNd7+DUqdcrRKk8N+kVLm2LX1p+019RcwhaHwkDHxOzyiBM9N+sA7CCMBKOp6W
 Qrbw==
X-Gm-Message-State: AO0yUKVJS8qcCbyUdZ6n+DsbuNIUSUAMEsShV8YQj87kb5mwNGlcyiXF
 12dv7MzvSBjjhNFrlXfS21m15n9f/pw=
X-Google-Smtp-Source: AK7set/JEdwxTmR+vM4phCpUX0I7186qDKLwYZqemcSS8n3IUs9nhVfnZaIAoMSGhK7Kzg70DyYy+w==
X-Received: by 2002:a17:902:f541:b0:199:4fb1:f543 with SMTP id
 h1-20020a170902f54100b001994fb1f543mr2502399plf.57.1675882644992; 
 Wed, 08 Feb 2023 10:57:24 -0800 (PST)
Received: from [192.168.0.128] ([98.97.119.54])
 by smtp.googlemail.com with ESMTPSA id
 i5-20020a170902eb4500b00199204c94c9sm5864597pli.57.2023.02.08.10.57.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Feb 2023 10:57:24 -0800 (PST)
Message-ID: <6ded592b01ba223bce241d6ff3073246cb5dd18b.camel@gmail.com>
From: Alexander H Duyck <alexander.duyck@gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Wed, 08 Feb 2023 10:57:22 -0800
In-Reply-To: <Y+PNjcrSxKc0vD3s@boxer>
References: <20230208024333.10465-1-kerneljasonxing@gmail.com>
 <2bfcd7d92a6971416f58d9aac6e74840d5ae240a.camel@gmail.com>
 <Y+PNjcrSxKc0vD3s@boxer>
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36) 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=j3gXZ1TblZrGsoecGG9XeywAEV6+Fe6bvuuVedUahH8=;
 b=CbuxyoapQWbPUt7ePWLhcFTwPS2doETLWNp2qiwx70MznD3yTy9saa790VO9PQy1nc
 xeEN43TDA9yRMc2xe6ojUqrDhXj/hnqvJGYaRAtdbBaQ8pyISKWxlMMIFxFHkqyEIaqG
 Jq3e8O6tj29G/t+ljp4cLLrPObbjqOqzwAF912XaQ8W9Z4kWg/UIlpdvl2ggco3Zsj2b
 X0Bn5rIWAhpT8WX1YGP7Ev7+B0U9gGCrRRDOsLsxRrGH4/f45Mq8u7X0O68btRm+KB1W
 8ysZgt8JUXG6G8NS+rFqr/bDrnOBrbQ60EeKqYfGaK8vQaTqUR6qrjASsoVmab1CbaMo
 ycXA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Cbuxyoap
Subject: Re: [Intel-wired-lan] [PATCH net v4 1/3] ixgbe: allow to increase
 MTU to 3K with XDP enabled
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
Cc: daniel@iogearbox.net, Jason Xing <kerneljasonxing@gmail.com>,
 intel-wired-lan@lists.osuosl.org, richardcochran@gmail.com,
 john.fastabend@gmail.com, jesse.brandeburg@intel.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com,
 Jason Xing <kernelxing@tencent.com>, netdev@vger.kernel.org, kuba@kernel.org,
 bpf@vger.kernel.org, pabeni@redhat.com, davem@davemloft.net,
 linux-kernel@vger.kernel.org, hawk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2023-02-08 at 17:27 +0100, Maciej Fijalkowski wrote:
> On Wed, Feb 08, 2023 at 07:37:57AM -0800, Alexander H Duyck wrote:
> > On Wed, 2023-02-08 at 10:43 +0800, Jason Xing wrote:
> > > From: Jason Xing <kernelxing@tencent.com>
> > > 
> > > Recently I encountered one case where I cannot increase the MTU size
> > > directly from 1500 to a much bigger value with XDP enabled if the
> > > server is equipped with IXGBE card, which happened on thousands of
> > > servers in production environment. After appling the current patch,
> > > we can set the maximum MTU size to 3K.
> > > 
> > > This patch follows the behavior of changing MTU as i40e/ice does.
> > > 
> > > Referrences:
> > > [1] commit 23b44513c3e6 ("ice: allow 3k MTU for XDP")
> > > [2] commit 0c8493d90b6b ("i40e: add XDP support for pass and drop actions")
> > > 
> > > Fixes: fabf1bce103a ("ixgbe: Prevent unsupported configurations with XDP")
> > > Signed-off-by: Jason Xing <kernelxing@tencent.com>
> > 
> > This is based on the broken premise that w/ XDP we are using a 4K page.
> > The ixgbe driver isn't using page pool and is therefore running on
> > different limitations. The ixgbe driver is only using 2K slices of the
> > 4K page. In addition that is reduced to 1.5K to allow for headroom and
> > the shared info in the buffer.
> > 
> > Currently the only way a 3K buffer would work is if FCoE is enabled and
> > in that case the driver is using order 1 pages and still using the
> > split buffer approach.
> 
> Hey Alex, interesting, we based this on the following logic from
> ixgbe_set_rx_buffer_len() I guess:
> 
> #if (PAGE_SIZE < 8192)
> 		if (adapter->flags2 & IXGBE_FLAG2_RSC_ENABLED)
> 			set_bit(__IXGBE_RX_3K_BUFFER, &rx_ring->state);
> 
> 		if (IXGBE_2K_TOO_SMALL_WITH_PADDING ||
> 		    (max_frame > (ETH_FRAME_LEN + ETH_FCS_LEN)))
> 			set_bit(__IXGBE_RX_3K_BUFFER, &rx_ring->state);
> #endif
> 
> so we assumed that ixgbe is no different than i40e/ice in these terms, but
> we ignored whole overhead of LRO/RSC that ixgbe carries.

If XDP is already enabled the LRO/RSC cannot be enabled. I think that
is already disabled if we have XDP enabled.

> I am not actively working with ixgbe but I know that you were the main dev
> of it, so without premature dive into the datasheet and codebase, are you
> really sure that 3k mtu for XDP is a no go?

I think I mixed up fm10k and ixgbe, either that or I was thinking of
the legacy setup. They all kind of blur together as I had worked on
pretty much all the Intel drivers up to i40e the last time I was
updating them for all the Rx path stuff. :)

So if I am reading things right the issue is that if XDP is enabled you
cannot set a 3K MTU, but if you set the 3K MTU first then you can
enable XDP after the fact right?

Looking it over again after re-reading the code this looks good to me.

Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>





_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
