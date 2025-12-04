Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E674CA354E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 04 Dec 2025 11:57:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C91DC6089E;
	Thu,  4 Dec 2025 10:57:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8klvTN-RKO7g; Thu,  4 Dec 2025 10:57:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5224560A5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764845865;
	bh=rjdSQtSDPlx7Ana7tuUDB/tettrDrFCo55kgTpFYdnk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ty3QRxMO197NrUDOeR+xh+0nwqB1dIAyfMGjqnYHVUgZR+Uy3YHEyzL1YsY0zSCwk
	 wgbKicGzPn32rah3x68BpN+aKWpVy6jUmoP3qukP/UOXJOEfDq3TfFLOsouw8qEmuw
	 6+uXaUjOCnmcHFAbg+go2coxbxL0oJKAOhIpY1bJJi7yJXHW3UiWLK/+N0Eqt08LKA
	 AO8USpDL8NHZIvNE9w6ld9q5VpyDhSddcQnzy8oey9zZnMZ3VzxMMa9nWmf7YU8CZD
	 jnjEcCxVMT7ZgFVeNNQ8EPGpg8dwpASXbbv6tA3+hbLOTG+qpwzZXQPvNQ6t52Vt4M
	 73mzqzsMg5wLw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5224560A5A;
	Thu,  4 Dec 2025 10:57:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3B204E7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 10:57:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 25BF140701
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 10:57:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RZrRWpJub5XF for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Dec 2025 10:57:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 913354066A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 913354066A
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 913354066A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 10:57:42 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af11d.dynamic.kabel-deutschland.de
 [95.90.241.29])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 206AC61E647AB;
 Thu, 04 Dec 2025 11:57:27 +0100 (CET)
Message-ID: <3dda7b74-b90e-42b6-ace5-9b0f1d976353@molgen.mpg.de>
Date: Thu, 4 Dec 2025 11:57:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, stable@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>
References: <20251204095323.149902-1-jedrzej.jagielski@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20251204095323.149902-1-jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ixgbevf: fix link setup
 issue
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

Dear Jedrzej,


Thank you for your patch.

Am 04.12.25 um 10:53 schrieb Jedrzej Jagielski:
> It may happen that VF spawned for E610 adapter has problem with setting
> link up. This happens when ixgbevf supporting mailbox API 1.6 coopearates

cooperates

> with PF driver which doesn't support this version of API, and hence
> doesn't support new approach for getting PF link data.

Which commit introduced the support for this API version?

> In that case VF asks PF to provide link data but as PF doesn't support
> it, returns -EOPNOTSUPP what leads to early bail from link configuration
> sequence.
> 
> Avoid such situation by using legacy VFLINKS approach whenever negotiated
> API version is less than 1.6.

It’d be great, if you added how to exactly reproduce the issue.

> Fixes: 53f0eb62b4d2 ("ixgbevf: fix getting link speed data for E610 devices")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>   drivers/net/ethernet/intel/ixgbevf/vf.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbevf/vf.c b/drivers/net/ethernet/intel/ixgbevf/vf.c
> index 29c5ce967938..8af88f615776 100644
> --- a/drivers/net/ethernet/intel/ixgbevf/vf.c
> +++ b/drivers/net/ethernet/intel/ixgbevf/vf.c
> @@ -846,7 +846,8 @@ static s32 ixgbevf_check_mac_link_vf(struct ixgbe_hw *hw,
>   	if (!mac->get_link_status)
>   		goto out;
>   
> -	if (hw->mac.type == ixgbe_mac_e610_vf) {
> +	if (hw->mac.type == ixgbe_mac_e610_vf &&
> +	    hw->api_version >= ixgbe_mbox_api_16) {
>   		ret_val = ixgbevf_get_pf_link_state(hw, speed, link_up);
>   		if (ret_val)
>   			goto out;

The diff looks good. With the improved commit message, feel free to add:

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
