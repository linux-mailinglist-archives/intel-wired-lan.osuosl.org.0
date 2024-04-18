Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6028A9920
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 13:55:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1CC41415FF;
	Thu, 18 Apr 2024 11:55:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MbEUyoUB3EyW; Thu, 18 Apr 2024 11:55:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 60004415BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713441331;
	bh=vnixqKiDXHI7L4w/q0hjM2HcmHja315QfS82FTsRAn8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mJd+JGZzTspCZ8m9JTTX/f9Wx5pILpACZMEaCn6SO1VcI2hF6/rPOJVDlHdReuP/N
	 fRlkCC2it8+n3i5H110s5SOAxGvx9HPxJkvj6T+aCUMz5TU+b84B9388NPHv24SRYU
	 a0MprWYaLI5a6fgoRTjrEhxZ9cOy3kdDRX7v6iuYrqB2xJPFfkVyh7qY0cInIXPDwI
	 Ga4tI6CST+PN8DQxrcqbtwq1vhVlZUgSYvG9AuPxqDjIbBuI7pjl5xJ+F1UJ7SGpSx
	 NxSz0cBefk7B9s8YdnzQ1kBpct/HIL+X0VMCel9ghgbneeqD8+oRGqEboSCePqwiXo
	 XPyB0SMdVo5NA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 60004415BD;
	Thu, 18 Apr 2024 11:55:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 504411BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:55:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3B74640511
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:55:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9IXjgsiyEOHQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 11:55:28 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 699334012F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 699334012F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 699334012F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:55:28 +0000 (UTC)
X-CSE-ConnectionGUID: V9mxq06uTeGJPhrQL5Fg7g==
X-CSE-MsgGUID: 95dX9CcUQ92SIB9nE8Aqaw==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="9204854"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; 
   d="scan'208";a="9204854"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 04:55:27 -0700
X-CSE-ConnectionGUID: BRMNBJ1DTxOiScOWaf1H3A==
X-CSE-MsgGUID: Y3uqJNdJToyBcARFJe13cQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="23040305"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 04:55:25 -0700
Date: Thu, 18 Apr 2024 13:55:03 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Shay Drori <shayd@nvidia.com>
Message-ID: <ZiEKF8Hm+ccuVedQ@mev-dev>
References: <20240417142028.2171-1-michal.swiatkowski@linux.intel.com>
 <20240417142028.2171-9-michal.swiatkowski@linux.intel.com>
 <0045c1a5-1065-40b3-ae61-1f372d4a89e5@nvidia.com>
 <1b678660-7ee7-44d0-91a7-14985d2c469e@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1b678660-7ee7-44d0-91a7-14985d2c469e@nvidia.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713441328; x=1744977328;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=BjG0eEXPzantOD1jcelhGWFZa+JGWFo4s5JCsisY2Nk=;
 b=CeDsHEoxdPpsTDwGfzde94iXFMN/oC367QV8WRjVV65fZBDuhX9AS3Dv
 wZArTCBm+BHq+dmFBLKHcbNwy+FbG8aKFeOGHc6kt2VDftA+YDT9ar5nM
 /HDLeGB5iuXOiH228JVENXutMeJJrjyJgw0ALRS7hNWPAlGU8SeA6558w
 OohuTBgsBZDNpTBzFWCo/A2BpYFSVfvH/byHrlhAUUVf74UULlMikYU25
 VhoGgl1HpFgDHP7Z6X+qIp6r/FCG2tjNdTrcMqDo2bRC9nu7g8mN/v+nw
 6Ips42p8ADa7I4CVF1F3qk+vB1ZJRv499zaNHY8rA+3RnoV06LCSn3VjW
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CeDsHEox
Subject: Re: [Intel-wired-lan] [iwl-next v4 8/8] ice: allow to activate and
 deactivate subfunction
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
Cc: maciej.fijalkowski@intel.com, mateusz.polchlopek@intel.com,
 netdev@vger.kernel.org, jiri@nvidia.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Apr 18, 2024 at 11:12:47AM +0300, Shay Drori wrote:
> resend as plain test
> 
> On 18/04/2024 10:53, Shay Drori wrote:
> > On 17/04/2024 17:20, Michal Swiatkowski wrote:
> > > +/**
> > > + * ice_devlink_port_fn_state_get - devlink handler for port state get
> > > + * @port: pointer to devlink port
> > > + * @state: admin configured state of the port
> > > + * @opstate: current port operational state
> > > + * @extack: extack for reporting error messages
> > > + *
> > > + * Gets port state.
> > > + *
> > > + * Return: zero on success or an error code on failure.
> > > + */
> > > +static int
> > > +ice_devlink_port_fn_state_get(struct devlink_port *port,
> > > +			      enum devlink_port_fn_state *state,
> > > +			      enum devlink_port_fn_opstate *opstate,
> > > +			      struct netlink_ext_ack *extack)
> > > +{
> > > +	struct ice_dynamic_port *dyn_port;
> > > +
> > > +	dyn_port = ice_devlink_port_to_dyn(port);
> > > +
> > > +	if (dyn_port->active) {
> > > +		*state = DEVLINK_PORT_FN_STATE_ACTIVE;
> > > +		*opstate = DEVLINK_PORT_FN_OPSTATE_ATTACHED;
> > 
> > 
> > DEVLINK_PORT_FN_OPSTATE_ATTACHED means the SF is up/bind[1].
> > ice is using auxiliary bus for SFs, which means user can unbind it
> > via the auxiliary sysfs (/sys/bus/auxiliary/drivers/ice_sf/unbind).
> > In this case[2], you need to return:
> > *state = DEVLINK_PORT_FN_STATE_ACTIVE;
> > *opstate = DEVLINK_PORT_FN_OPSTATE_DETACHED;
> > 

Thanks, I didn't think about unbinding/binding the aux driver via sysfs.

To be sure:
- user create the subfunction:
INACTIVE, DETACHED
- user activate it:
ACTIVE, ATTACHED
- user unbind driver:
ACTIVE, DETACHED
- user can bind it again as long as subfunction port is ACTIVE
is it right?

I will fix the comment from previous patch and add state tracking for
ATTACHED/DETACHED.

Thanks,
Michal

> > 
> > [1]
> > Documentation from include/uapi/linux/devlink.h:
> > 
> > * @DEVLINK_PORT_FN_OPSTATE_ATTACHED: Driver is attached to the function.
> > <...>
> > * @DEVLINK_PORT_FN_OPSTATE_DETACHED: Driver is detached from the function.
> > 
> > > +	} else {
> > > +		*state = DEVLINK_PORT_FN_STATE_INACTIVE;
> > > +		*opstate = DEVLINK_PORT_FN_OPSTATE_DETACHED;
> > > +	}
> > > +
> > > +	return 0;
> > > +}
> > > +
