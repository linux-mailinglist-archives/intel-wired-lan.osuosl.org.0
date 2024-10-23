Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B71039AC104
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2024 10:05:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0B6C405C8;
	Wed, 23 Oct 2024 08:05:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eo2g4HnMFS-5; Wed, 23 Oct 2024 08:05:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CCCC1405C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729670726;
	bh=h+bw/XsHBttBQNc31C6xCp5dXRaKSVK80pVhsLNnnpQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZOSkcKnc/0SywUi6bH1u0SJpBtzSLCp+6xAMl8d5Ke6bDPdHhKajKn3ox+eS++0zA
	 6LOj2WJmDGOvUzR1vXsje9PwOF8SeSJN9sdnBby9b6+KNHoLoMD5ikxBlFqBXNkf/R
	 C7db310XTwFE/Re5eot0F/GFupMEx4LGOXUVvHaGg43Z45jlEHRkZW4GennV5m28B3
	 ad6LAcTc5IkvXe/x8lxhOR3RtR8lE1UbhKCAI3fcNmzIi8klUVaMLIsUPOUkw2C9Gm
	 OuduLAgsDOqRa04NycsnT1uz9gqLn7i3ksdWdyBpsi2kepWwDjZdD748Fx1NpwO34y
	 4SQgVk94zCE3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CCCC1405C0;
	Wed, 23 Oct 2024 08:05:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7CDC74C2A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 08:05:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 698D04051E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 08:05:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v7C2wE1VMeRv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2024 08:05:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 136C8403AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 136C8403AA
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 136C8403AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 08:05:21 +0000 (UTC)
Received: from [192.168.0.224] (ip5f5aeec7.dynamic.kabel-deutschland.de
 [95.90.238.199])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id DADAF61E5FE05;
 Wed, 23 Oct 2024 10:04:45 +0200 (CEST)
Message-ID: <ba58bbcd-079e-42b9-8e66-52b2626936e2@molgen.mpg.de>
Date: Wed, 23 Oct 2024 10:04:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Johnny Park <pjohnny0508@gmail.com>
Cc: horms@kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, andrew@lunn.ch,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
References: <ZxhruNNXvQI-xUwE@Fantasy-Ubuntu>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <ZxhruNNXvQI-xUwE@Fantasy-Ubuntu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] [net-next] igb: Fix spelling
 in igb_main.c
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

Dear Johnny,


Thank you for your patch. I recommend to put the information, that the 
typos are only in comments, to the summary/title:

igb: Fix 2 typos in comments in igb_main.c

That way, skimming `git log --oneline` is more informative.

Am 23.10.24 um 05:21 schrieb Johnny Park:
> Simple patch that fix spelling mistakes in igb_main.c

fix*es*, but better use imperative mood:

Fix 2 spelling mistakes in comments `igb_main.c`.

> Signed-off-by: Johnny Park <pjohnny0508@gmail.com>
> ---
> Changes in v2:
>    - Fix spelling mor -> more
> ---
>   drivers/net/ethernet/intel/igb/igb_main.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 1ef4cb871452..fc587304b3c0 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -1204,7 +1204,7 @@ static int igb_alloc_q_vector(struct igb_adapter *adapter,
>   	/* initialize pointer to rings */
>   	ring = q_vector->ring;
>   
> -	/* intialize ITR */
> +	/* initialize ITR */
>   	if (rxr_count) {
>   		/* rx or rx/tx vector */
>   		if (!adapter->rx_itr_setting || adapter->rx_itr_setting > 3)
> @@ -3906,7 +3906,7 @@ static void igb_remove(struct pci_dev *pdev)
>    *
>    *  This function initializes the vf specific data storage and then attempts to
>    *  allocate the VFs.  The reason for ordering it this way is because it is much
> - *  mor expensive time wise to disable SR-IOV than it is to allocate and free
> + *  more expensive time wise to disable SR-IOV than it is to allocate and free
>    *  the memory for the VFs.
>    **/
>   static void igb_probe_vfs(struct igb_adapter *adapter)

Rest looks good.


Kind regards,

Paul
