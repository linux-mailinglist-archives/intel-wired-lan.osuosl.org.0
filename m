Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFAE91E0A8
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Jul 2024 15:26:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0000240DC4;
	Mon,  1 Jul 2024 13:26:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TuJlZZ4ZwPwA; Mon,  1 Jul 2024 13:26:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3524540DC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719840414;
	bh=p2ePqA/CvLGCVr7WaMKU0WaTn0I/74/bg4I3oxHkrSY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZpqmoWg5ChHNX+xUZZzuksFdDc0pe+CI1OaFSmNH7/gLTBN7Yo5pEkRsj3F8L10Q7
	 FxYbWFFQkP1nF0pIbKs4ujJzgMxJNBhYX1EpVEnCxQH6kuseGK73cJllf24590zVBJ
	 1kt6LKuzaKqM7zgl5qpSugLVF9nFKP42m1lITquAQ+5tycUJKYglBui/O6l3W3yphE
	 tocEj2HkGSFD8s3BYYIfkC0i8B7LcukClanfnjN/eA9kJe4NQlzbY5myKP+tYKm27u
	 GXq5zkQ3D50pvhd4StB6xtkAp8EdlbyNqxXskBDm9JqyNNeEQBikAN77wiQPLT7CaZ
	 IReFb0CFWAVqw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3524540DC0;
	Mon,  1 Jul 2024 13:26:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3A5121BF338
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 13:26:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 32D7640495
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 13:26:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SGeBKTD30udm for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jul 2024 13:26:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B49AA40275
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B49AA40275
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B49AA40275
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 13:26:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id C15A0CE13D5;
 Mon,  1 Jul 2024 13:26:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF6E3C116B1;
 Mon,  1 Jul 2024 13:26:45 +0000 (UTC)
Date: Mon, 1 Jul 2024 14:26:43 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240701132643.GB17134@kernel.org>
References: <20240627151127.284884-9-karol.kolacinski@intel.com>
 <20240627151127.284884-13-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240627151127.284884-13-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1719840407;
 bh=UECbh9wJXU8IDXyagbQVCkv9/60GTr2VMGPjK0k90E8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M5xkmTMOC3vYvqztucl18WmOQ3yZGZINLUX5oieDt/bwByEjUUaqC+fQxUU4BRWJz
 B8wH5GQmkWfHWcBkOb3axyWOmQB7ZdpTzW/4C7oquN12h9IEXwrjKkpRGAGisnMtKE
 JK+xj5qwdO12exV0a7nKVC4/45BYmS5hQgmrew28u4cQ/BrDxXVpKFoDUlYrp/cpJc
 MG3SCB/Zv6pZ3RDLoO+paFUryzvxuXrZpZvA+I8rgFDonZJ4fC8ep22SAoFJrov6UL
 qUXp3wZWvrYYdIQ3H81x9A7BDIZ3O5pnl46Q6dc9Z0916gD7kfGCM6b3jIInRNCvES
 DQhZH4WsdLeeg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=M5xkmTMO
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/7] ice: Cache perout/extts
 requests and check flags
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
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 27, 2024 at 05:09:28PM +0200, Karol Kolacinski wrote:
> Cache original PTP GPIO requests instead of saving each parameter in
> internal structures for periodic output or external timestamp request.
> 
> Factor out all periodic output register writes from ice_ptp_cfg_clkout
> to a separate function to improve readability.
> 
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h

...

> @@ -259,13 +246,18 @@ struct ice_ptp_pin_desc {
>   * @work: delayed work function for periodic tasks
>   * @cached_phc_time: a cached copy of the PHC time for timestamp extension
>   * @cached_phc_jiffies: jiffies when cached_phc_time was last updated
> - * @ext_ts_chan: the external timestamp channel in use
> + * @kworker: kwork thread for handling periodic work
>   * @ext_ts_irq: the external timestamp IRQ in use
>   * @pin_desc: structure defining pins
>   * @ice_pin_desc: internal structure describing pin relations
> +<<<<<<< HEAD
>   * @kworker: kwork thread for handling periodic work
>   * @perout_channels: periodic output data
>   * @extts_channels: channels for external timestamps
> +=======
> + * @perout_rqs: cached periodic output requests
> + * @extts_rqs: cached external timestamp requests
> +>>>>>>> de618462ed43 (ice: Cache perout/extts requests and check flags)
>   * @info: structure defining PTP hardware capabilities
>   * @clock: pointer to registered PTP clock device
>   * @tstamp_config: hardware timestamping configuration

I think something went wrong when resolving a merge at some point :)

...
