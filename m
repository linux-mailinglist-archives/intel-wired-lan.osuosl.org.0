Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC05CCBD27
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Dec 2025 13:43:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6965141014;
	Thu, 18 Dec 2025 12:43:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XaH_SSKdjNue; Thu, 18 Dec 2025 12:43:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9C864101C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766061810;
	bh=Lyx++eGBup0qbmoMHfzzVDNccl+ieZlMvxqythDjrpw=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=u76vWcAVIx8xPvWeas07Xel8RD0WeSW4HBDbocTZY1IBawkLSRe2uKEtO5yAEsz0v
	 DJHo15LS4EnixA2It/QMaNtAPCSKMSp+aeXpqwb9tdk/vjcF0+4Pi1IGtSRRxkGhSE
	 Ab3aVLj//BAwFki/GKDYviGLGHiBh1lHgtMwjklA9tEHLuxzWjytRX88GfdKBEhN9x
	 rol2PvSGDgirei4vRYee/7wce9Smu+oDuKKOoyHF6xq6P4Tr4+uLOdFaHX+0QmDURd
	 NH305KzEmkSEwyYnvS9oZfoWw/JdiL2isR7CcJLVZ0cJYPWJZjyq6taNXlpDYBz/pv
	 WxeNU+jupQ8sw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D9C864101C;
	Thu, 18 Dec 2025 12:43:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 02FCE361
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 12:43:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E5D084100F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 12:43:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kG8CaNSVZLqS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Dec 2025 12:43:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3ECE241006
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3ECE241006
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3ECE241006
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 12:43:26 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 5669D61E64852;
 Thu, 18 Dec 2025 13:42:55 +0100 (CET)
Message-ID: <981a3660-a853-4133-bf83-400ce513c3a6@molgen.mpg.de>
Date: Thu, 18 Dec 2025 13:42:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: mheib@redhat.com
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, davem@davemloft.net, aduyck@mirantis.com,
 kuba@kernel.org, netdev@vger.kernel.org, jacob.e.keller@intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20251218121322.154014-1-mheib@redhat.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20251218121322.154014-1-mheib@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/2] i40e: drop
 udp_tunnel_get_rx_info() call from i40e_open()
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

Dear Mohammad,


Thank you for your patch.

Am 18.12.25 um 13:13 schrieb mheib@redhat.com:
> From: Mohammad Heib <mheib@redhat.com>
> 
> The i40e driver calls udp_tunnel_get_rx_info() during i40e_open().
> This is redundant because UDP tunnel RX offload state is preserved
> across device down/up cycles. The udp_tunnel core handles
> synchronization automatically when required.
> 
> Furthermore, recent changes in the udp_tunnel infrastructure require
> querying RX info while holding the udp_tunnel lock. Calling it
> directly from the ndo_open path violates this requirement,
> triggering the following lockdep warning:
> 
>    Call Trace:
>     <TASK>
>     ? __udp_tunnel_nic_assert_locked+0x39/0x40 [udp_tunnel]
>     i40e_open+0x135/0x14f [i40e]
>     __dev_open+0x121/0x2e0
>     __dev_change_flags+0x227/0x270
>     dev_change_flags+0x3d/0xb0
>     devinet_ioctl+0x56f/0x860
>     sock_do_ioctl+0x7b/0x130
>     __x64_sys_ioctl+0x91/0xd0
>     do_syscall_64+0x90/0x170
>     ...
>     </TASK>
> 
> Remove the redundant and unsafe call to udp_tunnel_get_rx_info() from
> i40e_open() resolve the locking violation.
> 
> Fixes: 06a5f7f167c5 ("i40e: Move all UDP port notifiers to single function")
> Signed-off-by: Mohammad Heib <mheib@redhat.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 50be0a60ae13..72358a34438b 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -9029,7 +9029,6 @@ int i40e_open(struct net_device *netdev)
>   						       TCP_FLAG_FIN |
>   						       TCP_FLAG_CWR) >> 16);
>   	wr32(&pf->hw, I40E_GLLAN_TSOMSK_L, be32_to_cpu(TCP_FLAG_CWR) >> 16);
> -	udp_tunnel_get_rx_info(netdev);
>   
>   	return 0;
>   }

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
