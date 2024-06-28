Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3879C91C5E4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2024 20:36:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3B144064F;
	Fri, 28 Jun 2024 18:36:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jvPcXAQgj5X0; Fri, 28 Jun 2024 18:36:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F23054061B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719599809;
	bh=7bZF09M6R8O0C4JDZi6yzz4HIhxFtL/NIFvwaFWUPZE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TDQMfiUl1Ahu+9MRP4qYh/Ca69SLhfX6QDIrOv8gedGC53AE3ydDEprXnQ+mBCBdS
	 MwXyTf3uP8eVxtcrAbrhTwWScZrbuX41WXxlqMii3qO593NqoIKQXBxD5cOuGJLGrm
	 itcCvYLfcrOUjFXUTccZNY7wVAaMFwdJrESxgFjXSlSsxhLkrhj3259l7npBJ73b1g
	 HNnblXCynCgTJgcUP5d7p2xqgKEoGXJnE1EApMwye4znWr5LkOm6SrJAw6jm7z7KTl
	 ClIwS4nM2Q9VcU3O5i7i5qZvvC5P4GD8Q1GeDYH9oCQurLsVh7pAxNFWP1nKMk3k41
	 2lHYvtecWoqmA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F23054061B;
	Fri, 28 Jun 2024 18:36:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D8C221BF39A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 18:36:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C46D9845B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 18:36:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WfFQuBcm-eq2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2024 18:36:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0CD87845B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0CD87845B5
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0CD87845B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 18:36:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 236B46223E;
 Fri, 28 Jun 2024 18:36:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D205C116B1;
 Fri, 28 Jun 2024 18:36:43 +0000 (UTC)
Date: Fri, 28 Jun 2024 19:36:41 +0100
From: Simon Horman <horms@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20240628183641.GG837606@kernel.org>
References: <20240627145547.32621-1-marcin.szycik@linux.intel.com>
 <20240627145547.32621-8-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240627145547.32621-8-marcin.szycik@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1719599804;
 bh=Vu4DMeYFylySur1lZ4EtGg+jOO6nbzB22102RW+KNOs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Wjged7CM6F7FluzMhLSH8QUM3VRBeUwE1K9i7VgI4f2vSWHu2iihV2p3tq2qSFWD1
 gyr7UlilP+EFBS2Ie3Ly1U8NbpLseZDomKPz+GHUb1pnZ3usAlMVKMdhMJC7zrjXxL
 g5DyFaSSI1tiDfAp/qhk/RcNpLBNGrhOECaNaD0mM/lNlf6RyyqXo4EUdM3mA6iIcD
 5sxSDPQIsncDftfewK76bd4El3uX7XnPnLRuCUJ6H2s55nbvKlsioL+pcn6DZ/s6l+
 g39Q+4cF1a+paUCqInhwth1UWiEmx1K2mtNifPyPY3vNuLg+PO4jslg7svoat3Ab2V
 +iBkfgEDwxPYQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Wjged7CM
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 7/7] ice: Add tracepoint
 for adding and removing switch rules
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 michal.swiatkowski@linux.intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 27, 2024 at 04:55:47PM +0200, Marcin Szycik wrote:
> Track the number of rules and recipes added to switch. Add a tracepoint to
> ice_aq_sw_rules(), which shows both rule and recipe count. This information
> can be helpful when designing a set of rules to program to the hardware, as
> it shows where the practical limit is. Actual limits are known (64 recipes,
> 32k rules), but it's hard to translate these values to how many rules the
> *user* can actually create, because of extra metadata being implicitly
> added, and recipe/rule chaining. Chaining combines several recipes/rules to
> create a larger recipe/rule, so one large rule added by the user might
> actually consume multiple rules from hardware perspective.
> 
> Rule counter is simply incremented/decremented in ice_aq_sw_rules(), since
> all rules are added or removed via it.
> 
> Counting recipes is harder, as recipes can't be removed (only overwritten).
> Recipes added via ice_aq_add_recipe() could end up being unused, when
> there is an error in later stages of rule creation. Instead, track the
> allocation and freeing of recipes, which should reflect the actual usage of
> recipes (if something fails after recipe(s) were created, caller should
> free them). Also, a number of recipes are loaded from NVM by default -
> initialize the recipe counter with the number of these recipes on switch
> initialization.
> 
> Example configuration:
>   cd /sys/kernel/tracing
>   echo function > current_tracer
>   echo ice_aq_sw_rules > set_ftrace_filter
>   echo ice_aq_sw_rules > set_event
>   echo 1 > tracing_on
>   cat trace
> 
> Example output:
>   tc-4097    [069] ...1.   787.595536: ice_aq_sw_rules <-ice_rem_adv_rule
>   tc-4097    [069] .....   787.595705: ice_aq_sw_rules: rules=9 recipes=15
>   tc-4098    [057] ...1.   787.652033: ice_aq_sw_rules <-ice_add_adv_rule
>   tc-4098    [057] .....   787.652201: ice_aq_sw_rules: rules=10 recipes=16
> 
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

