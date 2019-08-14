Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 537858E0C3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 00:31:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0C2288780F;
	Wed, 14 Aug 2019 22:31:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mYp0yzRfVdfL; Wed, 14 Aug 2019 22:31:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8FC58877CE;
	Wed, 14 Aug 2019 22:31:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5F5CE1BF846
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 15:42:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5BAE4876C5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 15:42:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n4ogmbq4aUJe for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2019 15:42:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 42D17876C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 15:42:58 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id t14so50823303plr.11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 08:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=DYA5xx5hyEUZw7ybqZXJz5NWAkOUsK+7lDp10dnSwVY=;
 b=RKTRcFQFhNg8wMb6AkJStLeB0sUZRetJ7IXxLs1lqWeLhir7Sphy+Sc1AHZ6PMwVRS
 QEkKeYPHsSP5yx1bxS8tCT7wJ0yS7RNhpYF4BMV0w2N+/ColtHSyt98K0DbtPlWjj77y
 znnSq/1E7WSHlfCPL840wJPWd+tBJZm9vu1sH8aur6UzMoY9jD7QdpIhsmW5sPiAoDAH
 acgzkV7iRk0q7jjzouNOHs3dG5rD+MyUvmr1uKeC092YLUmMPJH6y+LzwgQRl9PmJB2s
 hQNOaBCJHxKwM0fiBqQWoE2gRAUdloV5/neC5Nbaai8004XKlawoayNYUNIe9KjO1TYN
 7jkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=DYA5xx5hyEUZw7ybqZXJz5NWAkOUsK+7lDp10dnSwVY=;
 b=ue+koQ39U0+IfFWffZJkH9zSAGUVQ1oYOp0FuaOEUelGpRTsC6nbDLQNf56mwex5Ql
 B+D0sFmqS4vMqOOmJe3nJvl4zMmo0e4OUGH1H6kSiw8pXZnFbfCftHz/18ApZIkLuJoX
 Gc5tjbIz89O4OhxfkwqWGvhiIOec7UBm1US432XTupVrB+NE+yqe5wPlYOY/XEZJiQef
 OCjyLjkd3S2tYv0s201fAs6/ycI90eIm6lZxKHRubZE0Rjv/bCLOM6ec0y0aCWqA4nkX
 VMKgrqJ0M8G/qcRD1TRkt/L644XxZwvKuVj8o9ZQoKxIZ3Hk30az1FrgZ3uRshlXqxqZ
 1Oqg==
X-Gm-Message-State: APjAAAUEo51uzGnf6IpW+AnY8IUg/W4yyCwDud3PAgNrpmz/7ohs5YTM
 HS5Vds16W98FDrAIAqbA7pE=
X-Google-Smtp-Source: APXvYqx5nEGUKZ3WiQGzuTkUBuju10ec8RUMiR5JLP5IL8PXQCQ2bB0H2fLFfD2ZDXB6eNEqAEyVdQ==
X-Received: by 2002:a17:902:883:: with SMTP id 3mr70862pll.318.1565797377949; 
 Wed, 14 Aug 2019 08:42:57 -0700 (PDT)
Received: from [172.26.122.72] ([2620:10d:c090:180::6327])
 by smtp.gmail.com with ESMTPSA id q8sm203353pjq.20.2019.08.14.08.42.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 08:42:57 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Magnus Karlsson" <magnus.karlsson@gmail.com>
Date: Wed, 14 Aug 2019 08:42:55 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <61B6830B-7EBF-4B44-A53C-9F56D5D42426@gmail.com>
In-Reply-To: <CAJ8uoz0Tnb=i-LkGqLU87be9BuYqxmu2pN1Mte0UEWA2+f8bTQ@mail.gmail.com>
References: <1565767643-4908-1-git-send-email-magnus.karlsson@intel.com>
 <1565767643-4908-4-git-send-email-magnus.karlsson@intel.com>
 <3B2C7C21-4AAC-4126-A31D-58A61D941709@gmail.com>
 <CAJ8uoz0Tnb=i-LkGqLU87be9BuYqxmu2pN1Mte0UEWA2+f8bTQ@mail.gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 14 Aug 2019 22:31:03 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 3/8] i40e: add support for
 AF_XDP need_wakeup feature
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
Cc: axboe@kernel.dk, Maxim Mikityanskiy <maximmi@mellanox.com>,
 Kevin Laatz <kevin.laatz@intel.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>,
 Network Development <netdev@vger.kernel.org>, ciara.loftus@intel.com, "Zhang,
 Qi Z" <qi.z.zhang@intel.com>, Alexei Starovoitov <ast@kernel.org>,
 Ye Xiaolong <xiaolong.ye@intel.com>, ilias.apalodimas@linaro.org,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jesper Dangaard Brouer <brouer@redhat.com>, bruce.richardson@intel.com,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 bpf <bpf@vger.kernel.org>,
 =?utf-8?b?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 14 Aug 2019, at 7:59, Magnus Karlsson wrote:

> On Wed, Aug 14, 2019 at 4:48 PM Jonathan Lemon 
> <jonathan.lemon@gmail.com> wrote:
>>
>>
>>
>> On 14 Aug 2019, at 0:27, Magnus Karlsson wrote:
>>
>>> This patch adds support for the need_wakeup feature of AF_XDP. If 
>>> the
>>> application has told the kernel that it might sleep using the new 
>>> bind
>>> flag XDP_USE_NEED_WAKEUP, the driver will then set this flag if it 
>>> has
>>> no more buffers on the NIC Rx ring and yield to the application. For
>>> Tx, it will set the flag if it has no outstanding Tx completion
>>> interrupts and return to the application.
>>>
>>> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
>>> ---
>>>  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 18 ++++++++++++++++++
>>>  1 file changed, 18 insertions(+)
>>>
>>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
>>> b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
>>> index d0ff5d8..42c9012 100644
>>> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
>>> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
>>> @@ -626,6 +626,15 @@ int i40e_clean_rx_irq_zc(struct i40e_ring
>>> *rx_ring, int budget)
>>>
>>>       i40e_finalize_xdp_rx(rx_ring, xdp_xmit);
>>>       i40e_update_rx_stats(rx_ring, total_rx_bytes, 
>>> total_rx_packets);
>>> +
>>> +     if (xsk_umem_uses_need_wakeup(rx_ring->xsk_umem)) {
>>> +             if (failure || rx_ring->next_to_clean == 
>>> rx_ring->next_to_use)
>>> +                     xsk_set_rx_need_wakeup(rx_ring->xsk_umem);
>>> +             else
>>> +                     xsk_clear_rx_need_wakeup(rx_ring->xsk_umem);
>>> +
>>> +             return (int)total_rx_packets;
>>> +     }
>>>       return failure ? budget : (int)total_rx_packets;
>>
>> Can you elaborate why we're not returning the total budget on failure
>> for the wakeup case?
>
> In the non need_wakeup case (the old behavior), when allocation fails
> from the fill queue we want to retry right away basically busy
> spinning on the fill queue until we find at least one entry and then
> go on processing packets. Works well when the app and the driver are
> on different cores, but a lousy strategy when they execute on the same
> core. That is why in the need_wakeup feature case, we do not return
> the total budget if there is a failure. We will just come back at a
> later point in time from a syscall since the need_wakeup flag will
> have been set and check the fill queue again. We do not want a
> busy-spinning behavior in this case.

That makes sense.  Thanks for all the work on this, Magnus!
-- 
Jonathan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
