Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBzUL6AtgmlFQAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 18:17:20 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D62DCA34
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 18:17:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 661C26064F;
	Tue,  3 Feb 2026 17:17:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G-KwhWEuXCaA; Tue,  3 Feb 2026 17:17:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 998DB60717
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770139037;
	bh=W7bWkTI4zqaEsibgzb4DhWv0fCgI0/Cq4xXCwoJlLUw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1tEZmNhEYQwMqH1ZabVRX9R9D0rCnaFvVDRtdh5r0fyGMm0I35Nv7h0TTNkUnySH4
	 DIWTX6INEYUTAmrDbJyKmRk1R2SF6OkhtqFdJUqTHLEQiYdzea/a7d8nqVL1NKhrh9
	 7rXB3Fl7B9TKAJcYaqGc3NsJniUbSxTTte8ZQSQ4VxBji81hEmDxDOGUfAjMUBSYfi
	 Nx4q2pvrqRcdrq6vYdv1q2Qvlb/xThd3i90Tb8/J6qj7I1H91Fmv7Ycg0KZ/BNrdfl
	 KXTVv9eFmYk7b6Xf5B5kawS23O5p+YztWQ/b5vS3WRTLRREwhmlE6N+8kDVDeOoxj2
	 Ll7PEOGgEsReQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 998DB60717;
	Tue,  3 Feb 2026 17:17:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C49B4F5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 17:17:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AEAFE40052
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 17:17:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CTcNRXvKS85w for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Feb 2026 17:17:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 85A2240025
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 85A2240025
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 85A2240025
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 17:17:14 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-119-Vn56I230NhuLOl4ARr0TCw-1; Tue,
 03 Feb 2026 12:17:08 -0500
X-MC-Unique: Vn56I230NhuLOl4ARr0TCw-1
X-Mimecast-MFC-AGG-ID: Vn56I230NhuLOl4ARr0TCw_1770139024
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 424DC1954204; Tue,  3 Feb 2026 17:17:03 +0000 (UTC)
Received: from [10.45.224.28] (unknown [10.45.224.28])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 791DC19560B4; Tue,  3 Feb 2026 17:16:56 +0000 (UTC)
Message-ID: <b8d56202-cae9-4759-bed9-0556dbca571e@redhat.com>
Date: Tue, 3 Feb 2026 18:16:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
References: <20260202171638.17427-10-ivecera@redhat.com>
 <20260203161120.1894163-1-horms@kernel.org>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20260203161120.1894163-1-horms@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1770139033;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=W7bWkTI4zqaEsibgzb4DhWv0fCgI0/Cq4xXCwoJlLUw=;
 b=CqiF60qhRAf3sf9lrWX3sGcv1JJyp92cMbOrhojGmVTC7VstpzhuUmRd9PbPPFPBaDCkcd
 BOkIRp1R5AeQst8JPo24n0QK6Zi/0AB1mH8mzDHkrMi3d4GudgkjWGiEclFNVh0FSpECDN
 SZ6b2HpUcRIigw36ox2dtDdea1WydTQ=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=CqiF60qh
Subject: Re: [Intel-wired-lan] [net-next, v4,
 9/9] ice: dpll: Support E825-C SyncE and dynamic pin discovery
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
Cc: edumazet@google.com, anthony.l.nguyen@intel.com, leon@kernel.org,
 andrew+netdev@lunn.ch, linux-rdma@vger.kernel.org,
 przemyslaw.kitszel@intel.com, arkadiusz.kubalewski@intel.com,
 aleksandr.loktionov@intel.com, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, pabeni@redhat.com, jiri@resnulli.us, richardcochran@gmail.com,
 Prathosh.Satish@microchip.com, vadim.fedorenko@linux.dev,
 netdev@vger.kernel.org, mbloch@nvidia.com, linux-kernel@vger.kernel.org,
 tariqt@nvidia.com, aleksander.lobakin@intel.com, jonathan.lemon@gmail.com,
 saeedm@nvidia.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[ivecera@redhat.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:leon@kernel.org,m:andrew+netdev@lunn.ch,m:linux-rdma@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jiri@resnulli.us,m:richardcochran@gmail.com,m:Prathosh.Satish@microchip.com,m:vadim.fedorenko@linux.dev,m:netdev@vger.kernel.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:aleksander.lobakin@intel.com,m:jonathan.lemon@gmail.com,m:saeedm@nvidia.com,m:davem@davemloft.net,m:andrew@lunn.ch,m:jonathanlemon@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[google.com,intel.com,kernel.org,lunn.ch,vger.kernel.org,lists.osuosl.org,redhat.com,resnulli.us,gmail.com,microchip.com,linux.dev,nvidia.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[ivecera@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: D4D62DCA34
X-Rspamd-Action: no action

On 2/3/26 5:11 PM, Simon Horman wrote:
> This is an AI-generated review of your patch. The human sending this
> email has considered the AI review valid, or at least plausible.
> 
> For local reproduction steps seehttps://netdev-ai.bots.linux.dev/ai-local.html
> ---
> ice: dpll: Support E825-C SyncE and dynamic pin discovery
> 
> This patch implements SyncE support for the E825-C Ethernet controller
> using the DPLL subsystem, with dynamic pin discovery via firmware (ACPI)
> and asynchronous registration using the DPLL notifier chain.
> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
>> index 4eca62688d83..a8c99e49bfae 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> [ ... ]
> 
>> @@ -528,6 +529,92 @@ ice_dpll_pin_disable(struct ice_hw *hw, struct ice_dpll_pin *pin,
>>   	return ret;
>>   }
>>
>> +/**
>> + * ice_dpll_rclk_update - updates the state of rclk pin on a device
>> + * @pf: private board struct
>> + * @pin: pointer to a pin
>> + * @port_num: port number
>> + *
>> + * Update struct holding pin states info, states are separate for each parent
>> + *
>> + * Context: Called under pf->dplls.lock
>> + * Return:
>> + * * 0 - OK
>> + * * negative - error
>> + */
>> +static int ice_dpll_rclk_update(struct ice_pf *pf, struct ice_dpll_pin *pin,
>> +				u8 port_num)
>> +{
>> +	int ret;
>> +
>> +	for (u8 parent = 0; parent < pf->dplls.rclk.num_parents; parent++) {
>> +		ret = ice_aq_get_phy_rec_clk_out(&pf->hw, &parent, &port_num,
>> +						 &pin->flags[parent], NULL);
> Is it safe to pass &parent as an output parameter when it's also the loop
> counter? Looking at ice_aq_get_phy_rec_clk_out():
> 
>      int ice_aq_get_phy_rec_clk_out(struct ice_hw *hw, u8 *phy_output, ...)
>      {
>          cmd->phy_output = *phy_output;  // Read as input
>          status = ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
>          if (!status) {
>              *phy_output = cmd->phy_output;  // Write back from firmware
>          ...
> 
> The firmware could potentially return a different value than was sent,
> which would be written back to 'parent', corrupting the loop counter.
> 
> This corrupted value is then used as an array index:
> 
>> +		if (ret)
>> +			return ret;
>> +
>> +		ice_dpll_pin_store_state(pin, parent,
>> +					 ICE_AQC_GET_PHY_REC_CLK_OUT_OUT_EN &
>> +					 pin->flags[parent]);
> Both pin->flags[parent] and pin->state[parent] (inside
> ice_dpll_pin_store_state) could access out of bounds if firmware returns
> a value >= ICE_DPLL_RCLK_NUM_MAX (which is 2).
> 
> Would it be safer to use a separate variable for the phy_output parameter
> and validate that firmware echoes back the expected value?

Yes, there should be a separate variable like in previous code prior
this refactor...

<snip>
         case ICE_DPLL_PIN_TYPE_RCLK_INPUT:
-               for (parent = 0; parent < pf->dplls.rclk.num_parents;
-                    parent++) {
-                       u8 p = parent; <--- HERE
-
-                       ret = ice_aq_get_phy_rec_clk_out(&pf->hw, &p,
-                                                        &port_num,
- 
&pin->flags[parent],
-                                                        NULL);
</snip>

Arek, I will fix it by myself.

Thanks,
Ivan

