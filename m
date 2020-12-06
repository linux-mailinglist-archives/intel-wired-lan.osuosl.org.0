Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA592D064E
	for <lists+intel-wired-lan@lfdr.de>; Sun,  6 Dec 2020 18:32:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD404874A8;
	Sun,  6 Dec 2020 17:32:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N1Kd-AP-15M8; Sun,  6 Dec 2020 17:32:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ECDF586E61;
	Sun,  6 Dec 2020 17:32:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BC4F71BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Dec 2020 17:32:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B7C4286444
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Dec 2020 17:32:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BIlLwMqjSC8m for <intel-wired-lan@lists.osuosl.org>;
 Sun,  6 Dec 2020 17:32:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1E659863E0
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Dec 2020 17:32:35 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id i9so11117501ioo.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 06 Dec 2020 09:32:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7N3sBfPKm9s8YI9bZ1YGc7d1O3+NqdQ1UI3/+WPcotk=;
 b=M45rI/m9DMfZmnJXHL7tTN30niu12r/EOAWc38VandwIYSnfEVUM1g2s2xYck7pARH
 wZD40X4jBe/KnNOo7q99jsZPfDyPyERcf/qwdmfPPxcEvC6QWQuKRb5mts4VYAlwHM+J
 CKtoU6Gyj7ZUqawPn6PTniKEGMhXGCp3JK6isjiY62Hk27nQT+2Zt9oe5S2E/TgWczJ7
 /zR6bHCHfRRjDxS2JiO4EROOwDW0x2uqZ1LF4OlUTO/0E2YsLnVvEzlRXl/I1pgjyOE4
 FWVXUDY0G6EzP9mJ2M06s6TEISJPNDdN6huCiSC02KrDYjY1bxOQXPht9J2QQ5p+PN9u
 CWZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7N3sBfPKm9s8YI9bZ1YGc7d1O3+NqdQ1UI3/+WPcotk=;
 b=q02q/VO5wTb47NuaxmkKWE92esuLI0KVflJSn3ry1uszWX+sp/XLifOLRcQdgzVMxA
 41gA+dcsI8XJkJY3EWZ4IpZym9TJazfRQdA3WKwNqGwo1E5zgUxv8fyXUkHbxK2kcJco
 dOrYvz+xdgteeCGhWmAlfInYMJ68ect/ktZpfMh89v0glN57cWpDQYQSWKtBdw48M/qX
 YorcE6NDJOU1cMwimqGoZpEzZY8cOPFVvUXbdnt/g4VjWfPXNHbDR9qDqFEQmNvkP+8a
 P4KTVGcB9fLPMu6RlG7yuNvx75HNA+HN8DsNvdDgftT1qFKMCmUEvvwDbnVhNIfWia9i
 /oBg==
X-Gm-Message-State: AOAM530Z+AY5q2UeIyjHTIOYYULEXZU7Kv+WFEBt72uVUw2wRb6HH93j
 zENTH5gtSn3fDLSz9V+ZlfkRBJP/GIPKKVo652k=
X-Google-Smtp-Source: ABdhPJzqZCFiKiB5XjLUJArT/oiyNwwhPMWwOHxTLuiIuMINM7YzyWjxQfucl4doqDFbDLYVdSs/NdFIuXNI+AklWTs=
X-Received: by 2002:a02:5d85:: with SMTP id w127mr16403664jaa.83.1607275954356; 
 Sun, 06 Dec 2020 09:32:34 -0800 (PST)
MIME-Version: 1.0
References: <20201204200920.133780-1-mario.limonciello@dell.com>
 <CAKgT0Uc=OxcuHbZihY3zxsxzPprJ_8vGHr=reBJFMrf=V9A5kg@mail.gmail.com>
 <DM6PR19MB2636B200D618A5546E7BBB57FAF10@DM6PR19MB2636.namprd19.prod.outlook.com>
 <CAKgT0UfuyrbzpDNySMmnAkqKnw9cYuEM1LhgG0QvmrY=smR-uw@mail.gmail.com>
 <20201205154951.4dd92194@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <20201205154951.4dd92194@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Sun, 6 Dec 2020 09:32:23 -0800
Message-ID: <CAKgT0UcJh219bAXJtJFu7BZsh2+UVGqpLmTiX9V1utsQpPSjvA@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [Intel-wired-lan] [PATCH v3 0/7] Improve s0ix flows for systems
 i219LM
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
Cc: Linux PM <linux-pm@vger.kernel.org>, Netdev <netdev@vger.kernel.org>, "Yuan,
 Perry" <Perry.Yuan@dell.com>, "Limonciello,
 Mario" <Mario.Limonciello@dell.com>, "Shen, Yijun" <Yijun.Shen@dell.com>,
 LKML <linux-kernel@vger.kernel.org>,
 "anthony.wong@canonical.com" <anthony.wong@canonical.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 David Miller <davem@davemloft.net>, Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Dec 5, 2020 at 3:49 PM Jakub Kicinski <kuba@kernel.org> wrote:
>
> On Fri, 4 Dec 2020 14:38:03 -0800 Alexander Duyck wrote:
> > > > The patches look good to me. Just need to address the minor issue that
> > > > seems to have been present prior to the introduction of this patch
> > > > set.
> > > >
> > > > Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
> > >
> > > Thanks for your review.  Just some operational questions - since this previously
> > > existed do you want me to re-spin the series to a v4 for this, or should it be
> > > a follow up after the series?
> > >
> > > If I respin it, would you prefer that change to occur at the start or end
> > > of the series?
> >
> > I don't need a respin, but if you are going to fix it you should
> > probably put out the patch as something like a 8/7. If you respin it
> > should happen near the start of the series as it is a bug you are
> > addressing.
>
> Don't we need that patch to be before this series so it can be
> back ported easily? Or is it not really a bug?

You're right. For backports it would make it easier to have the patch
be before the changes. As far as being a bug, it is one, but it isn't
an urgent bug as it is basically some bad exception handling so the
likelihood of seeing it should be quite low.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
