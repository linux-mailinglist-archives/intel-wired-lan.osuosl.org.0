Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AFB458683
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Nov 2021 22:16:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AAEE380F59;
	Sun, 21 Nov 2021 21:16:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ql_nx6h5gluu; Sun, 21 Nov 2021 21:16:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A662080F36;
	Sun, 21 Nov 2021 21:16:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6FBFE1BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Nov 2021 21:16:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 509A4607AE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Nov 2021 21:16:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t6yTK1s3Zk_6 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Nov 2021 21:16:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7A77C6069D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Nov 2021 21:16:46 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id t5so68320536edd.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Nov 2021 13:16:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B4q70pTY89cGs15Hv5VpCBikru6wI5Q8HQLcS091NI0=;
 b=LhKl8FqQ5Y5wBgF7faDHsjfHEO7tB+tXkt2LPKJN89QAOG3hWmSgFlCrCBLlDNj6O7
 o6gWg7M3MJg1HOCwK6LufDZAftuOj0OspAill5ng0YHcP8BFK/JLJ2HCoYWaod65mFTS
 0OXEeZZSV180aWoBNM+TxNfkl9dfanbK/26135ySMSr12S/SJ2q7RgmfDdkhyi3ihmYc
 cEiUARenywL3r8RNx3zrMeElxPVSQBp1qzCLv9wU3Urcv2Ee3QMCvk+xmYWFXiwoNwy3
 HkN4ZPysGZEeuyCIKzCeeauYnKi1EhdFWQRjrewKIsN5CWIpluLjMBzls/eKn9enOzmW
 T/8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B4q70pTY89cGs15Hv5VpCBikru6wI5Q8HQLcS091NI0=;
 b=tyALWgb4NglQnq8hZdUEfbru6/jes6NPhEGu62LE4qqo03b6ntJPIgZ14ZaSQAlA/d
 cYfThjMlQdQ8IlhTAr/LENtSJVZVTBMh6BgvfdFwIEVhP7Pu4H8ZWzdInkUvltx6fbMn
 lLos6qBlgJiRu2MdTElEjCePD1DLp9utuPpXKgNIy7lCyQAFgx5pwtk9CyEWhTYBzVCV
 +WSk5zZFhpIrP58i51VHJ6JM65KliJBtoBe1WdNC185aMJpHXDUtQUNSIp1Qcv/JYtn+
 IuHb6CRyLWBttoQPt8YpiBr3epjat09oEkElem/CpEJvxPOPKuBcK+EswLdFkc5a46tG
 5SfQ==
X-Gm-Message-State: AOAM532EVzAzPoJSAC62axZiLyGriqgT2USxfpZ95R518UhgFHTigCp2
 MUYoj2wg+VI0aY9E5CQ0/tjpEw/2+cxd567N3ts=
X-Google-Smtp-Source: ABdhPJxQ/rjDsEQhZKv5AdPHqRy66HuXandz0Q3xxeGoncv874rtNgcziUkr3pCWS5ox/fH4LvlTxKTH4fz3BWz6K8Q=
X-Received: by 2002:a17:906:140b:: with SMTP id
 p11mr33911285ejc.116.1637529404454; 
 Sun, 21 Nov 2021 13:16:44 -0800 (PST)
MIME-Version: 1.0
References: <DM6PR12MB45165BFF3AB84602238FA595D89B9@DM6PR12MB4516.namprd12.prod.outlook.com>
 <CAKgT0UfGvcGXAC5VBjXRpR5Y5uAPEPPCsYWjQR8RmW_1kw8TMQ@mail.gmail.com>
 <DM6PR12MB45162662DF7FAF82E7BD2207D89E9@DM6PR12MB4516.namprd12.prod.outlook.com>
In-Reply-To: <DM6PR12MB45162662DF7FAF82E7BD2207D89E9@DM6PR12MB4516.namprd12.prod.outlook.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Sun, 21 Nov 2021 13:16:33 -0800
Message-ID: <CAKgT0Uc5ggH24LuKCbSTubDSiTnD5UsLbrC5G6C73rj7ZEnTYQ@mail.gmail.com>
To: Danielle Ratson <danieller@nvidia.com>
Subject: Re: [Intel-wired-lan] [igb] netconsole triggers warning in
 netpoll_poll_dev
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
Cc: Netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Oleksandr Natalenko <oleksandr@natalenko.name>,
 Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Nov 21, 2021 at 3:44 AM Danielle Ratson <danieller@nvidia.com> wrote:
>
> > > > >  drivers/net/ethernet/intel/igb/igb_main.c | 12 ++++++++----
> > > > >  1 file changed, 8 insertions(+), 4 deletions(-)
> > > > >
> > > > > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> > > > > b/drivers/net/ethernet/intel/igb/igb_main.c
> > > > > index 0cd37ad81b4e..b0a9bed14071 100644
> > > > > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > > > > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > > > > @@ -7991,12 +7991,16 @@ static void igb_ring_irq_enable(struct
> > > > igb_q_vector *q_vector)
> > > > >   **/
> > > > >  static int igb_poll(struct napi_struct *napi, int budget)  {
> > > > > -       struct igb_q_vector *q_vector = container_of(napi,
> > > > > -                                                    struct igb_q_vector,
> > > > > -                                                    napi);
> > > > > -       bool clean_complete = true;
> > > > > +       struct igb_q_vector *q_vector;
> > > > > +       bool clean_complete;
> > > > >         int work_done = 0;
> > > > >
> > > > > +       /* if budget is zero, we have a special case for netconsole, so
> > > > > +        * make sure to set clean_complete to false in that case.
> > > > > +        */
> > > > > +       clean_complete = !!budget;
> > > > > +
> > > > > +       q_vector = container_of(napi, struct igb_q_vector, napi);
> > > > >  #ifdef CONFIG_IGB_DCA
> > > > >         if (q_vector->adapter->flags & IGB_FLAG_DCA_ENABLED)
> > > > >                 igb_update_dca(q_vector);
> > > >
> > > > I'm not a big fan of moving the q_vector init as a part of this
> > > > patch since it just means more backport work.
> > > >
> > > > That said the change itself should be harmless so I am good with it
> > > > either way.
> > > >
> > > > Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
> > >
> > > Hi,
> > >
> > > I have lately added the netconsole module, and since then we see the
> > same warning constantly in the logs.
> > > I have tried to apply Jesse's patch but it didn't seem to solve the issue.
> > >
> > > Did anyone managed to solve the issue and can share with us?
> > >
> > > Thanks,
> > > Danielle
> >
> > The one issue I can see is that it basically leaves the igb_poll call stuck in
> > polling mode.
> >
> > The easiest fix for all of this in the in-kernel driver is to just get rid of the
> > "min" at the end and instead just "return work_done;". The extra
> > complication is only needed if you were to be polling multiple queues and
> > that isn't the case here so we should simplify it and get rid of the buggy
> > "budget - 1" return value.
>
> Thank you very much for your reply Alexander!
> It seems to work well!
>
> Are you planning to send it upstream?

No, I was just suggesting it as a possible solution. Feel free to put
together your own patch and submit it if it is working for you.

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
