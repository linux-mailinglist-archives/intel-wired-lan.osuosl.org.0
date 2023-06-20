Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3155F73732D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 19:49:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C85D941778;
	Tue, 20 Jun 2023 17:49:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C85D941778
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687283361;
	bh=ePzdGkmYwyYMRbFos+MmMA2IZpm4zydM7azOvnhWNes=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1+xA3DdwXe4/EPXJnse2Ck6U5ytj0Q997GW4AzPvyAKuFwGk/TGDyz4KV0dXRa+l3
	 MpOFQOaxcNo/2kng/T46+aOKurSmvvPZlE2txBX4kNpnzsq2yoTkFf+4Dov6i6+TxP
	 w+F+ZcaBM2V+9MXFdc/oMgJyRFgkg0k08R11DiWjYD0jHera3n9jA+mjR9PwjPP2f0
	 IS+IxCqPM7EpcuSjzf3SJCKMfk5U+poC9ua7fC3yab1GNvfYS0PvoQ/gjAqCJoSQqH
	 xkLKWm79HLP+rEDTuZFGj4IYQ2Hhx3JCOdikkdKKT+ig+yJZu3grdcUjmIx6Az4Knt
	 2ZzPbzgUTFmdw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zMBoJ5xYxSVI; Tue, 20 Jun 2023 17:49:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A85B740159;
	Tue, 20 Jun 2023 17:49:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A85B740159
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7A5161BF847
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 17:49:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4F064418D7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 17:49:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F064418D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j72PtmQY43xy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 17:49:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED51B40934
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ED51B40934
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 17:49:13 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2C0716131F;
 Tue, 20 Jun 2023 17:49:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E333C433C8;
 Tue, 20 Jun 2023 17:49:12 +0000 (UTC)
Date: Tue, 20 Jun 2023 10:49:11 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <20230620104911.001a7a4a@kernel.org>
In-Reply-To: <ZJHgOXXHFjsOjlnA@boxer>
References: <20230620082454.377001-1-maciej.fijalkowski@intel.com>
 <20230620095335.43504612@kernel.org> <ZJHgOXXHFjsOjlnA@boxer>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1687283352;
 bh=0wJcGBgyILE2XLRTPn33HEgQx2fkLPGoc11dr/UIKRU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=idGL/fNeqoxiB/XTSAhnnZlTFkamLdLKzehlWT7JbQ4euLneryRlDFYsL0fTWikWb
 gsqi/B1bCvO0csIbenUqI/jjVDKQgxN34JbxnHZkC6UhgEXP71CLe9qvqJZh4C7aAY
 5OZurPcsajwd2pTl5RFiTI/pm45r4wHPhBYRldkl3gAoP766UTaM+ja37sSxuE77+p
 RNVZuL9/OxjhTNbKNyJeZ/MPH9H/lVVaZYfCEjhGVPgy52dJcQK85Gvj5i9Y+vyLpB
 1SKrXWsaDlYqV/8iYx+AWFDlGdfVkAfQNcphBKk7B+VhhypR3CbjxGf74Qu3qg61+c
 2zjjsE/erpUgA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=idGL/fNe
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: add missing napi deletion
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com,
 michal.swiatkowski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 20 Jun 2023 19:22:01 +0200 Maciej Fijalkowski wrote:
> On Tue, Jun 20, 2023 at 09:53:35AM -0700, Jakub Kicinski wrote:
> > Is there user visible impact? I agree that it's a good habit, but
> > since unregister cleans up NAPI instances automatically the patch
> > is not necessarily a fix.  
> 
> It's rather free_netdev() not unregistering per se, no? I sent this patch
> as I found that cited commit didn't delete napis on ice_probe()'s error
> path - I just saw that as a regression. 
> 
> But as you're saying when getting rid of netdev we actually do
> netif_napi_del() - it seems redundant to do explicit napi delete on remove
> path as it is supposed do free the netdev. Does it mean that many drivers
> should be verified against that? Sorta tired so might be missing
> something, pardon. If not, I'll send a v2 that just removes
> ice_napi_del().

I personally prefer to keep track of my resources, so I avoid devm_*
and delete NAPI instances by hand. It's up to the author and/or
maintainer of the driver in question.

My only real ask is to no route this via net and drop the Fixes tag.
Whether you prefer to keep the patch as is or drop ice_napi_del() --
up to you.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
