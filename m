Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCACB11467
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Jul 2025 01:18:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE3BC41B35;
	Thu, 24 Jul 2025 23:18:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ppaoQEyJHWNg; Thu, 24 Jul 2025 23:18:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D7F54149C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753399131;
	bh=dEKAc56BHehGNaIvvH5Q0MuxTZULsqolyYCt/3SX6+s=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OhjFdhsSiphQ952u2aTKY9nuYolZOsmJo4UI9CwrlFoYSvca9hM0+4BXtiExtDCQn
	 uIp/wF70Fs6/fz9ItJtBfCmy2ypW8EGicjvJN1bMh3oK9TypAkJIrddRhXqQozf6GR
	 JM95/buOQDL5Hgbm9tREHFX3vhFAcAZxYBoX+TNS5iIhXmr5Jn2LA0tFy8tQFnUxsi
	 wufNi/NA/masOFLz47aBUWTfvPOsgHnqxeUdIbdQXcd5PJEQQ6EIP4lf3FxUT0zNZ4
	 DGZu0XVAJ6t5Y5WCOUwPubb2I6NkLxfhRdqIS2sJhRlDO7Yjt+JGbRCYeIIkP8TARn
	 Y+PU6S18XecTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D7F54149C;
	Thu, 24 Jul 2025 23:18:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 903FE115
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 23:18:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 76C0140081
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 23:18:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vkoRdImOJO55 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jul 2025 23:18:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::129; helo=mail-il1-x129.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A7E324002C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A7E324002C
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com
 [IPv6:2607:f8b0:4864:20::129])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A7E324002C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 23:18:48 +0000 (UTC)
Received: by mail-il1-x129.google.com with SMTP id
 e9e14a558f8ab-3e28cf0f464so7364185ab.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 16:18:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753399127; x=1754003927;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=dEKAc56BHehGNaIvvH5Q0MuxTZULsqolyYCt/3SX6+s=;
 b=DRZPw3mWp0a+ZUPh70GNdC8B+4loMHlVv8PFIB8kMDmLKfsnUqg9JTAuKojErHHuCn
 GxEpDdkCRU0FcZGQT7o6SbQBlqIAYiXnJ0N7yUl4HWH6Rez+jEjW1Q+Hg1zDCvABdSDP
 D+d3HzPfotTCoff4fZFnWm88NxhHMim41kFwytXwpsz3Td0vjFbfUNA6+2WVEKwxC2g2
 Z+GygVwn8hHEe6M3EFJ3ERwlJ51HT0aGLfEc5/HqPXBBVc5ZpNHpJMEr8QsNpQOukmGT
 G2eX6IcSl3TPfSNcGED8B+UJaniZMEN7M2NPiu7TNrJHe/WVUE3yHGfyuRr1Jk/scbLi
 VALw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX7JcSZz/ERLCohjndRAdvbwKXnWndX0xDdSEu8Yi+v07IZAXyv00vCT1oSXN7MZQe0ztjQHi8HeMVrqYKXqe0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwsXwPfW3eLiptN7gCjRwtLCMZCa5VgUPQSGfjc7TMWypHalukr
 TRWFHluonNVybh4hhMXBhllm3vI5v+EY7YXtcN5FAo8VQk+aLuk1GA/8BZgWBmjTF7jQjs21jpD
 dNA+bIJV7qqevAbp3zlnk2oaDx4DP8t4=
X-Gm-Gg: ASbGncuS7pBZIGGULFgW68csyfe14zpBHulPOuTEmreI7mymubOA1VeymxMCT2IwdJF
 MKhHuplakrX03yclAteSuC86CbCsOsa1GTP5F7h6GaA/mLzcvHcVLCFaRZmAm6wgHF6nhRQOT6m
 9jUrcz8/0waUNwptHuVi7YRw7Y03p7yQJi1GrY26ipZJi2TWhEneKBXdpvH+EnSS2aNfO+x8y0d
 8cozuU=
X-Google-Smtp-Source: AGHT+IE0Ki4xgb+U/YhxHbKgURvDFOGwE5ntgi5AIuY7AfeNBXyvCSHBjR/Xh9dRk3z7+RqsfjZZEVPXHpUj/qN1ApQ=
X-Received: by 2002:a05:6e02:156d:b0:3e2:aadb:2be8 with SMTP id
 e9e14a558f8ab-3e3355b0625mr143710355ab.15.1753399127377; Thu, 24 Jul 2025
 16:18:47 -0700 (PDT)
MIME-Version: 1.0
References: <20250720091123.474-1-kerneljasonxing@gmail.com>
 <20250720091123.474-3-kerneljasonxing@gmail.com>
 <6ecfc595-04a8-42f4-b86d-fdaec793d4db@intel.com>
In-Reply-To: <6ecfc595-04a8-42f4-b86d-fdaec793d4db@intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Fri, 25 Jul 2025 07:18:11 +0800
X-Gm-Features: Ac12FXxcq3Vo79vPuWCMbML6IqnEs97yfg9Pzfq8kprmxnIU1JjJvwbLPY4pIyY
Message-ID: <CAL+tcoBTejWSmv6XTpFqvgy4Qk4c39-OJm8Vqcwraa0cAST=sw@mail.gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net, 
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org, 
 magnus.karlsson@intel.com, maciej.fijalkowski@intel.com, 
 jonathan.lemon@gmail.com, sdf@fomichev.me, ast@kernel.org, 
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com, 
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753399127; x=1754003927; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=dEKAc56BHehGNaIvvH5Q0MuxTZULsqolyYCt/3SX6+s=;
 b=VbQgg2GtqtJyhuKjAOdeoMSfWI0wlEMZ1XjcaTC+7WOPqQcepd3wJ0az+BJ+n+nvsg
 Rzgi/guUepDGNlzdEAxPSBCcsBI5f5HqcG7a1rnjFCe3143bTdD9y4HvSqze+mEU+SOp
 9tvFI04vHl/X9SZj1mhNEzlc97jGli2skqB6J2CadxNd+qP6FvD+akDbl2GRnYz77dFX
 oo/pWgpFVZyU/sP9A3bTzBB4wp+DkrURFv2M0a3Is7o4v5GxdC73wHd6CMnVg+qOsxXw
 DD8jBmvnUji+V9/E8pr1BYZVl/TVY0FReu7C0AuhnG00H8Zf1nCCnmDhm/Qbc4/Pzaki
 6m7A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=VbQgg2Gt
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/5] ixgbe: xsk: resolve the
 underflow of budget in ixgbe_xmit_zc
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

Hi Tony,

On Fri, Jul 25, 2025 at 4:21=E2=80=AFAM Tony Nguyen <anthony.l.nguyen@intel=
.com> wrote:
>
>
>
> On 7/20/2025 2:11 AM, Jason Xing wrote:
> > From: Jason Xing <kernelxing@tencent.com>
> >
> > Resolve the budget underflow which leads to returning true in ixgbe_xmi=
t_zc
> > even when the budget of descs are thoroughly consumed.
> >
> > Before this patch, when the budget is decreased to zero and finishes
> > sending the last allowed desc in ixgbe_xmit_zc, it will always turn bac=
k
> > and enter into the while() statement to see if it should keep processin=
g
> > packets, but in the meantime it unexpectedly decreases the value again =
to
> > 'unsigned int (0--)', namely, UINT_MAX. Finally, the ixgbe_xmit_zc retu=
rns
> > true, showing 'we complete cleaning the budget'. That also means
> > 'clean_complete =3D true' in ixgbe_poll.
> >
> > The true theory behind this is if that budget number of descs are consu=
med,
> > it implies that we might have more descs to be done. So we should retur=
n
> > false in ixgbe_xmit_zc to tell napi poll to find another chance to star=
t
> > polling to handle the rest of descs. On the contrary, returning true he=
re
> > means job done and we know we finish all the possible descs this time a=
nd
> > we don't intend to start a new napi poll.
> >
> > It is apparently against our expectations. Please also see how
> > ixgbe_clean_tx_irq() handles the problem: it uses do..while() statement
> > to make sure the budget can be decreased to zero at most and the underf=
low
> > never happens.
> >
> > Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
>
> Hi Jason,
>
> Seems like this one should be split off and go to iwl-net/net like the
> other similar ones [1]? Also, some of the updates made to the other
> series apply here as well?

The other three patches are built on top of this one. If without the
patch, the whole series will be warned because of build failure. I was
thinking we could backport this patch that will be backported to the
net branch after the whole series goes into the net-next branch.

Or you expect me to cook four patches without this one first so that
you could easily cherry pick this one then without building conflict?

>
> Thanks,
> Tony
>
> [1]
> https://lore.kernel.org/netdev/20250723142327.85187-1-kerneljasonxing@gma=
il.com/

Regarding this one, should I send a v4 version with the current patch
included? And target [iwl-net/net] explicitly as well?

I'm not sure if I follow you. Could you instruct me on how to proceed
next in detail?

Thanks,
Jason
