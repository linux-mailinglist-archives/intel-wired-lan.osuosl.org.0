Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C159B6B1F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Oct 2024 18:36:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABA5B4061A;
	Wed, 30 Oct 2024 17:36:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UdYj4-jo2-Xp; Wed, 30 Oct 2024 17:36:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E3004404EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730309760;
	bh=QT+MnEJ3AzOxb2C3A5kob2IO6cjVaaS/ezZWlw+3e5U=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=liqWRqS/v7go+lcWNs5z6vGcyYEKhWe9uHmya+F6e0Qbhi8M4pUKpIIwJN5LCJJ9v
	 BgyN+sGAtSIwP6atpxNdmMrMEwxAh8ZEiGkiL84I2lRzcaWj9y/oTnginwXRHEI+IW
	 akxk8EpOB2e7BBVtJRccfHz99u2ToQiuOY2owypYvP3EorPuGYKEv3PRyymsO2YdU3
	 dR4s53Cc53pjGuRPTKxZOo8uck0OlY+9LcQ6QkA8ysg50jaN93g5LA/wq7cJH1hZPb
	 gLVlPlt2M5e+DvNoxF7thul7q9FGBwpnsT8eWcGY03vI6Al6AiLgiYhGbxWUSTfmHB
	 tFaYRxRsSLYCA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E3004404EB;
	Wed, 30 Oct 2024 17:35:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 985E75E50
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 17:35:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 91BB340BE2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 17:35:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xSvZnLcNluT9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Oct 2024 17:35:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 17C2740100
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17C2740100
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 17C2740100
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 17:35:54 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1E8F161E5FE05;
 Wed, 30 Oct 2024 18:35:36 +0100 (CET)
Message-ID: <03b7d4ef-1e1e-4b9e-84b6-1ff4a5b92b29@molgen.mpg.de>
Date: Wed, 30 Oct 2024 18:35:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Peter_Gro=C3=9Fe?= <pegro@friiks.de>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org
References: <cf6dd743-759e-4db9-8811-fd1520262412@molgen.mpg.de>
 <20241030172224.30548-1-pegro@friiks.de>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20241030172224.30548-1-pegro@friiks.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: Fix handling changed
 priv flags
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

Dear Peter,


Am 30.10.24 um 18:22 schrieb pegro@friiks.de:
> From: Peter Große <pegro@friiks.de>
> 
> After assembling the new private flags on a PF, the operation to determine
> the changed flags uses the wrong bitmaps. Instead of xor-ing orig_flags
> with new_flags, it uses the still unchanged pf->flags, thus changed_flags
> is always 0.
> 
> Fix it by using the correct bitmaps.
> 
> The issue was discovered while debugging why disabling source pruning
> stopped working with release 6.7. Although the new flags will be copied to
> pf->flags later on in that function, disabling source pruning requires
> a reset of the PF, which was skipped due to this bug.
> 
> Disabling source pruning:
> $ sudo ethtool --set-priv-flags eno1 disable-source-pruning on
> $ sudo ethtool --show-priv-flags eno1
> Private flags for eno1:
> MFP                   : off
> total-port-shutdown   : off
> LinkPolling           : off
> flow-director-atr     : on
> veb-stats             : off
> hw-atr-eviction       : off
> link-down-on-close    : off
> legacy-rx             : off
> disable-source-pruning: on
> disable-fw-lldp       : off
> rs-fec                : off
> base-r-fec            : off
> vf-vlan-pruning       : off
> 
> Regarding reproducing:
> 
> I observed the issue with a rather complicated lab setup, where
>   * two VLAN interfaces are created on eno1
>   * each with a different MAC address assigned
>   * each moved into a separate namespace
>   * both VLANs are bridged externally, so they form a single layer 2 network
> 
> The external bridge is done via a channel emulator adding packet loss and
> delay and the application in the namespaces tries to send/receive traffic
> and measure the performance. Sender and receiver are separated by
> namespaces, yet the network card "sees its own traffic" send back to it.
> To make that work, source pruning has to be disabled.

Thank you for taking the time to write this up.

> Fixes: 70756d0a4727 ("i40e: Use DECLARE_BITMAP for flags and hw_features fields in i40e_pf")
> Signed-off-by: Peter Große <pegro@friiks.de>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index c841779713f6..016c0ae6b36f 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -5306,7 +5306,7 @@ static int i40e_set_priv_flags(struct net_device *dev, u32 flags)
>   	}
>   
>   flags_complete:
> -	bitmap_xor(changed_flags, pf->flags, orig_flags, I40E_PF_FLAGS_NBITS);
> +	bitmap_xor(changed_flags, new_flags, orig_flags, I40E_PF_FLAGS_NBITS);
>   
>   	if (test_bit(I40E_FLAG_FW_LLDP_DIS, changed_flags))
>   		reset_needed = I40E_PF_RESET_AND_REBUILD_FLAG;

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
