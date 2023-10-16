Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 628FF7CA2E1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 10:56:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 010AE6FA3B;
	Mon, 16 Oct 2023 08:56:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 010AE6FA3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697446589;
	bh=R9FP25TCr79YyNnUllKUfiU6WXzk5bmhqRCEbNR1qwg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Yvp9touiaW6xlIZXKJkOwBeCTjtAPdTslaslPEsPSzNaz9DIqUTbrt0dCfA8HwWBd
	 4r9ADlg6qZLqq5OT0tAdzBNOC6/rnIjGSskZb9RJyLy5AAn4q7MuztIxkOzzhny5iy
	 LayZ/P4Cv1e3Y0HcsUG2hfMrHl84hEBw6XuvmjxFiYtSTgWzB7CFGUKUN7lLPDEuqa
	 sb+Z0RFXVTTYzU4QbFA7Bl4rGott231CbGK/4hNRkOYKrTrUIkDkkwG6xc44WhbFVQ
	 KjSww7DlzOwPB/RJZqdK+VCc1ED0gL6es3ViXuRpcL01T1WiG7G7cjn4Zd4T/JU5dl
	 6etBUtCo3Jplg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zWWz7uAYR5o0; Mon, 16 Oct 2023 08:56:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 28DDD6FA37;
	Mon, 16 Oct 2023 08:56:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28DDD6FA37
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9A0311BF286
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 08:56:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 76D7C415C3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 08:56:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 76D7C415C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RkF2gAm3Ihiy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 08:56:21 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1BA66415C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 08:56:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1BA66415C8
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id D79B260DE9;
 Mon, 16 Oct 2023 08:56:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C39D6C433C7;
 Mon, 16 Oct 2023 08:56:18 +0000 (UTC)
Date: Mon, 16 Oct 2023 10:56:16 +0200
From: Simon Horman <horms@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20231016085616.GF1501712@kernel.org>
References: <20231009090711.136777-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231009090711.136777-1-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697446579;
 bh=1AHKkjopLy9MQ2QaX0CMu3exjv0u7VlsqlSyKEPL17I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fTVwj73mH4w8wkLtKxMBFbXppul9fJhr+aXijweVOwj/yAN+p6H+DVcthn0x4ZxrH
 WNWEVkbFlxG3zbRPgjplrcrzxbN/oIs4zJQNqGL93wenT/OfI3QIv0T4b5z6S2PRuz
 OTKz9XQ4qccllse9iUSs5S9NQsSzY0LOBZ4VxN6LkxejfolOUT1VcWVU3CEMRNOsta
 Fjo2Bb124+cbUWwQqzhbHw6vXHr04N4bYEn8sbI9/vPLIzRFP6FHovH5dMvEn1tCmI
 uNEaWIxvTuPV6cokexqMWvx8jdi0NSOAh/eLVrmPpAouDQY893Zn62mKS1XvdY93yh
 eTvWTlL0OLnLQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=fTVwj73m
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 0/5] ice: Support 5 layer
 Tx scheduler topology
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Oct 09, 2023 at 05:07:06AM -0400, Mateusz Polchlopek wrote:
> For performance reasons there is a need to have support for selectable
> Tx scheduler topology. Currently firmware supports only the default
> 9-layer and 5-layer topology. This patch series enables switch from
> default to 5-layer topology, if user decides to opt-in.
> 
> ---
> v3:
> - fixed documentation warnings
> 
> v2:
> - updated documentation
> - reorder of variables list (default-init first)
> - comments changed to be more descriptive
> - added elseif's instead of few if's
> - returned error when ice_request_fw fails
> - ice_cfg_tx_topo() changed to take const u8 as parameter (get rid of copy
>   buffer)
> - renamed all "balance" occurences to the new one
> - prevent fail of ice_aq_read_nvm() function
> - unified variables names (int err instead of int status in few
>   functions)
> - some smaller fixes, typo fixes
> https://lore.kernel.org/netdev/20231006110212.96305-1-mateusz.polchlopek@intel.com/
> 
> v1: https://lore.kernel.org/netdev/20230523174008.3585300-1-anthony.l.nguyen@intel.com/
> ---
> 
> Lukasz Czapnik (1):
>   ice: Add tx_scheduling_layers devlink param
> 
> Michal Wilczynski (2):
>   ice: Enable switching default Tx scheduler topology
>   ice: Document tx_scheduling_layers parameter
> 
> Raj Victor (2):
>   ice: Support 5 layer topology
>   ice: Adjust the VSI/Aggregator layers

For series,

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
