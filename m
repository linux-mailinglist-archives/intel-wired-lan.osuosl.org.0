Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC516340A7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Nov 2022 16:58:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D31A382030;
	Tue, 22 Nov 2022 15:58:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D31A382030
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669132692;
	bh=u/AWxAaxnfwiIByaFArN2BsHhIzZQTXJYho9UZiidDE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gN0sx9fecVrzF0Cw0e5+BioomYGHYGL/hL+T4XoiZ46G+m71I4wQ6uNYDHHQyTCME
	 it3mxCUisS4mbVXmdSSslFzrsVm+ZQaQH0DUGZ0Chqh+iofndKDvZcih/5LopDcaeR
	 RvDWM52iaBd0kAM69KAIDFepV/1G/l9K2zxKMfin8kfIe67MyK78+hPdIHrsiBjvBd
	 KyqQal3AofNmdcVKfoUaOg8ZSuP4iqClVvcMkjMrshPsDw/YbS0g52TrmYGemEPNZJ
	 XMtw+aFUcuWfXW0x0F7zyCOzdzTFielMACZkej5Azq5L74Sm9NjOlvRhO2ouXX1lzW
	 byOBNxEJC/yaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lQXCZ3c9ymew; Tue, 22 Nov 2022 15:58:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC6A18202F;
	Tue, 22 Nov 2022 15:58:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC6A18202F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD4011BF330
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 15:58:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A0D31610DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 15:58:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A0D31610DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ot_b7YJhRB_l for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Nov 2022 15:58:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89B1A61086
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 89B1A61086
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 15:58:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="293556826"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="293556826"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 07:58:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="705013101"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="705013101"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga008.fm.intel.com with ESMTP; 22 Nov 2022 07:58:02 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 2AMFw0cx020296; Tue, 22 Nov 2022 15:58:00 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Leon Romanovsky <leon@kernel.org>
Date: Tue, 22 Nov 2022 16:57:59 +0100
Message-Id: <20221122155759.426568-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <Y3ytcGM2c52lzukO@unreal>
References: <20221118090306.48022-1-tirthendu.sarkar@intel.com>
 <Y3ytcGM2c52lzukO@unreal>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669132684; x=1700668684;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Lx4pnKsO3cVJFE1M7M5Wllsqubn+S6Ss+79s0TGmVrs=;
 b=g+qwF+B2Ufz+TqLYpOrgvBEp1ojs0zS4JRgix3PWpS1U7fBzCaCbbtFX
 TZb+hyjSrgUQfwCKc6f4m0Nx8I9uk35ssLoUzQExa+fX/ga7ctqAvW+AN
 xDfQRIU86Gw3HjCm+sCS4QAQTc2k5EET4Ra6+0/GVyeo3pdUSEbQhk88L
 VuDDrJfg/ldK1s2KP9pc1uWjF6tAU1ZdekovT4YtOUdi+We/rAOxHtbmv
 lErZ1Nr55eXHkHwoOUz6Vq4QfAMwoRYvP+EUcG7J3g/d+eNFGqUvvv5dF
 upxVb/SqluvYQmjPQ/Esh6mutHjC+hpkmTyvWLRGBvkJHEgTSWFhnUrOz
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g+qwF+B2
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
Cc: Tirthendu Sarkar <tirthendu.sarkar@intel.com>, tirtha@gmail.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leon@kernel.org>
Date: Tue, 22 Nov 2022 13:07:28 +0200

> On Fri, Nov 18, 2022 at 02:33:06PM +0530, Tirthendu Sarkar wrote:
> > Add support for NETIF_F_LOOPBACK. This feature can be set via:
> > $ ethtool -K eth0 loopback <on|off>
> > 
> > This sets the MAC Tx->Rx loopback.
> > 
> > This feature is used for the xsk selftests, and might have other uses
> > too.

[...]

> > @@ -12960,6 +12983,9 @@ static int i40e_set_features(struct net_device *netdev,
> >  	if (need_reset)
> >  		i40e_do_reset(pf, I40E_PF_RESET_FLAG, true);
> >  
> > +	if ((features ^ netdev->features) & NETIF_F_LOOPBACK)
> > +		return i40e_set_loopback(vsi, !!(features & NETIF_F_LOOPBACK));
> 
> Don't you need to disable loopback if NETIF_F_LOOPBACK was cleared?

0 ^ 1 == 1 -> call i40e_set_loopback()
!!(0) == 0 -> disable

> 
> > +
> >  	return 0;
> >  }
> >  
> > @@ -13722,7 +13748,7 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
> >  	if (!(pf->flags & I40E_FLAG_MFP_ENABLED))
> >  		hw_features |= NETIF_F_NTUPLE | NETIF_F_HW_TC;
> >  
> > -	netdev->hw_features |= hw_features;
> > +	netdev->hw_features |= hw_features | NETIF_F_LOOPBACK;
> >  

Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
