Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE27845442
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 10:40:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A289883E33;
	Thu,  1 Feb 2024 09:40:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A289883E33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706780413;
	bh=121GWlXtPyiQcfmiAF9prlyF2b81rD+1sXRgf6neICU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4CAzxfQY8wgd+JrHGffKhcVDcUroaPzSj7SxYfNnbr2e7kKBLUPMGTOQINGi5BaMJ
	 CxYY2WUxUoZ3tAKKeCPAXTGcEzLmFPAMSUlhu6I5fgYn95vNjssn3iUQy1Z+cCKzsZ
	 PXIo7aXArXnN2/vxXHsTjev/m58vItocCakBYYQw8YTs2SDBtZUKV3bMz5nfi79rOT
	 +GY1W2Jj+04fq9URb7jedqfy+yS2hYz8r6WOgI68Nf16b8UNJkaEkuUCdzBriaEjVY
	 bx7DxhMrd0Wt9KP8oh0hY7fSUB1G1RGSWH73WegGgF5//neilQhqkaPaVrYMsYZmEC
	 zoha3dSOHT0dA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9-sCze3qQCFi; Thu,  1 Feb 2024 09:40:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B887E83E03;
	Thu,  1 Feb 2024 09:40:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B887E83E03
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 64B9E1BF31A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 09:40:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3B27741DDB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 09:40:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B27741DDB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lRE2Yl1EdDIF for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 09:40:05 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6F3FF4215E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 09:40:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F3FF4215E
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 6AC98CE2555;
 Thu,  1 Feb 2024 09:39:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70723C433C7;
 Thu,  1 Feb 2024 09:39:55 +0000 (UTC)
Date: Thu, 1 Feb 2024 10:39:52 +0100
From: Simon Horman <horms@kernel.org>
To: Steven Zou <steven.zou@intel.com>
Message-ID: <20240201093952.GC514352@kernel.org>
References: <20240130025146.30265-1-steven.zou@intel.com>
 <20240130025146.30265-3-steven.zou@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240130025146.30265-3-steven.zou@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706780397;
 bh=2L4QMTxfavhBie+3DfYcZNvCNEVe5Gbqhzb/FRYP4fM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mIdXtvLVRw8R6HRf3/LOotLe4nKqGXLaXrhrSdeD6krkZaqI9XNbIpLaXIzpv0SX5
 PdvJOyV16HurV9Svc/pfENO2I1v/p58aabFjK3k9ejFNTrbzfUpbHYrlisIYACHpEJ
 fiddXCJ9cJ9UhSSfKMVGvY+kb5nWpKZ8MuTy87yDhcXGG1ZWsX2+liQl2orheK+k+j
 mT9lvgeTEjNDGBfN9w7J6bpE/axItjr/TWTrhEtND3i84cNq5uKRxgo1MYv+mrOs5S
 K3j+YpI4XM6AoqnQkIpnGWIlRz/IALY9J5KZZmcXQDMcuLj2P4ZJIaXJuez/DoeHNL
 KWanP0U996EDQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=mIdXtvLV
Subject: Re: [Intel-wired-lan] [PATCH RESEND iwl-next 2/2] ice: Add switch
 recipe reusing feature
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
Cc: jan.sokolowski@intel.com, netdev@vger.kernel.org, andrii.staikov@intel.com,
 aleksander.lobakin@intel.com, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, andriy.shevchenko@linux.intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 30, 2024 at 10:51:46AM +0800, Steven Zou wrote:
> New E810 firmware supports the corresponding functionality, so the driver
> allows PFs to subscribe the same switch recipes. Then when the PF is done
> with a switch recipes, the PF can ask firmware to free that switch recipe.
> 
> When users configure a rule to PFn into E810 switch component, if there is
> no existing recipe matching this rule's pattern, the driver will request
> firmware to allocate and return a new recipe resource for the rule by
> calling ice_add_sw_recipe() and ice_alloc_recipe(). If there is an existing
> recipe matching this rule's pattern with different key value, or this is a
> same second rule to PFm into switch component, the driver checks out this
> recipe by calling ice_find_recp(), the driver will tell firmware to share
> using this same recipe resource by calling ice_subscribable_recp_shared()
> and ice_subscribe_recipe().
> 
> When firmware detects that all subscribing PFs have freed the switch
> recipe, firmware will free the switch recipe so that it can be reused.
> 
> This feature also fixes a problem where all switch recipes would eventually
> be exhausted because switch recipes could not be freed, as freeing a shared
> recipe could potentially break other PFs that were using it.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Andrii Staikov <andrii.staikov@intel.com>
> Signed-off-by: Steven Zou <steven.zou@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

