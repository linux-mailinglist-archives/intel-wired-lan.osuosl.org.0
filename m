Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF180996B6E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 15:13:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 565AC40722;
	Wed,  9 Oct 2024 13:13:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lpjp5Zmac2sJ; Wed,  9 Oct 2024 13:13:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34FCE40648
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728479597;
	bh=kAd6lWtTk80aBWZmOCNe/M/l+z0iD6yjLvPlwhj4+kM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VoJzOHMjecPTDt5yC+S+wXM3Dv1fw2C4OghVZVXRhboF7ZFT1OkF3fJ9CKcScOj65
	 jkhGHKqCo5aEzmF25fGv5V7eRuhVCsbvb7ciZBRM0G2nwaRw3oAlpKNPgBqB7k+FSg
	 FtBpRgDRS7Ao5YMGzFgC/TOKJGevvWOiSVqpyzJfQ4Ns7LGlWsQofMLFX313iSHIgV
	 RF1w3FkyRTnZqNpAiEcLbt0MzfHp0yBLUARSl314j/IykJxu11I3Z/yCHDIy5eMnoO
	 2fuaEasLJFy05NefVVNvhrEpMR+wQ7R2rkNvFG2V57OXaKNxBTQZetGU2N66rb9nFk
	 ljOHwxvyyz4Cw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34FCE40648;
	Wed,  9 Oct 2024 13:13:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A05501BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 13:13:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9B8C5608A1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 13:13:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PF3x-Ttmlfjf for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2024 13:13:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F30B060897
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F30B060897
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F30B060897
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 13:13:13 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 3335A61E5FE05;
 Wed,  9 Oct 2024 15:12:59 +0200 (CEST)
Message-ID: <3a5591f9-a8fe-4557-b6c4-ea393dd28913@molgen.mpg.de>
Date: Wed, 9 Oct 2024 15:12:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marcin Szycik <marcin.szycik@linux.intel.com>
References: <20241009124912.9774-2-marcin.szycik@linux.intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20241009124912.9774-2-marcin.szycik@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Fix use after free
 during unload with ports in bridge
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Marcin,


Thank you for the patch, and the reproducer and detailed commit message.

Am 09.10.24 um 14:49 schrieb Marcin Szycik:
> Unloading the ice driver while switchdev port representors are added to
> a bridge can lead to kernel panic. Reproducer:
> 
>    modprobe ice
> 
>    devlink dev eswitch set $PF1_PCI mode switchdev
> 
>    ip link add $BR type bridge
>    ip link set $BR up
> 
>    echo 2 > /sys/class/net/$PF1/device/sriov_numvfs
>    sleep 2
> 
>    ip link set $PF1 master $BR
>    ip link set $VF1_PR master $BR
>    ip link set $VF2_PR master $BR
>    ip link set $PF1 up
>    ip link set $VF1_PR up
>    ip link set $VF2_PR up
>    ip link set $VF1 up
> 
>    rmmod irdma ice

For people hitting the issue, an excerpt from the panic would also be 
nice, so it can be found more easily.

> When unloading the driver, ice_eswitch_detach() is eventually called as
> part of VF freeing. First, it removes a port representor from xarray,
> then unregister_netdev() is called (via repr->ops.rem()), finally
> representor is deallocated. The problem comes from the bridge doing its
> own deinit at the same time. unregister_netdev() triggers a notifier
> chain, resulting in ice_eswitch_br_port_deinit() being called. It should
> set repr->br_port = NULL, but this does not happen since repr has
> already been removed from xarray and is not found. Regardless, it
> finishes up deallocating br_port. At this point, repr is still not freed
> and an fdb event can happen, in which ice_eswitch_br_fdb_event_work()
> takes repr->br_port and tries to use it, which causes a panic (use after
> free).
> 
> Note that this only happens with 2 or more port representors added to
> the bridge, since with only one representor port, the bridge deinit is
> slightly different (ice_eswitch_br_port_deinit() is called via
> ice_eswitch_br_ports_flush(), not ice_eswitch_br_port_unlink()).
> 
> A workaround is available: brctl setageing $BR 0, which stops the bridge
> from adding fdb entries altogether.
> 
> Change the order of operations in ice_eswitch_detach(): move the call to
> unregister_netdev() before removing repr from xarray. This way
> repr->br_port will be correctly set to NULL in
> ice_eswitch_br_port_deinit(), preventing a panic.
> 
> Fixes: fff292b47ac1 ("ice: add VF representors one by one")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_eswitch.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> index c0b3e70a7ea3..fb527434b58b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> @@ -552,13 +552,14 @@ int ice_eswitch_attach_sf(struct ice_pf *pf, struct ice_dynamic_port *sf)
>   static void ice_eswitch_detach(struct ice_pf *pf, struct ice_repr *repr)
>   {
>   	ice_eswitch_stop_reprs(pf);
> +	repr->ops.rem(repr);
> +
>   	xa_erase(&pf->eswitch.reprs, repr->id);
>   
>   	if (xa_empty(&pf->eswitch.reprs))
>   		ice_eswitch_disable_switchdev(pf);
>   
>   	ice_eswitch_release_repr(pf, repr);
> -	repr->ops.rem(repr);
>   	ice_repr_destroy(repr);
>   
>   	if (xa_empty(&pf->eswitch.reprs)) {

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
