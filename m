Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E441E5D528
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2019 19:26:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A020C21541;
	Tue,  2 Jul 2019 17:26:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ahP-Jmh3UaXr; Tue,  2 Jul 2019 17:26:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 92DDC21513;
	Tue,  2 Jul 2019 17:25:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 23A551BF25B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 12:15:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 192E0835F0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 12:15:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SICkKZUk2rg0 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2019 12:15:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E474F834BE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 12:15:33 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id s184so12826632oie.9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 02 Jul 2019 05:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GFbQ2lZ75GLkcYyTB1KTIsYzC0uNOByXOoKPod00wFs=;
 b=pNDluYD4lKRhUuqew+bf8iEzR2VpI7d/pPpAoNBJnANBM08Vx6ucs9fZQNgdGF/hTK
 B1pUf2OiFIvEcpwfcGyHbZf2TjDxJ6Tl+qJEzdzTMxYZbrxsYuoBksUkJdWRag9Br//k
 7rQW5fE8Sjb7IKTNgsBK8ZVZ2PtBqQcMPVnjeBC6D+hv5reXbqezkiT2n4ap453C0279
 PPeT+/DEHesZG0kvBZsZyGdJz4PQrKA8GSmOb29q/iqt7qf++ghdMhQ+0JkKKQ9okAuK
 Io0MCljP9E20WwcbRVKh5OL/uIzZBZ8XcApFtfGSUEiBvG4cNSsrcJaAeGYs+huGOirE
 zbGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GFbQ2lZ75GLkcYyTB1KTIsYzC0uNOByXOoKPod00wFs=;
 b=mEUNtiou+O7UR0DiHBJ2R0Me5Ie9jZz3wctOV7dVOpvXSbiEqpA9HudhqqvLT6TyPz
 3unEb3rbXSkfcBKMz1VLtZgMXrGn5vpm8JYL0YkAAfskLqbpfEBehPLpl40HhTCzmUQW
 zGPWma1Ualoayz7a5J+c4LFfokRo9wq4XX6GH2atWdUq90ZTY7FeMRceQe5r0bIEwthU
 Ek7AyopZ8OKgTJWlk6Rht/CvpZZ/pf4y4PrgdhdttYkn+GzIg4vDGkkXzOAH4Mt4cWy7
 7kt9dL6+zfmWmo0F2HnMVSyWZK+abyiITubdzDFHmp8+Fa+NFuZGwqGnHN7/Q6hyFTEO
 XBjQ==
X-Gm-Message-State: APjAAAWfOXN2lp1z89RHpWNIJiy2CIaXAbcnMxmDEFuedWECBWPN5qMY
 lCfSd9+QjvNr1Nod6Hzu9LhyQthcX3HDizvY4MA=
X-Google-Smtp-Source: APXvYqxqY1RjeDWoA94KUAz3xDr0PbjJADx3Xx6bq5j8IotEClW4dHA7dm7lJ2dN8aYC/rKgqpXDA5/5ZRReUmu6BKw=
X-Received: by 2002:aca:cdd3:: with SMTP id d202mr2489070oig.115.1562069732896; 
 Tue, 02 Jul 2019 05:15:32 -0700 (PDT)
MIME-Version: 1.0
References: <1562059288-26773-1-git-send-email-magnus.karlsson@intel.com>
 <1562059288-26773-2-git-send-email-magnus.karlsson@intel.com>
 <a57b5b49-bd03-92af-cc5d-fe11d1d0e437@mellanox.com>
In-Reply-To: <a57b5b49-bd03-92af-cc5d-fe11d1d0e437@mellanox.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Tue, 2 Jul 2019 14:15:21 +0200
Message-ID: <CAJ8uoz3wB2x4TB8hOpc7L+Ss_7yKaJXP-n9f08uhDLtz=xJ5+g@mail.gmail.com>
To: Maxim Mikityanskiy <maximmi@mellanox.com>
X-Mailman-Approved-At: Tue, 02 Jul 2019 17:25:57 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v2 1/6] xsk: replace
 ndo_xsk_async_xmit with ndo_xsk_wakeup
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
Cc: "axboe@kernel.dk" <axboe@kernel.dk>,
 "maciejromanfijalkowski@gmail.com" <maciejromanfijalkowski@gmail.com>,
 "kevin.laatz@intel.com" <kevin.laatz@intel.com>,
 "jakub.kicinski@netronome.com" <jakub.kicinski@netronome.com>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "ciara.loftus@intel.com" <ciara.loftus@intel.com>,
 "qi.z.zhang@intel.com" <qi.z.zhang@intel.com>,
 "ast@kernel.org" <ast@kernel.org>,
 "xiaolong.ye@intel.com" <xiaolong.ye@intel.com>,
 "ilias.apalodimas@linaro.org" <ilias.apalodimas@linaro.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "brouer@redhat.com" <brouer@redhat.com>,
 "bruce.richardson@intel.com" <bruce.richardson@intel.com>,
 "maciej.fijalkowski@intel.com" <maciej.fijalkowski@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "bjorn.topel@intel.com" <bjorn.topel@intel.com>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 2, 2019 at 1:43 PM Maxim Mikityanskiy <maximmi@mellanox.com> wrote:
>
> On 2019-07-02 12:21, Magnus Karlsson wrote:
> > This commit replaces ndo_xsk_async_xmit with ndo_xsk_wakeup. This new
> > ndo provides the same functionality as before but with the addition of
> > a new flags field that is used to specifiy if Rx, Tx or both should be
> > woken up. The previous ndo only woke up Tx, as implied by the
> > name. The i40e and ixgbe drivers (which are all the supported ones)
> > are updated with this new interface.
>
> This API change will break build of mlx5 - XSK support for mlx5 was merged.

Yes, that will definitely break it. But I am glad your support is in
:-). Do you have any other comments on this patch set before I make a
v3?

/Magnus

> > This new ndo will be used by the new need_wakeup functionality of XDP
> > sockets that need to be able to wake up both Rx and Tx driver
> > processing.
> >
> > Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
