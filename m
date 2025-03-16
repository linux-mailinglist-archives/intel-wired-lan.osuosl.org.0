Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C60A635C1
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Mar 2025 14:15:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88C4481E07;
	Sun, 16 Mar 2025 13:15:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p195FYw7O33G; Sun, 16 Mar 2025 13:15:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3DCF81E11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742130955;
	bh=yos+l5CGltOBFII8UMYOc958S9Awy3xJrkho/+UWavA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=M6u8tFXcq6YYIE9o4eaXAL+kcDVht7HAJ1YH+7360JexbRcMeKgYH9h6RHgnR/h6A
	 s/P3uNg5g2/EQ7chWKg+4JyQtFxsuc78Lzq8tKLImg7FqwxBbU9yENAkqjbGDjSd0V
	 hgrUlKcldMwgccQVT2FFIWHAXMAjB65Bs9IN1YOBxhsrsLZOl9Q9dBrakrYhg3GC5Y
	 r7r00h72K4y4L0OETNguBWvQfWyNC281lDj7GNw4P7MzXbM/EM+PRHlzpzQempbl9B
	 +rKjN7PAs/7QMZpWeg3ZbBoZcI07j9EwsNYxKs6aU+Nhq6jpDh2q2KHeJRscKkL7fx
	 leW1nmh4rLz2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3DCF81E11;
	Sun, 16 Mar 2025 13:15:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C13DCEA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Mar 2025 13:15:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AFC8540C1A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Mar 2025 13:15:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sd1QU0eF3Tr6 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Mar 2025 13:15:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B910540C14
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B910540C14
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B910540C14
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Mar 2025 13:15:52 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 3C453A48B74;
 Sun, 16 Mar 2025 13:10:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79A1CC4CEDD;
 Sun, 16 Mar 2025 13:15:48 +0000 (UTC)
Date: Sun, 16 Mar 2025 13:15:45 +0000
From: Simon Horman <horms@kernel.org>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250316131545.GY4159220@kernel.org>
References: <20250307132555.119902-2-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250307132555.119902-2-martyna.szapar-mudlaw@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1742130950;
 bh=S8k6hZfMd8wUHCgq21ZTyZehbZz+gKZmfe5iK5Dpr0Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FQCpLDxsVkKe6ypR3DTVOWjEmidOBmT7ecCm3ke/XeXb3mBUskRECSW5KIzULq0YT
 9OtFXsgOGz1y4nQf6J0aYb4sPqgjOW//O3oOCfFBjNT1ht7VGxQsmaQFXK/bLLtIZy
 M8ACT4RaAKI0xg6DtJdOxSLmByrpERq+3efiIw6ye0PbaKC9uqHop7626BVcSsz+dd
 fyU74KUJU3STWnm6h7qPRpw5YmQINjchx9RczsycfDJSIwZBGyt+pv5+MdJh6K4dUW
 9NXQDCPSiI7klqgTec2ls3OKGY5KCfT/ByNDadzANxNstjkPEWc0NUW1lu4Pjf7S9v
 TrqtwVvQbZbQw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=FQCpLDxs
Subject: Re: [Intel-wired-lan] [iwl-next v2] ice: refactor the Tx scheduler
 feature
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

On Fri, Mar 07, 2025 at 02:25:56PM +0100, Martyna Szapar-Mudlaw wrote:
> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> 
> Simplify the code by eliminating an unnecessary wrapper function.
> Previously, ice_devlink_tx_sched_layers_get() acted as a thin wrapper
> around ice_get_tx_topo_user_sel(), adding no real value but increasing
> code complexity. Since both functions were only used once, the wrapper
> was redundant and contributed approximately 20 lines of unnecessary
> code. Remove ice_get_tx_topo_user_sel() and moves its instructions
> directly into ice_devlink_tx_sched_layers_get(), improving readability
> and reducing function jumps, without altering functionality.

Thanks, this explanation looks good to me.

> 
> Also remove unnecessary comment and make usage of str_enabled_disabled() in
> ice_init_tx_topology().

Sorry for not noticing this in my review of v1,
but I would lean towards these changes being separate patches.

That not withstanding, this looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

> Suggested-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>

...
