Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B829BACF1
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 08:06:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 355CF80E4F;
	Mon,  4 Nov 2024 07:06:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wVMGihVH06TC; Mon,  4 Nov 2024 07:06:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DDAA780E46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730703989;
	bh=2dmbjJjgDxxkw9bKG3zU9X26WmZ/xm7OwmEyuEtayfg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tRPLXdGrmHWVo9uAvslfk4Wg57Fd22Y4uJnb4fYxH+LZ3q9KSKw4X+B296umD26k+
	 7h/EhcilWXeEhTvnJDLB9XJWhgEXAJqoOLH+WRYkqrbg56Nwwoxiqv6HE+hy5ZOiFf
	 DM18LhWuIgWtfDPQVj8eFnKdUcMFZ1A/02VUZWS5wlSGdD/I4oEAMy8qusCgrUXQQ0
	 j/6DHy7NDIwoj0tV171gu9Q9U1/Yn9bRkYC/re35y0thlI92mDgwDHOXA57pYrX4A6
	 MQJPB7STjsXwB93YOagyDxaVcq7jEUpA+LIWxMeFh2fNTFKT2oOtYskvz5uKytk9/s
	 TTL8A1RvO4W4A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DDAA780E46;
	Mon,  4 Nov 2024 07:06:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A27A2723
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 07:06:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B7CCE606A0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 07:06:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xK--hBwu-PMw for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 07:06:25 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D7434606CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7434606CA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D7434606CA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 07:06:24 +0000 (UTC)
X-CSE-ConnectionGUID: Ive+G+NeRfCFVivv5FP87Q==
X-CSE-MsgGUID: AmDj5hLkTGuxGyh1Jvy81Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11245"; a="29803039"
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="29803039"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2024 23:06:24 -0800
X-CSE-ConnectionGUID: oLws9DsbS2OEvLygqrdNZQ==
X-CSE-MsgGUID: GBG8FY2tRG6HbmcNDMAgcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="114353201"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2024 23:06:21 -0800
Date: Mon, 4 Nov 2024 08:03:25 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Michal Schmidt <mschmidt@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 pawel.chmielewski@intel.com, sridhar.samudrala@intel.com,
 jacob.e.keller@intel.com, pio.raczynski@gmail.com,
 konrad.knitter@intel.com, marcin.szycik@intel.com,
 wojciech.drewek@intel.com, nex.sw.ncis.nat.hpm.dev@intel.com,
 przemyslaw.kitszel@intel.com, jiri@resnulli.us, horms@kernel.org,
 David.Laight@aculab.com
Message-ID: <ZyhxvW7K6v7QxD3H@mev-dev.igk.intel.com>
References: <20241028100341.16631-1-michal.swiatkowski@linux.intel.com>
 <20241028100341.16631-3-michal.swiatkowski@linux.intel.com>
 <CADEbmW1EzEVGZnxEQOUngTRKVnQQnU4mpsOoe_E0SeojcF3D6w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CADEbmW1EzEVGZnxEQOUngTRKVnQQnU4mpsOoe_E0SeojcF3D6w@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730703985; x=1762239985;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+RAwMr8vrqq84TRRwWGlgaTIO1VwU9BaNK6EaWxUsu8=;
 b=YuYrAs2rkD4ZlLKmGPN5gKkG8I/SAjTZG1EBAMv9nJr3wg5zWfOHOzk/
 mDtgGcAAEpydivtr5P6txq9Upnlfz59YVyGIcOsdvzv5Z1RoJuRRmlS88
 Bn8B+GETFs/pmtZuq5hNYqp0L9rCqS2J/FVufAdVY64AktjuDqG8yqNPv
 sM0X7TX6MIeHAErNmPkFkMLw8U9EPNH5Z5h80GAIFuB7JnomUOC4yejpL
 z2ZgyrWRt66FIfraI8LntQPuBDc7liMOpe/IsMDBKnCwacxK9DUm/Edv2
 U2PMXjui38zSqElYJQ6Ca1BBewnOgonhDKlxgFbFAFVeFzQk5k567wFwn
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YuYrAs2r
Subject: Re: [Intel-wired-lan] [iwl-next v6 2/9] ice: devlink PF MSI-X max
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

On Thu, Oct 31, 2024 at 10:58:03PM +0100, Michal Schmidt wrote:
> On Mon, Oct 28, 2024 at 11:04 AM Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com> wrote:
> >
> > Use generic devlink PF MSI-X parameter to allow user to change MSI-X
> > range.
> >
> > Add notes about this parameters into ice devlink documentation.
> >
> > Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> >  Documentation/networking/devlink/ice.rst      | 11 +++
> >  .../net/ethernet/intel/ice/devlink/devlink.c  | 83 ++++++++++++++++++-
> >  drivers/net/ethernet/intel/ice/ice.h          |  7 ++
> >  drivers/net/ethernet/intel/ice/ice_irq.c      |  7 ++
> >  4 files changed, 107 insertions(+), 1 deletion(-)
> >
> ...
> > @@ -1526,6 +1548,37 @@ static int ice_devlink_local_fwd_validate(struct devlink *devlink, u32 id,
> >         return 0;
> >  }
> >
> > +static int
> > +ice_devlink_msix_max_pf_validate(struct devlink *devlink, u32 id,
> > +                                union devlink_param_value val,
> > +                                struct netlink_ext_ack *extack)
> > +{
> > +       struct ice_pf *pf = devlink_priv(devlink);
> > +
> > +       if (val.vu16 > pf->hw.func_caps.common_cap.num_msix_vectors ||
> > +           val.vu16 < pf->msix.min) {
> > +               NL_SET_ERR_MSG_MOD(extack, "Value is invalid");
> > +               return -EINVAL;
> > +       }
> > +
> > +       return 0;
> > +}
> > +
> > +static int
> > +ice_devlink_msix_min_pf_validate(struct devlink *devlink, u32 id,
> > +                                union devlink_param_value val,
> > +                                struct netlink_ext_ack *extack)
> > +{
> > +       struct ice_pf *pf = devlink_priv(devlink);
> > +
> > +       if (val.vu16 <= ICE_MIN_MSIX || val.vu16 > pf->msix.max) {
> 
> Shouldn't this be "<" instead of "<=" ?
> 

Yeah, will fix.

> Michal
> 
