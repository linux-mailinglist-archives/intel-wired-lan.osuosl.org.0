Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9259C515D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Nov 2024 10:01:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECA406077F;
	Tue, 12 Nov 2024 09:01:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qMiJF-VTtSfv; Tue, 12 Nov 2024 09:01:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5072A60779
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731402095;
	bh=EHtwsu7KBmmaL1dzIh95Y6SpDQSlw8SJ3N4itxEXOVk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PIT0OYv72UXJ26V99TXmz1LFd8DJcYYTX+Hta3iuJPdKir+IpZ/ccRcB52pErrHcs
	 W3FaqHYR09FJKVcM8Qg6/gYWsu5id7rCbt3wq1NDxBwxUitAyk/c/kvi+uDPIHwFZH
	 UbD6wMESl+dOhTbg1+xug8JL6qw/f1yJHe88dBvvcNOk0HQjqCXZXDImjYopvRis7J
	 RkHH67/lWpf8Y2pmLQcd2wDfmu52tRIqNxR6khplh4egaVx1n9a60oUzw4/doIuPa+
	 sjC/hSKUr2ur1eR82HAFDl2BWFwZWxz3KiLP44mFhyImsuMg0mS0B6o4sucnCI4IUY
	 QuzGz8OuRo76A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5072A60779;
	Tue, 12 Nov 2024 09:01:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7AFEF6C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 09:01:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F90B81123
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 09:01:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nUTvzFL4cmBA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Nov 2024 09:01:32 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 711D98111C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 711D98111C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 711D98111C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 09:01:31 +0000 (UTC)
X-CSE-ConnectionGUID: XYBjKyHIR72Dd3OiqMiKxQ==
X-CSE-MsgGUID: H7SmwgRJSQai7v89/uOjRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="31318152"
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="31318152"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 01:01:03 -0800
X-CSE-ConnectionGUID: e6kJCa25TRuj03V01nh0DA==
X-CSE-MsgGUID: ojG1P6OdTSyzEGAAibmwaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="118291844"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 01:00:59 -0800
Date: Tue, 12 Nov 2024 09:58:18 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Michal Schmidt <mschmidt@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 pawel.chmielewski@intel.com, sridhar.samudrala@intel.com,
 jacob.e.keller@intel.com, pio.raczynski@gmail.com,
 konrad.knitter@intel.com, marcin.szycik@intel.com,
 wojciech.drewek@intel.com, nex.sw.ncis.nat.hpm.dev@intel.com,
 przemyslaw.kitszel@intel.com, jiri@resnulli.us, horms@kernel.org,
 David.Laight@aculab.com, pmenzel@molgen.mpg.de
Message-ID: <ZzMYqp8A59lfnLa9@mev-dev.igk.intel.com>
References: <20241104121337.129287-1-michal.swiatkowski@linux.intel.com>
 <20241104121337.129287-3-michal.swiatkowski@linux.intel.com>
 <CADEbmW2=9s8iGJibWpPnVUraMOr7ecE6Hbpb1n3d9es-aUvA7Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CADEbmW2=9s8iGJibWpPnVUraMOr7ecE6Hbpb1n3d9es-aUvA7Q@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731402093; x=1762938093;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=J4YLsSb0ADwVaiqdgi3gHn5573IyKZUBPT1DevJVQzk=;
 b=lstOq3/2oMfBgPUmURnDVG6NTAJAXicq7fc2TZ+jOay58YjSbDqKKWw5
 HirXC7HBgCN8SG3HiRQGjhAsx+bJ2TeHdJcJWznkkFhGeYVXMq5BwJ78D
 SXUHC7fqhR7dTx78wOd0tWdPFe32599nHmH3RVd71CUZUCJ++sHlqC17e
 paRVtmZIzIPSFn7xqYdnbDZ+G9rATTHjzWT+mKEcBnvXIyf/klMTiNsUI
 t6n8YsSlb4jOjm4QZ4H3itVQR+p1aHCPCOYLJpzZFLgMA6GnHEr2fxTz0
 g/oVomSDzuI6ZpO1F3U8x3dgm0Ia28iu/6vcRWkz6e683X9/Hk0jJqtLt
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lstOq3/2
Subject: Re: [Intel-wired-lan] [iwl-next v7 2/9] ice: devlink PF MSI-X max
 and min parameter
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Nov 11, 2024 at 12:44:11PM +0100, Michal Schmidt wrote:
> On Mon, Nov 4, 2024 at 1:13 PM Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com> wrote:
> >
> > Use generic devlink PF MSI-X parameter to allow user to change MSI-X
> > range.
> >
> > Add notes about this parameters into ice devlink documentation.
> >
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> >  Documentation/networking/devlink/ice.rst      | 11 +++
> >  .../net/ethernet/intel/ice/devlink/devlink.c  | 83 ++++++++++++++++++-
> >  drivers/net/ethernet/intel/ice/ice.h          |  7 ++
> >  drivers/net/ethernet/intel/ice/ice_irq.c      |  7 ++
> >  4 files changed, 107 insertions(+), 1 deletion(-)
> >
> [...]
> > @@ -1648,6 +1710,7 @@ void ice_devlink_unregister(struct ice_pf *pf)
> >  int ice_devlink_register_params(struct ice_pf *pf)
> >  {
> >         struct devlink *devlink = priv_to_devlink(pf);
> > +       union devlink_param_value value;
> >         struct ice_hw *hw = &pf->hw;
> >         int status;
> >
> > @@ -1656,11 +1719,27 @@ int ice_devlink_register_params(struct ice_pf *pf)
> >         if (status)
> >                 return status;
> >
> > +       status = devl_params_register(devlink, ice_dvl_msix_params,
> > +                                     ARRAY_SIZE(ice_dvl_msix_params));
> > +       if (status)
> > +               return status;
> > +
> >         if (hw->func_caps.common_cap.tx_sched_topo_comp_mode_en)
> >                 status = devl_params_register(devlink, ice_dvl_sched_params,
> >                                               ARRAY_SIZE(ice_dvl_sched_params));
> > +       if (status)
> > +               return status;
> 
> Error handling looks wrong in this function.
> You have to unwind the registration of the params from above or they will leak.
> Sorry I did not notice this earlier.
> 

Right, I  will send fixed version.
Thanks for reviewing,
Michal

> Michal
> 
