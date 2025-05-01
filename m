Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A839BAA6192
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 May 2025 18:52:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 111FB41793;
	Thu,  1 May 2025 16:52:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yQ9us6RUx4N3; Thu,  1 May 2025 16:52:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B4714159D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746118324;
	bh=a2+qh8FDDcMl0mU8xoMNh8k3pyM8a4zq+RRhfHleKP0=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tYpwumohfbVvp0dhe2kMVcJhIGGiVFSiN8+79izsuhRaVYP+ktMpyC11/HB+eb09g
	 WRWHgtoH4e5mh7bOOHiG83j8A1UlfiIm9CfPKFpC6oCzqTE/TZPhT8+TdNafQh11ok
	 PlhTch84vxuohiiNaizHT9E+bPfIowI73K+fy9ywNGk/VvtoVgBNv3wGwQbw15cVT2
	 qhqvuEYOhpLHulFtm0ht9RoEy6sHreo4OEQwqTVKWUiSWtk3a04dP3D8e1bEEsFO0t
	 3jDqRDRp6wbAoL3OCFn5T6LWrxfbBPkNPyPqEOLLarVYBJjawnJNQzsoxqu9jgNqDa
	 2qNxx6yWjtaUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B4714159D;
	Thu,  1 May 2025 16:52:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A459622A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 16:52:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 897FE4044A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 16:52:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8DerT3vc1g1s for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 May 2025 16:52:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::f2c; helo=mail-qv1-xf2c.google.com;
 envelope-from=brianvv@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C175040176
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C175040176
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com
 [IPv6:2607:f8b0:4864:20::f2c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C175040176
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 16:52:01 +0000 (UTC)
Received: by mail-qv1-xf2c.google.com with SMTP id
 6a1803df08f44-6ecfa716ec1so14931446d6.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 01 May 2025 09:52:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746118320; x=1746723120;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=a2+qh8FDDcMl0mU8xoMNh8k3pyM8a4zq+RRhfHleKP0=;
 b=lrAtwqtmv20xwGSYSEQ6xvjrvpPDEmQUQC6Ep37X0c2NASGnX2xYxT7s4beZTEW7p9
 x014VkkqcxwJA+MQFgDHv7xPHjUEVbNbjXE1njRpcYoMFPp0xiPuxKy7LoGLSSP67E5J
 3c6yI2zbnw+PBNwpeu2jrIHzms1nQd9aHrTznS50vtUDZXxX1bz3t78ErSEOfzcyaFrs
 tHaQbUGk5OBuBH6cUe9BPBuydxKZo9wTxunjezYadVDDVYizFo4azttH1z7gET4/SqmQ
 tdB0MlX42kPAxFVqXBcVOOsyhaBXHy4/Sl5a+33/QIRNrjGCXmG0R7HeMaFuhsgGby/R
 GP9Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCWIJVaqCD/0QXKtghot0ektMM5NbL2bRem0qPpuCTylqx5jBy0xFqmBkwwF/tmlxaOw1MvcpPBZAltHOPDMrHU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwrMj2pPEVcKa9osEJYAYHqHDAfSrSlLN9FeIJVkPHBBc+VH/Ho
 +bmTaOvBLMg0fCx3IowyGT+d0vshbEhJ1pyyqRgYdl3hgnmh6oTrJnHjBeHcOQuA5yPt5rrdb6j
 PmnBTimeAcNFI63QIRPESfm8dPeRYNUvirzzE
X-Gm-Gg: ASbGncvYQm8pflDjPIYIUFpcrFJFHIReywxbSd1kf/xLbuKoS8vsj6pAVTypIpvqovu
 yi7yLb1mQndrfhALxG0ZvQ61htndYo4M0/N8cWdTuIN50FwGS6/cYaERVj2ma9T3ix7i7yXC1lY
 kjQnWw9pHZT93Xm0nvVxbAdDI=
X-Google-Smtp-Source: AGHT+IHwKH7bRC/TqD5cR/AUaiV/3bOZWGDCYig2ZUzkUVAm+8UnykCncFDQcJwcNffRAeiBD6cFzN1kckSuD7KOAbs=
X-Received: by 2002:a05:6214:2483:b0:6e6:6103:f708 with SMTP id
 6a1803df08f44-6f4fe131a89mr124885996d6.38.1746118320270; Thu, 01 May 2025
 09:52:00 -0700 (PDT)
MIME-Version: 1.0
References: <20250428195532.1590892-1-brianvv@google.com>
 <20250501151616.GA3339421@horms.kernel.org>
In-Reply-To: <20250501151616.GA3339421@horms.kernel.org>
From: Brian Vazquez <brianvv@google.com>
Date: Thu, 1 May 2025 12:51:48 -0400
X-Gm-Features: ATxdqUEOGH-j1CFr8QL7QMirjvKCDO3-hjrj3ELuS3nArE1V-dBcyC9tmga7-Ek
Message-ID: <CAMzD94SNJe3QcLgNCPtVqDa69B7qcghcBkSOPWzV43d_XAeYuQ@mail.gmail.com>
To: Simon Horman <horms@kernel.org>
Cc: Brian Vazquez <brianvv.kernel@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, 
 intel-wired-lan@lists.osuosl.org, David Decotigny <decot@google.com>, 
 Anjali Singhai <anjali.singhai@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 emil.s.tantilov@intel.com, Josh Hay <joshua.a.hay@intel.com>, 
 Luigi Rizzo <lrizzo@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1746118320; x=1746723120; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=a2+qh8FDDcMl0mU8xoMNh8k3pyM8a4zq+RRhfHleKP0=;
 b=l4TYzsvLgT04lFKpqBKqOqL6bxJtKzaaNrQwpbkgZbc0yBO1NuNihr7WfVifrRknDc
 Oe9uZTDewUWWJZS9rrDxZyP7Y+FTSxWN3veWTjwoyvDMHH5y8gNRwg2xbS8iiqDHD7Zt
 bupueXBglZZnusb570/QDJ4AsVA79VjTJeTYTMMCqFbEilIeIvk1UdLKTwMnnRTeRI+0
 1Bkwzz5OcVZQVml39q5zMNPcyxme0u/n96yk98Ln577UL8pTy5+tQ4OB+7pSkdVyVeN/
 v4Xc+XnFY6ppKiWu1iAnSgk9FsyvUKICxnTjAtK2Ky4nKgLzgCwSe0u9vWpVk4EGHFRe
 /ZbA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=l4TYzsvL
Subject: Re: [Intel-wired-lan] [iwl-net PATCH v2] idpf: fix a race in txq
 wakeup
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

On Thu, May 1, 2025 at 11:16=E2=80=AFAM Simon Horman <horms@kernel.org> wro=
te:
>
> On Mon, Apr 28, 2025 at 07:55:32PM +0000, Brian Vazquez wrote:
> > Add a helper function to correctly handle the lockless
> > synchronization when the sender needs to block. The paradigm is
> >
> >         if (no_resources()) {
> >                 stop_queue();
> >                 barrier();
> >                 if (!no_resources())
> >                         restart_queue();
> >         }
> >
> > netif_subqueue_maybe_stop already handles the paradigm correctly, but
> > the code split the check for resources in three parts, the first one
> > (descriptors) followed the protocol, but the other two (completions and
> > tx_buf) were only doing the first part and so race prone.
> >
> > Luckily netif_subqueue_maybe_stop macro already allows you to use a
> > function to evaluate the start/stop conditions so the fix only requires
> > the right helper function to evaluate all the conditions at once.
> >
> > The patch removes idpf_tx_maybe_stop_common since it's no longer needed
> > and instead adjusts separately the conditions for singleq and splitq.
> >
> > Note that idpf_rx_buf_hw_update doesn't need to check for resources
> > since that will be covered in idpf_tx_splitq_frame.
>
> Should the above read idpf_tx_buf_hw_update() rather than
> idpf_rx_buf_hw_update()?

Nice catch, that's a typo indeed.

>
> If so, I see that this is true when idpf_tx_buf_hw_update() is called fro=
m
> idpf_tx_singleq_frame(). But is a check required in the case where
> idpf_rx_buf_hw_update() is called by idpf_tx_singleq_map()?

No, the check is not required. The call is at the end of
idpf_tx_singleq_map at that point you already checked for resources
and you're about to send the pkt.

>
> >
> > To reproduce:
> >
> > Reduce the threshold for pending completions to increase the chances of
> > hitting this pause by changing your kernel:
> >
> > drivers/net/ethernet/intel/idpf/idpf_txrx.h
> >
> > -#define IDPF_TX_COMPLQ_OVERFLOW_THRESH(txcq)   ((txcq)->desc_count >> =
1)
> > +#define IDPF_TX_COMPLQ_OVERFLOW_THRESH(txcq)   ((txcq)->desc_count >> =
4)
> >
> > Use pktgen to force the host to push small pkts very aggressively:
> >
> > ./pktgen_sample02_multiqueue.sh -i eth1 -s 100 -6 -d $IP -m $MAC \
> >   -p 10000-10000 -t 16 -n 0 -v -x -c 64
> >
> > Fixes: 6818c4d5b3c2 ("idpf: add splitq start_xmit")
> > Signed-off-by: Josh Hay <joshua.a.hay@intel.com>
> > Signed-off-by: Brian Vazquez <brianvv@google.com>
> > Signed-off-by: Luigi Rizzo <lrizzo@google.com>
>
> ...
