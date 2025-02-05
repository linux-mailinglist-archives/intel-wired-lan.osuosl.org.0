Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA48A29B62
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Feb 2025 21:45:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 38294426A3;
	Wed,  5 Feb 2025 20:45:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 07oSyA_iFI4B; Wed,  5 Feb 2025 20:45:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF295426AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738788356;
	bh=YbEoJKsgAtPJIe+EU4MvkvyXGCLFP88C6DSxvf3TQi8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1yc8/SuQW2rI4KWYgmnqHZYvZ+qEQa5cRUGXkgkHGU33W5ZNhRheXqwSxS6gnQu8a
	 d+ryuI8LMXOSSrsCDFGsLkj3SCSFlDwqbsB7vMNWCdEay8XJkQV6+NtbRT/4I9VkK0
	 9S/MToTbOySAgNOcqGw2m+so4sPKw6jNs7q3bKlwSu/iqKmsXqlp0waSvrS5iwbvM2
	 IR7awYEB6HL22fru15VWaD0o6W2dj6MGy9HYqWljn5nhYrsU+gYU3SqGlTyg3hsU5j
	 gWTFoPWMBwu61QK2m8LKNvEGchbIUwHqjeI3kDY/tpFPywcB5LBBML9S7jQ/LuZU6G
	 EHS9julY/e3jA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF295426AD;
	Wed,  5 Feb 2025 20:45:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8489912A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 20:45:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 737B0412C5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 20:45:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LwY3JYDxbAh5 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Feb 2025 20:45:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2F72D412C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F72D412C8
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2F72D412C8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 20:45:53 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id A7FAFA43A7B;
 Wed,  5 Feb 2025 20:44:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 444A6C4CED1;
 Wed,  5 Feb 2025 20:45:49 +0000 (UTC)
Date: Wed, 5 Feb 2025 20:45:46 +0000
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Konrad Knitter <konrad.knitter@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Qiuxu Zhuo <qiuxu.zhuo@intel.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Kees Cook <kees@kernel.org>, Nick Desaulniers <nick.desaulniers@gmail.com>,
 Jiri Slaby <jirislaby@kernel.org>
Message-ID: <20250205204546.GM554665@kernel.org>
References: <20250205104252.30464-2-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250205104252.30464-2-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738788351;
 bh=//uWnG9TvWTqr2If/A6gaUTJzjuhsAIXJ4fNcNm4KVk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hjFBUq7VFNjKcOh3q8bv7cM+lBMXZ13OVGeDcO2cEJ/16hEp6qVfyqxXmKqNfe/l+
 BhJ1SLQteA0knGw1GNvhF5f8D24CpV/+/8XmJPYrroM8XpSLOOU4GQw8OiWR86VVV2
 8ffsfCVo96sy1CHvwTNjnp5S14MxxZKi6icCwZnze73eOY6HL1H4e4Jw4iJpIq2kN2
 7lMKazDsC4RWvJrGLRZoMmdgJ8lRJjobIIhTASt+2bfbRLuCuan+ajhbXmlwX1xtFI
 oA7Lwz8O4T42FKwlROkHwSAI5pGQARs5gMzROlCra+q7OKKZYeylWscnci+y4hg1cR
 5e8SxhRla2nfQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=hjFBUq7V
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: health.c: fix
 compilation on gcc 7.5
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

+ Jiri

On Wed, Feb 05, 2025 at 11:42:12AM +0100, Przemek Kitszel wrote:
> GCC 7 is not as good as GCC 8+ in telling what is a compile-time const,
> and thus could be used for static storage. So we could not use variables
> for that, no matter how much "const" keyword is sprinkled around.
> 
> Excerpt from the report:
> My GCC is: gcc (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0.
> 
>   CC [M]  drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.o
> drivers/net/ethernet/intel/ice/devlink/health.c:35:3: error: initializer element is not constant
>    ice_common_port_solutions, {ice_port_number_label}},
>    ^~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/devlink/health.c:35:3: note: (near initialization for 'ice_health_status_lookup[0].solution')
> drivers/net/ethernet/intel/ice/devlink/health.c:35:31: error: initializer element is not constant
>    ice_common_port_solutions, {ice_port_number_label}},
>                                ^~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/devlink/health.c:35:31: note: (near initialization for 'ice_health_status_lookup[0].data_label[0]')
> drivers/net/ethernet/intel/ice/devlink/health.c:37:46: error: initializer element is not constant
>    "Change or replace the module or cable.", {ice_port_number_label}},
>                                               ^~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/devlink/health.c:37:46: note: (near initialization for 'ice_health_status_lookup[1].data_label[0]')
> drivers/net/ethernet/intel/ice/devlink/health.c:39:3: error: initializer element is not constant
>    ice_common_port_solutions, {ice_port_number_label}},
>    ^~~~~~~~~~~~~~~~~~~~~~~~~
> 
> Fixes: 85d6164ec56d ("ice: add fw and port health reporters")
> Reported-by: Qiuxu Zhuo <qiuxu.zhuo@intel.com>
> Closes: https://lore.kernel.org/netdev/CY8PR11MB7134BF7A46D71E50D25FA7A989F72@CY8PR11MB7134.namprd11.prod.outlook.com
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> I would really like to bump min gcc to 8.5 (RH 8 family),
> instead of supporting old Ubuntu. However SLES 15 is also stuck with gcc 7.5 :(
> 
> CC: Linus Torvalds <torvalds@linux-foundation.org>
> CC: Kees Cook <kees@kernel.org>
> CC: Nick Desaulniers <nick.desaulniers@gmail.com>

Hi Prezemek,

I ran into a similar problem not so long ago and I'm wondering if
the following, based on a suggestion by Jiri Slaby, resolves your
problem.

diff --git a/drivers/net/ethernet/intel/ice/devlink/health.c b/drivers/net/ethernet/intel/ice/devlink/health.c
index ea40f7941259..19c3d37aa768 100644
--- a/drivers/net/ethernet/intel/ice/devlink/health.c
+++ b/drivers/net/ethernet/intel/ice/devlink/health.c
@@ -25,10 +25,10 @@ struct ice_health_status {
  * The below lookup requires to be sorted by code.
  */
 
-static const char *const ice_common_port_solutions =
+static const char ice_common_port_solutions[] =
 	"Check your cable connection. Change or replace the module or cable. Manually set speed and duplex.";
-static const char *const ice_port_number_label = "Port Number";
-static const char *const ice_update_nvm_solution = "Update to the latest NVM image.";
+static const char ice_port_number_label[] = "Port Number";
+static const char ice_update_nvm_solution[] = "Update to the latest NVM image.";
 
 static const struct ice_health_status ice_health_status_lookup[] = {
 	{ICE_AQC_HEALTH_STATUS_ERR_UNKNOWN_MOD_STRICT, "An unsupported module was detected.",


Link: https://lore.kernel.org/netdev/485dbc5a-a04b-40c2-9481-955eaa5ce2e2@kernel.org/
Link: https://git.kernel.org/netdev/net-next/c/36fb51479e3c
