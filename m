Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jwOSGjtGTmoVKAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 14:44:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BAA7266A5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 14:44:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=aBxj1fRp;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=redhat.com (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E87280B9A;
	Wed,  8 Jul 2026 12:44:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8brIs3QNo3fT; Wed,  8 Jul 2026 12:44:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 127F081F39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783514679;
	bh=RLXhKgIz8goXRBXFEhTCWUffU7CDX96wcves2MoLAu4=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aBxj1fRpQ8JL0WvdhYagoHL/eB/NGh33Hzpw1pcAcc5T+enCLEgYQ2VHR1FYjhYFB
	 MKl4t13JsHpUxwnPMHJYy8PXakE9yhBas5hyPeN9ZgU4SHZMNZZiL/GDHy57PIsG1s
	 N0zNG1gnN6f1+J8W+5JnU+OBvaxyQsXlPYYYYIu6h1oY2injomU9aUmdAy2BwkX1RZ
	 Avkb+mClAAnfrXJiEMyFS3WQJt8m+kl7x4KjtxOFU7O06KaCG+6jqVG/AERK9vJrNA
	 zIp5BqR9Zz1Pp5fdw9qDAgqtwU6lQcGzcrKLU9POIS8naqzLCb56t/x5FowVbE5qj+
	 ugd7ZJX9vGQew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 127F081F39;
	Wed,  8 Jul 2026 12:44:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A7EFC15C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 12:44:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9966140EB4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 12:44:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zt85eJs4dVCO for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2026 12:44:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6CEC140EAA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CEC140EAA
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6CEC140EAA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 12:44:36 +0000 (UTC)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-194-4uNLVMwsOGil2jDZHCHxbQ-1; Wed, 08 Jul 2026 08:44:33 -0400
X-MC-Unique: 4uNLVMwsOGil2jDZHCHxbQ-1
X-Mimecast-MFC-AGG-ID: 4uNLVMwsOGil2jDZHCHxbQ_1783514673
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-47deed1aeb4so196757f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Jul 2026 05:44:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783514672; x=1784119472;
 h=content-transfer-encoding:content-type:in-reply-to:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to:content-type;
 bh=RLXhKgIz8goXRBXFEhTCWUffU7CDX96wcves2MoLAu4=;
 b=CKnBiuJ2hkh30Hnmq28+oDKdfVXIBK7iX8+IKzxOyhcD9EBeePtcycdjSPikxJoixO
 faVFKw1rx+X06dDgfhSA4yGLFk54OMoN5ckBRtKsSKpuORMUtnimLZf9BfOX96CUDbTp
 FPUJUv5F52E5UPj5wxwAmFpW5iOEJHsVFqFNxzfZD2TJCTjuzFmsguwCa250iruQpkNP
 2q0e5vNtU/0S9xLcjX9jAHXF1cM1pVzYeZNwRoD1eAJJf3Ai59amTIx3tcbcRa11GhnX
 aVy6jPnEC6LSvITQha/+4FZdp+F9pffvQWElU+tIg0lXs4Uw+xtRXqrXVrxRsvSUCIq+
 Z6aw==
X-Forwarded-Encrypted: i=1;
 AHgh+Rqd8Q6EY3ClslGhzGlgf/BwilKtiQ45iztJGXt/8vgkfLxd9M/qHotF8POqNaxZj6h5OJRQ0nR+4jGRXBNe2Os=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzTWALG2XZTYVkeMdROgnf4MDTFF4mSfjzFsOKCkzh6j+BCGtrC
 HDaHdo9njr+o0a9T8Btyw+YH7NpxuuWwSXEljZM2jKEK1WyDZh0XeX8wRWn7WzASTPtbN4V7C+Y
 W787PYEQh9ckys3wPBxKHeblLiAxCGnzUhD7Ug8iseNHUiaj59TWDaG8Lm0GS7u/ysz4pvOA=
X-Gm-Gg: AfdE7clkmzdv4Jqo+nceAJjMXmBpRaPdaOwWldJAQBOBZnEWb6FebKQaeHbMDeC10Xz
 gnySs1QY/BMDQy+p9bFxQqZCl9xEjM1ZPyZIhaEWEQoe5KtnRjKDl1dKs6keC7oLy7Cc3S6NNqz
 D/1V4+QnovVR/haVo46DRrD2KnQtjn276d5LT8Xg3HZtYz0npsacEu0uz9Ww3BMvAC1Q+1ZrdAn
 muAjD8c1BVZEGvU0FRobh9oHln0kdAXK9ToccTMlN1Uw97pRgvYNMrG9O3fVOf1osYmRZ1LjlyA
 KTNtT4tryKfM98TJsu04i8M/TKLLofBqKWhs3wqlyJple/WscGEKjtqe/wBU0go8BPMMsb18jMd
 iD4Wh11O0pw==
X-Received: by 2002:a5d:5847:0:b0:473:1ccc:15bf with SMTP id
 ffacd0b85a97d-47df07fc15cmr2503578f8f.42.1783514672456; 
 Wed, 08 Jul 2026 05:44:32 -0700 (PDT)
X-Received: by 2002:a5d:5847:0:b0:473:1ccc:15bf with SMTP id
 ffacd0b85a97d-47df07fc15cmr2503529f8f.42.1783514671909; 
 Wed, 08 Jul 2026 05:44:31 -0700 (PDT)
Received: from [192.168.2.83] ([46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-47a9de1d8f1sm43229189f8f.3.2026.07.08.05.44.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jul 2026 05:44:31 -0700 (PDT)
Message-ID: <8b49c7dc-34f6-45e5-acb0-708e4e283ecd@redhat.com>
Date: Wed, 8 Jul 2026 14:44:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marcin Szycik <marcin.szycik@linux.intel.com>, netdev@vger.kernel.org
Cc: Ivan Vecera <ivecera@redhat.com>, Alice Michael
 <alice.michael@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
References: <20260701133601.2118382-1-poros@redhat.com>
 <20260701133601.2118382-2-poros@redhat.com>
 <f03d0930-9f51-45ad-9ed4-e9df335b8fa7@linux.intel.com>
From: Petr Oros <poros@redhat.com>
In-Reply-To: <f03d0930-9f51-45ad-9ed4-e9df335b8fa7@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: IGDR2ArowX98_6WE2I1aAglBQNKMI9XKUe-FhTYvCdA_1783514673
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1783514675;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RLXhKgIz8goXRBXFEhTCWUffU7CDX96wcves2MoLAu4=;
 b=I5crTAl8CYkHt6Q3eGTozkyRfLH+bSO5y8Sq4p+jL9Bh07ssis01ZEvf0kNg9LzQyN+Dd0
 A1oUhCXhhjefqJ7K7Cp92tgabN8nbErkavM+frXyo7+UlODdty+nTyesBgyZT5/FD0jMlI
 N/8PUl8QIMFkNE8gaPc66Rgbiiqjewk=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=I5crTAl8
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 1/2] ice: skip per-VLAN
 promisc rules when default VSI Rx rule is set
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:alice.michael@intel.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:martyna.szapar-mudlaw@linux.intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 28BAA7266A5


On 7/3/26 18:34, Marcin Szycik wrote:
>
> On 01.07.2026 15:36, Petr Oros wrote:
>> When an ice port in a vlan-filtering bridge goes promiscuous (typical for
>> bond slaves), the driver installs a per-VLAN ICE_SW_LKUP_PROMISC_VLAN rule
>> for every VID on top of the broad ICE_SW_LKUP_DFLT VSI Rx rule. Each rule
>> consumes one of the ~32K Flow Lookup Unit (FLU) entries the device shares
>> across PFs, so a wide trunk (vid 2-4094) over several PFs overruns the
>> pool: firmware rejects further Add Switch Rules with ENOSPC (AQ 0x10) and
>> the DFLT Rx rule itself fails to install:
>>
>>    ice 0000:5c:00.1: Failed to set VSI 14 as the default forwarding
>>                      VSI, error -5
>>    ice 0000:5c:00.1 ens1f1: Error -5 setting default VSI 14 Rx rule
>>
>> Once a switch context is overrun the retries can also come back as ENOENT
>> (AQ 0x2), which has misled triage toward a perceived recipe binding defect
>> rather than a capacity issue.
>>
>> The DFLT rule already catches every packet on the port regardless of VLAN
>> tag, so the per-VLAN promisc expansion is redundant while it is installed.
>> Skip it at the two sites that drive it, ice_set_promisc() and
>> ice_vlan_rx_add_vid(), keyed on ice_is_vsi_dflt_vsi() rather than the
>> netdev IFF_PROMISC flag so a failed or LAG-suppressed DFLT install still
>> falls back to the per-VLAN rules.
>>
>> IFF_ALLMULTI and IFF_PROMISC can reach ice_vsi_sync_fltr() in separate
>> passes (a bridge join sets them through separate calls), so the allmulti
>> pass may expand the per-VID rules before the DFLT rule exists. Drop those
>> now-redundant rules right after ice_set_dflt_vsi() installs the DFLT rule;
>> ice_vsi_exit_dflt_promisc() reinstates them when promisc is cleared.
>>
>> ice_vsi_sync_fltr() subscribed multicast promiscuity only inside the
>> "default VSI not yet in use" branch, so a promiscuous VSI that finds the
>> default VSI rule already present (owned by another VSI, or preserved
>> across a switchdev session) ended up in unicast promisc with no multicast
>> subscription. Issue ice_set_promisc(ICE_MCAST_PROMISC_BITS) whenever the
>> netdev is promiscuous; it is idempotent and returns 0 if the rule is
>> already present.
>>
>> Fixes: 1273f89578f2 ("ice: Fix broken IFF_ALLMULTI handling")
>> Signed-off-by: Petr Oros <poros@redhat.com>
>> ---
>> v3:
>> - Dropped the two vid=0 ICE_SW_LKUP_PROMISC <-> ICE_SW_LKUP_PROMISC_VLAN
>>    recipe-swap guards in ice_vlan_rx_add_vid() and ice_vlan_rx_kill_vid();
>>    each swap is net-zero and guarding the demote stranded the vid=0 rule
>>    in ICE_SW_LKUP_PROMISC_VLAN when the last VLAN was removed under the
>>    DFLT rule. Reported by review.
>> - Drop the now-redundant per-VID multicast promisc rules right after
>>    ice_set_dflt_vsi(). A bridge join raises IFF_ALLMULTI and IFF_PROMISC
>>    in separate sync passes, so the allmulti pass expands the per-VID rules
>>    before the DFLT rule exists; the cleanup keeps them from lingering and
>>    exhausting the FLU pool. ice_vsi_exit_dflt_promisc() reinstates them on
>>    promisc off. Reported by review.
>> - Issue ice_set_promisc(ICE_MCAST_PROMISC_BITS) whenever the netdev is
>>    promiscuous, not only when this VSI installs the default VSI rule, so
>>    multicast promisc is not lost when the rule is already in use (owned by
>>    another VSI, or preserved across a switchdev session). Reported by
>>    review.
>> - Hoisted the combined VLAN promisc mask in ice_clear_promisc() into a
>>    local for alignment. Dropped Aleksandr's Reviewed-by since the code
>>    changed.
>>
>> v2: https://lore.kernel.org/all/20260622113428.2565255-2-poros@redhat.com/
>> v1: https://lore.kernel.org/all/89efbea9831175e6f57e9fe8557f7a0e48e050b7.1781786935.git.poros@redhat.com/
>> ---
>>   drivers/net/ethernet/intel/ice/ice_main.c | 111 ++++++++++++++++++----
>>   1 file changed, 90 insertions(+), 21 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>> index b43d420ece99ca..a84de6cf6eb078 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -274,7 +274,8 @@ static int ice_set_promisc(struct ice_vsi *vsi, u8 promisc_m)
>>   	if (vsi->type != ICE_VSI_PF)
>>   		return 0;
>>   
>> -	if (ice_vsi_has_non_zero_vlans(vsi)) {
>> +	/* skip per-VID expansion; the DFLT Rx rule already covers every VID */
>> +	if (ice_vsi_has_non_zero_vlans(vsi) && !ice_is_vsi_dflt_vsi(vsi)) {
>>   		promisc_m |= (ICE_PROMISC_VLAN_RX | ICE_PROMISC_VLAN_TX);
>>   		status = ice_fltr_set_vlan_vsi_promisc(&vsi->back->hw, vsi,
>>   						       promisc_m);
>> @@ -304,9 +305,20 @@ static int ice_clear_promisc(struct ice_vsi *vsi, u8 promisc_m)
>>   		return 0;
>>   
>>   	if (ice_vsi_has_non_zero_vlans(vsi)) {
>> -		promisc_m |= (ICE_PROMISC_VLAN_RX | ICE_PROMISC_VLAN_TX);
>> +		u8 vlan_promisc_m = promisc_m | ICE_PROMISC_VLAN_RX |
>> +				    ICE_PROMISC_VLAN_TX;
>> +		int vid0_status;
>> +
>> +		/* set time used either recipe (per-VID PROMISC_VLAN, or vid=0
> I find this sentence hard to understand - did you mean "ice_set_promisc() used
> either recipe..."?
>
>> +		 * PROMISC via the ice_set_promisc() else branch), so clear
>> +		 * both; clearing an absent rule succeeds
> What do you mean by this? Both will return -EEXIST if rule is absent. There can
> also be other errors.
>
>> +		 */
>>   		status = ice_fltr_clear_vlan_vsi_promisc(&vsi->back->hw, vsi,
>> -							 promisc_m);
>> +							 vlan_promisc_m);
>> +		vid0_status = ice_fltr_clear_vsi_promisc(&vsi->back->hw,
>> +							 vsi->idx, promisc_m, 0);
>> +		if (status == 0)
>> +			status = vid0_status;
>>   	} else {
>>   		status = ice_fltr_clear_vsi_promisc(&vsi->back->hw, vsi->idx,
>>   						    promisc_m, 0);
>> @@ -317,6 +329,59 @@ static int ice_clear_promisc(struct ice_vsi *vsi, u8 promisc_m)
>>   	return status;
>>   }
>>   
>> +/**
>> + * ice_vsi_exit_dflt_promisc - drop the default VSI Rx rule on promisc off
>> + * @vsi: the VSI leaving promiscuous mode
>> + *
>> + * For an IFF_ALLMULTI VSI with VLANs the per-VID multicast rules are
>> + * reinstated before the default rule is cleared so coverage never lapses;
>> + * the then redundant vid=0 rule is dropped best-effort. The callees log
>> + * their own failures, so error returns are not re-logged here.
>> + *
>> + * Return: 0 on success, negative on error with the default rule left in place.
>> + */
>> +static int ice_vsi_exit_dflt_promisc(struct ice_vsi *vsi)
>> +{
>> +	struct ice_vsi_vlan_ops *vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
>> +	struct net_device *netdev = vsi->netdev;
>> +	struct ice_hw *hw = &vsi->back->hw;
>> +	bool restore_mc;
>> +	int err;
>> +
>> +	restore_mc = (vsi->current_netdev_flags & IFF_ALLMULTI) &&
>> +		     ice_vsi_has_non_zero_vlans(vsi);
>> +
>> +	if (restore_mc) {
>> +		err = ice_fltr_set_vlan_vsi_promisc(hw, vsi,
>> +						    ICE_MCAST_VLAN_PROMISC_BITS);
>> +		if (err && err != -EEXIST)
>> +			return err;
>> +	}
>> +
>> +	err = ice_clear_dflt_vsi(vsi);
>> +	if (err)
>> +		return err;
>> +
>> +	if (netdev->features & NETIF_F_HW_VLAN_CTAG_FILTER)
>> +		vlan_ops->ena_rx_filtering(vsi);
>> +
>> +	if (restore_mc)
>> +		ice_fltr_clear_vsi_promisc(hw, vsi->idx, ICE_MCAST_PROMISC_BITS,
>> +					   0);
>> +
>> +	return 0;
>> +}
>> +
>> +/* Drop the per-VID multicast promisc rules, redundant once the default
>> + * VSI Rx rule covers every VID. A no-op when the VSI has no VLANs.
>> + */
>> +static void ice_vsi_clear_vlan_mc_promisc(struct ice_vsi *vsi)
>> +{
>> +	if (ice_vsi_has_non_zero_vlans(vsi))
> Nit: could flip condition to decrease indent level.
>
>> +		ice_fltr_clear_vlan_vsi_promisc(&vsi->back->hw, vsi,
>> +						ICE_MCAST_VLAN_PROMISC_BITS);
> Error code ignored, not sure if intentionally.
The ignored error code is intentional: it only drops rules made redundant
by the default VSI rule, and a leftover is harmless while that rule is
installed.

I will address all the comment/style points in v4.

Many thanks,

Petr

>
>> +}
>> +
>>   /**
>>    * ice_vsi_sync_fltr - Update the VSI filter list to the HW
>>    * @vsi: ptr to the VSI
>> @@ -429,30 +494,35 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
>>   				err = 0;
>>   				vlan_ops->dis_rx_filtering(vsi);
>>   
>> -				/* promiscuous mode implies allmulticast so
>> -				 * that VSIs that are in promiscuous mode are
>> -				 * subscribed to multicast packets coming to
>> -				 * the port
>> +				/* DFLT now covers every VID; drop the per-VID
>> +				 * multicast promisc rules a prior IFF_ALLMULTI
>> +				 * pass may have installed (separate passes on a
>> +				 * bridge join) so they do not linger and exhaust
>> +				 * the FLU pool. exit_dflt_promisc() reinstates
> Please use the full function name.
>
>> +				 * them on promisc off.
>>   				 */
>> -				err = ice_set_promisc(vsi,
>> -						      ICE_MCAST_PROMISC_BITS);
>> -				if (err)
>> -					goto out_promisc;
>> +				ice_vsi_clear_vlan_mc_promisc(vsi);
>>   			}
>> +
>> +			/* Promiscuous mode implies allmulticast. Subscribe
>> +			 * the VSI to all multicast even when the default VSI
>> +			 * rule is already in use and the block above is
>> +			 * skipped (it may be owned by another VSI, or
>> +			 * preserved across a switchdev session); the unicast
>> +			 * catch-all does not cover the multicast subscription.
>> +			 */
>> +			err = ice_set_promisc(vsi, ICE_MCAST_PROMISC_BITS);
>> +			if (err)
>> +				goto out_promisc;
>>   		} else {
>>   			/* Clear Rx filter to remove traffic from wire */
>>   			if (ice_is_vsi_dflt_vsi(vsi)) {
>> -				err = ice_clear_dflt_vsi(vsi);
>> +				err = ice_vsi_exit_dflt_promisc(vsi);
>>   				if (err) {
>> -					netdev_err(netdev, "Error %d clearing default VSI %i Rx rule\n",
>> -						   err, vsi->vsi_num);
>>   					vsi->current_netdev_flags |=
>>   						IFF_PROMISC;
>>   					goto out_promisc;
>>   				}
>> -				if (vsi->netdev->features &
>> -				    NETIF_F_HW_VLAN_CTAG_FILTER)
>> -					vlan_ops->ena_rx_filtering(vsi);
>>   			}
>>   
>>   			/* disable allmulti here, but only if allmulti is not
>> @@ -3676,10 +3746,9 @@ int ice_vlan_rx_add_vid(struct net_device *netdev, __be16 proto, u16 vid)
>>   	while (test_and_set_bit(ICE_CFG_BUSY, vsi->state))
>>   		usleep_range(1000, 2000);
>>   
>> -	/* Add multicast promisc rule for the VLAN ID to be added if
>> -	 * all-multicast is currently enabled.
>> -	 */
>> -	if (vsi->current_netdev_flags & IFF_ALLMULTI) {
>> +	/* skip the per-VID rule when the DFLT Rx rule already covers this VID */
>> +	if ((vsi->current_netdev_flags & IFF_ALLMULTI) &&
>> +	    !ice_is_vsi_dflt_vsi(vsi)) {
>>   		ret = ice_fltr_set_vsi_promisc(&vsi->back->hw, vsi->idx,
>>   					       ICE_MCAST_VLAN_PROMISC_BITS,
>>   					       vid);
> Thanks,
> Marcin
>

