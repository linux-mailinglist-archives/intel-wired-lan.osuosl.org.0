Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F160B760372
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jul 2023 02:01:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3BE7A81ABA;
	Tue, 25 Jul 2023 00:01:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BE7A81ABA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690243284;
	bh=TANVtaxOo4DY2cXv7xPacc+iQaavCwdJ9mIeS53zzfA=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=D5Dg+0T3eVez2KiODu6eoxZBtgjOvJKc48Gg3XkC+FW7K3RyHAR/AcK9v99gxBBV2
	 ucL643gaVxIXJcyrYvbgYl5R/LaRFQ/puTk0Ts7jsIa5HjM21SKkNIqAlgzOCqql15
	 6EH5gyYxMNd77+y+p03x7UNb+3U9qKS4ACkD68pIYAgJIDoFW7MG/scrXppYcJT+6F
	 tvIUO69ms8GTu3GhqkmYwozTFZr59M8DCHtwYZyWJ+a7dZGngfmPWjfzXllEIJCARv
	 5Tvbu40bR4I1jJjN5wWD2OYx/CLxqZxbKiePgTGIBrrtmDZBSbQ076AVEn6mfi4wKo
	 6frZSsihnBDUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xMvWy1OsbySq; Tue, 25 Jul 2023 00:01:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 208E281AA7;
	Tue, 25 Jul 2023 00:01:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 208E281AA7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CE5A41BF410
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 00:01:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B315360A89
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 00:01:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B315360A89
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8QdwM5bDxI9E for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jul 2023 00:01:15 +0000 (UTC)
X-Greylist: delayed 144582 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 25 Jul 2023 00:01:14 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D513360A5E
Received: from zg8tmtyylji0my4xnjqumte4.icoremail.net
 (zg8tmtyylji0my4xnjqumte4.icoremail.net [162.243.164.118])
 by smtp3.osuosl.org (Postfix) with ESMTP id D513360A5E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 00:01:14 +0000 (UTC)
Received: from linma$zju.edu.cn ( [10.162.208.50] ) by
 ajax-webmail-mail-app2 (Coremail) ; Tue, 25 Jul 2023 08:00:48 +0800
 (GMT+08:00)
X-Originating-IP: [10.162.208.50]
Date: Tue, 25 Jul 2023 08:00:48 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: "Lin Ma" <linma@zju.edu.cn>
To: "Jakub Kicinski" <kuba@kernel.org>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20220622(41e5976f)
 Copyright (c) 2002-2023 www.mailtech.cn
 mispb-4df6dc2c-e274-4d1c-b502-72c5c3dfa9ce-zj.edu.cn
In-Reply-To: <20230724142155.13c83625@kernel.org>
References: <20230723075042.3709043-1-linma@zju.edu.cn>
 <20230724174435.GA11388@unreal> <20230724142155.13c83625@kernel.org>
MIME-Version: 1.0
Message-ID: <2c84a81c.e2620.1898a5930be.Coremail.linma@zju.edu.cn>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: by_KCgDn74uwEL9k+TCACg--.39599W
X-CM-SenderInfo: qtrwiiyqvtljo62m3hxhgxhubq/1tbiAwIGEmS91fkARAARs1
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
 CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
 daVFxhVjvjDU=
Subject: Re: [Intel-wired-lan] [PATCH v1] i40e: Add length check for
 IFLA_AF_SPEC parsing
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
Cc: daniel@iogearbox.net, Leon Romanovsky <leon@kernel.org>,
 netdev@vger.kernel.org, richardcochran@gmail.com, john.fastabend@gmail.com,
 jesse.brandeburg@intel.com, ast@kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net, linux-kernel@vger.kernel.org,
 hawk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Jakub,

> On Mon, 24 Jul 2023 20:44:35 +0300 Leon Romanovsky wrote:
> > > @@ -13186,6 +13186,9 @@ static int i40e_ndo_bridge_setlink(struct net_device *dev,
> > >  		if (nla_type(attr) != IFLA_BRIDGE_MODE)
> > >  			continue;
> > >  
> > > +		if (nla_len(attr) < sizeof(mode))
> > > +			return -EINVAL;
> > > +  
> > 
> > I see that you added this hunk to all users of nla_for_each_nested(), it
> > will be great to make that iterator to skip such empty attributes.
> > 
> > However, i don't know nettlink good enough to say if your change is
> > valid in first place.
> 
> Empty attributes are valid, we can't do that.
> 
> But there's a loop in rtnl_bridge_setlink() which checks the attributes.

Cool, I will check this out and prepare another patch.

> We can add the check there instead of all users, as Leon points out.
> (Please just double check that all ndo_bridge_setlink implementation
> expect this value to be a u16, they should/)

Okay, I will finish that ASAP

> -- 
> pw-bot: cr

Regards
Lin
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
