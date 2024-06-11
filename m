Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D74903E15
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jun 2024 15:56:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A8BAD405F6;
	Tue, 11 Jun 2024 13:56:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a63HninXOrsZ; Tue, 11 Jun 2024 13:56:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C4606401A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718114204;
	bh=a1VSSO5MQaTA54dMYgvQayB5k+/kjueSXXagACu/ak4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=auVss3KaYKecSkFFJxIx1O8VNvSc7+IbvHKni+K7KyWTACauvFvdRts9LuyIv283M
	 E+aWEiBYS+WVnv3H5LqOWbruMR5knfj5GHtgbMVEQzGlCU3LSZwsMlKggJNeT0eNPm
	 0mvA8H0rKUKcKrdrlHorUxvSa9PgyK9PCTJq+j6hvAAqwN4qy13H6ocwpK3CKP1KS/
	 Y5B/AL/CDhIRx07FTMWGVdqqnBgZ/ddjMi2C4Xlpd45voneCAbkvvrjk2Yl1SRWlbO
	 H/eHvR2y1g4cr4hRMOR25364X/rtSsMaesU+SbJURLAX8OlGs/0DWQHHyyGtwwzXYV
	 zuZAu/VsT8cAQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C4606401A4;
	Tue, 11 Jun 2024 13:56:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6DEEB1BF312
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 13:56:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5AFB7606F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 13:56:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OmLTgi8v6rDX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jun 2024 13:56:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=gregkh@linuxfoundation.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5BBE6605A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5BBE6605A3
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5BBE6605A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 13:56:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id BE15DCE1C18;
 Tue, 11 Jun 2024 13:56:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76C8DC2BD10;
 Tue, 11 Jun 2024 13:56:35 +0000 (UTC)
Date: Tue, 11 Jun 2024 15:56:33 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Message-ID: <2024061115-aversion-lunchroom-d54c@gregkh>
References: <20240611130103.3262749-7-gregkh@linuxfoundation.org>
 <ZmhUp-UclZkvQLqE@kekkonen.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZmhUp-UclZkvQLqE@kekkonen.localdomain>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1718114196;
 bh=AzMMWpTTBZJQB1Sti3Hx2aIxr1jFUoxrrZxbpJlwWLc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kaGvp3xn98pvoMf8thzl6OcKd9guInjdtxXZcUvLZ+WdpCFF7ipgtF8frP2dPjMB1
 2UMKXeDO/qeXmmZRW+PinxPXHCvmHCadEo/khi4KKI0yFcbzrWpg5U/3JxqfsdQfVa
 qG0vCVgmhoxkCVVOShkekjx7ssiBOuWQHI5+FfEg=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org
 header.a=rsa-sha256 header.s=korg header.b=kaGvp3xn
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
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 11, 2024 at 01:44:07PM +0000, Sakari Ailus wrote:
> Hi Greg,
> 
> On Tue, Jun 11, 2024 at 03:01:04PM +0200, Greg Kroah-Hartman wrote:
> > In the quest to make struct device constant, start by making
> > to_auziliary_drv() return a constant pointer so that drivers that call
> 
> s/z/s/

Ah, good catch, I'll fix that up when applying it!

> Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com> # drivers/media/pci/intel/ipu6

thanks for the review.

greg k-h
