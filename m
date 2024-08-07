Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2532094A93B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2024 15:59:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44AA3405FD;
	Wed,  7 Aug 2024 13:59:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6Tyigbzoeatx; Wed,  7 Aug 2024 13:59:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4496A405D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723039156;
	bh=X1flWmxLbYXXUagOIem+EphM7m8Y4jtSRpnH9NCz+jY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SWRb+UFCHlso2/5iNMo/kQvQsfFvn7WnSW9QQA3SojoFcPNh6XKHtJMtqITIIVGsB
	 UFpKy0+BuGCDyrWfZwo2b2eFthKUcn6uWA2AxmousqBDGaOIR8GES7tOW3or/n6FWZ
	 XjxQr5lWGg0eETwtN9cXQdyhKA9FbPjeuq2ji/KVkU9FTEfPGsq/FlUBhthy92fpVE
	 rbwcsIC93IZ0LLjenJ7Zh8+l3QzokfeLjn7kRDi8TnPH6/UWmLOZZI/IAvlN5UuqHw
	 8yos/t96qe4Z5209cARbgA+pFwfyCZ68vrFIno9ziE1bOW9pCFIX6HwV98+LdKMc3+
	 igTnKRFvtLnaQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4496A405D1;
	Wed,  7 Aug 2024 13:59:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 03B4D1BF21A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 13:59:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E20FC40184
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 13:59:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gv7adxEoIYlD for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2024 13:59:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::12d; helo=mail-il1-x12d.google.com;
 envelope-from=manojvishy@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BD8B940267
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BD8B940267
Received: from mail-il1-x12d.google.com (mail-il1-x12d.google.com
 [IPv6:2607:f8b0:4864:20::12d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BD8B940267
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 13:59:12 +0000 (UTC)
Received: by mail-il1-x12d.google.com with SMTP id
 e9e14a558f8ab-397ba4f7387so9004965ab.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 07 Aug 2024 06:59:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723039151; x=1723643951;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=X1flWmxLbYXXUagOIem+EphM7m8Y4jtSRpnH9NCz+jY=;
 b=JZcXDrD3LVCqDxJ8g2wEhwOkGUI+5iyd/WRKXsPdI/9c4044Xf9y0oKb2a8H3Nq/+a
 Gq12Dw9UPnpYf5wmFqP8Oq35HyAh50RF2yZjLVc81Icfr0yTDjjsMAynTvji/aI/pYEV
 nQhr3/0Ecel4HeB5cxY6d7xExo70tikyMFe4GAwbsq1Ol73CqyhWo8VieNEsJvX3+q5g
 v0z3qfLSS45XaPtIQTIpEFzfm2iuL2YoIU5gqSB2ZCOS12TGc5zoeCIGMs3lTRWcbCCU
 7J0TzAYOac8ci5KOK9sM1sJrHqfq1JuXxCi0PuCUg0gjAxvP7jF+rUhB/bAPse5extDJ
 8/Ww==
X-Forwarded-Encrypted: i=1;
 AJvYcCUwktRA4GwupIDGjK9VcoonICbAtnXQuJFOUtd4BvsBzvvkPxzKmHKegXfErHit99/K7J5ZZCUSyjkLJ3AaM4c=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwT8qQhpCqPWcybWK4uivCXb0ju7MIov3kZcib4hNjxbVGYM8l5
 B+OQwT3JZEzlCqFp7iYDf+CUVMTIEfrlhd9hsEPeMDnld2jOWkcn9N3q3ze3XHTxNK8A+sKYGAw
 DNUrOLtxA7xYU7606STdviHfGMq87JKYBGqrf
X-Google-Smtp-Source: AGHT+IHXwhuBIWXAr9+rqAVj9ybqWN6IUBNOCPPWvXr/K0p1tiWm4jxxDzzxlTYTXdIzQQUo7ABUBNWy4cb5eb7S6WQ=
X-Received: by 2002:a92:6610:0:b0:399:2c60:9951 with SMTP id
 e9e14a558f8ab-39b1fbf5c86mr195350285ab.20.1723039151511; Wed, 07 Aug 2024
 06:59:11 -0700 (PDT)
MIME-Version: 1.0
References: <20240803182548.2932270-1-manojvishy@google.com>
 <20240805182159.3547482-1-manojvishy@google.com>
 <04affbd5-828a-4327-8b84-8767c1c139f1@intel.com>
In-Reply-To: <04affbd5-828a-4327-8b84-8767c1c139f1@intel.com>
From: Manoj Vishwanathan <manojvishy@google.com>
Date: Wed, 7 Aug 2024 06:58:59 -0700
Message-ID: <CA+M8utN7FbwMF5QN8O0a0Qnd3ykQwq7O4QkHMVEaBj2jE9BEYw@mail.gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1723039151; x=1723643951; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=X1flWmxLbYXXUagOIem+EphM7m8Y4jtSRpnH9NCz+jY=;
 b=eo3xcOueq2IPD9ztwinJZSwt9oeJ9j6J2g+CmIDYOyHIa4SKMU0UJ6LN7dsIYZKSum
 VcVlapKqzc3haSbOxZ2Pql/h/OXzOiPBSd+znhZqvpKWRljs7JQ9BHBQ3O6rZIvrGyNK
 Am3lL3H1Yskm51lndB9O3/f5ZHhOUQq27uAhx5O3/KWh3VPEkQ9wPqZ6PwECHsQ5KMhU
 yNkUZyq5n1bZkEQMdlE+x9tBwAn3mh2orHX3t3a1R+oAwWSfJB6LNOKmIxt+HkCXLEz2
 4o+BiRG424z8D1qVeph39wguDMvSs7P1/Zzd5eYYp2Ccc5wZANUm+hPjHy3jMi//HRI4
 +F7A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=eo3xcOue
Subject: Re: [Intel-wired-lan] [PATCH] [PATCH iwl-net] idpf: Acquire the
 lock before accessing the xn->salt
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Decotigny <decot@google.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thanks Przemek & Olek for your quick feedback and responses.
Hi Olek,
I can add more details about the issue we faced in the commit message.
The bug we had here was a virtchnl delay leading to the xn->salt
mismatch. This could be due to several factors including default CPU
bounded kworker workqueue for virtchnl message processing being
starved by aggressive userspace load causing the virtchnl to be
delayed. While debugging this issue, this locking order  appeared like
a potential issue, hence the change was made.
But, this change is more a clean up we felt based on concurrent access
to the virtchnl transaction struct and does not fix the issue. This is
more of the patch to do the right thing before we access the "xn".
I wanted to start with a first patch to the community for acceptance
followed by a series of other patches that are general clean up or
improvements to IDPF in general. Will follow with with [PATCH v3]

Thanks,
Manoj

On Wed, Aug 7, 2024 at 4:05=E2=80=AFAM Alexander Lobakin
<aleksander.lobakin@intel.com> wrote:
>
> From: Manoj Vishwanathan <manojvishy@google.com>
> Date: Mon,  5 Aug 2024 18:21:59 +0000
>
> > The transaction salt was being accessed before acquiring the
> > idpf_vc_xn_lock when idpf has to forward the virtchnl reply.
>
> You need to explain in details here what issue you have faced due to
> that, how to reproduce it and how this fix does help.
> Otherwise, it's impossible to suggest what is happening and how to test
> whether the fix is correct.
>
> >
> > Fixes: 34c21fa894a1a (=E2=80=9Cidpf: implement virtchnl transaction man=
ager=E2=80=9D)
> > Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>
> > ---
> >  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/=
net/ethernet/intel/idpf/idpf_virtchnl.c
> > index 70986e12da28..30eec674d594 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> > @@ -612,14 +612,15 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *ada=
pter,
> >               return -EINVAL;
> >       }
> >       xn =3D &adapter->vcxn_mngr->ring[xn_idx];
> > +     idpf_vc_xn_lock(xn);
> >       salt =3D FIELD_GET(IDPF_VC_XN_SALT_M, msg_info);
>
> The lock can be taken here after the FIELD_GET(), not before, to reduce
> the critical/locked section execution time.
>
> >       if (xn->salt !=3D salt) {
> >               dev_err_ratelimited(&adapter->pdev->dev, "Transaction sal=
t does not match (%02x !=3D %02x)\n",
> >                                   xn->salt, salt);
> > +             idpf_vc_xn_unlock(xn);
> >               return -EINVAL;
> >       }
> >
> > -     idpf_vc_xn_lock(xn);
> >       switch (xn->state) {
> >       case IDPF_VC_XN_WAITING:
> >               /* success */
>
> Thanks,
> Olek
