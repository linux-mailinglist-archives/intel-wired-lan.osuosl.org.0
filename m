Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6554C937
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2019 10:17:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 372D887D73;
	Thu, 20 Jun 2019 08:17:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aH6mud51JbZa; Thu, 20 Jun 2019 08:17:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B934D87D63;
	Thu, 20 Jun 2019 08:17:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0C2911BF3A0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 08:17:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0358486A4D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 08:17:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9qQolY9T-kbz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2019 08:17:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BB96B86A40
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 08:17:09 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id b11so1768952lfa.5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 01:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gg0yMFESYjeQyXwPEmDygv0Cu836J6Ow1bSJiNUhAfA=;
 b=lXQ2XvatpLV2xgDnqIUkwDCGYPWhYsLI0WWTA2FiEIGXMow5y8LEkIyRMes8/dCBey
 OAEASfT/UkV5Bs0DiEEmgyYxR1e55hMqiA65gc3xVyrN97fr0BK1oTAkacru05rQBkoH
 Hm2/7f+OqilVDA8T6a7RD2scg78sG0/dv/ZOd5A6EWmG/XacdcqKikjTvqZvM+mSsSa8
 b+NUpsNmKIgyRZYd+uhAFgBImfr0jtgbBzeY9CpOhxC2kQYkMsB4aMlbdPWd8W0PEpig
 7W0+N1ITFgv1czTPRzBxgsko816o8nB6r7cBzojm69Xjcfons0DZz3gst0yKISwruthg
 WsIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gg0yMFESYjeQyXwPEmDygv0Cu836J6Ow1bSJiNUhAfA=;
 b=HpSjDHQiJ50dNkMwXezTFhbm1vbfC1nC0QLnZHh4rY7ER+UeP5yMxlfcU0em5mQMTo
 724Q518NIGVyHYhdvWwo77xC17HAb8oNhintKqW6qnQwJqRRViu9ueFQ4MZu9JFkNSAK
 UtHRNkcEFFyD4dhZt9870zV5k0qBDloKg++YRu8tS8KexIeVFZtc7sC3Idx9mcjRFqLD
 /lkG3u/l+eAkudmvUw0PlIK5t9Eo8WMoRfManYvUQ8ga2bFASQOM4t4ty1kblwuHhRd6
 DE0x+SWQlXr8fScF/BUN4X/7enstYqohgXNXbbsi5IOX4zC7H9Hiv4t5W8Ce8t/a92zf
 wUxw==
X-Gm-Message-State: APjAAAUmTJuJI9I0oG8htx+Z7eFgY1q1sAn4VAMOvzfFVoTn/rgi7HX8
 YWZFYv/4LGVwsKhJuAP68d1XpQ==
X-Google-Smtp-Source: APXvYqzTZakyuNZDE8DK/MgRpMC90V3ffgUu/ysZXi87rs7r9zd7fTy2dAGZ+NUtxNBgw/EMeRrrBQ==
X-Received: by 2002:a19:428b:: with SMTP id
 p133mr23949059lfa.179.1561018627786; 
 Thu, 20 Jun 2019 01:17:07 -0700 (PDT)
Received: from [192.168.0.199] ([31.173.80.13])
 by smtp.gmail.com with ESMTPSA id l23sm3448650lje.106.2019.06.20.01.17.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 01:17:07 -0700 (PDT)
To: Vedang Patel <vedang.patel@intel.com>, netdev@vger.kernel.org
References: <1560966016-28254-1-git-send-email-vedang.patel@intel.com>
 <1560966016-28254-3-git-send-email-vedang.patel@intel.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <c304970a-1973-cdce-17b5-682f28856306@cogentembedded.com>
Date: Thu, 20 Jun 2019 11:16:43 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <1560966016-28254-3-git-send-email-vedang.patel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 2/7] etf: Add
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
Cc: jiri@resnulli.us, l@dorileo.org, jakub.kicinski@netronome.com,
 jhs@mojatatu.com, m-karicheri2@ti.com, intel-wired-lan@lists.osuosl.org,
 xiyou.wangcong@gmail.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 19.06.2019 20:40, Vedang Patel wrote:

> Currently, etf expects a socket with SO_TXTIME option set for each packet
> it encounters. So, it will drop all other packets. But, in the future
> commits we are planning to add functionality which where tstamp value will

    One of "which" and "where", not both. :-)

> be set by another qdisc. Also, some packets which are generated from within
> the kernel (e.g. ICMP packets) do not have any socket associated with them.
> 
> So, this commit adds support for skip_sock_check. When this option is set,
> etf will skip checking for a socket and other associated options for all
> skbs.
> 
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
[...]

MBR, Sergei
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
