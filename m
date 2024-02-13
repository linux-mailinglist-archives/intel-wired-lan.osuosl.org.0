Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1A9853012
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 13:03:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A86314116C;
	Tue, 13 Feb 2024 12:03:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BGbY_o7yeJcN; Tue, 13 Feb 2024 12:03:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7EC1840C28
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707825823;
	bh=NZ6KehMlPer9e5MfjeWiWfw+C+rsE+HP0tEcJWuwNy4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=i4XPtbPkA2fpdOcevfNOfsyLrXzTPTh/D/KhvOnc+I0N+69rXx4OUJ9cGKydpjBqe
	 ZRmgI/BQckTACK4D4aUj0HnIiPbYlpE2XcW/HexpdTZ2msk33lCTXELeUnFaqkLDNN
	 QDx0Bpz3ACwGUjapyCFHb9m3MPY8VlFXYV4yZY/hj0HM82UYh0V7mP5d7zQS/gNrc0
	 5NSJ24yoSmT6hP9RZhbCUR+jivmcNseJm2vJI0Lley5FfoNR7Xmp7/bIupD01x2ntR
	 lXOYAqSEoV4FQGBD9F7GLlRoQaxdvw/yPT8BN/S0SM1QFhSw++2bafIfCzI4Ie03K9
	 uco2V2P8sVb4Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7EC1840C28;
	Tue, 13 Feb 2024 12:03:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 801AA1BF421
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 12:03:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6CDE4410B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 12:03:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7yJVGjPYd0yu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 12:03:40 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 98063410AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98063410AF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 98063410AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 12:03:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1704561"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="1704561"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 04:03:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="935338476"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; d="scan'208";a="935338476"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 04:03:37 -0800
Date: Tue, 13 Feb 2024 13:03:34 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <ZctalmPA/b+VBZC+@mev-dev>
References: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
 <20240213072724.77275-7-michal.swiatkowski@linux.intel.com>
 <Zcsu6MCX-XkS8bki@nanopsycho> <Zcs5pFtmXzTxWO5s@mev-dev>
 <ZctSU2cJHVwPhyhZ@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZctSU2cJHVwPhyhZ@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707825820; x=1739361820;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=jPD6VUJO3XrE6zwrOjtPDfOxslEHv4Z7+L1r1W3Bxes=;
 b=Q5lnKAOpNNxYSQDkeEbsPgYzEqMRQK4lJA3nGkTWgrc2GBEoFsetNU6J
 jZWK7U/EiAQybfWKK0NjB33iLNqXewBncFD+yOORidN1BLw5qvDHwuKzo
 8XZDaZ4/S2AhYrBRQ3phUsCZ9RCWQXbsuFB9mLhS/Ai7LTFTQZYu+h5Ou
 /vbeU+tKmCFlMFI2uabYdWD5YowAFQWPruddCO/NrlJueroHMLK2NULuj
 3KCFQWur78Hhck+uwfKtAvYjaO4Ns03+rxv9rgQNw5nGzEVFChz9z+AFG
 N/mUvc51O1YdoX4zLOyNidu7XnnN3LGgQDICirGugwQFUtV+lD3N/GbU5
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q5lnKAOp
Subject: Re: [Intel-wired-lan] [iwl-next v1 06/15] ice: add subfunction aux
 driver support
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
Cc: maciej.fijalkowski@intel.com, netdev@vger.kernel.org,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, Piotr Raczynski <piotr.raczynski@intel.com>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Feb 13, 2024 at 12:28:19PM +0100, Jiri Pirko wrote:
> Tue, Feb 13, 2024 at 10:43:00AM CET, michal.swiatkowski@linux.intel.com wrote:
> >On Tue, Feb 13, 2024 at 09:57:12AM +0100, Jiri Pirko wrote:
> >> Tue, Feb 13, 2024 at 08:27:15AM CET, michal.swiatkowski@linux.intel.com wrote:
> >> >From: Piotr Raczynski <piotr.raczynski@intel.com>
> >> >
> >> >Instead of only registering devlink port by the ice driver itself,
> >> >let PF driver only register port representor for a given subfunction.
> >> >Then, aux driver is supposed to register its own devlink instance and
> >> >register virtual devlink port.
> >> >
> >> >Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> >> >Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> >> >Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> >> >---
> >> > .../intel/ice/devlink/ice_devlink_port.c      |  52 ++++-
> >> > .../intel/ice/devlink/ice_devlink_port.h      |   6 +
> >> > drivers/net/ethernet/intel/ice/ice_devlink.c  |  28 ++-
> >> > drivers/net/ethernet/intel/ice/ice_devlink.h  |   3 +
> >> > drivers/net/ethernet/intel/ice/ice_main.c     |   9 +
> >> > drivers/net/ethernet/intel/ice/ice_sf_eth.c   | 214 ++++++++++++++++--
> >> > drivers/net/ethernet/intel/ice/ice_sf_eth.h   |  21 ++
> >> > 7 files changed, 302 insertions(+), 31 deletions(-)
> >> 
> >> Could you please split this. I see that you can push out 1-3 patches as
> >> preparation.
> >
> >Do you mean 1-3 patchses from this patch, or from whole patchset? I mean,
> 
> This patch.
> 
> >do you want to split the patchset to two patchsets? (by splitting patch
> 
> Yes, 2 patchsets. If convenient 3. Just do one change per patch so it is
> reviewable.
> 
> 
Ok, will do that.

> >from the patchset I will have more than netdev maximum; 15 I think). 
> >
> >Thanks,
> >Michal
