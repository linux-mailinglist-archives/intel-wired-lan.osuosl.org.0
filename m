Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1A9939137
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jul 2024 17:01:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49EE8810F9;
	Mon, 22 Jul 2024 15:01:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i3TRONAVntrv; Mon, 22 Jul 2024 15:01:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CDF388112E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721660503;
	bh=aN125zVdQ7SLatfeeCHT2wg0zEU/dL7GPSULrtUWoQA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=o4Dt0e9VF7djbjGZ51Vg2TFs19TDu2CdTKafdBErMLUqmf6XqI3UpykRuHZKQkIVn
	 WMzLOxfL+quVYWjiK/cJip+YefN96ngoBfmXgHQ0eSrhBZNW5YRb3e1/Kz5MpXDUHv
	 qffP/msRdkJsBq0y5fs4HSOk8/SnHDHOFRKShRFRjdaXIvBWQ9amvG7ulQY8w5Dwrs
	 dllImhnfLRX7FnTKjHUCDb54IgNyyc+smt2MP3lCvICjjEojQPAgZZJS8bLCewatfv
	 EBpHaPpDxzsMqzix8zAajd5ZaV8Yr2cx2LM/imMp5e/vr5lvhx13VRSoxUR8ET+GLS
	 agTdwrJDQhAtA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CDF388112E;
	Mon, 22 Jul 2024 15:01:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E245D1BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:01:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DC749810F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:01:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mVMytahzO-tn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jul 2024 15:01:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1B6D7810ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B6D7810ED
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B6D7810ED
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:01:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id F1D2560B3E;
 Mon, 22 Jul 2024 15:01:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53D61C116B1;
 Mon, 22 Jul 2024 15:01:38 +0000 (UTC)
Date: Mon, 22 Jul 2024 16:01:36 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20240722150136.GH715661@kernel.org>
References: <20240710204015.124233-1-ahmed.zaki@intel.com>
 <20240710204015.124233-6-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240710204015.124233-6-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1721660499;
 bh=BGMMpKXqjmnrN8BBfqoHRGbjQcStSiAQC1ZKUqXjJiM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ec6beWYo0z08pgi/2APpB4a2j503wFtcKMaLTYKjvhXNqpSPvMi00eTg32VnLB0Vl
 G11SQQEJ5HNYUWTe48VES/BkrIyd3M4ZLZ/hm0BMiNHJaF46MABafJyHVvAWR3Zm7i
 aFEo9zVL7LFbIABa9pkek8wtoQPmK8FmfRBEi1z43AwvL4nTmSR/iFliNfGfQgnOlO
 HWWpjQbn9Dfim2W2l1KJM9jrDgH1N6iWKEP1WLt/tTbebJjI3XWKgoWmJSz0pUmr7l
 zHCG1hb0BUtf32GK/7YURBTBPNAVwQWBuJ+cFl5vp9x2UqynORevKL7Pmjixf4p6nC
 ZJ1aODSgSKYwA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Ec6beWYo
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 05/13] ice: add parser
 execution main loop
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, Junfeng Guo <junfeng.guo@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 10, 2024 at 02:40:07PM -0600, Ahmed Zaki wrote:
> From: Junfeng Guo <junfeng.guo@intel.com>
> 
> Implement the core work of the runtime parser via:
> - ice_parser_rt_execute()
> - ice_parser_rt_reset()
> - ice_parser_rt_pkt_buf_set()
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>

> diff --git a/drivers/net/ethernet/intel/ice/ice_parser_rt.c b/drivers/net/ethernet/intel/ice/ice_parser_rt.c

...

> +static u16 ice_ptype_resolve(struct ice_parser_rt *rt)
> +{
> +	struct ice_parser *psr = rt->psr;
> +	struct ice_ptype_mk_tcam_item *item;

nit: Please consider arranging these variables in reverse xmas tree order.

     Flagged by https://github.com/ecree-solarflare/xmastree

> +
> +	item = ice_ptype_mk_tcam_match(psr->ptype_mk_tcam_table,
> +				       rt->markers, ICE_MARKER_ID_SIZE);
> +	if (item)
> +		return item->ptype;
> +
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Could not resolve PTYPE\n");
> +	return U16_MAX;
> +}

...
