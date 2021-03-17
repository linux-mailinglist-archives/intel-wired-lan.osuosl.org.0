Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 312E333F9EE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 21:28:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 954568405E;
	Wed, 17 Mar 2021 20:28:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m_HlqrzFy67G; Wed, 17 Mar 2021 20:28:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78F2884060;
	Wed, 17 Mar 2021 20:28:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 92D8C1BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 20:27:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 851464ED78
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 20:27:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=embeddedor.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 97Qfz9_gslUf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 20:27:58 +0000 (UTC)
X-Greylist: delayed 00:23:39 by SQLgrey-1.8.0
Received: from gateway20.websitewelcome.com (gateway20.websitewelcome.com
 [192.185.66.3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8BFEA4ED75
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 20:27:54 +0000 (UTC)
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
 by gateway20.websitewelcome.com (Postfix) with ESMTP id A8BD0400D004A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 14:54:59 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id McOvlBtMU1cHeMcOvlmVXa; Wed, 17 Mar 2021 15:04:17 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D8jlraIWCpRmgNot1k3zhHVL68RtL3nZfNp9Ci7QXGc=; b=wT9iZ75rdYBI8q0oAJMJJ921tV
 X0EyaqaeXNl6TqwJMi1jrUMMOrtW3DhSF/uGyfy3/jhSMgZitmrYjomKVxIO5FK3kLObYWJAegVyt
 5SLq1nuTvl06FylCEIphqedo3Bq1aRhyQR7utbMXIyuCL5ll0r4H6Z//FxcVHp8FGJjbreapk4lbQ
 LQggvdpZJm1f7H22S2tI055at3tf5h9Ydkml9VMFK10L5YuQhAp6lC3yt0zvv9au9+fE2mXz6fn9D
 OyZAMSmJ9rumg0aApRXQGIPYBdss2ta4nCobrcGWmw9i7ce9i+3xhPq/qqEU0ZED1qAFoZoJK8aMC
 QNfpSzdw==;
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:59896
 helo=[192.168.15.8])
 by gator4166.hostgator.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <gustavo@embeddedor.com>)
 id 1lMcOu-003Fbj-P8; Wed, 17 Mar 2021 15:04:16 -0500
To: Jann Horn <jannh@google.com>
References: <20210317064148.GA55123@embeddedor>
 <CAG48ez2RDqKwx=umOHjo_1mYyNQgzvcP=KOw1HgSo4Prs_VQDw@mail.gmail.com>
 <3bd8d009-2ad2-c24d-5c34-5970c52502de@embeddedor.com>
 <CAG48ez2jr_8MbY_sNXfwvs7WsF-5f9j=U4-66dTcgXd2msr39A@mail.gmail.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <03c013b8-4ddb-8e9f-af86-3c43cd746dbb@embeddedor.com>
Date: Wed, 17 Mar 2021 14:04:06 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CAG48ez2jr_8MbY_sNXfwvs7WsF-5f9j=U4-66dTcgXd2msr39A@mail.gmail.com>
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
X-Exim-ID: 1lMcOu-003Fbj-P8
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8])
 [187.162.31.110]:59896
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 5
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



On 3/17/21 13:57, Jann Horn wrote:

>>>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
>>>> index 62ddb452f862..bff3dc1af702 100644
>>>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
>>>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
>>>> @@ -3679,7 +3679,7 @@ s32 ixgbe_host_interface_command(struct ixgbe_hw *hw, void *buffer,
>>>>         u32 hdr_size = sizeof(struct ixgbe_hic_hdr);
>>>>         union {
>>>>                 struct ixgbe_hic_hdr hdr;
>>>> -               u32 u32arr[1];
>>>> +               u32 *u32arr;
>>>>         } *bp = buffer;
>>>>         u16 buf_len, dword_len;
>>>>         s32 status;
>>>
>>> This looks bogus. An array is inline, a pointer points elsewhere -
>>> they're not interchangeable.
>>
>> Yep; but in this case these are the only places in the code where _u32arr_ is
>> being used:
>>
>> 3707         /* first pull in the header so we know the buffer length */
>> 3708         for (bi = 0; bi < dword_len; bi++) {
>> 3709                 bp->u32arr[bi] = IXGBE_READ_REG_ARRAY(hw, IXGBE_FLEX_MNG, bi);
>> 3710                 le32_to_cpus(&bp->u32arr[bi]);
>> 3711         }
> 
> So now line 3709 means: Read a pointer from bp->u32arr (the value
> being read from there is not actually a valid pointer), and write to
> that pointer at offset `bi`. I don't see how that line could execute
> without crashing.

Yeah; you're right. I see my confusion now. Apparently, there is no escape
from allocating heap memory to fix this issue, as I was proposing in my
last email.

I really appreciate the feedback. Thanks!
--
Gustavo
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
