Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2853A33FA58
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 22:15:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AFB9E6F99D;
	Wed, 17 Mar 2021 21:15:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5LrIRYg-PW2d; Wed, 17 Mar 2021 21:15:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D16B6F995;
	Wed, 17 Mar 2021 21:15:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CE6661BF310
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 21:15:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BC22283E96
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 21:15:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=embeddedor.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OyCtKhpBIAmB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 21:15:06 +0000 (UTC)
X-Greylist: delayed 00:24:28 by SQLgrey-1.8.0
Received: from gateway22.websitewelcome.com (gateway22.websitewelcome.com
 [192.185.47.228])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 68BE583E91
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 21:15:06 +0000 (UTC)
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
 by gateway22.websitewelcome.com (Postfix) with ESMTP id D4F13A02C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 15:50:37 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id Md7llL8OiPkftMd7ll1SUs; Wed, 17 Mar 2021 15:50:37 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DnIZtQW0bcbbdaS/T+teivlKQ5XVsr7Zh+LxMgxl77A=; b=PWVvR0sU3N0KIRxK9Uzfz04Xsx
 x5ifWNrxZ5YeNj5aKhcigVBl1Af3heKDijEko6iutE3pt2q+TMGFpi4UFna7mkCbThJeU+XTRUplv
 GTvLmLiYT/K6OZ8/zwGQuy2KK+gk4HwjUah7q6aUay3sA0BkB0e6cXx1UhYCueWls+PcAgf65E62R
 lQKt1ZOVST5kOiEwNYGN05wrqrYnq9kFPOTvSNQ5DS83Ymw6UQcw+q28c0iMmLyF74C1fSvsHumeY
 94U2ZGoJwNL6lXxqx7XS09tdYwbW6wL8nsAhQQrmV0eOU8YlDsTKjO6wfjBU2KTDz+CZkobnfRhZG
 G471hFwQ==;
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:33348
 helo=[192.168.15.8])
 by gator4166.hostgator.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <gustavo@embeddedor.com>)
 id 1lMd7l-003qlO-9q; Wed, 17 Mar 2021 15:50:37 -0500
To: Jann Horn <jannh@google.com>
References: <20210317064148.GA55123@embeddedor>
 <CAG48ez2RDqKwx=umOHjo_1mYyNQgzvcP=KOw1HgSo4Prs_VQDw@mail.gmail.com>
 <3bd8d009-2ad2-c24d-5c34-5970c52502de@embeddedor.com>
 <CAG48ez2jr_8MbY_sNXfwvs7WsF-5f9j=U4-66dTcgXd2msr39A@mail.gmail.com>
 <03c013b8-4ddb-8e9f-af86-3c43cd746dbb@embeddedor.com>
 <CAG48ez1heVw2WRUMrGskUyJV0wH4YfgbF=raFKWXXM7oY1zKDA@mail.gmail.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <944f3971-544f-49b4-1351-2eb3ee20588b@embeddedor.com>
Date: Wed, 17 Mar 2021 14:50:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CAG48ez1heVw2WRUMrGskUyJV0wH4YfgbF=raFKWXXM7oY1zKDA@mail.gmail.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.31.110
X-Source-L: No
X-Exim-ID: 1lMd7l-003qlO-9q
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8])
 [187.162.31.110]:33348
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 13
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
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



On 3/17/21 15:10, Jann Horn wrote:
> On Wed, Mar 17, 2021 at 9:04 PM Gustavo A. R. Silva
> <gustavo@embeddedor.com> wrote:
>> On 3/17/21 13:57, Jann Horn wrote:
>>>>>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
>>>>>> index 62ddb452f862..bff3dc1af702 100644
>>>>>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
>>>>>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
>>>>>> @@ -3679,7 +3679,7 @@ s32 ixgbe_host_interface_command(struct ixgbe_hw *hw, void *buffer,
>>>>>>         u32 hdr_size = sizeof(struct ixgbe_hic_hdr);
>>>>>>         union {
>>>>>>                 struct ixgbe_hic_hdr hdr;
>>>>>> -               u32 u32arr[1];
>>>>>> +               u32 *u32arr;
>>>>>>         } *bp = buffer;
>>>>>>         u16 buf_len, dword_len;
>>>>>>         s32 status;
>>>>>
>>>>> This looks bogus. An array is inline, a pointer points elsewhere -
>>>>> they're not interchangeable.
>>>>
>>>> Yep; but in this case these are the only places in the code where _u32arr_ is
>>>> being used:
>>>>
>>>> 3707         /* first pull in the header so we know the buffer length */
>>>> 3708         for (bi = 0; bi < dword_len; bi++) {
>>>> 3709                 bp->u32arr[bi] = IXGBE_READ_REG_ARRAY(hw, IXGBE_FLEX_MNG, bi);
>>>> 3710                 le32_to_cpus(&bp->u32arr[bi]);
>>>> 3711         }
>>>
>>> So now line 3709 means: Read a pointer from bp->u32arr (the value
>>> being read from there is not actually a valid pointer), and write to
>>> that pointer at offset `bi`. I don't see how that line could execute
>>> without crashing.
>>
>> Yeah; you're right. I see my confusion now. Apparently, there is no escape
>> from allocating heap memory to fix this issue, as I was proposing in my
>> last email.
> 
> Why? Can't you do something like this?

Yep; it seems you're right. I was thinking in terms of a flexible array. Also,
I think I needed more coffee in my system this morning and I need to stop
working after midnight. :)

I'll send a proper patch for this, shortly. I'll add your Proposed-by
and Co-developed-by tags to the changelog text.

Thanks a lot for the feedback. I really appreciate it. :)
--
Gustavo


> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
> index 62ddb452f862..768fa124105b 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
> @@ -3677,10 +3677,8 @@ s32 ixgbe_host_interface_command(struct
> ixgbe_hw *hw, void *buffer,
>                                  bool return_data)
>  {
>         u32 hdr_size = sizeof(struct ixgbe_hic_hdr);
> -       union {
> -               struct ixgbe_hic_hdr hdr;
> -               u32 u32arr[1];
> -       } *bp = buffer;
> +       u32 *bp = buffer;
> +       struct ixgbe_hic_hdr hdr;
>         u16 buf_len, dword_len;
>         s32 status;
>         u32 bi;
> @@ -3706,12 +3704,13 @@ s32 ixgbe_host_interface_command(struct
> ixgbe_hw *hw, void *buffer,
> 
>         /* first pull in the header so we know the buffer length */
>         for (bi = 0; bi < dword_len; bi++) {
> -               bp->u32arr[bi] = IXGBE_READ_REG_ARRAY(hw, IXGBE_FLEX_MNG, bi);
> -               le32_to_cpus(&bp->u32arr[bi]);
> +               bp[bi] = IXGBE_READ_REG_ARRAY(hw, IXGBE_FLEX_MNG, bi);
> +               le32_to_cpus(&bp[bi]);
>         }
> 
>         /* If there is any thing in data position pull it in */
> -       buf_len = bp->hdr.buf_len;
> +       memcpy(&hdr, bp, sizeof(hdr));
> +       buf_len = hdr.buf_len;
>         if (!buf_len)
>                 goto rel_out;
> 
> @@ -3726,8 +3725,8 @@ s32 ixgbe_host_interface_command(struct ixgbe_hw
> *hw, void *buffer,
> 
>         /* Pull in the rest of the buffer (bi is where we left off) */
>         for (; bi <= dword_len; bi++) {
> -               bp->u32arr[bi] = IXGBE_READ_REG_ARRAY(hw, IXGBE_FLEX_MNG, bi);
> -               le32_to_cpus(&bp->u32arr[bi]);
> +               bp[bi] = IXGBE_READ_REG_ARRAY(hw, IXGBE_FLEX_MNG, bi);
> +               le32_to_cpus(&bp[bi]);
>         }
> 
>  rel_out:
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
