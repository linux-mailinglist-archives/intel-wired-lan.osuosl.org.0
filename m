Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0DE903E16
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jun 2024 15:56:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A13B04029B;
	Tue, 11 Jun 2024 13:56:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1KS2uXONkrCY; Tue, 11 Jun 2024 13:56:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1EE340347
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718114211;
	bh=1uvBQsCUBEVvLzl5ADVdgige9mwT59Z+nYxdbY/Iizw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T8oN2FPsNml8b1SF9aJUYbgNdWZ9iJGvNHTdzLhr1oM0Wx9JkNb8a1YByELzh8lJp
	 F4lR2WS/aE//w15fgyoHRpyYGLzr65SW5iNzfOH6D4rZvRwx7lVXTXGwp9lslSy6NR
	 ReaDOH8l2KZhAdA9qLxuM5rQFw8qfNLFSj1q88u+PnpJA3kdk7sHfNHYnkuVCFnHsm
	 2eag2LgOmO412Y5VG+2KuR0jcHSrMjMRMd1sC4BN/aT5AyEqVWCNATEX2YvB50B3bM
	 m4Aiod5NXNLGDHFH2qF03K4anxJJbtdJgGv6S4hqBrjVwiJ8ZNN/Xrdx9QoBHI4hQ3
	 2ywyLer9TzigQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C1EE340347;
	Tue, 11 Jun 2024 13:56:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AE2D61BF312
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 13:56:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A8A25606F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 13:56:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4tGiQkXQAGGa for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jun 2024 13:56:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=gregkh@linuxfoundation.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A8B63605A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A8B63605A3
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A8B63605A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 13:56:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 4B819CE1C36;
 Tue, 11 Jun 2024 13:56:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBE98C2BD10;
 Tue, 11 Jun 2024 13:56:44 +0000 (UTC)
Date: Tue, 11 Jun 2024 15:56:42 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <2024061138-underwire-underwear-a26e@gregkh>
References: <20240611130103.3262749-7-gregkh@linuxfoundation.org>
 <ZmhPnQqYFXWP4heL@finisterre.sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZmhPnQqYFXWP4heL@finisterre.sirena.org.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1718114205;
 bh=ArXK0c9vtX+cXd2FYPJx9+fY64OV83XUxatTDVhxFeI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=evsZnex+0Bp05UmNaZ96IqQ2Cb3uUKm6HvAc73yHVAo+kf3/3ttcxC1QX3kGVxo66
 SZS1PgoW94tLYneCueGXeuKk7MpXqIv6NpJaWSbRgpvOiwc9Lym4k3bGumJIO77/dF
 TJW4Gg3In9lW9sYv1/9CYCoX8yqovZ1V6eWh1BZw=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
 header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg
 header.b=evsZnex+
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
 Bingbu Cao <bingbu.cao@intel.com>, Jaroslav Kysela <perex@perex.cz>,
 Michael Chan <michael.chan@broadcom.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Peter Ujfalusi <peter.ujfalusi@linux.intel.com>,
 Kai Vehmanen <kai.vehmanen@linux.intel.com>, netdev@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, Tariq Toukan <tariqt@nvidia.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 11, 2024 at 02:22:37PM +0100, Mark Brown wrote:
> On Tue, Jun 11, 2024 at 03:01:04PM +0200, Greg Kroah-Hartman wrote:
> > In the quest to make struct device constant, start by making
> > to_auziliary_drv() return a constant pointer so that drivers that call
> > this can be fixed up before the driver core changes.
> 
> Acked-by: Mark Brown <broonie@kernel.org>

thanks for the review.

