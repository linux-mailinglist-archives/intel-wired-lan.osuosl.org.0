Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 46703F54AB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Nov 2019 20:51:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 69B8286AB8;
	Fri,  8 Nov 2019 19:51:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PZP-QhHTgVKQ; Fri,  8 Nov 2019 19:51:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C867686AF9;
	Fri,  8 Nov 2019 19:51:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 586E11BF285
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 02:57:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5167985E47
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 02:57:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JsIe7x7mAgys for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2019 02:57:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DD95A85E40
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 02:57:35 +0000 (UTC)
Received: from [192.168.1.20] (cpe-24-28-70-126.austin.res.rr.com
 [24.28.70.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 14EA42084C;
 Fri,  8 Nov 2019 02:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573181855;
 bh=CQxQebx01rfyxWBjyBuBcT8jN9KYZVzIqhaOBlm21U0=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Rfc4yF2gnMhTfT+o6yP2RkaqpUTOX8Xes/O4h90kfw6d0462bX7+n1Qs/7PbL9wCu
 UJ+ed34JvTN3rmfzSjPWicytH0MTwykymoEmqYhEUKLTQALmd+diBVSVBW/UEy5ctQ
 PHbkxbrFEO4WJFEC7rEpAYcIw4JcYfcBlzxIrOg4=
To: Florian Fainelli <f.fainelli@gmail.com>, netdev@vger.kernel.org
References: <20191107223537.23440-1-f.fainelli@gmail.com>
 <20191107223537.23440-3-f.fainelli@gmail.com>
From: Timur Tabi <timur@kernel.org>
Message-ID: <dfd60aa0-59e1-5b68-d8ea-61dc3a29ff8e@kernel.org>
Date: Thu, 7 Nov 2019 20:57:33 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191107223537.23440-3-f.fainelli@gmail.com>
Content-Language: en-US
X-Mailman-Approved-At: Fri, 08 Nov 2019 19:51:28 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] net: qcom/emac: Demote
 MTU change print to debug
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
Cc: open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/7/19 4:35 PM, Florian Fainelli wrote:
> Changing the MTU can be a frequent operation and it is already clear
> when (or not) a MTU change is successful, demote prints to debug prints.
> 
> Signed-off-by: Florian Fainelli<f.fainelli@gmail.com>

Acked-by: Timur Tabi <timur@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
