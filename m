Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEA5265F8E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Sep 2020 14:30:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 857F887896;
	Fri, 11 Sep 2020 12:30:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b4kOojosYzDE; Fri, 11 Sep 2020 12:30:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2E85187895;
	Fri, 11 Sep 2020 12:30:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C02191BF35D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 12:30:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B9E8487890
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 12:30:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DJDNv-YRkJPR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 12:30:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ADA9487864
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 12:30:01 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id o68so7352012pfg.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 05:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XbxwP9miORo2DKwSEZ5JCDhcOwdDMNbjt2KRy+7eBzM=;
 b=sxxXMyvLvBAPEMoIJ8QSKstOUEiBA7O41mtGLBLcawP4cPlQspzBE7xSaP1XfP2/F0
 GYAd+j3gc4ebjMb1Kf9ORadNiTYZokAYW1syP4A2tS6KWnlj37Liluhycsj8DoQsV+3l
 1bYKSpvfA1Z3Ivo9BaiSLrBvPUimSOEAs9gWmU6+nOKmZox9TjtYlvydCrUPSmRrplGW
 GE+OS4/Xiq6t1TuZq4VT3ZWVaGD7m+E1f8BBQSj8rP+JFNyE5Y9dLJgGpkGzbETQJJ8F
 nn2eBPZdUjUwrmnQ6/vR/MR4Y00Ix8qOhK4NJOHGEr0UbsvCuz3kRE7ALK6AcQw3iH0V
 Hc9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XbxwP9miORo2DKwSEZ5JCDhcOwdDMNbjt2KRy+7eBzM=;
 b=YLv+S1Q2oEQMBaIzOmMI3aaLg4NuDfYhBX4tVflOU5k9Nre/UmYwACI8mKpeJhwuaQ
 n6B5jZ7+X8cyxENcTTj/hnZ9/IVMBj8LGpXK0BPQku3ruaiWDBQ+2xvih3MC4/eikNm3
 mwJvY5LEQZM2GrcRqEy0ZsWGt1eGhYlDEMmn7EtAZxs6FQOf2hANZkRD/jgpF0uMMi8g
 naxkzQNeKH0ivi0S9OjXi2+kQ5nz9c6pQ2SLvQsWjVBGn5jKCf/Ao1/mlTdNqmLpxAad
 i4yvoi172OYUfDpiw+HLKohrH3dqllFR5Jq5UeO0lAtWe1Y8iJIKz9Vyld0JNATfnr5+
 6o2A==
X-Gm-Message-State: AOAM530Fp4GmaTk5PyhFO+l0OMdgiUDvad3nRErya7twrZ7E8qEUxfvB
 oFSxuJusGhO3M3q8JJMTFaHHid4+BQ2XmFz2F6o=
X-Google-Smtp-Source: ABdhPJycbi9144tCuWpJOm/DbHyimB+o7+twCZ4RlJMolGb2fwNpW/CpCjKpTViUWqAmg562BYyME7hhfh04qAplFEs=
X-Received: by 2002:a05:6a00:15c1:b029:13e:d13d:a04d with SMTP id
 o1-20020a056a0015c1b029013ed13da04dmr1869316pfu.19.1599827401252; Fri, 11 Sep
 2020 05:30:01 -0700 (PDT)
MIME-Version: 1.0
References: <1599826106-19020-1-git-send-email-magnus.karlsson@gmail.com>
 <20200911120519.GA9758@ranger.igk.intel.com>
In-Reply-To: <20200911120519.GA9758@ranger.igk.intel.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Fri, 11 Sep 2020 14:29:50 +0200
Message-ID: <CAJ8uoz3ctVoANjiO_nQ38YA-JoB0nQH1B4W01AZFw3iCyCC_+w@mail.gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: allow VMDQs to be used
 with AF_XDP zero-copy
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
Cc: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>,
 Network Development <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 11, 2020 at 2:11 PM Maciej Fijalkowski
<maciej.fijalkowski@intel.com> wrote:
>
> On Fri, Sep 11, 2020 at 02:08:26PM +0200, Magnus Karlsson wrote:
> > From: Magnus Karlsson <magnus.karlsson@intel.com>
> >
> > Allow VMDQs to be used with AF_XDP sockets in zero-copy mode. For some
> > reason, we only allowed main VSIs to be used with zero-copy, but
> > there is now reason to not allow VMDQs also.
>
> You meant 'to allow' I suppose. And what reason? :)

Yes, sorry. Should be "not to allow". I was too trigger happy ;-).

I have gotten requests from users that they want to use VMDQs in
conjunction with containers. Basically small slices of the i40e
portioned out as netdevs. Do you see any problems with using a VMDQ
iwth zero-copy?

/Magnus

> >
> > Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> > ---
> >  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > index 2a1153d..ebe15ca 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > @@ -45,7 +45,7 @@ static int i40e_xsk_pool_enable(struct i40e_vsi *vsi,
> >       bool if_running;
> >       int err;
> >
> > -     if (vsi->type != I40E_VSI_MAIN)
> > +     if (!(vsi->type == I40E_VSI_MAIN || vsi->type == I40E_VSI_VMDQ2))
> >               return -EINVAL;
> >
> >       if (qid >= vsi->num_queue_pairs)
> > --
> > 2.7.4
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
