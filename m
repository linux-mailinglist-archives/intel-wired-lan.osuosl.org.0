Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F49ABC53E2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Oct 2025 15:39:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87A1A80513;
	Wed,  8 Oct 2025 13:39:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2qSzsaASWr_y; Wed,  8 Oct 2025 13:39:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1088D813FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759930760;
	bh=WbFuK/4oiB1Zs+o79HnjX8bWNB1wUj6a043KWopg/Rk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qfjMfJ36J3KHZWhnI2sSmBShiSL7z7w6y4RuUF0j+8LXo5AgK9nak5l0lAgYtP3g1
	 H8lomKYr3IU/eFT5IjnrRXitD8Rd5sCkGmbYvyTJpWWn67hODvM/s/jSbpkixg28Bn
	 BzxgHsb3b0oMmtgNCtNIIPPQ9y8tQmod35L+THXfF31iP9wzyiIe2CxZqlF6+UPvtN
	 ixPlWXOWOwiwjGGu0Sb4CFM6zMG6wScNgpH/37BrDeTyc1S9RRJzKiPl2+5sUgD4Z7
	 7B/ggXj24G3QNjU31cuHI7qk/uD7/Gx+T8rBWqqyPPtwNT5b9J1ckUa2QUougmxkAR
	 K1gGdqCkjTKfw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1088D813FD;
	Wed,  8 Oct 2025 13:39:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 211F29DA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 13:39:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0723E4018F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 13:39:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eLJP7YHYqWnn for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Oct 2025 13:39:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:203:375::bb; helo=out-187.mta1.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 81B6D408DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 81B6D408DA
Received: from out-187.mta1.migadu.com (out-187.mta1.migadu.com
 [IPv6:2001:41d0:203:375::bb])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 81B6D408DA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 13:39:11 +0000 (UTC)
Message-ID: <4c3f7f4e-a77e-4862-843e-4f96afd406e0@linux.dev>
Date: Wed, 8 Oct 2025 14:38:50 +0100
MIME-Version: 1.0
To: Grzegorz Nitka <grzegorz.nitka@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20251008115811.1578695-1-grzegorz.nitka@intel.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20251008115811.1578695-1-grzegorz.nitka@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1759930748;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WbFuK/4oiB1Zs+o79HnjX8bWNB1wUj6a043KWopg/Rk=;
 b=qszkx2paVl9iZQhaBFKHpqZ87U6pLV9VlO4knoXxBY9OQDTfrSuccqi7JHovD13huP2RvQ
 RoHZJQ+kpYNceIM/B2ZtDlf3cnd5JV15xlzk/JaKdYBVd9h49CnGUZG9LsUi0/sg6KUnXR
 EDZGBq0O4pNPBXthrIZx9KApG2q8k3Q=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=qszkx2pa
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix PTP cleanup on
 driver removal in error path
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

On 08/10/2025 12:58, Grzegorz Nitka wrote:
> Improve PTP feature cleanup in error path by adding explicit call to
> ice_ptp_cleanup_pf in the case in which PTP feature is not fully
> operational at the time of driver removal (which is indicated by
> ptp->state flag).
> At the driver probe, if PTP feature is supported, each PF adds its own
> port to the list of ports controlled by ice_adapter object.
> Analogously, at the driver remove, it's expected each PF is
> responsible for removing previously added port from the list.
> If for some reason (like errors in reset handling, NVM update etc.), PTP
> feature has not rebuilt successfully, the driver is still responsible for
> proper clearing ice_adapter port list. It's done by calling
> ice_ptp_cleanup_pf function.
> Otherwise, the following call trace is observed when ice_adapter object
> is freed (port list is not empty, as it is expected at this stage):
> 
> [  T93022] ------------[ cut here ]------------
> [  T93022] WARNING: CPU: 10 PID: 93022 at
> ice/ice_adapter.c:67 ice_adapter_put+0xef/0x100 [ice]
> ...
> [  T93022] RIP: 0010:ice_adapter_put+0xef/0x100 [ice]
> ...
> [  T93022] Call Trace:
> [  T93022]  <TASK>
> [  T93022]  ? ice_adapter_put+0xef/0x100 [ice
> 33d2647ad4f6d866d41eefff1806df37c68aef0c]
> [  T93022]  ? __warn.cold+0xb0/0x10e
> [  T93022]  ? ice_adapter_put+0xef/0x100 [ice
> 33d2647ad4f6d866d41eefff1806df37c68aef0c]
> [  T93022]  ? report_bug+0xd8/0x150
> [  T93022]  ? handle_bug+0xe9/0x110
> [  T93022]  ? exc_invalid_op+0x17/0x70
> [  T93022]  ? asm_exc_invalid_op+0x1a/0x20
> [  T93022]  ? ice_adapter_put+0xef/0x100 [ice
> 33d2647ad4f6d866d41eefff1806df37c68aef0c]
> [  T93022]  pci_device_remove+0x42/0xb0
> [  T93022]  device_release_driver_internal+0x19f/0x200
> [  T93022]  driver_detach+0x48/0x90
> [  T93022]  bus_remove_driver+0x70/0xf0
> [  T93022]  pci_unregister_driver+0x42/0xb0
> [  T93022]  ice_module_exit+0x10/0xdb0 [ice
> 33d2647ad4f6d866d41eefff1806df37c68aef0c]
> ...
> [  T93022] ---[ end trace 0000000000000000 ]---
> [  T93022] ice: module unloaded
> 
> Fixes: e800654e85b5 ("ice: Use ice_adapter for PTP shared data instead of auxdev")
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index fb0f6365a6d6..c43a7973d70f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -3282,8 +3282,10 @@ void ice_ptp_init(struct ice_pf *pf)
>    */
>   void ice_ptp_release(struct ice_pf *pf)
>   {
> -	if (pf->ptp.state != ICE_PTP_READY)
> +	if (pf->ptp.state != ICE_PTP_READY) {
> +		ice_ptp_cleanup_pf(pf);
>   		return;
> +	}
>   
>   	pf->ptp.state = ICE_PTP_UNINIT;
>   

ice_ptp_cleanup_pf() removes ptp->port.list_node, which is inited in
ice_ptp_setup_pf(), but ice_ptp_init() may fail before
ice_ptp_setup_pf() is called, and it will keep pf->ptp.state = 
ICE_PTP_ERROR. the cleanup then will work on uninitialized data.

It looks like it's better to make proper clean up in ice_ptp_setup_pf()
on error path rather then modify ice_ptp_cleanup_pf().
