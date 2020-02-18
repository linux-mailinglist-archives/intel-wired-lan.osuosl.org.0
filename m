Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 85775162F20
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2020 19:55:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 18668204C1;
	Tue, 18 Feb 2020 18:55:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m8ZKRCVR2EpG; Tue, 18 Feb 2020 18:55:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4E9BD2034B;
	Tue, 18 Feb 2020 18:55:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1A6F81BF95A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 18:54:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1613286096
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 18:54:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PC8z-KDcH4i9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2020 18:54:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4D1AA8557B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 18:54:25 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id e8so2769116wrm.5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 10:54:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=r+BjQ+2qeHRzwq563xO8WHAunXFGHBK9xvOKVsSVi74=;
 b=mhl+g3cDhkTh8cc47iq87t0C9LHE681ndAKjC4TcbgXItv3EV1BNGcZxW5ApFu+dRD
 rNmdhehJtbaguOOf2RdAwyBVCEGKnm1Ab+s4SScl3ZcEQ5v5P+SBZNsFqmJGVkX+39XZ
 I+R8zvVLwGieoR+97B6rq2CJ6eL3TEgU9aUzu1j7uP/tcCLucNEqtlhiZ3vM7/sRTmks
 f8aHHnPf5e4qDI1bdZ3x7w7kbT80hZoNEWa4iVISvQtJxdd6QUuQ0k71XHOsyWqQZeAs
 CKAaG3WvJwmT3tDBXTiwdX57NNHHjDF7wrWkHr/RSQu/O5xfh4SxCdgkHp2ectLBNeE/
 F3dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=r+BjQ+2qeHRzwq563xO8WHAunXFGHBK9xvOKVsSVi74=;
 b=nvr3EAOAh/T7S5nKlxZzPC1TsyDYKKYzhe+Bvw5Yn0FsgPddoKV1SMSbn3hH7jy/88
 tXrV2xVaD54F9MXDiyatsVeYfB/rKaTi56xzHs3C6R1WDEjHuvp4Id9dJu3Gp6h9d3B7
 +09ULNjudERpikaa4Jf8O6kx1r+3fUbhrDtKXDepUuIKr0cWIiRDjlyPMb6p17nxelE4
 H2RmAVAygYNMKbreaND3VBI6krwXdOyZixK9i72KlkBercbsqcpu4RlolZh0HcK2U86S
 HyAZceA7xXpF5GPBLx2PUrJIvqDPStC7h3RYeKWufoF/l+EY+0gj+02KasbCJSdTtDe3
 JhEw==
X-Gm-Message-State: APjAAAW1DXb72BKCRS8YGeTlNyVolMbMIrNwIgzcs3Ocb0ACppfglpm0
 PRegvN9fAr40RQTbv7/eJus=
X-Google-Smtp-Source: APXvYqzABYNfk9UgM05SPcBk6+APE0YnacggzTdBt6Oqs3cqUS9GbNk32+DfkE8bsypZSm0XV9Cwyw==
X-Received: by 2002:adf:e88f:: with SMTP id d15mr29211606wrm.186.1582052063505; 
 Tue, 18 Feb 2020 10:54:23 -0800 (PST)
Received: from ?IPv6:2003:ea:8f29:6000:5cb0:582f:968:ec00?
 (p200300EA8F2960005CB0582F0968EC00.dip0.t-ipconnect.de.
 [2003:ea:8f29:6000:5cb0:582f:968:ec00])
 by smtp.googlemail.com with ESMTPSA id c141sm4251997wme.41.2020.02.18.10.54.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Feb 2020 10:54:23 -0800 (PST)
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <76cd6cfc-f4f3-ece7-203a-0266b7f02a12@gmail.com>
 <02ea88e7-1a79-f779-d58c-bb1dced0b3b4@gmail.com>
 <CAKgT0UfaBpLxWQZO55-KE8QKJD9XgC2SCPAtzo=PA_MAwRxtuw@mail.gmail.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <5dacf5fb-873b-79d5-326f-f30feb1ac645@gmail.com>
Date: Tue, 18 Feb 2020 19:45:53 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAKgT0UfaBpLxWQZO55-KE8QKJD9XgC2SCPAtzo=PA_MAwRxtuw@mail.gmail.com>
Content-Language: en-US
X-Mailman-Approved-At: Tue, 18 Feb 2020 18:55:30 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] r8169: use new helper
 tcp_v6_gso_csum_prep
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
Cc: linux-hyperv@vger.kernel.org,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Ronak Doshi <doshir@vmware.com>, "VMware, Inc." <pv-drivers@vmware.com>,
 Chris Snook <chris.snook@gmail.com>,
 Govindarajulu Varadarajan <_govind@gmx.com>,
 Parvi Kaustubhi <pkaustub@cisco.com>, Sasha Levin <sashal@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 Guo-Fu Tseng <cooldavid@cooldavid.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jay Cliburn <jcliburn@gmail.com>,
 Realtek linux nic maintainers <nic_swsd@realtek.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Pensando Drivers <drivers@pensando.io>, GR-Linux-NIC-Dev@marvell.com,
 Timur Tabi <timur@kernel.org>, Rasesh Mody <rmody@marvell.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Miller <davem@davemloft.net>, Shannon Nelson <snelson@pensando.io>,
 Sudarsana Kalluru <skalluru@marvell.com>,
 Christian Benvenuti <benve@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 18.02.2020 19:37, Alexander Duyck wrote:
> On Mon, Feb 17, 2020 at 1:42 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>>
>> Simplify the code by using new helper tcp_v6_gso_csum_prep.
>>
>> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
>> ---
>>  drivers/net/ethernet/realtek/r8169_main.c | 26 ++---------------------
>>  1 file changed, 2 insertions(+), 24 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/realtek/r8169_main.c b/drivers/net/ethernet/realtek/r8169_main.c
>> index 5a9143b50..75ba10069 100644
>> --- a/drivers/net/ethernet/realtek/r8169_main.c
>> +++ b/drivers/net/ethernet/realtek/r8169_main.c
>> @@ -4108,29 +4108,6 @@ static bool rtl_test_hw_pad_bug(struct rtl8169_private *tp, struct sk_buff *skb)
>>         return skb->len < ETH_ZLEN && tp->mac_version == RTL_GIGA_MAC_VER_34;
>>  }
>>
>> -/* msdn_giant_send_check()
>> - * According to the document of microsoft, the TCP Pseudo Header excludes the
>> - * packet length for IPv6 TCP large packets.
>> - */
>> -static int msdn_giant_send_check(struct sk_buff *skb)
>> -{
>> -       const struct ipv6hdr *ipv6h;
>> -       struct tcphdr *th;
>> -       int ret;
>> -
>> -       ret = skb_cow_head(skb, 0);
>> -       if (ret)
>> -               return ret;
>> -
>> -       ipv6h = ipv6_hdr(skb);
>> -       th = tcp_hdr(skb);
>> -
>> -       th->check = 0;
>> -       th->check = ~tcp_v6_check(0, &ipv6h->saddr, &ipv6h->daddr, 0);
>> -
>> -       return ret;
>> -}
>> -
>>  static void rtl8169_tso_csum_v1(struct sk_buff *skb, u32 *opts)
>>  {
>>         u32 mss = skb_shinfo(skb)->gso_size;
>> @@ -4163,9 +4140,10 @@ static bool rtl8169_tso_csum_v2(struct rtl8169_private *tp,
>>                         break;
>>
>>                 case htons(ETH_P_IPV6):
>> -                       if (msdn_giant_send_check(skb))
>> +                       if (skb_cow_head(skb, 0))
>>                                 return false;
>>
>> +                       tcp_v6_gso_csum_prep(skb, false);
>>                         opts[0] |= TD1_GTSENV6;
>>                         break;
>>
> 
> This change looks more or less identical to the one you made in
> "drivers/net/usb/r8152.c" for patch 3. If you have to resubmit it
> might make sense to pull that change out and include it here since
> they are both essentially the same change.
> 
Right, it's the same change. I just treated r8169 separately because
I happen to be maintainer of it.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
