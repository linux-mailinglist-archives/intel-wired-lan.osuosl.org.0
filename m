Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC9968E5DC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Feb 2023 03:09:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AEA7840B75;
	Wed,  8 Feb 2023 02:09:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEA7840B75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675822194;
	bh=2gV+Ra+7hrmhQESJyTCPDLCTWPeo6/f/RSChIauDeU0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AT3VAG/gn5atWx9UyEHA9emQvEflihFrbOeEzpxX2qXieZCMqC+D9mt8Dicu3DZ0W
	 xlm12V6mV+zTDEWIKMGd2KVYbsxWHrOP9e1EpGIZpQlsoHCrnSYbZWnU85oNlvLAP1
	 uVqpN7GFFdk7d+3UyJEkVf+5/5scNi0XcPZnMgdo0IGoWu7p7yyCe77ig2bTVI23B8
	 PQMvRH+wiWtmvf4Go7gjgeP+WbQ6Kyk/5vcSvtmo02haFhhUvutcxejK6hg+sKfyM9
	 +Gvd8M8gdAayzMvaPfer0Xejl7NvPKk/ORb2MvBx9Ny+CRWmD2FuFHmMcizdHrrl0o
	 Ef+lp7MKVCeJg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qyUSOV-PwjjM; Wed,  8 Feb 2023 02:09:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AE2E0404A6;
	Wed,  8 Feb 2023 02:09:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE2E0404A6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F1A031BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 02:09:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CA17F81D11
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 02:09:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA17F81D11
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ks3kWxRUDlrB for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Feb 2023 02:09:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F11E481CFE
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F11E481CFE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 02:09:46 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id fj20so110804edb.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 07 Feb 2023 18:09:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=SpgS7vzqoUvjQY9Jf7h1UeSDSMCNGIGVVJBydDqIcdo=;
 b=da71/d8htI17vAabxNFKFgYIZTKLvDMlRqclVdMu+rku53J1X1ubdtPLL9NboMznDW
 ZbUwy0RIHQSt+M2uzRn4JtBM6zzyvGYFrZCAXjC3Ox8HA6hw0mPMAd3d0XrfKM0yh6dG
 ytkRiA0uRl9UmchVMr47HcXNx217bUZufnKOS5I2vuOtJy/m4pz7HPrKsyOwHTSmc2cf
 83WF0p4BfNfDcGJuLyf3msNBROJHOk6gKwFHrg9Zn7VqlQHqFk8vIauPl87ZQ+qqu13M
 EH0d5mLiBn6DwedCjQb00lJWtH9/oGO7F/+CPQlA1a+Tsbobi7LOJaR9OzPyyeDe7Kyf
 z2lA==
X-Gm-Message-State: AO0yUKXdVdYZfUm/4pvU+va6XoP++6anfzZv6AjwAwSE7zdhuL5+ZmFH
 74TsbiXUDiLjSCLeQ0vL4H+WAbboOxmppYorsB4=
X-Google-Smtp-Source: AK7set9t8xvkYsqVc61Bps7bR6RXA1/dv8gBL704YBC5h/c6B/SI52m96vZJbR0FtaE4LydM3TgqvsV7yXxSPoB1t0Y=
X-Received: by 2002:a50:8e1a:0:b0:4aa:b408:7dc1 with SMTP id
 26-20020a508e1a000000b004aab4087dc1mr1471827edw.43.1675822185146; Tue, 07 Feb
 2023 18:09:45 -0800 (PST)
MIME-Version: 1.0
References: <20230204133535.99921-1-kerneljasonxing@gmail.com>
 <20230204133535.99921-2-kerneljasonxing@gmail.com>
 <8d2ec49e-9023-5180-54c4-c09db24d2225@intel.com>
In-Reply-To: <8d2ec49e-9023-5180-54c4-c09db24d2225@intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Wed, 8 Feb 2023 10:09:09 +0800
Message-ID: <CAL+tcoBnwC7=Z-jNv69R2baQyDgYKsvS8SQtRqLePn6ac_+A6A@mail.gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=SpgS7vzqoUvjQY9Jf7h1UeSDSMCNGIGVVJBydDqIcdo=;
 b=mO/tqcWEQCm9hB0QmsatDqD6dE1M+15ufD/mZhTiJZH9Sfgsz9M9tt9XbiIS6RVRzF
 Eqv1EeRwOBVZmHJkF/AqGEB4A+jT5wwyvyDRIz1Le/Fgm7+phnWppwfm1oU+ykO1UzRt
 wX8KvkRiZJiyvLnVC+kuy+wHo/kBvrZpqyVlKSFBdFDUNY42dT7w/GTIqgzkDWhXRTSG
 DbrVe3V80Or9F8lsTtQ1iohICvclSIwAvzAN6Q7wAomWPsc5Hs9OrlgPgUM5CKQRCvRA
 4btD88X89lbAbRROWCTWYxAOSpRQcu2NPoVNXUPVCa+Vz0AGT6hjQjxHde/PSbFOG36u
 Te1g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=mO/tqcWE
Subject: Re: [Intel-wired-lan] [PATCH net v3 1/3] ixgbe: allow to increase
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
Cc: hawk@kernel.org, daniel@iogearbox.net, intel-wired-lan@lists.osuosl.org,
 richardcochran@gmail.com, john.fastabend@gmail.com, jesse.brandeburg@intel.com,
 ast@kernel.org, edumazet@google.com, netdev@vger.kernel.org, kuba@kernel.org,
 bpf@vger.kernel.org, pabeni@redhat.com, davem@davemloft.net,
 linux-kernel@vger.kernel.org, Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Feb 8, 2023 at 3:03 AM Tony Nguyen <anthony.l.nguyen@intel.com> wrote:
>
> On 2/4/2023 5:35 AM, Jason Xing wrote:
> > From: Jason Xing <kernelxing@tencent.com>
>
> ...
>
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > index ab8370c413f3..2c1b6eb60436 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > @@ -6777,6 +6777,18 @@ static void ixgbe_free_all_rx_resources(struct ixgbe_adapter *adapter)
> >                       ixgbe_free_rx_resources(adapter->rx_ring[i]);
> >   }
> >
> > +/**
> > + * ixgbe_max_xdp_frame_size - returns the maximum allowed frame size for XDP
> > + * @adapter - device handle, pointer to adapter
> > + */
>
> Please use ':' instead of '-' for kdoc
>
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:6785: warning: Function
> parameter or member 'adapter' not described in 'ixgbe_max_xdp_frame_size'
>
> i.e.
>
> @adapter: device handle, pointer to adapter

Thanks for correcting the format. Now I understand.

Thanks,
Jason

>
> > +static int ixgbe_max_xdp_frame_size(struct ixgbe_adapter *adapter)
> > +{
> > +     if (PAGE_SIZE >= 8192 || adapter->flags2 & IXGBE_FLAG2_RX_LEGACY)
> > +             return IXGBE_RXBUFFER_2K;
> > +     else
> > +             return IXGBE_RXBUFFER_3K;
> > +}
> > +
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
