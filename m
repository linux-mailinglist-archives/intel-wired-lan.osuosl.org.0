Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C80536286B2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Nov 2022 18:10:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E7694157B;
	Mon, 14 Nov 2022 17:10:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E7694157B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668445804;
	bh=S0IXBfshnwV7wrPY5eTLLXShejwB1JPzY1RK17HUDH8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BlpJIZ/f0Fj+cssxzXlf5unKpc3bHVorsTARhvPSHlt+NHEhR6NsastuKXcqE58Qj
	 1Y8n665LsMjgWkhkoNWEea+uQZyjEnCdZ333scgTFNk8PSOL36iN7gK/oOLJ38WUGl
	 ay88bd4TDaAPYTXOSRZhS3q9CvPspwG7xDQOHgYRbVUhaB9vO0R/iDglyx1HlPhC60
	 2drjjaizXm7wdo36I8gpoA9gR8oiD5yaSKBjoVIMUeaXuXhAiBGZ2lOcuYiVdCX50k
	 v2uyr/IfLhIyhP4987jYQTGEGx5HBhkDXjkWOgD1DkIssH+Q3YzKB/kUysIGIRwPES
	 w5y4MqedFoO/Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2ytQ8FilO2IN; Mon, 14 Nov 2022 17:10:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE32841673;
	Mon, 14 Nov 2022 17:10:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE32841673
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 98AAD1BF31F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 17:09:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 72E0A812F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 17:09:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72E0A812F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zun42ZHzwivM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Nov 2022 17:09:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 363B9812D7
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 363B9812D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 17:09:56 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 7420BB8109E;
 Mon, 14 Nov 2022 17:09:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EA47C433C1;
 Mon, 14 Nov 2022 17:09:45 +0000 (UTC)
Date: Mon, 14 Nov 2022 19:09:36 +0200
From: Leon Romanovsky <leon@kernel.org>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
Message-ID: <Y3J2UEPHDKNL2n4O@unreal>
References: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
 <Y3JBaQ7+p5ncsjuW@unreal>
 <49e2792d-7580-e066-8d4e-183a9c826e68@intel.com>
 <CO1PR11MB5089C5B17D186C6FF17C5599D6059@CO1PR11MB5089.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CO1PR11MB5089C5B17D186C6FF17C5599D6059@CO1PR11MB5089.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1668445786;
 bh=jYbYmoprDMwjHZyve4ywpayxL3MS9T/r4BhXWYCqDWE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KbHc1p8mxGLg7cS256Odl4lab10WR8HXTL4mzgYRf4hlcCK3/MSmyFjKz0tUXJd20
 tEgg5ihseQrm2NyJ4Sb93RouPnNdGpQfNk+d1YpIPjlBPNycKSjJEcsjeF4Vfx4sDt
 mjsqHdgMg2x7CxLIvRp6xkVFHJibbTqautnrMBoNvgC+1P4wpl62UzKBQ5UhTIX294
 EmzEkwREYogB54Pl5wgFBeviddU1xEaRxczbK/GTxCnFGGUMUML27dh96YMq0dv4B+
 UEWPz8jw9lHVZGJ56Jdj0TdJLQ9IMKV4qZad4HPwAPI4uAqAiRDS1wLQuU3aCYsQdt
 +YJ63G6NpKxfw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KbHc1p8m
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

On Mon, Nov 14, 2022 at 04:58:57PM +0000, Keller, Jacob E wrote:
> 
> 
> > -----Original Message-----
> > From: Samudrala, Sridhar <sridhar.samudrala@intel.com>
> > Sent: Monday, November 14, 2022 7:31 AM
> > To: Leon Romanovsky <leon@kernel.org>; Michal Swiatkowski
> > <michal.swiatkowski@linux.intel.com>
> > Cc: netdev@vger.kernel.org; davem@davemloft.net; kuba@kernel.org;
> > pabeni@redhat.com; edumazet@google.com; intel-wired-lan@lists.osuosl.org;
> > jiri@nvidia.com; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Lobakin,
> > Alexandr <alexandr.lobakin@intel.com>; Drewek, Wojciech
> > <wojciech.drewek@intel.com>; Czapnik, Lukasz <lukasz.czapnik@intel.com>;
> > Saleem, Shiraz <shiraz.saleem@intel.com>; Brandeburg, Jesse
> > <jesse.brandeburg@intel.com>; Ismail, Mustafa <mustafa.ismail@intel.com>;
> > Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Raczynski, Piotr
> > <piotr.raczynski@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>; Ertman,
> > David M <david.m.ertman@intel.com>; Kaliszczuk, Leszek
> > <leszek.kaliszczuk@intel.com>
> > Subject: Re: [PATCH net-next 00/13] resource management using devlink reload
> > 
> > On 11/14/2022 7:23 AM, Leon Romanovsky wrote:
> > > On Mon, Nov 14, 2022 at 01:57:42PM +0100, Michal Swiatkowski wrote:
> > >> Currently the default value for number of PF vectors is number of CPUs.
> > >> Because of that there are cases when all vectors are used for PF
> > >> and user can't create more VFs. It is hard to set default number of
> > >> CPUs right for all different use cases. Instead allow user to choose
> > >> how many vectors should be used for various features. After implementing
> > >> subdevices this mechanism will be also used to set number of vectors
> > >> for subfunctions.
> > >>
> > >> The idea is to set vectors for eth or VFs using devlink resource API.
> > >> New value of vectors will be used after devlink reinit. Example
> > >> commands:
> > >> $ sudo devlink resource set pci/0000:31:00.0 path msix/msix_eth size 16
> > >> $ sudo devlink dev reload pci/0000:31:00.0
> > >> After reload driver will work with 16 vectors used for eth instead of
> > >> num_cpus.
> > > By saying "vectors", are you referring to MSI-X vectors?
> > > If yes, you have specific interface for that.
> > > https://lore.kernel.org/linux-pci/20210314124256.70253-1-leon@kernel.org/
> > 
> > This patch series is exposing a resources API to split the device level MSI-X vectors
> > across the different functions supported by the device (PF, RDMA, SR-IOV VFs
> > and
> > in future subfunctions). Today this is all hidden in a policy implemented within
> > the PF driver.
> > 
> > The patch you are referring to seems to be providing an interface to change the
> > msix count for a particular VF. This patch is providing a interface to set the total
> > msix count for all the possible VFs from the available device level pool of
> > msix-vectors.
> > 
> 
> It looks like we should implement both: resources to configure the "pool" of available vectors for each VF, and the sysfs VF Interface to allow configuring individual VFs.

Yes, to be aligned with PCI spec and see coherent lspci output for VFs.

Thanks

> 
> Thanks,
> Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
