Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE66B25ABF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Aug 2025 07:20:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D8FC2608D1;
	Thu, 14 Aug 2025 05:20:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6wELx_knMDTo; Thu, 14 Aug 2025 05:20:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57B39608CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755148807;
	bh=YT542fGe5DhSEsLq6eiAKARrmTfhKiPqp6ck7aqNDIk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hHmh2BMdV8gYAfcGeJZQEQCQi58UWl3iJFcFb4TYoMVHnrBO59C2H/rPzgqv0SjUO
	 4WSAB079LgMpYKo7OdkrGzqzIf1lqh8OhGw3D67q2of0HUC5MgKidQA+6NmjABtb/V
	 LNpjDhJbJLjXnupcbwDloxSfzK36rhKeXRACOq6mYpLY62TwMrGxfVQw2gz5Jn7zQA
	 8QF1mmYvwgyrcyjZ9sygGv9K87gSCPshLSXa6TaPwbJyn7MGduNcX4fG39UZ5UjYgH
	 KJNgrB1orGMNWm28Sev3325y85UEuIKtTMlZhcAeyI76S4B0BkIbZ7yAP1HuHY6ExM
	 /QnUSGdTFkp5Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57B39608CB;
	Thu, 14 Aug 2025 05:20:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3A46F271
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 05:20:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2432740090
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 05:20:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ykqvH2pLaNoy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Aug 2025 05:20:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9EC194007E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9EC194007E
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9EC194007E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 05:20:01 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af7f5.dynamic.kabel-deutschland.de
 [95.90.247.245])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 06B2561E64844;
 Thu, 14 Aug 2025 07:19:47 +0200 (CEST)
Message-ID: <ad9058eb-f1f9-4c38-b04f-9761121a48df@molgen.mpg.de>
Date: Thu, 14 Aug 2025 07:19:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Anton Nadezhdin <anton.nadezhdin@intel.com>,
 Milena Olech <milena.olech@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, richardcochran@gmail.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20250813173304.46027-1-anton.nadezhdin@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250813173304.46027-1-anton.nadezhdin@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: cleanup remaining SKBs
 in PTP flows
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

Dear Anton, dear Milena,


Thank you for the patch.

Am 13.08.25 um 19:33 schrieb Anton Nadezhdin:
> From: Milena Olech <milena.olech@intel.com>
> 
> When the driver requests Tx timestamp value, one of the first steps is
> to clone SKB using skb_get. It increases the reference counter for that
> SKB to prevent unexpected freeing by another component.
> However, there may be a case where the index is requested, SKB is
> assigned and never consumed by PTP flows - for example due to reset during
> running PTP apps.
> 
> Add a check in release timestamping function to verify if the SKB
> assigned to Tx timestamp latch was freed, and release remaining SKBs.
> 
> Fixes: 4901e83a94ef ("idpf: add Tx timestamp capabilities negotiation")
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_ptp.c          | 3 +++
>   drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c | 1 +
>   2 files changed, 4 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> index ee21f2ff0cad..63a41e688733 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> @@ -855,6 +855,9 @@ static void idpf_ptp_release_vport_tstamp(struct idpf_vport *vport)
>   	head = &vport->tx_tstamp_caps->latches_in_use;
>   	list_for_each_entry_safe(ptp_tx_tstamp, tmp, head, list_member) {
>   		list_del(&ptp_tx_tstamp->list_member);
> +		if (ptp_tx_tstamp->skb)
> +			consume_skb(ptp_tx_tstamp->skb);
> +
>   		kfree(ptp_tx_tstamp);
>   	}
>   
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
> index 4f1fb0cefe51..688a6f4e0acc 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
> @@ -517,6 +517,7 @@ idpf_ptp_get_tstamp_value(struct idpf_vport *vport,
>   	shhwtstamps.hwtstamp = ns_to_ktime(tstamp);
>   	skb_tstamp_tx(ptp_tx_tstamp->skb, &shhwtstamps);
>   	consume_skb(ptp_tx_tstamp->skb);
> +	ptp_tx_tstamp->skb = NULL;

This hunk is not clear to me from the commit message, and the whole diff.

>   
>   	list_add(&ptp_tx_tstamp->list_member,
>   		 &tx_tstamp_caps->latches_free);

Kind regards,

Paul
