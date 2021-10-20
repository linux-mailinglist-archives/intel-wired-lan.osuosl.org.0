Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCCB43525B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Oct 2021 20:08:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F369140775;
	Wed, 20 Oct 2021 18:08:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OkXPElgG3PeE; Wed, 20 Oct 2021 18:08:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 08440404AC;
	Wed, 20 Oct 2021 18:08:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 514B21BF584
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Oct 2021 18:08:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3F9FF404AC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Oct 2021 18:08:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DHU1bIDRgjcJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Oct 2021 18:08:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com
 [IPv6:2607:f8b0:4864:20::32f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 83E7A404AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Oct 2021 18:08:23 +0000 (UTC)
Received: by mail-ot1-x32f.google.com with SMTP id
 w12-20020a056830410c00b0054e7ceecd88so7449737ott.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Oct 2021 11:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wP/mB1qZJe5g+pwoorAaeFOblwRY0oDwaSr3e3eVqxA=;
 b=AvmhQIc5Yr/COM8fDecgdx5pQypgoZ1Mq09JQL+C2SlHP9Ejd8yv80hM6oFKVL9chD
 yt5CP0w0ENdaAr9E677iAOci+MeDvjBO5k231FGjjKQGA8yxFwerM9duNnocmWR041zG
 Bv9cMYXxtHTXE5kga1scyYT9T7km8LM6ES+4qgXfAkmFNL/FHGY4MO6GhGcR1+r1aP3T
 NmzHjRiYwzJ3OhYbIDeOeiwKHAkE89FV5dyhUqoXpUXEzw0/TtnPzhI3i7wb3SGRScQs
 Uss5NpbK14bk+rFTZnzMA7CNPvDBKLHRss2fkHWqbRFItD1UvkZNO0ADMYA/a3Puw7ip
 dVPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wP/mB1qZJe5g+pwoorAaeFOblwRY0oDwaSr3e3eVqxA=;
 b=fHQSVv33uqIlJQM9SONl08lNmYbaH2oM7hoN3mQT003Y0dFA+I/Z6qAhY4s+5tdEto
 +OcBiSCIBJ8dZcF6Zrb4GSu4YI4GB4+BuuKgpedq37azzYpkv7962QacePuPvevAxCzo
 my3YqR/6A6wCfdkorJ0dYZyXLgnfSBkrTt4rRB9pBaBKzcxk2kcm/cD2uq1/jxOHsgEi
 cv6SUwoy0s41caWR1wOu6OVnrnKfB+5K9W/LKZMBG9uNLB5qtV6wgbL3FUjQUHN/eCOQ
 0GTqEGruvU0hc6EH4EpxTY9vZfQCoTJKs9DmpwZlElgJCbOC8LAWrXqP9WIs6RCdQLc/
 hWTQ==
X-Gm-Message-State: AOAM533IyrHRfy6lwDQHU/wXcJ+q0a6n/9YHnuHyPQpigKfQXn8tNS+T
 kDcC85L+05NiqNaQ1V7+F8Z7oL3cukoGnsGM7ZU=
X-Google-Smtp-Source: ABdhPJz/PySPsO38rUxwoenDSbW9EMnPquIoJnT6awfWd0tx4IOccSLTpi7kPtfbpCVK8PQPfjZ+Jmg0T6MQ3VQchyY=
X-Received: by 2002:a9d:734d:: with SMTP id l13mr688223otk.238.1634753302001; 
 Wed, 20 Oct 2021 11:08:22 -0700 (PDT)
MIME-Version: 1.0
References: <20211018085305.853996-1-luo.penghao@zte.com.cn>
 <20211020092537.GF3935@kernel.org>
In-Reply-To: <20211020092537.GF3935@kernel.org>
From: Jesse Brandeburg <jesse.brandeburg@gmail.com>
Date: Wed, 20 Oct 2021 11:08:11 -0700
Message-ID: <CAEuXFEzXSU-Ws6T_8TBVfgskh4VA14LmirFYSjdQpwtndfeeww@mail.gmail.com>
To: Simon Horman <horms@kernel.org>
Subject: Re: [Intel-wired-lan] [PATCH linux-next] e1000: Remove redundant
 statement
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
Cc: luo penghao <cgel.zte@gmail.com>, Zeal Robot <zealci@zte.com.cn>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 luo penghao <luo.penghao@zte.com.cn>, intel-wired-lan@lists.osuosl.org,
 NetDEV list <netdev@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Apologies for the duplicates, mail from my intel account going out
through outlook.com is not being delivered.

On Wed, Oct 20, 2021 at 7:00 AM Simon Horman <horms@kernel.org> wrote:

> > Value stored to 'ctrl_reg' is never read.
>
> I agree this does seem to be the case.
>
> > Reported-by: Zeal Robot <zealci@zte.com.cn>
> > Signed-off-by: luo penghao <luo.penghao@zte.com.cn>
>
> Reviewed-by: Simon Horman <horms@kernel.org>

Thanks for the review, but (davem/kuba) please do not apply.

> > @@ -1215,8 +1215,6 @@ static int e1000_integrated_phy_loopback(struct e1000_adapter *adapter)
> >               e1000_write_phy_reg(hw, PHY_CTRL, 0x8140);
> >       }
> >
> > -     ctrl_reg = er32(CTRL);

Thanks for your patch, but this change is not safe. you're removing a
read that could do two things. The first is that the read "flushes"
the write just above to PCI (it's a PCI barrier), and the second is
that the read can have some side effects.

If this change must be done, the code should be to remove the
assignment to ctrl_reg, but leave the read, so the line would just
look like:
        er32(CTRL);

This will get rid of the warning and not change the flow from the
hardware perspective.

> > -
> >       /* force 1000, set loopback */
> >       e1000_write_phy_reg(hw, PHY_CTRL, 0x4140);
> >

Please do not apply this.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
