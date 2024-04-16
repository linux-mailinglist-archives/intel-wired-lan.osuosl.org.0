Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 58EB98A6388
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Apr 2024 08:16:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5BEF4073E;
	Tue, 16 Apr 2024 06:16:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JzqD_Z-9S2qx; Tue, 16 Apr 2024 06:16:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85D0140730
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713248210;
	bh=GxPd7kelp3QwhTvqYH0Bcb5R5VMJcEOmNdT9Y7QgQmE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rt0orJHDoPoe/fI4Ry+pAUhTdhkl95zfPZNfiC3kDekCLdxHzeOnOfM/imEO3tDJx
	 +zGxsYnbkS9pL5onTjCqSf1lCpd9OlhxL7UdtzDPOynhaew39S8gfymTDcLO1c7oQh
	 yJhw2lOrVK/rxRlX4ScAbtHp3M+GtKVH5A9Twtlo17OQVSwaTYLez34s7MITTib7rh
	 3x+M5Sy9kEHBSmnl8EedysG/7GbPZ2gQ8JCyn+dAR8k1Lfy12tA7olxrZPQNutW/wA
	 ZrDK6avVXAv4SVnZawkD2iBzenLMlfQbgEC/lQx797gu5MEVvWNL9rgw7f0zFvpmht
	 Ylwwy4Rw39W/A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85D0140730;
	Tue, 16 Apr 2024 06:16:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AFCDF1BF329
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 06:16:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A2D6A81407
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 06:16:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rkln4AGXUBVB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Apr 2024 06:16:47 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C448A813CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C448A813CA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C448A813CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 06:16:46 +0000 (UTC)
X-CSE-ConnectionGUID: FC3kkq+ATamZq8h3NOHw0Q==
X-CSE-MsgGUID: JGI2N2awRAOAUrnvHXrfgQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="8546746"
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; 
   d="scan'208";a="8546746"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 23:16:45 -0700
X-CSE-ConnectionGUID: TflDeatzQ8WEuacwtQYjPA==
X-CSE-MsgGUID: 1uQyPdlARhu2JLYl3yPx8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="26810051"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 23:16:42 -0700
Date: Tue, 16 Apr 2024 08:16:17 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <Zh4XsXwDxeu936kw@mev-dev>
References: <20240412063053.339795-1-michal.swiatkowski@linux.intel.com>
 <20240412063053.339795-4-michal.swiatkowski@linux.intel.com>
 <Zhje0mQgQTMXwICb@nanopsycho> <Zhzny769lYYmLUs0@mev-dev>
 <ZhzvGlDiuaPSEHCX@nanopsycho> <Zh4JQ4RDRIAYC+V7@mev-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zh4JQ4RDRIAYC+V7@mev-dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713248207; x=1744784207;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=LS6kxqMr2jweAkl/e91IqtJx4zTS2TvjSxqvBc6KXKM=;
 b=Su7+Myn44hcy9w6/HYpRerlpVFPTWxETmTpbO1IGlHgWcULCqoK44n7L
 D53+CHjBefGzzC1SawxxTM81DDyHcgw9750OcJwZNeTqYvPRz/ZaGZFg8
 37mxUAYJxx67WxTrzl6pjW1L09ojeWZtj00ZSktX2rXS9KbLtwI/CWK7q
 vVrEPaYDOZnL+F/3TojN+Mezd5+V7a/WC6y3oOdHu+IV++/KT1IP3MbU5
 iT8XzsGFj6gNywCiuAoVX8XmSumd75uKMmXseNOBShVVbVQp6IiRg1AcG
 eIUkUnUOChgnWz5HLiu8ZkbBCIQOpw+AYPhGV754stjVANFURbTzNs0Xp
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Su7+Myn4
Subject: Re: [Intel-wired-lan] [iwl-next v3 3/7] ice: add basic devlink
 subfunctions support
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
Cc: maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 netdev@vger.kernel.org, mateusz.polchlopek@intel.com,
 wojciech.drewek@intel.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com, jiri@nvidia.com,
 jacob.e.keller@intel.com, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Piotr Raczynski <piotr.raczynski@intel.com>, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Apr 16, 2024 at 07:14:43AM +0200, Michal Swiatkowski wrote:
> On Mon, Apr 15, 2024 at 11:10:50AM +0200, Jiri Pirko wrote:
> > Mon, Apr 15, 2024 at 10:39:39AM CEST, michal.swiatkowski@linux.intel.com wrote:
> > >On Fri, Apr 12, 2024 at 09:12:18AM +0200, Jiri Pirko wrote:
> > >> Fri, Apr 12, 2024 at 08:30:49AM CEST, michal.swiatkowski@linux.intel.com wrote:
> > >> >From: Piotr Raczynski <piotr.raczynski@intel.com>
> > 
> > [...]
> > 
> > >> >+static int
> > >> >+ice_devlink_port_fn_state_get(struct devlink_port *port,
> > >> >+			      enum devlink_port_fn_state *state,
> > >> >+			      enum devlink_port_fn_opstate *opstate,
> > >> >+			      struct netlink_ext_ack *extack)
> > >> >+{
> > >> >+	struct ice_dynamic_port *dyn_port;
> > >> >+
> > >> >+	dyn_port = ice_devlink_port_to_dyn(port);
> > >> >+
> > >> >+	if (dyn_port->active) {
> > >> >+		*state = DEVLINK_PORT_FN_STATE_ACTIVE;
> > >> >+		*opstate = DEVLINK_PORT_FN_OPSTATE_ATTACHED;
> > >> 
> > >> Interesting. This means that you don't distinguish between admin state
> > >> and operational state. Meaning, when user does activate, you atomically
> > >> achive the hw attachment and it is ready to go before activation cmd
> > >> returns, correct? I'm just making sure I understand the code.
> > >> 
> > >
> > >I am setting the dyn_port->active after the activation heppens, so it is
> > >true, when active is set it is ready to go.
> > >
> > >Do you mean that dyn_port->active should be set even before the activation is
> > >finished? I mean when user only call devlink to active the port?
> > 
> > The devlink instance lock is taken the whole time, isn't it?
> > 
> 
> I don't take PF devlink lock here. Only subfunction devlink lock is
> taken during the initialization of subfunction.
>

Did you mean that the devlink lock is taken for DEVLINK_CMD_PORT_SET/GET
command? In this case, I think so, it is for the whole time of the
command execution.

Sorry I probably missed the point.

> > >
> > >> 
> > >> >+	} else {
> > >> >+		*state = DEVLINK_PORT_FN_STATE_INACTIVE;
> > >> >+		*opstate = DEVLINK_PORT_FN_OPSTATE_DETACHED;
> > >> >+	}
> > >> >+
> > >> >+	return 0;
> > >> >+}
> > >> >+
> > 
> > [...]
