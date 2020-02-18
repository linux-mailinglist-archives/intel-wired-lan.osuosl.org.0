Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5788C162F21
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2020 19:55:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 057A2853D9;
	Tue, 18 Feb 2020 18:55:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bWeNfDCFHqFj; Tue, 18 Feb 2020 18:55:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A796A85585;
	Tue, 18 Feb 2020 18:55:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 412081BF95A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 18:54:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3D03686096
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 18:54:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 27iB6YAngF7k for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2020 18:54:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7F1248557B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 18:54:27 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id k11so25241179wrd.9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 10:54:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Y7qUJSXwwRkICtUYTtp+S0/ljWs/qWqgz7p3m1sFX4Y=;
 b=aLFDpYUJFF3GYhbt7B7EhwuQo/+PXdf4Cfpf+fLFmynmOloqWaNW1NN/1+DrE7t4Lu
 Srcd9TdLK9vwjhpJ8K2kKkKkWQ4oHIUkxPZt5Gy8dYKeMWmWWc9zxm8N8nGQKRGzV+r5
 llpag+bUfQ9rhiEhw7+9h+haFlzXKTb9ybJpGu3xQIoj7RRhUFhgueF5quN0Hq+efrIy
 Hd1c9NtOLP6y376rgYS4FLyixrDnbWje9cDdiVSt4/UjDuoBeuAv7dmdvMT67HdyFMVE
 YbQEK98gshDK24QcUU95gt1ddTGfPWpSY9k5zn/cRfSnp9sMGNa5R+H7ApcvIUFoG3FP
 qvHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Y7qUJSXwwRkICtUYTtp+S0/ljWs/qWqgz7p3m1sFX4Y=;
 b=DRvKzgv+ooMiNjECuL6dJ9S23+AR6yghKu3tfDrw3tZwh0BjfeuziTNHebeN6w95HU
 uqiHyRX36rwAyPBxDK47qvi41tUsB7EGCt+/3y8U/VFlcx9xwn6kdNswzfqm56uhgJQ+
 1v2ozq3nvaGT1LIEGN1Sjd/I7nGeGGKmOQhuQCmlKdmKqVJNVomIO4Jc3Z42CbvD9rQK
 TK1RHC9KdOe3r52Yt7lzOnxfyFzkTDja94ifLrKiEBPZpbPAr7eNdj+8/nqUIAHn3dIa
 Fqn/drrSY+jpqUespJmntfV+Gze+krmRTPg3iDE30QCk6dpkQ8ySYoXqXALr4Es+VfTf
 cU4w==
X-Gm-Message-State: APjAAAVLnQSjfpD4IkEy9v2jpufSnFIkSW0FZVGieow2oSVnTog7WxPT
 +yED7PhTUEUyC69DaJCDWVA=
X-Google-Smtp-Source: APXvYqzzvKAZpis1HIhIgd3mnujaR+Dlua6dzCzgByfruiDOYiVDYIQnuVVk6MPyVZLvqfKfOGODfQ==
X-Received: by 2002:adf:a381:: with SMTP id l1mr30546370wrb.102.1582052065975; 
 Tue, 18 Feb 2020 10:54:25 -0800 (PST)
Received: from ?IPv6:2003:ea:8f29:6000:5cb0:582f:968:ec00?
 (p200300EA8F2960005CB0582F0968EC00.dip0.t-ipconnect.de.
 [2003:ea:8f29:6000:5cb0:582f:968:ec00])
 by smtp.googlemail.com with ESMTPSA id e22sm4299861wme.45.2020.02.18.10.54.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Feb 2020 10:54:25 -0800 (PST)
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <76cd6cfc-f4f3-ece7-203a-0266b7f02a12@gmail.com>
 <9fdc5f0c-fdf0-122e-48a5-43ff029cf8d9@gmail.com>
 <CAKgT0UeUEcoKZsRnxzftMA4tc2chasmW+sWQkP11hVLbdYTYxA@mail.gmail.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <f349d932-582c-96f9-fa7a-b76c615adb96@gmail.com>
Date: Tue, 18 Feb 2020 19:53:48 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAKgT0UeUEcoKZsRnxzftMA4tc2chasmW+sWQkP11hVLbdYTYxA@mail.gmail.com>
Content-Language: en-US
X-Mailman-Approved-At: Tue, 18 Feb 2020 18:55:30 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/3] net: core: add helper
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

On 18.02.2020 19:25, Alexander Duyck wrote:
> On Mon, Feb 17, 2020 at 1:41 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>>
>> Several network drivers for chips that support TSO6 share the same code
>> for preparing the TCP header. A difference is that some reset the
>> payload_len whilst others don't do this. Let's factor out this common
>> code to a new helper.
>>
>> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
>> ---
>>  include/net/ip6_checksum.h | 12 ++++++++++++
>>  1 file changed, 12 insertions(+)
>>
>> diff --git a/include/net/ip6_checksum.h b/include/net/ip6_checksum.h
>> index 7bec95df4..ef0130023 100644
>> --- a/include/net/ip6_checksum.h
>> +++ b/include/net/ip6_checksum.h
>> @@ -76,6 +76,18 @@ static inline void __tcp_v6_send_check(struct sk_buff *skb,
>>         }
>>  }
>>
>> +static inline void tcp_v6_gso_csum_prep(struct sk_buff *skb,
>> +                                       bool clear_payload_len)
>> +{
>> +       struct ipv6hdr *ipv6h = ipv6_hdr(skb);
>> +       struct tcphdr *th = tcp_hdr(skb);
>> +
>> +       if (clear_payload_len)
>> +               ipv6h->payload_len = 0;
>> +
>> +       th->check = ~tcp_v6_check(0, &ipv6h->saddr, &ipv6h->daddr, 0);
>> +}
>> +
>>  #if IS_ENABLED(CONFIG_IPV6)
>>  static inline void tcp_v6_send_check(struct sock *sk, struct sk_buff *skb)
>>  {
> 
> So functionally I believe this is correct. The only piece I have a
> question about is if we should just force the clear_payload_len as
> always being the case since the value should either be
> ignored/overwritten in any GSO case anyway.
> 
I also thought about this and just wasn't sure whether this functional
change may break any driver. But yes, then let's change it this way.
Breaking down the series into smaller patches makes it easier to
revert an individual patch in case of a problem.

> Reviewed-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> 
Thanks for the review.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
