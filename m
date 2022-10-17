Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AC06017F9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Oct 2022 21:46:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86D60416EC;
	Mon, 17 Oct 2022 19:46:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86D60416EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666035966;
	bh=UuShIN1KJiDt1gfl86uQTPGsyjJ6qFwih/sAD/F2a0E=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9iTwRgdzv5v9XKcQ5i9kgngFCLFLmO9Yld4SByBOh9sSVPl48uaJI36JiPG+vIN0w
	 Y/8Ehnz6xu+D2GHWD6Y37a/t66P7z7sAM1Q67asBIZ61lr9pCH+jUB96LLEsPMBMf0
	 FdYYoqbgVrYZQ5ChqA/0mtE7lQpAWGSgpDnC++Gg0lrS7c7EAH/6b+njo8C9ewwX3/
	 pz0/gtlpytHOVTbC6VkybdLEW3oK28bUo69Gr+ijsKwNlxbhy19ARDbOXv3adWVR2A
	 ntsjSay6lY1wNjppTDj/4Be4fj5vkHdjtd+Fcef1GF59az5Q+hkgs/+DjCiynfCU8g
	 HVjTDV+VcJ3hA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id er9pkDSKClbg; Mon, 17 Oct 2022 19:46:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F017416EA;
	Mon, 17 Oct 2022 19:46:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F017416EA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 457C41BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 19:45:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1F36C82C7D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 19:45:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F36C82C7D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tR-JCXK9LBgP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Oct 2022 19:45:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62E6F82C75
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 62E6F82C75
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 19:45:58 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4CFB9611DB;
 Mon, 17 Oct 2022 19:45:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83ACDC433C1;
 Mon, 17 Oct 2022 19:45:56 +0000 (UTC)
Date: Mon, 17 Oct 2022 12:45:55 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Message-ID: <20221017124555.5d79d3f7@kernel.org>
In-Reply-To: <1665701671-6353-1-git-send-email-jdamato@fastly.com>
References: <1665701671-6353-1-git-send-email-jdamato@fastly.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1666035956;
 bh=AcQUpxtomyyBbwP96ZnJXZrZYKpLsZxOyq8tfXpGi3Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=m1/7O1XpNrpBR75siE1KA1U0ocNX/wrff4PAtRqQBfTbe49ds5CGtDObqxLPDXqjA
 hI7XpPBsq5Ql7vEwcW9SObcApm0aSpVV3uQ+1rA3lL5iAJhM9JHYqviG3PwoBteWat
 7JPqe6reGzcJpPjRso8dQ4OurhYlRRvHNG4S6m9hdhlHkUGY185sy4A/ZMxbfP0EYu
 DxdUxnI6xf5+U4o9oCuIffRhtA9sb5DLt95XwiKYl2buSUQTpCl7LdglN5hFxYPRoX
 qUx6IJS+DR7preaLroNcNAQmjviMgWFIFZI7ut6MSDvxIO6BrNh8A4Hpshvo5ObTfb
 r7lt5pHtTouNg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=m1/7O1Xp
Subject: Re: [Intel-wired-lan] [net-queue bugfix RFC] i40e: Clear
 IFF_RXFH_CONFIGURED when RSS is reset
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 13 Oct 2022 15:54:31 -0700 Joe Damato wrote:
> Before this change, reconfiguring the queue count using ethtool doesn't
> always work, even for queue counts that were previously accepted because
> the IFF_RXFH_CONFIGURED bit was not cleared when the flow indirection hash
> is cleared by the driver.

It's not cleared but when was it set? Could you describe the flow that
gets us to this set a bit more?

Normally clearing the IFF_RXFH_CONFIGURED in the driver is _only_
acceptable on error recovery paths, and should come with a "this should
never happen" warning.

> For example:
> 
> $ sudo ethtool -x eth0
> RX flow hash indirection table for eth0 with 34 RX ring(s):
>     0:      0     1     2     3     4     5     6     7
>     8:      8     9    10    11    12    13    14    15
>    16:     16    17    18    19    20    21    22    23
>    24:     24    25    26    27    28    29    30    31
>    32:     32    33     0     1     2     3     4     5
> [...snip...]
> 
> As you can see, the flow indirection hash distributes flows to 34 queues.
> 
> Increasing the number of queues from 34 to 64 works, and the flow
> indirection hash is reset automatically:
> 
> $ sudo ethtool -L eth0 combined 64
> $ sudo ethtool -x eth0
> RX flow hash indirection table for eth0 with 64 RX ring(s):
>     0:      0     1     2     3     4     5     6     7
>     8:      8     9    10    11    12    13    14    15
>    16:     16    17    18    19    20    21    22    23
>    24:     24    25    26    27    28    29    30    31
>    32:     32    33    34    35    36    37    38    39
>    40:     40    41    42    43    44    45    46    47
>    48:     48    49    50    51    52    53    54    55
>    56:     56    57    58    59    60    61    62    63

This is odd, if IFF_RXFH_CONFIGURED is set driver should not
re-initialize the indirection table. Which I believe is what
you describe at the end of your message:

> But, I can increase the queue count and the flow hash is preserved:
> 
> $ sudo ethtool -L eth0 combined 64
> $ sudo ethtool -x eth0
> RX flow hash indirection table for eth0 with 64 RX ring(s):
>     0:      0     1     2     3     4     5     6     7
>     8:      8     9    10    11    12    13    14    15
>    16:     16    17    18    19     0     1     2     3
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
