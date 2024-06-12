Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E98A6904DF5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2024 10:20:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 914DA81266;
	Wed, 12 Jun 2024 08:20:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DaRAdf4LXnAM; Wed, 12 Jun 2024 08:20:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 988818124F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718180441;
	bh=96GgrZimpf/K3ycaDHb3orrDn2KxbvovBxP/c+Hh0Wc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fv2v8TqclIuLwmboDP9HBxhFC8d+3euVhEmE8PtY+ZsDB7BAQQ+4n38CK/VsnhVFt
	 cfknjmTKzqeZvh3IlXzf9Dz9foevQiTf2nFIvw6afKDlLuJs9wxzi6o0O7exTnWnf1
	 850nEGu/DOffhdR7oy6cssh/tF4isuv+lNVx0pTil+F94BnLDo/i9JY1iz9JAnLXyV
	 Swy+5ClXeFCLmgcRnDAi/wiHwo6C1k3b3x4mQz0C/V5Ejscfqa+1cxdoCevWO4C/Gw
	 yeXV/g3Yi0j6eLg/W5HsnmEkgtmEA1ZO6HPKZOe5oryzUn1xilG0EhTZZmQBGDutYR
	 wmBxVDHbopupw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 988818124F;
	Wed, 12 Jun 2024 08:20:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8ACB31BF378
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 08:20:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8361E40424
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 08:20:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vLoDyDatKz12 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2024 08:20:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=gregkh@linuxfoundation.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 927374014D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 927374014D
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 927374014D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 08:20:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 62CAF61218;
 Wed, 12 Jun 2024 08:20:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88FD2C3277B;
 Wed, 12 Jun 2024 08:20:35 +0000 (UTC)
Date: Wed, 12 Jun 2024 10:20:33 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <2024061212-excusable-dissuade-379b@gregkh>
References: <20240611130103.3262749-7-gregkh@linuxfoundation.org>
 <d2ffbc2d-0966-4210-a5d0-719c27d9adb1@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d2ffbc2d-0966-4210-a5d0-719c27d9adb1@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1718180436;
 bh=nqkRr3hEqhXfpawRBXQoqriQ7Yorslv65k57UzVvhMU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LninAheT/igtgi3vHkFPND6tsxz+KJap4+LsnQLQqKJfSEAGbdKfNRrZfPkYGZsCQ
 eOoauin7ReKXi46V47zU/pkO03GoeBhl8VvbU5Qni1cpAIgOGKDcqzaml2fAY6oYFa
 WZ0eDzahLSSVyRCI998EnVMZuu99SvU6wkuju9z8=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org
 header.a=rsa-sha256 header.s=korg header.b=LninAheT
Subject: Re: [Intel-wired-lan] [PATCH 1/6] auxbus: make to_auxiliary_drv
 accept and return a constant pointer
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>,
 Dave Ertman <david.m.ertman@intel.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Bard Liao <yung-chuan.liao@linux.intel.com>,
 sound-open-firmware@alsa-project.org, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, Ira Weiny <ira.weiny@intel.com>,
 Takashi Iwai <tiwai@suse.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, linux-sound@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Bingbu Cao <bingbu.cao@intel.com>,
 Jaroslav Kysela <perex@perex.cz>, Michael Chan <michael.chan@broadcom.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Peter Ujfalusi <peter.ujfalusi@linux.intel.com>,
 Kai Vehmanen <kai.vehmanen@linux.intel.com>, netdev@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, Tariq Toukan <tariqt@nvidia.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 11, 2024 at 03:50:47PM +0200, Przemek Kitszel wrote:
> On 6/11/24 15:01, Greg Kroah-Hartman wrote:
> > In the quest to make struct device constant, start by making
> 
> just curious, how far it will go? eg. do you plan to convert
> get/put_device() to accept const?

Ugh, that should have said "in the quest to make struct device_driver
const", not device.  devices obviously can't be constant everywhere as
they are dynamically created.

> or convert devlink API to accept
> consts?

Again, sorry, no, typo on my part.

> 
> > to_auziliary_drv() return a constant pointer so that drivers that call
> 
> typo: s/auz/aux/

I'll fix this typo up, and the one above, when I commit it.

> 
> > this can be fixed up before the driver core changes.
> > 
> > As the return type previously was not constant, also fix up all callers
> > that were assuming that the pointer was not going to be a constant one
> > in order to not break the build.
> > 
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> 
> 
> [...]
> 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> > index 0f17fc1181d2..7341e7c4ef24 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> > @@ -2784,7 +2784,7 @@ static struct ice_pf *
> >   ice_ptp_aux_dev_to_owner_pf(struct auxiliary_device *aux_dev)
> >   {
> >   	struct ice_ptp_port_owner *ports_owner;
> > -	struct auxiliary_driver *aux_drv;
> > +	const struct auxiliary_driver *aux_drv;
> >   	struct ice_ptp *owner_ptp;
> >   	if (!aux_dev->dev.driver)
> > diff --git a/drivers/net/ethernet/mellanox/mlx5/core/dev.c b/drivers/net/ethernet/mellanox/mlx5/core/dev.c
> > index 47e7c2639774..9a79674d27f1 100644
> > --- a/drivers/net/ethernet/mellanox/mlx5/core/dev.c
> > +++ b/drivers/net/ethernet/mellanox/mlx5/core/dev.c
> > @@ -349,7 +349,7 @@ int mlx5_attach_device(struct mlx5_core_dev *dev)
> >   {
> >   	struct mlx5_priv *priv = &dev->priv;
> >   	struct auxiliary_device *adev;
> > -	struct auxiliary_driver *adrv;
> > +	const struct auxiliary_driver *adrv;
> 
> nit: in netdev we do maintain RCT order of initialization

what does that mean?  Nothing is being initialized here.

thanks,

greg k-h
