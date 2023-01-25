Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B85A67BC3E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 21:09:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E02561160;
	Wed, 25 Jan 2023 20:09:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E02561160
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674677392;
	bh=hUZZjZDCoH0d/pjlRqT1sbQm9BPR87wOxeZOu5vDTtA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ubayl41t3eBbSZ3jKJZhRq3pjqdsRfzBVFULLv/IUhVZfvCeSpvFKSwyQUWuGVscQ
	 9rUKgrhnLfezdikyuBtEcHoB1o6e9BC8t155RIp2oZE9THnrgcGpLaGz0Ni0i4+XrG
	 bxZr7tkZH2hhgJdoJLB29qQx0EZVQ0TNowI8Cz2fVC46h6rPi7QPDaCiPexYf8ziCJ
	 9RY1qiSILiqbiPWgHq/9qIFZXD0KQ+ysgYpJjKS7rBHnCMPCpoWAtXdyILhq4/9XUp
	 z0ylpzPL9cxguykj7jXv4cddNwB+83ghI89VnnKABzF8z066fM+SSBMTnSF9otrTg0
	 HtYJYevAWwVBg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id buJyJjbH_JHm; Wed, 25 Jan 2023 20:09:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0734660FB6;
	Wed, 25 Jan 2023 20:09:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0734660FB6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0C6581BF341
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 20:09:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E70A6415A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 20:09:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E70A6415A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NIohkPj-4YEb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 20:09:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 286AF40919
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 286AF40919
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 20:09:44 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae969.dynamic.kabel-deutschland.de
 [95.90.233.105])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 8FA9561CC40F9;
 Wed, 25 Jan 2023 21:09:40 +0100 (CET)
Message-ID: <21a41a1c-4ae4-47c7-c608-b6dd82758b16@molgen.mpg.de>
Date: Wed, 25 Jan 2023 21:09:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
To: Natalia Petrova <n.petrova@fintech.ru>
References: <20230125141328.8479-1-n.petrova@fintech.ru>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230125141328.8479-1-n.petrova@fintech.ru>
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Add checking for null for
 nlmsg_find_attr()
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
Cc: lvc-project@linuxtesting.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Natalia,


Thank you for your patch.

Am 25.01.23 um 15:13 schrieb Natalia Petrova:

In the commit message summary, you could use:

Check if nlmsg_find_attr() returns null

> The result of nlmsg_find_attr() 'br_spec' is dereferenced in
> nla_for_each_nested, but it can take null value in 'nla_find' finction,

f*u*nction

> which will result in an error.
> 
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
> 
> Fixes: 51616018dd1b ("i40e: Add support for getlink, setlink ndo ops")
> Signed-off-by: Natalia Petrova <n.petrova@fintech.ru>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index b36bf9c3e1e4..ed4be4ffeb09 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -13101,6 +13101,8 @@ static int i40e_ndo_bridge_setlink(struct net_device *dev,
>   	}
>   
>   	br_spec = nlmsg_find_attr(nlh, sizeof(struct ifinfomsg), IFLA_AF_SPEC);
> +	if (!br_spec)
> +		return -ENOENT;
>   
>   	nla_for_each_nested(attr, br_spec, rem) {
>   		__u16 mode;


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
