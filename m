Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 740D83FA7BB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Aug 2021 23:56:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 057286064A;
	Sat, 28 Aug 2021 21:56:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cpyCUu-zr3-Q; Sat, 28 Aug 2021 21:56:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4335460669;
	Sat, 28 Aug 2021 21:56:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1FD231BF354
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Aug 2021 21:56:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0E01E403F5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Aug 2021 21:56:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=lunn.ch
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mpLkiBD5I3_Z for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Aug 2021 21:56:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5BDDE403CF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Aug 2021 21:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=vp90gTxy96WUsrqchSv866KBvrTfoMBmU07VqL1PZDU=; b=pFNZ1Nu/pRKiZ8dYQMUI1E+P4w
 bCkfzHDm8y7N3jee/wtEYZTw+5Bqc21DrSXu7cG4ezTkqilFfLhY2cJEbaLZHXxVPkLs8pD1Y7n8Y
 YOxyQaLsookS4Mqw3aHpxKhEAHw/RH4leKn2hkWGevq6f1qQl46vbrmxfY50SK5mNRFw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1mK6Ir-004KCG-Ij; Sat, 28 Aug 2021 23:55:53 +0200
Date: Sat, 28 Aug 2021 23:55:53 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Maciej Machnikowski <maciej.machnikowski@intel.com>
Message-ID: <YSqw6aJRrWbxRaas@lunn.ch>
References: <20210828211248.3337476-1-maciej.machnikowski@intel.com>
 <20210828211248.3337476-2-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210828211248.3337476-2-maciej.machnikowski@intel.com>
Subject: Re: [Intel-wired-lan] [RFC net-next 1/2] rtnetlink: Add new
 RTM_GETSYNCESTATE message to get SyncE status
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
Cc: abyagowi@fb.com, netdev@vger.kernel.org, richardcochran@gmail.com,
 linux-kselftest@vger.kernel.org, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Aug 28, 2021 at 11:12:47PM +0200, Maciej Machnikowski wrote:
> This patch adds the new RTM_GETSYNCESTATE message to query the status
> of SyncE syntonization on the device.

Hi Maciej

You use syntonization a few times. Is this a miss spelling for
synchronisation, or a SyncE terms?

> @@ -193,7 +196,7 @@ enum {
>  #define RTM_NR_FAMILIES	(RTM_NR_MSGTYPES >> 2)
>  #define RTM_FAM(cmd)	(((cmd) - RTM_BASE) >> 2)
>  
> -/* 
> +/*
>     Generic structure for encapsulation of optional route information.
>     It is reminiscent of sockaddr, but with sa_family replaced
>     with attribute type.
> @@ -233,7 +236,7 @@ struct rtmsg {
>  
>  	unsigned char		rtm_table;	/* Routing table id */
>  	unsigned char		rtm_protocol;	/* Routing protocol; see below	*/
> -	unsigned char		rtm_scope;	/* See below */	
> +	unsigned char		rtm_scope;	/* See below */
>  	unsigned char		rtm_type;	/* See below	*/
>  
>  	unsigned		rtm_flags;
> @@ -555,7 +558,7 @@ struct ifinfomsg {
>  };
>  
>  /********************************************************************
> - *		prefix information 
> + *		prefix information
>   ****/
>  
>  struct prefixmsg {
> @@ -569,7 +572,7 @@ struct prefixmsg {
>  	unsigned char	prefix_pad3;
>  };
>  
> -enum 
> +enum
>  {
>  	PREFIX_UNSPEC,
>  	PREFIX_ADDRESS,

You appear to have a number of white space changes here. Please put
them into a separate patch, or drop them.

     Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
