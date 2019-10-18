Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA76DCF3D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2019 21:23:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C4AC887EB5;
	Fri, 18 Oct 2019 19:23:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DLoim4FZggp8; Fri, 18 Oct 2019 19:23:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 056B487E84;
	Fri, 18 Oct 2019 19:23:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 06E6D1BF592
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2019 19:23:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D46942107F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2019 19:23:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LBI0GtGeL4tB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2019 19:23:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by silver.osuosl.org (Postfix) with ESMTPS id E133920356
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2019 19:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571426578;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=29hCFP1JlKBOETA3Lr+t9Sz32IHHg4kMgOJgEmAIrho=;
 b=EIbssng6w/EOkteBlG1hUTpauMzOEhXK98d6hACXE2tGej4yCTRrEdP+ePVutEPpxLbrHv
 AV6ZmLbVtz9pCEb6tt1ASuvP/wsNGw911r+VT5WVAAQlFiYyU373ISvd4h9sNrLInH//oP
 Bb0C8+LgWnoAwfdmMm1BmjjziOB5Kg0=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-342-0EYthgWvORG3KfvfV0d_GQ-1; Fri, 18 Oct 2019 15:22:56 -0400
Received: by mail-lf1-f72.google.com with SMTP id a14so1429111lfk.18
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2019 12:22:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=hngD5ZAMeF3Z9iaXLd53XFrcXGDhaXzMrnEYrWjbKE0=;
 b=ruF8JxLD4jTHCqrKwGLPle51fKi757FQHLqg91dABiAFP1/sCvxELcWzN8TD2utuEu
 3dqzyA28vmo2YIz5XidJQeo04D5vBO1+i+H6KHMY276+x88QiUpluCGCzS2ajOfllDAg
 o+Od8e09sBbGkIXkkVDE/ONqjD9n9vPx4XN+yLKUXY3xtcgAvobOzUDvBehPk5dP1+6z
 Gn+cfqZhRXQapqouFR0pJtHVaSbSKyHTeL/YvjMjAPSGtjUvPltM5kTb4MyX0MkTWcfB
 6cacce2POsHQbzVZ4FuPU5DSQinj/hRJSYBJ8m2mRseZU/wWN82SdV4Vi+j1r0JS/mQe
 NDGQ==
X-Gm-Message-State: APjAAAUahFs6Xfzj+lBtpdBw8y/Y9RF+srBGh7ZfkH0nEIpvRR47rMiQ
 uTCI7r/dqwOYsa1UTk8DfknWiKbjX5/ZI2WJn6TmIQwJ80gva7qulmzPKONO9/j98s5Ih3Ql87C
 xq0akPNZcAMCwt4trSozOTqKhM2tFww==
X-Received: by 2002:a2e:87ca:: with SMTP id v10mr7056120ljj.43.1571426574976; 
 Fri, 18 Oct 2019 12:22:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxXlFL39sjpCAtVlU2+qG/v+p6YXu7+BCTxgb6MPCePhJDyB/5/qDP6U117yiiq5qpaF7Whdw==
X-Received: by 2002:a2e:87ca:: with SMTP id v10mr7056099ljj.43.1571426574683; 
 Fri, 18 Oct 2019 12:22:54 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id f28sm2933142lfp.28.2019.10.18.12.22.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 12:22:53 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id F30731804B6; Fri, 18 Oct 2019 21:22:52 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: "Samudrala\, Sridhar" <sridhar.samudrala@intel.com>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>
In-Reply-To: <acf69635-5868-f876-f7da-08954d1f690e@intel.com>
References: <1570515415-45593-1-git-send-email-sridhar.samudrala@intel.com>
 <1570515415-45593-3-git-send-email-sridhar.samudrala@intel.com>
 <CAADnVQ+XxmvY0cs8MYriMMd7=2TSEm4zCtB+fs2vkwdUY6UgAQ@mail.gmail.com>
 <3ED8E928C4210A4289A677D2FEB48235140134CE@fmsmsx111.amr.corp.intel.com>
 <2bc26acd-170d-634e-c066-71557b2b3e4f@intel.com>
 <CAADnVQ+qq6RLMjh5bB1ugXP5p7vYM2F1fLGFQ2pL=2vhCLiBdA@mail.gmail.com>
 <2032d58c-916f-d26a-db14-bd5ba6ad92b9@intel.com>
 <CAADnVQ+CH1YM52+LfybLS+NK16414Exrvk1QpYOF=HaT4KRaxg@mail.gmail.com>
 <acf69635-5868-f876-f7da-08954d1f690e@intel.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 18 Oct 2019 21:22:52 +0200
Message-ID: <87wod1dfjn.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: 0EYthgWvORG3KfvfV0d_GQ-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Intel-wired-lan] FW: [PATCH bpf-next 2/4] xsk: allow AF_XDP
 sockets to receive packets directly from a queue
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 Netdev <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, "Herbert,
 Tom" <tom.herbert@intel.com>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 =?utf-8?B?QmrDtnJu?= =?utf-8?B?IFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

"Samudrala, Sridhar" <sridhar.samudrala@intel.com> writes:

> Performance Results
> ===================
> Only 1 core is used in all these testcases as the app and the queue irq are pinned to the same core.
>
> ----------------------------------------------------------------------------------
>                                 mitigations ON                mitigations OFF
>    Testcase              ----------------------------------------------------------
>                          no patches    with patches       no patches   with patches
> ----------------------------------------------------------------------------------
> AF_XDP default rxdrop        X             X                   Y            Y

Is this really exactly the same with and without patches? You're adding
an extra check to xdp_do_redirect(); are you really saying that the
impact of that is zero?

> AF_XDP direct rxdrop        N/A          X+46%                N/A         Y+25%
> Kernel rxdrop              X+61%         X+61%               Y+53%        Y+53%
> ----------------------------------------------------------------------------------
>
> Here Y is pps with CPU security mitigations turned OFF and it is 26%
> better than X.

Any particular reason you're not sharing the values of X and Y?

-Toke

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
