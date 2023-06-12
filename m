Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB4E72D467
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 00:30:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C8E540588;
	Mon, 12 Jun 2023 22:30:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C8E540588
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686609021;
	bh=qMvdtbZjIcVPD92hR3wb/VSadDapnKaaL5rhz3olYG4=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=V6RZOTVgMNq6p7ODID5Ct4sDHDea6XOpWlep7s5xMKL7Lpi27xi9cXra5xsjBZ+Qu
	 v4WGu1TX+xTxCG/CTWZylQh7NCDZE2AFJ1sC65GY6luZUF/BhgI4GbpLM3RI9bMHTs
	 giqLzvAHrQuBq+9+v1oGqB1ktYB8F/OgbyEffGOnbMiIeeIsfAXYYL+m/s/XZxNir6
	 HkAR0012aRgYNWbIcf+7VZOhLRAvXVvaIc9DExWYA6El6B5bqiqssr2O+NHT6I2tc8
	 QgnA3qPvLYBBwOHWnfqHXbwKiUh/uzeKA/amvahQMOTTABGqs967V6KLryGkRb1SnJ
	 0KLbM2PHSKCsA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a36VSn90OTZd; Mon, 12 Jun 2023 22:30:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4DB4040577;
	Mon, 12 Jun 2023 22:30:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4DB4040577
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7375D1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 22:30:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3AF014099D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 22:30:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3AF014099D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZSjaHqizYUAY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jun 2023 22:30:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F246540980
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F246540980
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 22:30:13 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 269F262BA1;
 Mon, 12 Jun 2023 22:30:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67924C433EF;
 Mon, 12 Jun 2023 22:30:10 +0000 (UTC)
Date: Mon, 12 Jun 2023 15:30:09 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <20230612153009.5f0e1b4a@kernel.org>
In-Reply-To: <ZISkvTWw5k74RO5s@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-2-arkadiusz.kubalewski@intel.com>
 <ZISkvTWw5k74RO5s@nanopsycho>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1686609012;
 bh=HQnlbzZUfjB/XyMKV/Pff7qFeZo/3cJ/CnEb78gnOaI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=XdqxVWlWiOFaY6qpOuYHwuuvlHM7zcg9rPKu6KiAAbevMNUUwAkWzrcwoYHW+SFkv
 0RdDRP3wO61kOe0UW2J+/BrtdqG4g2fOeKhNHfBEz/+TCNiefXbP6Zx9j6DYf+zrMr
 dGcLnonh+gR+8dxCzB1uy9tuV1HwRV9fmHWw6/igiKha4+8Aott1Py/0SKOID4euYM
 r+Eg2k9yWFcNhD/dCzWY/qRAFvTnFayS2eiewgFXsACrsgqzEKQ2ar2qs0UT6a+CMr
 VW1KtJupKoofTY0S32gugPFWpcjvMeaRCVZHIVB5BpgsZ/LYbjF2lGBjJSeG+YnXep
 AhXnBtLNjesdQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=XdqxVWlW
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 01/10] dpll: documentation on
 DPLL subsystem interface
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
Cc: geert+renesas@glider.be, mst@redhat.com, razor@blackwall.org, phil@nwl.cc,
 javierm@redhat.com, edumazet@google.com, benjamin.tissoires@redhat.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, linux-clk@vger.kernel.org,
 lucien.xin@gmail.com, leon@kernel.org, corbet@lwn.net,
 linux-rdma@vger.kernel.org, masahiroy@kernel.org, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, vadfed@meta.com, intel-wired-lan@lists.osuosl.org,
 airlied@redhat.com, vadfed@fb.com, pabeni@redhat.com,
 ricardo.canuelo@collabora.com, arnd@arndb.de, idosch@nvidia.com,
 richardcochran@gmail.com, claudiajkang@gmail.com, kuniyu@amazon.com,
 jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com,
 nicolas.dichtel@6wind.com, linux-arm-kernel@lists.infradead.org,
 axboe@kernel.dk, sj@kernel.org, vadim.fedorenko@linux.dev, linux@zary.sk,
 gregkh@linuxfoundation.org, ogabbay@kernel.org, nipun.gupta@amd.com,
 linux-kernel@vger.kernel.org, andy.ren@getcruise.com, tzimmermann@suse.de,
 jonathan.lemon@gmail.com, saeedm@nvidia.com, davem@davemloft.net,
 milena.olech@intel.com, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, 10 Jun 2023 18:28:45 +0200 Jiri Pirko wrote:
> Fri, Jun 09, 2023 at 02:18:44PM CEST, arkadiusz.kubalewski@intel.com wrote:
> >From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> >
> >Add documentation explaining common netlink interface to configure DPLL
> >devices and monitoring events. Common way to implement DPLL device in
> >a driver is also covered.
> >
> >Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> >Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> >---
> > Documentation/driver-api/dpll.rst  | 458 +++++++++++++++++++++++++++++
> > Documentation/driver-api/index.rst |   1 +
> > 2 files changed, 459 insertions(+)
> > create mode 100644 Documentation/driver-api/dpll.rst  
> 
> Looks fine to me. I just wonder if the info redundancy of this file and
> the netlink yaml could be somehow reduce. IDK.

Certainly possible, I even talked to Peter of the pyroute2 fame about
this. Should be fairly easy to generate a .rst file, and/or Sphinx
plugin to go directly from the YAML. Is it on my TODO list? Nope :)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
