Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A374A9B251D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2024 07:13:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1867402A6;
	Mon, 28 Oct 2024 06:12:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P6a-4j8tFtAv; Mon, 28 Oct 2024 06:12:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99723402A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730095978;
	bh=rlBiRR2wU5EN8BkaW8NFJ18zSPjud0ZN+LcaL01b4yQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uckELSjIjolk3k2iiTokqGsWpVtxqFRT13pyXlJncnausaOhhUhOW2nhsjeWcKTE9
	 zK73+5h4rCtaykWShEKmomFf1wVT813V39rfVaqWDpxho6f+jtsacZ54cK65n2RVJ7
	 VgvyE4QTGCfHLOsMKfz3Cr7ANU7+Q1kEQTZo5bfdwJAh9KjT0FWKpI9M8qk7Fehaxe
	 c6zDxoHnR0580Z070d2PZMXhUYX2yQI+SIEJccGif6krpf6Pn0PzzDVLjnM1ECYbJy
	 Mny7PyhEgPdU6FgSTQTtnMImIcnpeWLrh7jNrEUyXHbl6n/jybEemo/k78olJifO/7
	 LppEASLKg20YQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99723402A5;
	Mon, 28 Oct 2024 06:12:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6068DAEE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 06:12:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2B2AF400D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 06:12:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id szZo-WAyINQC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Oct 2024 06:12:55 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F2D3D401B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2D3D401B0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F2D3D401B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 06:12:54 +0000 (UTC)
X-CSE-ConnectionGUID: xv3LHRtDQJuzf5QZFVbQdw==
X-CSE-MsgGUID: 1myETJw0ReeS3Hrkb/uBoQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29642073"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29642073"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2024 23:12:54 -0700
X-CSE-ConnectionGUID: kyV8Tj/gQymNQvf+2pFy9A==
X-CSE-MsgGUID: rgK1zgujTC6xK1nXNcH8vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="81462453"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2024 23:12:51 -0700
Date: Mon, 28 Oct 2024 07:10:12 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, pawel.chmielewski@intel.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 pio.raczynski@gmail.com, konrad.knitter@intel.com,
 marcin.szycik@intel.com, wojciech.drewek@intel.com,
 nex.sw.ncis.nat.hpm.dev@intel.com, przemyslaw.kitszel@intel.com,
 jiri@resnulli.us, horms@kernel.org, David.Laight@aculab.com
Message-ID: <Zx8qxF+4EPQZnO0k@mev-dev.igk.intel.com>
References: <20241024121230.5861-1-michal.swiatkowski@linux.intel.com>
 <20241024121230.5861-3-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241024121230.5861-3-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730095975; x=1761631975;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=aFKuH9nVbtC0ZkRrh/M9jpQfvq12RJ+0LBd5hje0Xbo=;
 b=eZEk9UsClkUH3GGXcHM1bUwubEW6QC/YUGwkH1gcC+aFubgoclVqcp2O
 ClkP/IXF21px7rmMYi0XPDoVDQWxLyZa1bR020CkI4xi6un90zQjbA5Tu
 IhA4bl61FrznPOJsVZi7OfEH2RWatvK4wfv9FwONJVqnJC62EfINBG8Tw
 CtF3R0xPYfMUSfm3p+8otb4S9eR+KS5jPBxshhT/Q7KJDb9MQHZ2+RrUG
 1jcINxWwXiIi5m8ICxBHD21lhYRkvM/y8jzo4yiym49oPyfbvEqShSxOs
 qeEYq92xhbySdlAldlsGma27VHNPBXzJ5LK5sbI8afaMLnTzq+JQ9v0Go
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eZEk9UsC
Subject: Re: [Intel-wired-lan] [iwl-next v5 2/9] ice: devlink PF MSI-X max
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

On Thu, Oct 24, 2024 at 02:12:23PM +0200, Michal Swiatkowski wrote:
> Use generic devlink PF MSI-X parameter to allow user to change MSI-X
> range.
> 
> Add notes about this parameters into ice devlink documentation.
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  Documentation/networking/devlink/ice.rst      | 11 +++
>  .../net/ethernet/intel/ice/devlink/devlink.c  | 83 ++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice.h          |  7 ++
>  drivers/net/ethernet/intel/ice/ice_irq.c      |  7 ++
>  4 files changed, 107 insertions(+), 1 deletion(-)
> 

[...]

> diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
> index ad82ff7d1995..0659b96b9b8c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_irq.c
> +++ b/drivers/net/ethernet/intel/ice/ice_irq.c
> @@ -254,6 +254,13 @@ int ice_init_interrupt_scheme(struct ice_pf *pf)
>  	int total_vectors = pf->hw.func_caps.common_cap.num_msix_vectors;
>  	int vectors, max_vectors;
>  
> +	/* load default PF MSI-X range */
> +	if (!pf->msix.min)
> +		pf->msix.min = ICE_MIN_MSIX;
> +
> +	if (!pf->msix.max)
> +		pf->msix.max = total_vectors / 2;

Probably it will be better to set max to the value that PF needs after
calling ice_ena_msix_range(). I will send next version with that change,
please not pull.

Thanks,
Michal

> +
>  	vectors = ice_ena_msix_range(pf);
>  
>  	if (vectors < 0)
> -- 
> 2.42.0
> 
