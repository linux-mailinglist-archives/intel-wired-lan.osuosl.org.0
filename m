Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BB28B6E0773
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Apr 2023 09:15:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47AD041DD9;
	Thu, 13 Apr 2023 07:15:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47AD041DD9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681370144;
	bh=DJrLf2729tMp3r+eSLq9CpOFLbbYAl9//Q9tFLcPieE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DB4RliZ8j4/aS7xcOShLIFrxG12hyXE0J0QjYxJV83qZsWi7dUC8Ks5NpHKHP1QGm
	 TiHRolgGaIETDwLhXACymYx4v5YUZsOfMXIEODE18vWwR6PaO2m2ZUjszlgbXcKqGG
	 cpfXljSNmSq77/XEkt0tTbcqu0vgoB6f8lVa4z+e785oduA3cxnAfuOi9Eoy+KL5dL
	 9K6E4a7qPJdjgzuEkOR9H1OOu7hujEfYxymYwDlvPbUfFKD1rGWraZ38AxCn9nV0kD
	 KcEprW9FiZc5CCLgbypdSfgQ+inrp+7xDrgqqFtRhqhqnNNa/JonNQa/ehkGeacdbJ
	 HWqe7iVrPwEbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1EgRiVjlcjnw; Thu, 13 Apr 2023 07:15:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7DD441E74;
	Thu, 13 Apr 2023 07:15:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7DD441E74
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B4C391BF3F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 07:15:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7D8D383CD8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 07:15:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D8D383CD8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2CxShttD39b2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Apr 2023 07:15:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 868A183C64
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 868A183C64
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 07:15:36 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3276F63B48;
 Thu, 13 Apr 2023 07:15:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4E2DC433EF;
 Thu, 13 Apr 2023 07:15:33 +0000 (UTC)
Date: Thu, 13 Apr 2023 10:15:29 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20230413071529.GE182481@unreal>
References: <20230411011354.2619359-1-pavan.kumar.linga@intel.com>
 <ZDb3rBo8iOlTzKRd@sashalap>
 <643703892094_69bfb294a3@willemb.c.googlers.com.notmuch>
 <d2585839-fcec-4a68-cc7a-d147ce7deb04@intel.com>
 <20230412192434.53d55c20@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230412192434.53d55c20@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1681370134;
 bh=62nqpbftTHPVHp6Tb1GAyNozDF2hZC9FLijQL9QkXRo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LEMpdxxEtuX4S4qK8HNpc1f1ydmWmIipnDOFQ5JwZP1gJfL6MinxO0wOX6VEhYMOS
 JSjGPY454pEtXKRpktbvfgSdXI9aoWf+zyBkulOVHI1pqj2cm2aROy6hp/72XvxBOo
 loA/4yrVc8czwJhWi/0aGRVMyvAru2ko+gxWu9vq3B/CMJa3tZ/vwPZS5n8K60C9Ij
 AlsRYwIMlh8zaDkoUTMmuwOXLgQr+PrQ9lZYaxvm8GGnBV5W3ftgA8y6ZoYuQKIyjh
 ZqWo7GiC8AmQtI7ZTCZo/eD3Tj9cXlrcdqoHYu+5x0NGltzcs2ItCG9RlSOIWAWWid
 EpopElnPGB16A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=LEMpdxxE
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 00/15] Introduce Intel
 IDPF driver
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
Cc: Sasha Levin <sashal@kernel.org>,
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>, pabeni@redhat.com,
 willemb@google.com, jesse.brandeburg@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, decot@google.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 12, 2023 at 07:24:34PM -0700, Jakub Kicinski wrote:
> On Wed, 12 Apr 2023 19:03:22 -0500 Samudrala, Sridhar wrote:
> > On 4/12/2023 2:16 PM, Willem de Bruijn wrote:
> > > Sasha Levin wrote:  
> > >> On Mon, Apr 10, 2023 at 06:13:39PM -0700, Pavan Kumar Linga wrote:  
> > >> How will this work when the OASIS driver is ready down the road?
> > >>
> > >> We'll end up with two "idpf" drivers, where one will work with hardware
> > >> that is not fully spec compliant using this Intel driver, and everything
> > >> else will use the OASIS driver?
> > >>
> > >> Does Intel plan to remove this driver when the OASIS one lands?
> > >>
> > >> At the very least, having two "idpf" drivers will be very confusing.  
> > > 
> > > One approach is that when the OASIS v1 spec is published, this driver
> > > is updated to match that and moved out of the intel directory.  
> > 
> > Yes. We don't want to have 2 idpf drivers in the upstream kernel.
> > It will be an Intel vendor driver until it becomes a standard.
> > Hope it will be OK to move the driver out of the intel directory when 
> > that happens.
> 
> As I said previously in [0] until there is a compatible, widely
> available implementation from a second vendor - this is an Intel
> driver and nothing more. It's not moving anywhere.

Even if second implementation arrives, it is unlikely that this
idpf driver will be moved. Mainly because of different level of
review between vendor driver vs. standard one, and expected pushback
to any incompatible changes in existing driver as it is already deployed.

Thanks

> 
> I think that's a reasonable position which should allow Intel to ship
> your code and me to remain professional.
> 
> [0] https://lore.kernel.org/all/20230403163025.5f40a87c@kernel.org/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
