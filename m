Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5F791E09D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Jul 2024 15:26:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 99A4140B65;
	Mon,  1 Jul 2024 13:26:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t6aaSpwfoYB9; Mon,  1 Jul 2024 13:26:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0CB540495
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719840360;
	bh=YQZF5DrlhKvi0yfbyP2CyTlHsF0BIptontb14+qtMzQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=95zxIoKfC2dLDT2N263Xr3b65clciWpCMGio+thIxFWYrRomwQUj8g5873EZA4vQq
	 dvTr4oWvH68rwCWO5vJ1rN8tLnZ8/zOYDKwkjeQwR0/QaqwACL9HUEYQKQkq8sJGG6
	 USglSPz72S7xJ6XgUg86ABdg8D+m62P2Uv8jOihVWwbGF28lKahXKWlET4Lu9CHLs3
	 zQQZgAC1w5nUGg4ey2JLTicDfD6JlfYFRfchRG94qAJyEPJMN16PPcYa7ibfaXsxw0
	 YuUqCiASAXjKMMz3IwBhJlygGE1WKvRHnNb5INz7EIANX6e34Vpd4rUGnsrXDH75LQ
	 Tp5jUqxD8T6GA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C0CB540495;
	Mon,  1 Jul 2024 13:26:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EB0571BF97A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 13:25:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D696A80CD9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 13:25:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t3UvfxkEVZaA for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jul 2024 13:25:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 010D980C4A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 010D980C4A
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 010D980C4A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 13:25:57 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 3F5E3CE1320;
 Mon,  1 Jul 2024 13:25:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34A91C2BD10;
 Mon,  1 Jul 2024 13:25:53 +0000 (UTC)
Date: Mon, 1 Jul 2024 14:25:51 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240701132551.GA17134@kernel.org>
References: <20240627151127.284884-9-karol.kolacinski@intel.com>
 <20240627151127.284884-12-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240627151127.284884-12-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1719840354;
 bh=mc3hoi4ZRc9S2KSPyjqkM9eKdXtPWehPqDAjzKxpdB4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rsXHyhwPl/Qap3XqrGndF/EEsfsGQExRhDbQhkHgoFtpRkgQ1K20tPEaKBlsWhLZc
 NHCFDbEsOs+T9iN5NeiQt3PKtReFYrGhurBp+T9s6z5IKcWGY4OC2BETE/ynus2TUp
 6eQNE/lDgzsexeJtSZLK/kaTAfNvQjp+E0h/F+wk6YtnaB5u5/k5bZGEvZvhDw7Kaz
 GfhyxVz3AKJv2+rbsp1M9711A7RqnsNrpGjWOGcpqnotYsD2mtZkd/zBlgWIWL5ycT
 ggsatmW/gjBxW9LXS9ho9oN/KbW9WsH7WzbHUEOo8icFePI5KPRWL8B9Q4yqhbo3lA
 KY5a/enUk8Wqg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rsXHyhwP
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/7] ice: Align E810T GPIO to
 other products
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

On Thu, Jun 27, 2024 at 05:09:27PM +0200, Karol Kolacinski wrote:
> Instead of having separate PTP GPIO implementation for E810T, use
> existing one from all other products.
> 
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c

...

> @@ -72,242 +78,99 @@ static int ice_ptp_find_pin_idx(struct ice_pf *pf, enum ptp_pin_function func,
>  
>  	return -1;
>  }
> -

nit: I think this blank line should stay

>  /**
> - * ice_get_sma_config_e810t
> - * @hw: pointer to the hw struct
> - * @ptp_pins: pointer to the ptp_pin_desc struture
> - *
> - * Read the configuration of the SMA control logic and put it into the
> - * ptp_pin_desc structure
> + * ice_ptp_update_sma_data - update SMA pins data according to pins setup
> + * @pf: Board private structure
> + * @sma_pins: parsed SMA pins status
> + * @data: SMA data to update
>   */
> -static int
> -ice_get_sma_config_e810t(struct ice_hw *hw, struct ptp_pin_desc *ptp_pins)
> +static void ice_ptp_update_sma_data(struct ice_pf *pf, uint sma_pins[],
> +				    u8 *data)

...
