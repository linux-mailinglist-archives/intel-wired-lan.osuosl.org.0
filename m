Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 60954A65834
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Mar 2025 17:36:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A15940D9A;
	Mon, 17 Mar 2025 16:36:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vC0yuZgFcWKa; Mon, 17 Mar 2025 16:36:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0628440D86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742229376;
	bh=jmD9IP5D3pQQqpMFBv2z413sIGBt5qTTLHVOGUSylAw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uvZ4qj3dW450iOy7UcetL/NzIK9WsBRKdTjc9fg73eIDX2UVgPSp4J0FTkqcKnLjE
	 X0rP6iGsow5fBHC2bHD/O8as0sz9wH7YUQrxi/njJcaC6lcd12D5p/fmyXydQ7+fFP
	 fK9ZriXPipAjpqgMxXqp8HJxfOdyET9mOIx9mIWz074TXY1RFp4YzjebWxywnsyWZr
	 oa+AwVv2Z8ItveZ3sQHs7dhhjs9cvjlqq3mhcizdPGVhYoFGYYFcwyBprRPViiZME0
	 W7KJ2nJxy2J6w5gPB8elhQM/JoSzEEsuhga+1xg47CyHJI/UXnbTM7JyLKSXfdsUh8
	 uYbIXlWEmI4bw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0628440D86;
	Mon, 17 Mar 2025 16:36:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1392FD5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 16:36:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0933840D84
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 16:36:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OGOMFcB22ARe for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Mar 2025 16:36:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DFD0840D76
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DFD0840D76
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DFD0840D76
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 16:36:11 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id D4ED55C4B2A;
 Mon, 17 Mar 2025 16:33:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27D6DC4CEE3;
 Mon, 17 Mar 2025 16:36:08 +0000 (UTC)
Date: Mon, 17 Mar 2025 16:36:07 +0000
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250317163607.GD688833@kernel.org>
References: <20250310122439.3327908-1-grzegorz.nitka@intel.com>
 <20250310122439.3327908-2-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250310122439.3327908-2-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1742229370;
 bh=hxUGwuq7WDdmDJmZwXTfkiEjKSTVRymvuQfO+oKCd2s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eim7GMPZJ+a7J8RIAakBUTHU5Hl4HUVOxQlDkCp7Az77Y1ooTCXtn7CT4PydNT9ML
 34Yna0UV8nQUFO3Gr+TJ08s1Zdf8kXQA+dNCTHZlgPfdbSymzXSJPlcxo/te6GtpYe
 ryZ27ab6g42K9XJ/7CQk+YP/KqrSk3OJfruoFYdt/46vo1oWDjsO2FwXAy5MECOjDv
 miRVvAPL0THlFytOTz3wVGDPpVB9UWKmm1uFdSL8sn7aWpGaIZA05tcYSlGBd2l8Yu
 bIEUfWTT/vfkvqmbfR/bvqimtQ3jAOLxJ2pqfxt/ATslJchpRwtA1W1U+cA1hiazwD
 hq1aVhOoXfuXQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=eim7GMPZ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/3] ice: remove SW side
 band access workaround for E825
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

On Mon, Mar 10, 2025 at 01:24:37PM +0100, Grzegorz Nitka wrote:
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> Due to the bug in FW/NVM autoload mechanism (wrong default
> SB_REM_DEV_CTL register settings), the access to peer PHY and CGU
> clients was disabled by default.
> 
> As the workaround solution, the register value was overwritten by the
> driver at the probe or reset handling.
> Remove workaround as it's not needed anymore. The fix in autoload
> procedure has been provided with NVM 3.80 version.

Hi Grzegorz,

As per my belated comment on v2 [*], I think it would be worth adding
a brief comment here regarding this not being expected to cause
a regression in HW+FW seen in the wild.

[*] https://lore.kernel.org/netdev/20250317163359.GC688833@kernel.org/

> 
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>

...
