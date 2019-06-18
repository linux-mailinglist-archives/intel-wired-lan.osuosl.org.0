Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4FE49D7D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jun 2019 11:36:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6E712862BC;
	Tue, 18 Jun 2019 09:36:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tsarkGGDr8qR; Tue, 18 Jun 2019 09:36:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6A8CB84AFB;
	Tue, 18 Jun 2019 09:36:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D32E71BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2019 09:36:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CFBAB8774C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2019 09:36:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bat+3wQJzg6B for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jun 2019 09:36:02 +0000 (UTC)
X-Greylist: delayed 00:07:04 by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E835B87648
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2019 09:36:01 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id q26so8750794lfc.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2019 02:36:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=LaIXT35LNBxZx9kiA+FASn/VWYxf49mAYUDbGkviNOY=;
 b=Y0ZAv1eHbGmWgVthNUBIoU7LLatJnsqhIgmiubpwcD2A6yB0rrDoNNvqcFzGXY8zfq
 Tmz50TmIWHANVcXbz/cuiIu1y8eWst8tTv6s30B4V4DctiTIhMMPOPJY76Clf5G/vp05
 4YMFf8Cyrqlt85mEBWmCTtUM+XGbpcYP9YrJ10+iTPdVUjH2/7PqMamQiGbwUnIjxcJQ
 Mnvus2sgAhBXt8pcaOfeK2pcqJqlaaKWSYI0xS3LEd56rYKuD7T21/RpXwRPkBBVEKs0
 npH7J/+2RGo5OpU6v/Dot5Pb4CLRHwGHWRgUmk+L0cxbKKhB0VOmjGobKVdH/rCMfPbZ
 SwjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LaIXT35LNBxZx9kiA+FASn/VWYxf49mAYUDbGkviNOY=;
 b=FUpTnI6VSgTvCf0LOSB4pbSRJvv3gfHIwIAVdOpe/rRAsEdlC7ezu3zWLjeHzxYWNv
 86Snwh3bzCYo9y9fy7Y3oeYFyqQrNCmhGh1Jt2aX0s4vB4zCc6fDLBypj+EUGg4txl8X
 U93rJbq9NzDTbumBvFpD9ub9vsQ6hedKntmTqdowTrg/xgyEnQi03GngJeTBv1t0KfLl
 iDTs+C7Vn4S210BnRxYxkElOZn3c48VFoGloYenmhO0dA+bHMUPnAM81c9qKsACVhZZK
 MkOuilL76TBlutBnt2Xx+UsUGgIV4LtOwUJt/x1NhCX8tFQ/3loxpQ2Zw2Ox5fE6hp7Z
 kNcg==
X-Gm-Message-State: APjAAAVyMg9yoF4yvJJzPL/K6IzDcNlkD8yWETuOWAGgnvjqtZilToWK
 9F8GtWts6Rk7n81k7WIl/W/bNg==
X-Google-Smtp-Source: APXvYqwn/Y4BA9qgExwuNjbhDZh2ndI2G+wayTKGMzADAfoFwjrTPn5gvKHqIqXRuRcb6JEp3A0bHA==
X-Received: by 2002:a19:4017:: with SMTP id n23mr62885092lfa.112.1560850135425; 
 Tue, 18 Jun 2019 02:28:55 -0700 (PDT)
Received: from [192.168.0.199] ([31.173.80.40])
 by smtp.gmail.com with ESMTPSA id h3sm2511409lja.93.2019.06.18.02.28.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 02:28:54 -0700 (PDT)
To: Vedang Patel <vedang.patel@intel.com>, netdev@vger.kernel.org
References: <1560799870-18956-1-git-send-email-vedang.patel@intel.com>
 <1560799870-18956-3-git-send-email-vedang.patel@intel.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <3b9b74f4-526e-143e-21a9-ffd841b26bcb@cogentembedded.com>
Date: Tue, 18 Jun 2019 12:28:35 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <1560799870-18956-3-git-send-email-vedang.patel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/6] etf: Add
 skip_sock_check
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
Cc: jiri@resnulli.us, l@dorileo.org, jhs@mojatatu.com,
 intel-wired-lan@lists.osuosl.org, xiyou.wangcong@gmail.com,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello!

On 17.06.2019 22:31, Vedang Patel wrote:

> Currently, etf expects a socket with SO_TXTIME option set for each packet
> it encounters. So, it will drop all other packets. But, in the future
> commits we are planning to add functionality which where tstamp value will
> be set by another qdisc. Also, some packets which are generated from within
> the kernel (e.g. ICMP packets) do not have any socket associated with them.
> 
> So, this commit adds support for skip_sock_check. When this option is set,
> etf will skip checking for a socket and other associated options for all
> skbs.
> 
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
> ---
>   include/uapi/linux/pkt_sched.h |  1 +
>   net/sched/sch_etf.c            | 10 ++++++++++
>   2 files changed, 11 insertions(+)
> 
> diff --git a/include/uapi/linux/pkt_sched.h b/include/uapi/linux/pkt_sched.h
> index 8b2f993cbb77..69fc52e4d6bd 100644
> --- a/include/uapi/linux/pkt_sched.h
> +++ b/include/uapi/linux/pkt_sched.h
> @@ -990,6 +990,7 @@ struct tc_etf_qopt {
>   	__u32 flags;
>   #define TC_ETF_DEADLINE_MODE_ON	BIT(0)
>   #define TC_ETF_OFFLOAD_ON	BIT(1)
> +#define TC_ETF_SKIP_SOCK_CHECK  BIT(2)

   Please indent with a tab like above, not 2 spaces.

[...]

MBR, Sergei
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
