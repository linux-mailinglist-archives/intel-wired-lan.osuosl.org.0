Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C54A8BCA0C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 May 2024 10:51:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D2F8640714;
	Mon,  6 May 2024 08:51:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9rd88I2ZQsoW; Mon,  6 May 2024 08:51:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF2FA40716
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714985495;
	bh=2QRgH5VnpX0RwusZ17k7CmbkY8dMM97q2eTbNB/OxcE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=I/74v4RhKS8+YbfBXl2wzSxfF2cnYBXX4IqF2qcr5BugiH2uYgXZGxiq4SMvZeq36
	 ndE1mZkLlXGB/5kp+CcXaezIUXv8fNvfOfYQOB5oKY23v+wY50530AjmB1WyKE0GA/
	 uuZPgH4s/wz/skANQILXZnskk5yvsXklIrzwXSZ3y3MALrFZA6SjP8Gg3xSG2Sse6w
	 fWDB1rAwAvaaQMOIlUiVB7rsrhMUOSOIfh4wkD9ItRtyzGdvhE3c004BRaCloJgx7j
	 4VGkKPhzBo4qGqhtDeqGvuLaz5qTcSFjwYWcI+pt+x7xgKpV969q/VCvzV9yqG7m95
	 1uAYJaYd7KdzA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF2FA40716;
	Mon,  6 May 2024 08:51:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 30CEB1BF38A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 08:51:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1C713606A6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 08:51:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u2CcefjEfmQq for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 May 2024 08:51:31 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5FCCC605E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FCCC605E9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5FCCC605E9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 08:51:31 +0000 (UTC)
X-CSE-ConnectionGUID: dXty7dbbTaK4sKlVJSHjAg==
X-CSE-MsgGUID: txiPJiZPQ7OxkA6nGCL7qQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="22130423"
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="22130423"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 01:51:31 -0700
X-CSE-ConnectionGUID: EB7Wb8sjSPqQumpTj1FBDw==
X-CSE-MsgGUID: yR1fEpw9T4GvwxMk6MSwVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="32771649"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 01:51:28 -0700
Date: Mon, 6 May 2024 10:50:53 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <ZjiZ7Re63+aEtROE@mev-dev>
References: <20240419171336.11617-1-michal.swiatkowski@linux.intel.com>
 <20240419171336.11617-4-michal.swiatkowski@linux.intel.com>
 <7003fe5e-4bb9-8335-6d3f-9edab0aa3570@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7003fe5e-4bb9-8335-6d3f-9edab0aa3570@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714985491; x=1746521491;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=n077hml70tQrzUxJl7tu8jfzK0VqIgZ/7Ew1bmK5Y+A=;
 b=IfpYWCxf8fVWnlkoUT+zAJnYwmXH6FUq8fJEdaVbXZpScHXaHQF/g9wD
 xmZd6PXMXaKGzKWE/xc3E+zgukzEpHodnoqEN9dPhGZ0SOzKLlXhViv0j
 Z0PoLhoSdUP/i99pNmaD6vXYObWxDopcAp+nW57APX9s9DmbtUOHaMnN8
 8UXfJqE7cnLa3IbenSiG5Hg2h+EasAQsnpIPNH0SfsLkIORMPyrRF75LE
 Ixn5Mhqhbl6U0LEzW/4g1AZrzVfvZZ4pGhl197TseUK/EINXkPpRWDhgo
 voaxMm7Ho0m5vuP2q8+4duMNUEQQJMAgKYPqX8gZRYL+hgHkxw31EQSzN
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IfpYWCxf
Subject: Re: [Intel-wired-lan] [iwl-next v1 3/4] ice: move VSI configuration
 outside repr setup
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 24, 2024 at 02:08:11PM -0700, Tony Nguyen wrote:
> 
> 
> On 4/19/2024 10:13 AM, Michal Swiatkowski wrote:
> 
> > +/**
> > + * ice_eswitch_cfg_vsi - configure VSI to work in slow-path
> > + * @vsi: VSI structure of representee
> > + * @mac: representee MAC
> 
> Can you fix the kdoc for this?
> 
> > drivers/net/ethernet/intel/ice/ice_eswitch.c:140: warning: No description
> found for return value of 'ice_eswitch_cfg_vsi'
> 
> Thanks,
> Tony
> 

I sent v2, sorry for late response, I was OOO.

Thanks,
Michal

> > + */
> > +int ice_eswitch_cfg_vsi(struct ice_vsi *vsi, const u8 *mac)
> > +{
> > +	int err;
> > +
