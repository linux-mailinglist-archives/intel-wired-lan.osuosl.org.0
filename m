Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4076350D4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Nov 2022 08:00:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 277FD82100;
	Wed, 23 Nov 2022 07:00:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 277FD82100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669186855;
	bh=VHVtxWkTUebBLYDflK6VgT0Xl7mrOEbhh4nuA3cSmpk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LX73bHh7UCmpKRF7ef8ECwIYP4lpU4oQ0SWGogbANMvbTFdefKklQapid68S/7SsC
	 qfl+Tlcf1/nIIpZEaLMwEYkCBTx5diOzcrYBWklLAmrU3DpEHsKNqg8+TPsFhEdmo1
	 U/uNyC7lMKxHsgN+xBMleupCkm87j5T5dcWHPTO3ExNNSN6MaFBJdxyGBNfqDf786J
	 V+fy6zMUSIApqnnQSdCvwRVJuVCeVvGQTcRDl8mgIvbCmKsasBtl+8FqTgGSBW8JRf
	 VD7EW8YaWHg8CiGeEpRCEAOWBm6TvK5tnb7sff+MYg8BxKwB+noa+mDedBfpvU8OlM
	 7PZhTzgfPIuVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l9GVkhHxQey1; Wed, 23 Nov 2022 07:00:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3CBAB820FA;
	Wed, 23 Nov 2022 07:00:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3CBAB820FA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1C16C1BF399
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 07:00:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E87CD405E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 07:00:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E87CD405E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uJf28tstJCGj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Nov 2022 07:00:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2695A408B4
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2695A408B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 07:00:48 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 36386B81ED5;
 Wed, 23 Nov 2022 07:00:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53CEDC433B5;
 Wed, 23 Nov 2022 07:00:43 +0000 (UTC)
Date: Wed, 23 Nov 2022 09:00:38 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Alexander Lobakin <alexandr.lobakin@intel.com>
Message-ID: <Y33FFtXqcAiDXxLA@unreal>
References: <20221118090306.48022-1-tirthendu.sarkar@intel.com>
 <Y3ytcGM2c52lzukO@unreal>
 <20221122155759.426568-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221122155759.426568-1-alexandr.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1669186844;
 bh=h4qg7Xue/Hu8HNz4giAOKeVz2yr0I+aE6Vrebw/pOvA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B2ctS6KCMORIH3Ehzc4jigb2NC/+Ygtah3IngOYRRmT118D9ZERyizEHRE32Bnhl+
 cZ6jGjxFhCUNojbUN81A9FBVivVu59gl727USX1Wh3n/QiTeyA1HrH2vqYDR4fNhyP
 cK++0rbmL3uLtZYCiwpdloIlsc/x8PPbf/Hla60THHOfk3afjBBQdJ8B3RHJW5VWYh
 Im/O1xzs/6dyuKlIrqD+WZ8pGJFrFaim1zeFOoR5wWdXqkcOFrp2qksZ170D6HcBi9
 BtqPCYwp0TBCqaac2mb/1o21etPbT+iAQczjN1jPAwtGniOfF0diHjBbjKL0zrfwA/
 uoNOV6BDMjWYQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=B2ctS6KC
Subject: Re: [Intel-wired-lan] [PATCH intel-next v4] i40e: allow toggling
 loopback mode via ndo_set_features callback
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
Cc: tirtha@gmail.com, intel-wired-lan@lists.osuosl.org,
 magnus.karlsson@intel.com, Tirthendu Sarkar <tirthendu.sarkar@intel.com>,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Nov 22, 2022 at 04:57:59PM +0100, Alexander Lobakin wrote:
> From: Leon Romanovsky <leon@kernel.org>
> Date: Tue, 22 Nov 2022 13:07:28 +0200
> 
> > On Fri, Nov 18, 2022 at 02:33:06PM +0530, Tirthendu Sarkar wrote:
> > > Add support for NETIF_F_LOOPBACK. This feature can be set via:
> > > $ ethtool -K eth0 loopback <on|off>
> > > 
> > > This sets the MAC Tx->Rx loopback.
> > > 
> > > This feature is used for the xsk selftests, and might have other uses
> > > too.
> 
> [...]
> 
> > > @@ -12960,6 +12983,9 @@ static int i40e_set_features(struct net_device *netdev,
> > >  	if (need_reset)
> > >  		i40e_do_reset(pf, I40E_PF_RESET_FLAG, true);
> > >  
> > > +	if ((features ^ netdev->features) & NETIF_F_LOOPBACK)
> > > +		return i40e_set_loopback(vsi, !!(features & NETIF_F_LOOPBACK));
> > 
> > Don't you need to disable loopback if NETIF_F_LOOPBACK was cleared?
> 
> 0 ^ 1 == 1 -> call i40e_set_loopback()
> !!(0) == 0 -> disable
> 

Nice, thanks,
Reviewed-by: Leon Romanovsky <leonro@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
