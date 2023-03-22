Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C46FD6C446A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 08:53:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D417402D2;
	Wed, 22 Mar 2023 07:53:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D417402D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679471601;
	bh=h9mNcQqm1S6Ha7hZ5Z4OYdrIKvlY9PD2cs11uVIY2yk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=goSf9B3o9B8/kyPRALcRmPLekXmavbMMuMHbMn2PG1YKSbkdR6h+8SkiCvtZ92M4P
	 hWsSBZHbVit3hxcQ9FSGbwAx2dkgcxjPlh/n/p0QE4hqhrHPQ4iKAp/4C7vgHPzUHY
	 oJkQOVtaxjOPXfjdb/nAiULgVsDqqaAUPISRvQ+D+BU2Jjb69RPhCiMnfs2W+TBgO7
	 lepTnFl/g3ps/Izl93Tm10N8aUwrBaf6f/NssKgMXdWHnQWN8aRm/elYqgRRMs41QB
	 LkTkqzfVqsl9rJLAMF6JuW0LHFHeXWj70fWidgadRiiwpPNYqja6bdc+4DAutEfz4Q
	 CR2Tg+0LfINIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5JGVpr5TEIn6; Wed, 22 Mar 2023 07:53:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4138040239;
	Wed, 22 Mar 2023 07:53:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4138040239
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1CA0F1BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 07:53:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F37E340239
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 07:53:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F37E340239
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Kcq_ERiL1Rc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 07:53:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 24D7A401C2
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 24D7A401C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 07:53:13 +0000 (UTC)
Received: from [192.168.0.2] (unknown [95.90.235.137])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 0B60E61CC457B;
 Wed, 22 Mar 2023 08:53:10 +0100 (CET)
Message-ID: <6cfd3774-34d8-97a9-2728-d208c5ad69cc@molgen.mpg.de>
Date: Wed, 22 Mar 2023 08:53:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Radoslaw Tyl <radoslawx.tyl@intel.com>
References: <20230313140733.4140757-1-radoslawx.tyl@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230313140733.4140757-1-radoslawx.tyl@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: fix flow director packet
 filter programming
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Radoslaw,


Thank you for your patch.

Am 13.03.23 um 15:07 schrieb Radoslaw Tyl:
> Initialize to zero structures to build a valid
> Tx Packet used for the filter programming.

Please elaborate what the problem is, and how it can be reproduced.

> Fixes: a9219b332f52 ("i40e: VLAN field for flow director")
> Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_txrx.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index 924f972b91fa..72b091f2509d 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -171,10 +171,10 @@ static char *i40e_create_dummy_packet(u8 *dummy_packet, bool ipv4, u8 l4proto,
>   				      struct i40e_fdir_filter *data)
>   {
>   	bool is_vlan = !!data->vlan_tag;
> -	struct vlan_hdr vlan;
> -	struct ipv6hdr ipv6;
> -	struct ethhdr eth;
> -	struct iphdr ip;
> +	struct vlan_hdr vlan = {};
> +	struct ipv6hdr ipv6 = {};
> +	struct ethhdr eth = {};
> +	struct iphdr ip = {};

There are opposing views, how to program. One side says to initialize 
the structs. Others say to not do it, and set the members explicitly, so 
the compiler can tell you, when you miss setting a member.

What members were not set?

>   	u8 *tmp;
>   
>   	if (ipv4) {


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
