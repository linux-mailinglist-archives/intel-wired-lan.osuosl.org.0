Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B95933F9C4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 21:11:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7B72E43080;
	Wed, 17 Mar 2021 20:11:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CojAaUML_daL; Wed, 17 Mar 2021 20:11:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 77B084150A;
	Wed, 17 Mar 2021 20:11:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CA4891BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 20:11:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B87074150A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 20:11:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EwnbpXx7Y0zU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 20:11:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DF68E41504
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 20:11:00 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id n138so852835lfa.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 13:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GwuY5Os0hwvThFgmnaX2i5CEbiXkSD9Cnc88LImmE8U=;
 b=ib1EAXSgC5DszNXgQNlOZkDzUJYDzPguRpAnO/17t6JQnu6ySfklBaHe4k3kC4o2wC
 abjdNCs4RlVlutyv//RC2MQnHb/R4HezC58AX5kccJuMWt838/NcbpD8jMkrAGdqLX8W
 gyXj0kr6aduMQ7VGrCSYSuPzcuX579VCpDVJoKH2dXUuqc53wE1TBTsZnaL7871AZA1f
 srbM3/iDMdblSN784lxsSDQ7FS0iT9WF3/gtOoFzL+MdgmJ0ygdlnIXrwv5YivVyhpia
 9rTGJ8kyAMcbVqEHmbgOjtzOMIIQIY7Vnb7hyD9HtppttVSk2W1tbUfsk6sOkbrSooDk
 rajw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GwuY5Os0hwvThFgmnaX2i5CEbiXkSD9Cnc88LImmE8U=;
 b=dUEubQo8HeTwrCHrEW7oKzc/QHpiQ3ygPOIBwoCi6re/FZ4UU/c2ohDnBxO5CS256D
 EiGLJ94G8Gtbxlg/7k7oQl1OrmOEPzGsvhPOu/5+7781kUi60vcqqNVEXN/qSzkqJwZz
 BopW/P8uXpPjvpsOjgQ7DEjBXYjNsLnWgOn2QSgG6bCw4mxo4R7kCYuRwwCuZqa6UArH
 vyfkpLUTDGaeIz10+r2EgMZ8OwgXpionxQQAtk5+l5kgC+Ng1kwHgsmHb6apN9QtcQbV
 zIEIqK8/ZDyDu3AWqbeL08iTb5V9lUuVhCrZYfUXPk3LIizziHB+R1RT/gq3HbnBeyXG
 3l3g==
X-Gm-Message-State: AOAM531ltuC/oyJH32AvR2iYP3nEw2zZTOPys4lEugRiOMmKYb+czsKP
 T+gkvqSL/0/JG4SqQH7ZM2lrKT9Jou6+W+IG8i2eig==
X-Google-Smtp-Source: ABdhPJxtz8HJwcpeOoU4ahq/ATlTmzoMARdNU3cB5yASnd15aVUPUDj4HFPTDwaJ5GULoNKuubrclkfJtO9h0qZywz8=
X-Received: by 2002:a05:6512:39c2:: with SMTP id
 k2mr3043146lfu.69.1616011858514; 
 Wed, 17 Mar 2021 13:10:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210317064148.GA55123@embeddedor>
 <CAG48ez2RDqKwx=umOHjo_1mYyNQgzvcP=KOw1HgSo4Prs_VQDw@mail.gmail.com>
 <3bd8d009-2ad2-c24d-5c34-5970c52502de@embeddedor.com>
 <CAG48ez2jr_8MbY_sNXfwvs7WsF-5f9j=U4-66dTcgXd2msr39A@mail.gmail.com>
 <03c013b8-4ddb-8e9f-af86-3c43cd746dbb@embeddedor.com>
In-Reply-To: <03c013b8-4ddb-8e9f-af86-3c43cd746dbb@embeddedor.com>
From: Jann Horn <jannh@google.com>
Date: Wed, 17 Mar 2021 21:10:32 +0100
Message-ID: <CAG48ez1heVw2WRUMrGskUyJV0wH4YfgbF=raFKWXXM7oY1zKDA@mail.gmail.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [Intel-wired-lan] [PATCH][next] ixgbe: Fix out-of-bounds
 warning in ixgbe_host_interface_command()
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
Cc: Network Development <netdev@vger.kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 kernel list <linux-kernel@vger.kernel.org>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 17, 2021 at 9:04 PM Gustavo A. R. Silva
<gustavo@embeddedor.com> wrote:
> On 3/17/21 13:57, Jann Horn wrote:
> >>>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
> >>>> index 62ddb452f862..bff3dc1af702 100644
> >>>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
> >>>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
> >>>> @@ -3679,7 +3679,7 @@ s32 ixgbe_host_interface_command(struct ixgbe_hw *hw, void *buffer,
> >>>>         u32 hdr_size = sizeof(struct ixgbe_hic_hdr);
> >>>>         union {
> >>>>                 struct ixgbe_hic_hdr hdr;
> >>>> -               u32 u32arr[1];
> >>>> +               u32 *u32arr;
> >>>>         } *bp = buffer;
> >>>>         u16 buf_len, dword_len;
> >>>>         s32 status;
> >>>
> >>> This looks bogus. An array is inline, a pointer points elsewhere -
> >>> they're not interchangeable.
> >>
> >> Yep; but in this case these are the only places in the code where _u32arr_ is
> >> being used:
> >>
> >> 3707         /* first pull in the header so we know the buffer length */
> >> 3708         for (bi = 0; bi < dword_len; bi++) {
> >> 3709                 bp->u32arr[bi] = IXGBE_READ_REG_ARRAY(hw, IXGBE_FLEX_MNG, bi);
> >> 3710                 le32_to_cpus(&bp->u32arr[bi]);
> >> 3711         }
> >
> > So now line 3709 means: Read a pointer from bp->u32arr (the value
> > being read from there is not actually a valid pointer), and write to
> > that pointer at offset `bi`. I don't see how that line could execute
> > without crashing.
>
> Yeah; you're right. I see my confusion now. Apparently, there is no escape
> from allocating heap memory to fix this issue, as I was proposing in my
> last email.

Why? Can't you do something like this?

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
index 62ddb452f862..768fa124105b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
@@ -3677,10 +3677,8 @@ s32 ixgbe_host_interface_command(struct
ixgbe_hw *hw, void *buffer,
                                 bool return_data)
 {
        u32 hdr_size = sizeof(struct ixgbe_hic_hdr);
-       union {
-               struct ixgbe_hic_hdr hdr;
-               u32 u32arr[1];
-       } *bp = buffer;
+       u32 *bp = buffer;
+       struct ixgbe_hic_hdr hdr;
        u16 buf_len, dword_len;
        s32 status;
        u32 bi;
@@ -3706,12 +3704,13 @@ s32 ixgbe_host_interface_command(struct
ixgbe_hw *hw, void *buffer,

        /* first pull in the header so we know the buffer length */
        for (bi = 0; bi < dword_len; bi++) {
-               bp->u32arr[bi] = IXGBE_READ_REG_ARRAY(hw, IXGBE_FLEX_MNG, bi);
-               le32_to_cpus(&bp->u32arr[bi]);
+               bp[bi] = IXGBE_READ_REG_ARRAY(hw, IXGBE_FLEX_MNG, bi);
+               le32_to_cpus(&bp[bi]);
        }

        /* If there is any thing in data position pull it in */
-       buf_len = bp->hdr.buf_len;
+       memcpy(&hdr, bp, sizeof(hdr));
+       buf_len = hdr.buf_len;
        if (!buf_len)
                goto rel_out;

@@ -3726,8 +3725,8 @@ s32 ixgbe_host_interface_command(struct ixgbe_hw
*hw, void *buffer,

        /* Pull in the rest of the buffer (bi is where we left off) */
        for (; bi <= dword_len; bi++) {
-               bp->u32arr[bi] = IXGBE_READ_REG_ARRAY(hw, IXGBE_FLEX_MNG, bi);
-               le32_to_cpus(&bp->u32arr[bi]);
+               bp[bi] = IXGBE_READ_REG_ARRAY(hw, IXGBE_FLEX_MNG, bi);
+               le32_to_cpus(&bp[bi]);
        }

 rel_out:
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
