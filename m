Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B86F8A62E3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Apr 2024 07:15:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC45E6080B;
	Tue, 16 Apr 2024 05:15:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jiXMRbuK_h2K; Tue, 16 Apr 2024 05:15:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A7EB605E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713244516;
	bh=ey3U2DJPVG+f1O+8gOmIbmJTmcpMZovEmSJnPoLijN0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ole8qzTjuDOlCchaonay0Yw4Xbr7GDovmhRaZsSNQ5OM47vj0A1Wd+tsd2cKGUphL
	 PUhX32h0E0yR1zujKrZqiHSBrcW/2R2mD48ypzI/jmNcQgE9LtLsLuPt23eEZFErSw
	 DWirCl13JXUb8RwHvCyRek5vsvZ2nJ2lDtFChw1migZwF7XcRkY49tEL/Pjs/M8ofS
	 8IPrYUekjh7m5mD3C15L1W5nszlyO4QslbWI6gIIzEQEcCnSBFLPri8wJEf9CdhRlT
	 ++FQ9H8LU3jbQkStHriDJRu6ClR3q8DhtVbipLXoDvZTJXWLt16p+HimffwQqrxDL/
	 0GKGlceYLJhfg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A7EB605E3;
	Tue, 16 Apr 2024 05:15:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D7B491BF32D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 05:15:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C217340639
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 05:15:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mvnEIWQmzOTq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Apr 2024 05:15:12 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 36A7640638
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36A7640638
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 36A7640638
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 05:15:12 +0000 (UTC)
X-CSE-ConnectionGUID: qNRdfXUkSQidDK3HHstMXg==
X-CSE-MsgGUID: wK0J2n1RRsu9jYzFH0jvww==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="8829164"
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; 
   d="scan'208";a="8829164"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 22:15:11 -0700
X-CSE-ConnectionGUID: x0z0GotsSq2zUkovfnWCqA==
X-CSE-MsgGUID: nrBr4JvnRyi3YWuefjX0gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="22210031"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 22:15:08 -0700
Date: Tue, 16 Apr 2024 07:14:43 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <Zh4JQ4RDRIAYC+V7@mev-dev>
References: <20240412063053.339795-1-michal.swiatkowski@linux.intel.com>
 <20240412063053.339795-4-michal.swiatkowski@linux.intel.com>
 <Zhje0mQgQTMXwICb@nanopsycho> <Zhzny769lYYmLUs0@mev-dev>
 <ZhzvGlDiuaPSEHCX@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZhzvGlDiuaPSEHCX@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713244512; x=1744780512;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=WfSW2fVy8MmEj/24vCs7MxT/+kMMLLr7ED9NEYvKF/8=;
 b=LnjRglU9QIXYW2Y415sJ8kBoVwYhg2rNUqWKatF0iEJ4E0hmZADtv1Jb
 0LoNibSipdeb6INhXGvbbkR45loF1RcLkNZqLASgGAFNO6YVa7xNYU2xQ
 PU1mN5l+4Wg6NP3A2ZPzlt0zsjyx1vndinngQp7GRnaulG6/9Hqg5c5hP
 vXFzFfB5TltFL580iPoHAZmEf6NPjF5KBwDwFFXwQGNQtGld3LG6STG4+
 Ip8jYU+9bxAxvuHJsg8VZ0bc/bvQ/6/KAYE6HXnD1nGzHpXQLGaSobioh
 v6RDe+2lfcpmpzHK4FNmikG0Kn3XyY+oKlELFcYWIHl0FPlQ4MOMEH3DW
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LnjRglU9
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
Cc: maciej.fijalkowski@intel.com, mateusz.polchlopek@intel.com,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 jiri@nvidia.com, michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, Piotr Raczynski <piotr.raczynski@intel.com>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Apr 15, 2024 at 11:10:50AM +0200, Jiri Pirko wrote:
> Mon, Apr 15, 2024 at 10:39:39AM CEST, michal.swiatkowski@linux.intel.com wrote:
> >On Fri, Apr 12, 2024 at 09:12:18AM +0200, Jiri Pirko wrote:
> >> Fri, Apr 12, 2024 at 08:30:49AM CEST, michal.swiatkowski@linux.intel.com wrote:
> >> >From: Piotr Raczynski <piotr.raczynski@intel.com>
> 
> [...]
> 
> >> >+static int
> >> >+ice_devlink_port_fn_state_get(struct devlink_port *port,
> >> >+			      enum devlink_port_fn_state *state,
> >> >+			      enum devlink_port_fn_opstate *opstate,
> >> >+			      struct netlink_ext_ack *extack)
> >> >+{
> >> >+	struct ice_dynamic_port *dyn_port;
> >> >+
> >> >+	dyn_port = ice_devlink_port_to_dyn(port);
> >> >+
> >> >+	if (dyn_port->active) {
> >> >+		*state = DEVLINK_PORT_FN_STATE_ACTIVE;
> >> >+		*opstate = DEVLINK_PORT_FN_OPSTATE_ATTACHED;
> >> 
> >> Interesting. This means that you don't distinguish between admin state
> >> and operational state. Meaning, when user does activate, you atomically
> >> achive the hw attachment and it is ready to go before activation cmd
> >> returns, correct? I'm just making sure I understand the code.
> >> 
> >
> >I am setting the dyn_port->active after the activation heppens, so it is
> >true, when active is set it is ready to go.
> >
> >Do you mean that dyn_port->active should be set even before the activation is
> >finished? I mean when user only call devlink to active the port?
> 
> The devlink instance lock is taken the whole time, isn't it?
> 

I don't take PF devlink lock here. Only subfunction devlink lock is
taken during the initialization of subfunction.

> >
> >> 
> >> >+	} else {
> >> >+		*state = DEVLINK_PORT_FN_STATE_INACTIVE;
> >> >+		*opstate = DEVLINK_PORT_FN_OPSTATE_DETACHED;
> >> >+	}
> >> >+
> >> >+	return 0;
> >> >+}
> >> >+
> 
> [...]
