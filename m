Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 99803A8484D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 17:44:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 510E0810CE;
	Thu, 10 Apr 2025 15:44:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nhMFa3HDhYkf; Thu, 10 Apr 2025 15:44:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72F2F80C20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744299843;
	bh=fV5WZutt+MyL64vnzvRrOaFR178XKWo+fKosnmist6c=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IYCI6SwQW/DzRj3FXDHcBrqMevwnCOiBoW1UERH32ojY2F4YwfrechFCAvAGFuwCU
	 qQicCn1Pe+1B/etcMqsQeoouIF2Kd2rfexehfNOexanLPxbzR6bIYBqrz6Pkn5WSIX
	 Qyslym6XT1f9roYngXzmpWvjmdcBL/Pa7mW6TOlHZBwgJh6JZsv40faxfpl1ofnzTT
	 urWrT5GYdVznptEbl66KlSZpO2eR8aS+sn7akoMKAFOMT52VgsUTrRUnjWMR7km5dI
	 0Vap/RlnUIgTcIQMsy+7OU1WcORdMjTFwx+XERo10YTDtDDS16NLfaCSCiTaFzh56K
	 eR7ribsCsXyGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72F2F80C20;
	Thu, 10 Apr 2025 15:44:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1799F193
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 15:44:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F123D80C20
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 15:44:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hGflaLA5HvLR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 15:44:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1C02A80BF2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C02A80BF2
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1C02A80BF2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 15:43:59 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id E0E705C5BE1;
 Thu, 10 Apr 2025 15:41:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32CA2C4CEDD;
 Thu, 10 Apr 2025 15:43:56 +0000 (UTC)
Date: Thu, 10 Apr 2025 16:43:53 +0100
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250410154353.GU395307@horms.kernel.org>
References: <20250408134655.4287-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250408134655.4287-1-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744299838;
 bh=ujPioiSC71kHjkyR9Rl+7giBhDd2pP+J47UzH4ybU3o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jrTMwi1pMJTam1Y99jBhSepSHKQQJ24mAf0O0tY0lf6qTzPsaKH459k9JR55gVcJj
 34nQlYs7KRFIo6J5Q1cP0BJOrw2TnXFaZMWAvnEPb87E2+QlemjvR430Ri4Ndmc6HL
 ucH8A8YvfJnXQWPcInO87U6S5px5n0YAF63mv8vcNxcxM/HQErXxEaYC7BjNGTKWV/
 mWorvEZ1rzTJavkcTwtiMj97DsfPNzFk+nPkmFqSIqyyn6Q0P6EHKkV4xvwn+Mro2F
 F0b/cjX+7C5c/EOI7K2vRNMmB+EQFIpAe3Icuk2bOPCT5oAoW6gsNZ5UbvYg57wKNm
 DfFOdWnXeRbnQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=jrTMwi1p
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ice: use DSN instead of
 PCI BDF for ice_adapter index
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Apr 08, 2025 at 03:46:55PM +0200, Przemek Kitszel wrote:
> Use Device Serial Number instead of PCI bus/device/function for
> index of struct ice_adapter.
> Functions on the same physical device should point to the very same
> ice_adapter instance.
> 
> This is not only simplification, but also fixes things up when PF
> is passed to VM (and thus has a random BDF).

Maybe it's just me but "fixes things up" seems a bit vague for
a fix for net. Could something more specific go here?

> 
> Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
> Suggested-by: Jakub Kicinski <kuba@kernel.org>
> Suggested-by: Jiri Pirko <jiri@resnulli.us>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> CC: Karol Kolacinski <karol.kolacinski@intel.com>
> CC: Grzegorz Nitka <grzegorz.nitka@intel.com>
> CC: Michal Schmidt <mschmidt@redhat.com>
> CC: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> CC: Michal Kubiak <michal.kubiak@intel.com>
> 
> v3:
>  - Add fixes tag (Michal K)

The fixes tag seems to have got lost in transit.

I believe it should be [1]:

Fixes: 0e2bddf9e5f9 ("ice: add ice_adapter for shared data across PFs on the same NIC")

[1] https://lore.kernel.org/intel-wired-lan/7f700a89-7058-4c16-b53a-2e84bbed8542@intel.com/

>  - add missing braces (lkp bot), turns out it's hard to purge C++ from your mind
>  - (no changes in the collision handling on 32bit systems)
> 
> v2:
> https://lore.kernel.org/intel-wired-lan/20250407112005.85468-1-przemyslaw.kitszel@intel.com/
>  - target to -net (Jiri)
>  - mix both halves of u64 DSN on 32bit systems (Jiri)
>  - (no changes in terms of fallbacks for pre-prod HW)
>  - warn when there is DSN collision after reducing to 32bit
> 
> v1:
> https://lore.kernel.org/netdev/20250306211159.3697-2-przemyslaw.kitszel@intel.com

...
