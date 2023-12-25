Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A94881DF82
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Dec 2023 10:36:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 655D941606;
	Mon, 25 Dec 2023 09:36:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 655D941606
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703496983;
	bh=9qQelG5KM9+J/PABmenz9Lq7j3KjruBPA5sadfELbjA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z6QHS+uc07g7hX7RMBVIKreMPLDZjXIGxW4c0sTF5S5f6IFTCoUwGhAxAi7HTxSZJ
	 iNuVSIgk710lC6rf4M0ZVePq9HLYV3Mmytx5XrcT9RN88TOnjH/8HVene+oM10cbpn
	 2q0TWuPv/+0dP85C9AYl+Br2uDZ6tQLGij7BgctxJGHqN7K0fy1dZyNJ8A2F38qToo
	 ygVv9ZOol6ialPSSbmrdiYF6Dv2p8K2Ey3JqFXULvDmnvxN2jHVnOaLjSZ+NDv08ys
	 geoXNFc3GeDiiHEsqOGmComJyMOgi953Vtog2O+CZWyChno5QinDevm2JnzRiFgnBy
	 kW4rUmM3NdnKQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VU10uKUvUTRv; Mon, 25 Dec 2023 09:36:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 37904415FD;
	Mon, 25 Dec 2023 09:36:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 37904415FD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 899891BF573
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Dec 2023 09:36:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 612AC81A12
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Dec 2023 09:36:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 612AC81A12
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cbCSg7FUGspa for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Dec 2023 09:36:15 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B1E59818C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Dec 2023 09:36:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B1E59818C2
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 58CC7B80B0A;
 Mon, 25 Dec 2023 09:36:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CF67C433C7;
 Mon, 25 Dec 2023 09:36:11 +0000 (UTC)
Date: Mon, 25 Dec 2023 09:36:08 +0000
From: Simon Horman <horms@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20231225093608.GE5962@kernel.org>
References: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
 <20231206010114.2259388-2-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231206010114.2259388-2-jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1703496972;
 bh=pn3mm75zzR2E6GKudky68lgSS4ky7Wdi7kq7bHXdAbQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WCKZ6+EIX7x3icGOSG1PVXG9sHVDdzESu49U5FnsEZrKFsxY4TQdYifoU2AoZqIfD
 mbd7l0uNYYvdO9Jp1xKxWXwH5oL3HJkCkr51jHnAGTzKKOGChQIYC3Gw9ra7Ae7Zx0
 REVsfHnj/MADAUmxEgas/BL8fr5oxCHIHzqkmdteePxi7pQ4DdTMw4T80i+Se5A9EM
 hFMjG9Rimr65IGbUuvvDh7pLO0qqwoVYcgzI8Tmtn2tttdbP4QowyZyfz5ajm8nkTx
 9Jf3VTn+Ah9wrWxLJL6XxuH2qPpB4I1vKdUmNDA6RP9RcEGHiU4vTfOk3Q44fGkcdI
 NfEsSOR1864Fg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=WCKZ6+EI
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 01/15] e1000e: make lost
 bits explicit
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
Cc: netdev@vger.kernel.org, marcin.szycik@linux.intel.com,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 aleksander.lobakin@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Dec 05, 2023 at 05:01:00PM -0800, Jesse Brandeburg wrote:
> For more than 15 years this code has passed in a request for a page and
> masked off that page when read/writing. This code has been here forever,
> but FIELD_PREP finds the bug when converted to use it. Change the code
> to do exactly the same thing but allow the conversion to FIELD_PREP in a
> later patch. To make it clear what we lost when making this change I
> left a comment, but there is no point to change the code to generate a
> correct sequence at this point.
> 
> This is not a Fixes tagged patch on purpose because it doesn't change
> the binary output.
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
