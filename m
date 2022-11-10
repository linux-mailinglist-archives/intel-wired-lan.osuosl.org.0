Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D71624DA1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Nov 2022 23:29:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C58860B2D;
	Thu, 10 Nov 2022 22:29:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C58860B2D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668119387;
	bh=vJWofHGe9JXWiff1rqsoLFCeaVrhOen06PITY5xPS9k=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d+jdXSfHPSThqncFWDG1WaVCnsmRDqf3sjpDk+jRoTKpMJA2tzCWw0MiqdNDq9E+f
	 spX+R7HtCPbUVGjROEdKNVj+kS8Dc9dPR/kL7AZDJJYGiqfVxTYiodMErEw3b4C5UL
	 lA3a2a6QLXV6xO2vLkzbeoQfOWCIXDvdJt1lxORpomXX7/QyxQ3+gzwXfNUuWkAlK6
	 skTho1wqwrh18SDyQkWJ2y9+GrIVVMArpBizsdO39VEVY9JZypA43eHlBtgpQNvyil
	 PoHzSl3ntL8Mk3F7oTgQb4vfkuD6wnuB5S8jzdop/8GMn1jvTkV8AAzhKFRdOVoWMX
	 QFO3l4yxqvLAQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sjH5yHCHcvcL; Thu, 10 Nov 2022 22:29:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E03D60073;
	Thu, 10 Nov 2022 22:29:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E03D60073
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ABEA21BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 20:24:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 844DE81310
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 20:24:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 844DE81310
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZnKaUITUa2vV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Nov 2022 20:24:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 44F28812F5
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 44F28812F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 20:24:24 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 077F9B82368;
 Thu, 10 Nov 2022 20:24:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 021DDC433D6;
 Thu, 10 Nov 2022 20:24:18 +0000 (UTC)
Date: Thu, 10 Nov 2022 12:24:18 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20221110122418.32414666@kernel.org>
In-Reply-To: <Y20vtqd6raqg8iwy@unreal>
References: <20221108102502.2147389-1-ivecera@redhat.com>
 <Y2vvbwkvAIOdtZaA@unreal>
 <CO1PR11MB508996B0D00B5FE6187AF085D63E9@CO1PR11MB5089.namprd11.prod.outlook.com>
 <20221110155147.1a2c57f6@p1.luc.cera.cz> <Y20vtqd6raqg8iwy@unreal>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 10 Nov 2022 22:29:42 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1668111859;
 bh=oWFW/8U3qZ8K+HlDlY56PmsBYeKztJtU4Zw2SWvAZ5E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=AfEgCRbV8iA8zRiZVMbTZ6NjFpO5lECSJ9OBbtn9ohHVDE1XXL00G/iPScs8v5JiL
 7K3emcdfrTwMUoeZVSihsJorF2ljIBOl7enJMHr7uNVB3oZLpcw72e0ptUCAA6rCdA
 T0LBlDtTlP5mHtei0O930nqgoioh8t8sdfbiYKigSG5B0+LGRHhyNW76AYSS3hS7kh
 7/65+DWTGsLbdDntTSuGxHVlNRlhnZTTgtveLu/3LYQ4bj7BHGjID1zoqWtRSALpE1
 j4SqISj8q5m8XNpAkDkVlcprBnsJcLu/Sa14imnuTLWopKTd0ozc2MtIhYUo2OtSMN
 Fml5m4uqyJVTg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key)
 header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=AfEgCRbV
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: Do not restart Tx queues
 after reset task failure
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
Cc: Ivan Vecera <ivecera@redhat.com>, SlawomirX Laba <slawomirx.laba@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Piotrowski,
 Patryk" <patryk.piotrowski@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS\" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>"@osuosl.org,
 "David S. Miller" <davem@davemloft.net>,
 "sassmann@redhat.com" <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 10 Nov 2022 19:07:02 +0200 Leon Romanovsky wrote:
> > > Yes I think you're right. A ton of people check it without the
> > > lock but I think thats not strictly safe. Is dev_close safe to
> > > call when netif_running is false? Why not just remove the check
> > > and always call dev_close then.
> > 
> > Check for a bit value (like netif_runnning()) is much cheaper than
> > unconditionally taking global lock like RTNL.  
> 
> This cheap operation is racy and performed in non-performance
> critical path.

To be clear - the rtnl_lock around the entire if is still racy 
in the grand scheme of things, no? What's stopping someone from
bringing the device right back up after you drop the lock?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
