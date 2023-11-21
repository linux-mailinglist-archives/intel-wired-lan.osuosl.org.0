Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A43D7F3A4C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Nov 2023 00:34:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3B97941452;
	Tue, 21 Nov 2023 23:34:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B97941452
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700609648;
	bh=zYGHc6C9lgd8lRwaj0M074e3v6vVKt9Kow017fdERfQ=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UoY7R1PBLnnKQV76wWz0Yanz0V47dt1aBjKgyhj9bCKrHZj990GFF6a3tYlwiWAua
	 WSL31csppgpDKpEwnvK6QszODR8GvudvA4oMJqR2YpHGN1ymaFQDdJ4e0mCKCwR8aj
	 tSSa1OoC+3pp40L+H3Nj398FlBh/mmuHSOGIkrAvnH8QTS+ph1dMDww35F32hCCsnk
	 JeKOs9CW7N7xOOaKgZJ2/4/1AufXOQWc6gRjU88gMceeWfz6J/VxnH4GdsKngqhS2v
	 IBZmU81+w3ljunaWfHcQ7TGcCwcHCrvIkYLvt1tjwAsiunoh+kYThbHUPTbB8+nCtt
	 e2zSBesYdLodw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q0U6FjZCzmF9; Tue, 21 Nov 2023 23:34:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DB78F404A5;
	Tue, 21 Nov 2023 23:34:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB78F404A5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 272651BF309
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 23:34:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F1754812FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 23:34:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1754812FC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cC04Lwh6Ydvd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 23:34:01 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 44925812DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 23:34:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 44925812DA
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7AC7261B9C;
 Tue, 21 Nov 2023 23:34:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C6C8C433C7;
 Tue, 21 Nov 2023 23:33:59 +0000 (UTC)
Date: Tue, 21 Nov 2023 15:33:58 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20231121153358.3a6a09de@kernel.org>
In-Reply-To: <20231120205614.46350-3-ahmed.zaki@intel.com>
References: <20231120205614.46350-1-ahmed.zaki@intel.com>
 <20231120205614.46350-3-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1700609640;
 bh=13VVws5PcCjLAP+55UIaYOZrBe+ks7pXu1hqEWmgU6I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=IW/0lAkazpPvR2mLvLzKJp3XdexvglQRFUrHW9D4UGKHucfjfAUIv12An/y+VCDZO
 /b1jAnN2Om/rHZchAYEXeI1JE00fcnnHidlpBDCr3L5cBKeda0p1BKHxYFNa7A5J9E
 rPyyyowS5TCNfJ8ytWsL4UxeXLDpBg/Nk/YlIRnwAhIbJRWRxqAdnGmkqYChaVwwZL
 6EugrLGys8ImFsL7sOGmvd2amiHm9yHIRERUWjvvqoZ7Ce0s8UTrynOl101P9C/tW/
 F1VNjTJRHfFBa9GXu5DyPvphkTC0cdqipZdkz+zNsCmHYvFEaAg6SG7lLV6RO02gC4
 RSqbFpgWJn5KA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=IW/0lAka
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 2/7] net: ethtool: add
 support for symmetric-xor RSS hash
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, gal@nvidia.com, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, vladimir.oltean@nxp.com, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 20 Nov 2023 13:56:09 -0700 Ahmed Zaki wrote:
> + * @data: Extension for the RSS hash function. Valid values are one of the
> + *	%RXH_HFUNC_*.

@data is way too generic. Can we call this key_xfrm? key_preproc?

> +/* RSS hash function data
> + * XOR the corresponding source and destination fields of each specified
> + * protocol. Both copies of the XOR'ed fields are fed into the RSS and RXHASH
> + * calculation.
> + */
> +#define	RXH_HFUNC_SYM_XOR	(1 << 0)

We need to mention somewhere that sym-xor is unsafe, per Alex's
comments.

> +++ b/include/uapi/linux/ethtool_netlink.h

You need to fill in the details in:

Documentation/networking/ethtool-netlink.rst
and
Documentation/netlink/specs/ethtool.yaml

Last but not least please keep the field check you moved to the drivers
in the core. Nobody will remember to check that other drivers added the
check as well.
-- 
pw-bot: cr
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
