Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 169FD629215
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Nov 2022 08:00:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ECDBA40333;
	Tue, 15 Nov 2022 07:00:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ECDBA40333
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668495645;
	bh=CtuZY3kIoKMF9YrKEpuwPklaQ1C8imYgqCQFAt4KoZ8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VcKgGhLFDCWkiSDAMuc3mtINb7irpsbmwDchx0HqD9rh07XWaREG77EoUW0Rx0rDw
	 JwupIdj9XPzLbYpf4ZD4agiiUmUAatwQHgbT++qP46mPQLsVOs4YdwWZzgExMGrX46
	 t5tUQVMXzRo0r3IJAWYsohu5FJ59ao9DOXLpSs4hVSm1AAjujk8IO4k+xV4xtImtkc
	 sVknClSH+4BkcQmu7LDRzMerBLyXPlSPk2bTKj32SukUSU1cp+EYaBbIGSJjf4Er7Z
	 GJp3SyEdOVouNFuW4xb9LIn6Z36EJNhSnv/OLvF6zfxNdrYz/x9YuQZM6Fqf2ZlWxW
	 +dVUvG34iFJRw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9G5mG5d4fM1U; Tue, 15 Nov 2022 07:00:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E0454051E;
	Tue, 15 Nov 2022 07:00:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E0454051E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 762B21BF295
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 07:00:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4FEA8813B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 07:00:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4FEA8813B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MikLVAgR9l2j for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Nov 2022 07:00:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EAED6813B0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EAED6813B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 07:00:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="374314594"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="374314594"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 23:00:36 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="707629281"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="707629281"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 23:00:31 -0800
Date: Tue, 15 Nov 2022 08:00:28 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <Y3M5DOEhbAdbCtEC@localhost.localdomain>
References: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
 <Y3JBaQ7+p5ncsjuW@unreal>
 <49e2792d-7580-e066-8d4e-183a9c826e68@intel.com>
 <CO1PR11MB5089C5B17D186C6FF17C5599D6059@CO1PR11MB5089.namprd11.prod.outlook.com>
 <Y3J2UEPHDKNL2n4O@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y3J2UEPHDKNL2n4O@unreal>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668495637; x=1700031637;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=CHGIKomhVc9j2XHvy7ULB6e0SooPCWvnAIwmpNwi7+c=;
 b=VYwWRzjPFerRshjbggsaQtj6uxwtuM3OE5JKPeKaxsqtdlDvHwzLxt/u
 o2UoJkoIVcUEoNisivLh2/EShhT81pK5fNYlSRS4WG9loSN2E2SjZB4z/
 jvyT3whRQBR1d4HSu7iZdJ0DZkLbOuuWsXQuyGVdzYt1zvkZMpwa02qyH
 NYAEsjdeGklodLvSjqRmI7pwlxCPA61TV0NOwizQXTlFEmWudQjgneefg
 yaCXPXxknrkys/VVQbXubCeklDSVw05fn+2iyfo9+x5dHs9vuIScRol+g
 8r+Y4+sG8wlgLcfwCYMyjjOWeM4wxl/qectwsayZkqSC789zLnMli5ANF
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VYwWRzjP
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/13] resource management
 using devlink reload
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
Cc: "jiri@nvidia.com" <jiri@nvidia.com>, "Kaliszczuk,
 Leszek" <leszek.kaliszczuk@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "edumazet@google.com" <edumazet@google.com>, "Ismail,
 Mustafa" <mustafa.ismail@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "Saleem, Shiraz" <shiraz.saleem@intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Nov 14, 2022 at 07:09:36PM +0200, Leon Romanovsky wrote:
> On Mon, Nov 14, 2022 at 04:58:57PM +0000, Keller, Jacob E wrote:
> > 
> > 
> > > -----Original Message-----
> > > From: Samudrala, Sridhar <sridhar.samudrala@intel.com>
> > > Sent: Monday, November 14, 2022 7:31 AM
> > > To: Leon Romanovsky <leon@kernel.org>; Michal Swiatkowski
> > > <michal.swiatkowski@linux.intel.com>
> > > Cc: netdev@vger.kernel.org; davem@davemloft.net; kuba@kernel.org;
> > > pabeni@redhat.com; edumazet@google.com; intel-wired-lan@lists.osuosl.org;
> > > jiri@nvidia.com; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Lobakin,
> > > Alexandr <alexandr.lobakin@intel.com>; Drewek, Wojciech
> > > <wojciech.drewek@intel.com>; Czapnik, Lukasz <lukasz.czapnik@intel.com>;
> > > Saleem, Shiraz <shiraz.saleem@intel.com>; Brandeburg, Jesse
> > > <jesse.brandeburg@intel.com>; Ismail, Mustafa <mustafa.ismail@intel.com>;
> > > Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Raczynski, Piotr
> > > <piotr.raczynski@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>; Ertman,
> > > David M <david.m.ertman@intel.com>; Kaliszczuk, Leszek
> > > <leszek.kaliszczuk@intel.com>
> > > Subject: Re: [PATCH net-next 00/13] resource management using devlink reload
> > > 
> > > On 11/14/2022 7:23 AM, Leon Romanovsky wrote:
> > > > On Mon, Nov 14, 2022 at 01:57:42PM +0100, Michal Swiatkowski wrote:
> > > >> Currently the default value for number of PF vectors is number of CPUs.
> > > >> Because of that there are cases when all vectors are used for PF
> > > >> and user can't create more VFs. It is hard to set default number of
> > > >> CPUs right for all different use cases. Instead allow user to choose
> > > >> how many vectors should be used for various features. After implementing
> > > >> subdevices this mechanism will be also used to set number of vectors
> > > >> for subfunctions.
> > > >>
> > > >> The idea is to set vectors for eth or VFs using devlink resource API.
> > > >> New value of vectors will be used after devlink reinit. Example
> > > >> commands:
> > > >> $ sudo devlink resource set pci/0000:31:00.0 path msix/msix_eth size 16
> > > >> $ sudo devlink dev reload pci/0000:31:00.0
> > > >> After reload driver will work with 16 vectors used for eth instead of
> > > >> num_cpus.
> > > > By saying "vectors", are you referring to MSI-X vectors?
> > > > If yes, you have specific interface for that.
> > > > https://lore.kernel.org/linux-pci/20210314124256.70253-1-leon@kernel.org/
> > > 
> > > This patch series is exposing a resources API to split the device level MSI-X vectors
> > > across the different functions supported by the device (PF, RDMA, SR-IOV VFs
> > > and
> > > in future subfunctions). Today this is all hidden in a policy implemented within
> > > the PF driver.
> > > 
> > > The patch you are referring to seems to be providing an interface to change the
> > > msix count for a particular VF. This patch is providing a interface to set the total
> > > msix count for all the possible VFs from the available device level pool of
> > > msix-vectors.
> > > 
> > 
> > It looks like we should implement both: resources to configure the "pool" of available vectors for each VF, and the sysfs VF Interface to allow configuring individual VFs.
> 
> Yes, to be aligned with PCI spec and see coherent lspci output for VFs.
> 
> Thanks
> 

Thanks, I will implement this sysf interface to configure individual
VFs.

> > 
> > Thanks,
> > Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
