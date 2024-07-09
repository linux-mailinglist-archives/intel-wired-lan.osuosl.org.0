Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA19792B299
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2024 10:50:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5A64540B8A;
	Tue,  9 Jul 2024 08:50:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SseXCrcqwYlJ; Tue,  9 Jul 2024 08:50:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB0F140931
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720515046;
	bh=626+3VKzOCCFYWeeVehgTwlabPtq4Tj62XbRo5n4X3I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=X+Q73HrDUzNAaw++6rH5ostFegaFtNkSZYaIw0shcBqWDi88TzRoSoiAwFDbuThUZ
	 OQO2KUgxtDjK1lLKy816WBhpSdUFOLVk5YWe15QQLdqEfEvQ5B5BBeE4Ni0683hOLb
	 fsGYcVH2rFFTyrLOiDl+rOZz2lQiNuy9KYO6/n5CX/ezbRIC5aPqJvPUuMh6t3YbSt
	 ciciWOMwWdfMHr7bcItO8KSpFL5tPIKXfQR3pItHYfMbSG1ShaqzrJ7wNNP1QF3dDq
	 ePhrsVH/+Lk/R2rQeKzLv4IUZW9r0/sKaNA4iko6jD0L+PNp7dInAQi89XOHZt3Oo6
	 wJbbEKOg67FBA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DB0F140931;
	Tue,  9 Jul 2024 08:50:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CBC081BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 08:50:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B806A811EC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 08:50:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9FLZCcgeorGn for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jul 2024 08:50:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0FD12811DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FD12811DC
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0FD12811DC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 08:50:40 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C410161E40617;
 Tue,  9 Jul 2024 10:49:57 +0200 (CEST)
Message-ID: <033111e2-e743-4523-8c4f-7d5f1c801e65@molgen.mpg.de>
Date: Tue, 9 Jul 2024 10:49:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aleksandr Mishin <amishin@t-argos.ru>
References: <20240708182736.8514-1-amishin@t-argos.ru>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240708182736.8514-1-amishin@t-argos.ru>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] ice: Adjust over
 allocation of memory in ice_sched_add_root_node() and ice_sched_add_node()
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
Cc: lvc-project@linuxtesting.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>,
 Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>,
 intel-wired-lan@lists.osuosl.org, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Aleksandr,


Thank you for your patch.


Am 08.07.24 um 20:27 schrieb Aleksandr Mishin:
> In ice_sched_add_root_node() and ice_sched_add_node() there are calls to
> devm_kcalloc() in order to allocate memory for array of pointers to
> 'ice_sched_node' structure. But incorrect types are used as sizeof()
> arguments in these calls (structures instead of pointers) which leads to
> over allocation of memory.

If you have the explicit size at hand, it’d be great if you added those 
to the commit message.

> Adjust over allocation of memory by correcting types in devm_kcalloc()
> sizeof() arguments.
> 
> Found by Linux Verification Center (linuxtesting.org) with SVACE.

Maybe mention, that Coverity found that too, and the warning was 
disabled, and use that commit in Fixes: tag? That’d be commit 
b36c598c999c (ice: Updates to Tx scheduler code), different from the one 
you used.

`Documentation/process/submitting-patches.rst` says:

> A Fixes: tag indicates that the patch fixes an issue in a previous
> commit. It is used to make it easy to determine where a bug
> originated, which can help review a bug fix. This tag also assists
> the stable kernel team in determining which stable kernel versions
> should receive your fix. This is the preferred method for indicating
> a bug fixed by the patch.


> Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Aleksandr Mishin <amishin@t-argos.ru>
> ---
> v3:
>    - Update comment and use the correct entities as suggested by Przemek
> v2: https://lore.kernel.org/all/20240706140518.9214-1-amishin@t-argos.ru/
>    - Update comment, remove 'Fixes' tag and change the tree from 'net' to
>      'net-next' as suggested by Simon
>      (https://lore.kernel.org/all/20240706095258.GB1481495@kernel.org/)
> v1: https://lore.kernel.org/all/20240705163620.12429-1-amishin@t-argos.ru/
> 
>   drivers/net/ethernet/intel/ice/ice_sched.c | 6 ++----
>   1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
> index ecf8f5d60292..6ca13c5dcb14 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sched.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sched.c
> @@ -28,9 +28,8 @@ ice_sched_add_root_node(struct ice_port_info *pi,
>   	if (!root)
>   		return -ENOMEM;
>   
> -	/* coverity[suspicious_sizeof] */
>   	root->children = devm_kcalloc(ice_hw_to_dev(hw), hw->max_children[0],
> -				      sizeof(*root), GFP_KERNEL);
> +				      sizeof(*root->children), GFP_KERNEL);
>   	if (!root->children) {
>   		devm_kfree(ice_hw_to_dev(hw), root);
>   		return -ENOMEM;
> @@ -186,10 +185,9 @@ ice_sched_add_node(struct ice_port_info *pi, u8 layer,
>   	if (!node)
>   		return -ENOMEM;
>   	if (hw->max_children[layer]) {
> -		/* coverity[suspicious_sizeof] */
>   		node->children = devm_kcalloc(ice_hw_to_dev(hw),
>   					      hw->max_children[layer],
> -					      sizeof(*node), GFP_KERNEL);
> +					      sizeof(*node->children), GFP_KERNEL);
>   		if (!node->children) {
>   			devm_kfree(ice_hw_to_dev(hw), node);
>   			return -ENOMEM;


Kind regards,

Paul
