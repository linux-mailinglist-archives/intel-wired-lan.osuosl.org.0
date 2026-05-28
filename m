Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cOqGCs5RGGqwiwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 16:31:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 251825F3B67
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 16:31:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 936F284CA8;
	Thu, 28 May 2026 14:31:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jNJhRakYrnWP; Thu, 28 May 2026 14:31:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 12FCD84CAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779978699;
	bh=Nosj54CS/w1v8DX+xXPgimYXGQ9UXBm17ySIVHUG2Kk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HsicLahmDoci8rCgowRwAtyQSgu5upx9xFEbIsUZs1xyszjgUTMaotcgf7kZpeEQJ
	 yKOyJs+42V/cspsj8tUM6+MUFRt+2LT56O673sqJ9/XZXykvPDmwp/DlrEmvRvAbNc
	 kp2pcoFGwUVMVUHIjA7kZJsW4vS/WNqYuA10H8UMMUIMLCNm9IdQMiSPuPRfPR1VJY
	 5urQkIFqD0Tzkqqwu2D/awBh7lDR8zxMrBEGqEKLTp9kv2SiHDXD3Mys05nqeTeDo4
	 2ZfDOsA4D3NaMKHpfwrik1Ncx7dQv137oqZt4q/XXAlTJgNoEGYEapD8rUAeZPKBM5
	 2S1HBWJ2liq+Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 12FCD84CAC;
	Thu, 28 May 2026 14:31:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E3685288
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 14:31:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D4C6984CA5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 14:31:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t7NlZOv-62iK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2026 14:31:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B12B884CA4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B12B884CA4
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B12B884CA4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 14:31:34 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-653-eF-ET-tuPnGdNzgx0pP7mQ-1; Thu,
 28 May 2026 10:31:29 -0400
X-MC-Unique: eF-ET-tuPnGdNzgx0pP7mQ-1
X-Mimecast-MFC-AGG-ID: eF-ET-tuPnGdNzgx0pP7mQ_1779978688
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 9B99E195608E; Thu, 28 May 2026 14:31:28 +0000 (UTC)
Received: from [10.44.50.40] (unknown [10.44.50.40])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 4A40719560A3; Thu, 28 May 2026 14:31:27 +0000 (UTC)
Message-ID: <e112de51-687b-48de-a0d9-eebbfd5b32f4@redhat.com>
Date: Thu, 28 May 2026 16:31:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com
Cc: netdev@vger.kernel.org
References: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
 <20260327072332.130320-4-aleksandr.loktionov@intel.com>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20260327072332.130320-4-aleksandr.loktionov@intel.com>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-MFC-PROC-ID: ovRlBtK9bDni-HGRcNIylTDOXxAxocKPEKShnwEgrjM_1779978688
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1779978693;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Nosj54CS/w1v8DX+xXPgimYXGQ9UXBm17ySIVHUG2Kk=;
 b=B2vp2RVKlUY9kVDIxS8yVZVwSMjxUrZHSk+9jAc2/FVvHh62bTDnJQhWmmcxs3TS/on63e
 p+1JxHUJ3hxk7o2+vcLnl0prk5mMidxtH5HWjim71IKJcj4yfLxYqJwxFNhXj0SuTH2uno
 M2QqFYQP8zoJNtIG3pRnX3KhjsU1dyg=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=B2vp2RVK
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix PTP hang for E825C
 devices
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
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[ivecera@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[ivecera@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 251825F3B67
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/27/26 8:23 AM, Aleksandr Loktionov wrote:
> From: Grzegorz Nitka <grzegorz.nitka@intel.com>
> 
> Change the order of PTP reconfiguration when port goes down or up
> (ice_down and ice_up calls) to be more graceful and consistent from
> timestamp interrupts processing perspective.
> 
> For both calls (ice_up and ice_down), accompanying ice_ptp_link_change
> is called which starts/stops PTP timer. This patch changes the order:
> - while link goes down: disable net device Tx first (netif_carrier_off,
>    netif_tx_disable), then call ice_ptp_link_change
> - while link goes up: ice_ptp_link_change called first, then re-enable
>    net device Tx (netif_tx_start_all_queues)
> 
> Otherwise, there is a narrow window in which PTP timestamp request has
> been triggered and timestamp processing occurs when PTP timer is not
> enabled yet (up case) or already disabled (down case). This may lead to
> undefined behavior and receiving invalid timestamps. This case was
> observed on E825C devices only.
> 
> Fixes: 6b1ff5d39228 ("ice: always call ice_ptp_link_change and make it void")
> Cc: stable@vger.kernel.org
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> 
>   drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index e7308e3..8896805 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -6797,10 +6797,10 @@ static int ice_up_complete(struct ice_vsi *vsi)
>   	    (vsi->port_info->phy.link_info.link_info & ICE_AQ_LINK_UP) &&
>   	    ((vsi->netdev && (vsi->type == ICE_VSI_PF ||
>   			      vsi->type == ICE_VSI_SF)))) {
> +		ice_ptp_link_change(pf, true);
>   		ice_print_link_msg(vsi, true);
>   		netif_tx_start_all_queues(vsi->netdev);
>   		netif_carrier_on(vsi->netdev);
> -		ice_ptp_link_change(pf, true);
>   	}
>   
>   	/* Perform an initial read of the statistics registers now to
> @@ -7328,9 +7328,9 @@ int ice_down(struct ice_vsi *vsi)
>   
>   	if (vsi->netdev) {
>   		vlan_err = ice_vsi_del_vlan_zero(vsi);
> -		ice_ptp_link_change(vsi->back, false);
>   		netif_carrier_off(vsi->netdev);
>   		netif_tx_disable(vsi->netdev);
> +		ice_ptp_link_change(vsi->back, false);
>   	}
>   
>   	ice_vsi_dis_irq(vsi);

I cannot find this patch applied anywhere... IWL patchwork indicates 
Changes Requested... I don't know why...

Thanks,
Ivan

