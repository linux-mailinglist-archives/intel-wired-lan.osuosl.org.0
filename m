Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sRDBAi1VOWr0qgcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 17:30:53 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 369F86B0BDA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 17:30:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=iQBtG7UA;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=redhat.com (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4966980C1A;
	Mon, 22 Jun 2026 15:30:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3dDTjrbnRyWo; Mon, 22 Jun 2026 15:30:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A71A180C1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782142249;
	bh=+BSJeeMyYcuKSEwdVpAPNISat771zywrHCdgKCUDl20=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iQBtG7UASJ2LpYs7kTMCyUailMoQjgCegcQPbkhg5erP1XM18KGYFw1C1hAV5XYk2
	 vBEliQEujiFqS2a9K30i9A/4dH2zM0hbpWJswx1Ucn7qbj909vr5KnR8ztEgCJ89xg
	 +Wtli7sfVVGdeD0fy+zLYwTJiyb5ABc/ZwUarP9UPfBSAeRkCkLfEGJvThOg/JkVEo
	 AfgN//Vu5yUmxovWmTc7BCNO279cjlj5IWMNzw/hhpNaJ1v7PXgudCYy82+HS8S7ze
	 B8xeSjR2uYuuPc0HhG55EXasjYygtn9H6uTWcR4nFbY/9D32gDhn4/bAYEP2H8l0DL
	 MLQhkg/dmborQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A71A180C1C;
	Mon, 22 Jun 2026 15:30:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6DC60F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 15:30:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5F4DA40024
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 15:30:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KlUbW0Yc14QU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2026 15:30:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3491540042
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3491540042
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3491540042
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 15:30:45 +0000 (UTC)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-283-Z3fPOHllPA6DMMkDlf8gcQ-1; Mon, 22 Jun 2026 11:30:43 -0400
X-MC-Unique: Z3fPOHllPA6DMMkDlf8gcQ-1
X-Mimecast-MFC-AGG-ID: Z3fPOHllPA6DMMkDlf8gcQ_1782142242
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-4621b17733cso2322477f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 08:30:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782142242; x=1782747042;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+BSJeeMyYcuKSEwdVpAPNISat771zywrHCdgKCUDl20=;
 b=IHEN4BKBVcNGyTULmuI3XNKM5wMasJWRFgD7FKECa5WOPjx0wZT4HyIRs0IPuzf0BN
 TozZ8KwW2YuOxVQHgCOYPs7SPI9ykzVoHs4kbOpZVOfyRtgkGj1uXSKd/DzHSV0/q73P
 sYqrKlfZfMXg8GRGevwsTmhzYVZ5LWTaFbp48QhIYoqmQIwwL2oHMZ4TT8vhTnLf2rgk
 ILOqYDRGJosAeN6ujmSS3ASbX2oTJ6cc0Ya22SFABwi3NWHtcVbM6tMPvlDzsFLcyZit
 x2zM0BBNLLEArr0WRIQSrIwrh11FbKDx0m7JcAlh892iMR/HZqsyDhLb/rY/s+zigkjf
 Eu4Q==
X-Forwarded-Encrypted: i=1;
 AHgh+Rp2iCLQMraaVu8CZccNGXvUN50a3K4GG+gBCxKW0r4sbwOzcdk7vkH78Q4z9aQX+RhrXVLzeRqHuEle3jwSCrI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxIbwM8tKCwesqeg+gK5AK65dJh4aYoIvVebjF8VEBgAwefc4M4
 /aSGV+1Ju6aVLIGn0zY3BQig30OeW37F5bKx+IeMd7vWzXN3aaL08oi3s77GALk7iRCwzOpNo5A
 7y35gPjiOhVCA57B2T+wgyqxgcodnMBJLvSH+/op5zTCMptsTN/HsBokT3H+AakC3Mi/qevg=
X-Gm-Gg: AfdE7cljHsvBL4zAO5u5oKlyxMzXDvSOHADWxo0PL71U4jU/tRRjlhuNwkEfnMXzKi7
 7vkRWqXssz7f562qnrqXfOuhLhU6zsE6i/ZazNWic8Cs6r+leO4GCRAKpRH0mOex8vDu9ILX3Ix
 p3GbtYatHiJiEYUEUzafcbigS6mWXTF4klHhY74NrLYuMMvJCmmMkQ5I6PzM55ptG7Zu+L9ywWt
 S7+MPy/SeqrSro3Ku0JVwi92AIOkmkF97U21fEZ9/7hrHfb4w2T6WHKJVS/d1Tr0i8gn0uicKL6
 Rfro2KOah3pxQFbW86NX8UrzAOAnWg7dzNWm8YrR7YWFwl6eE86o3WCGu+SruKCxWKt47kv/w3X
 Ya2Y76eWWOw==
X-Received: by 2002:a05:6000:4918:b0:469:763f:942d with SMTP id
 ffacd0b85a97d-469763f96e8mr5560527f8f.5.1782142241972; 
 Mon, 22 Jun 2026 08:30:41 -0700 (PDT)
X-Received: by 2002:a05:6000:4918:b0:469:763f:942d with SMTP id
 ffacd0b85a97d-469763f96e8mr5560420f8f.5.1782142241255; 
 Mon, 22 Jun 2026 08:30:41 -0700 (PDT)
Received: from [192.168.2.83] ([46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-46666c57afasm27778756f8f.29.2026.06.22.08.30.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 22 Jun 2026 08:30:40 -0700 (PDT)
Message-ID: <e85d04b5-9108-4a5a-85e7-81178b6ef679@redhat.com>
Date: Mon, 22 Jun 2026 17:30:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marcin Szycik <marcin.szycik@linux.intel.com>, netdev@vger.kernel.org
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen
 <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 intel-wired-lan@lists.osuosl.org
References: <20260622081030.2312129-1-poros@redhat.com>
 <4dc1eb2d-e69f-4f13-ab08-ed0077305098@linux.intel.com>
From: Petr Oros <poros@redhat.com>
In-Reply-To: <4dc1eb2d-e69f-4f13-ab08-ed0077305098@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: BxdovR0nCebIxHuN3iufb7Uloeh0pe804MvHNztwGNY_1782142242
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1782142244;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+BSJeeMyYcuKSEwdVpAPNISat771zywrHCdgKCUDl20=;
 b=Ompdl4Czt5kHtlZAQGdPh5DBtUkkseOIawcdNx09HN7hgByZwZWC99OcpPeqptltJSaXYJ
 5Ws3zFCc2epFNnsHtzTqWfcT8mMFuiYDase4K3Md5JP5zdwG/U0mvBlKbdrN6jAMV31ET0
 Nh3vF942YBFuqOzY4bS5wo9NfbGS2+g=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Ompdl4Cz
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: clear the default
 forwarding VSI rule when releasing a VSI
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:michal.swiatkowski@linux.intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 369F86B0BDA


On 6/22/26 15:52, Marcin Szycik wrote:
>
> On 22/06/2026 10:10, Petr Oros wrote:
>> When a VSI is configured as the switch's default forwarding VSI
>> (ICE_SW_LKUP_DFLT) and is then torn down, the rule is left behind in
>> the switch. ice_vsi_release() no longer removes it, and the SR-IOV VF
>> free path (ice_free_vfs() -> ice_free_vf_res() -> ice_vf_vsi_release()
>> -> ice_vsi_release()) does not disable promiscuous mode either, which
>> only happens on VF reset in ice_vf_clear_all_promisc_modes().
>>
>> A trusted VF that enters unicast promiscuous mode becomes the default
>> forwarding VSI (this is the default mode, when the PF does not have VF
>> true-promiscuous mode enabled). If the VFs are then destroyed without
>> the VF first leaving promiscuous mode, the ICE_SW_LKUP_DFLT rule for
>> the now-freed VSI is leaked. When VFs are recreated, a VSI reuses the
>> freed hw_vsi_id. If it is assigned a different VSI handle than the
>> leaked rule holds, ice_set_dflt_vsi() does not recognize it as
>> already-default, and ice_add_update_vsi_list() folds the dangling
>> (freed) handle into a VSI list, which the firmware rejects. The VSI
>> handle assigned on re-creation varies, so the failure is intermittent
>> rather than every cycle.
>>
>> Reproduce by repeatedly running the cycle below on the two ports of the
>> same card, where $VF0 and $VF1 are the netdevs of vf 15 once they
>> appear. The VF must be brought up so iavf actually pushes the unicast
>> promiscuous request, and the rule must settle before the VFs are torn
>> down again:
>>
>>    echo 16 > /sys/class/net/$PF0/device/sriov_numvfs
>>    echo 16 > /sys/class/net/$PF1/device/sriov_numvfs
>>    ip link set $PF0 vf 15 trust on
>>    ip link set $PF1 vf 15 trust on
>>    ip link set $VF0 up
>>    ip link set $VF1 up
>>    ip link set $VF0 promisc on
>>    ip link set $VF1 promisc on
>>    sleep 1
>>    echo 0 > /sys/class/net/$PF0/device/sriov_numvfs
>>    echo 0 > /sys/class/net/$PF1/device/sriov_numvfs
>>
>> Within a few cycles the ice PF and iavf VF log:
>>
>>    Failed to set VSI 25 as the default forwarding VSI, error -22
>>    Turning on/off promiscuous mode for VF 63 failed, error: -22
>>    PF returned error -53 (IAVF_ERR_ADMIN_QUEUE_ERROR) to our request 14
>>
>> This cleanup used to live in ice_vsi_release() but was dropped by the
>> referenced refactor. Restore it. Clear the default forwarding VSI rule
>> in ice_vsi_release() when this VSI owns it, which covers every teardown
>> path.
>>
>> Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
>> Signed-off-by: Petr Oros <poros@redhat.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice_lib.c | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
>> index 2717cc31bff8fe..408464434506ef 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
>> @@ -2872,6 +2872,9 @@ int ice_vsi_release(struct ice_vsi *vsi)
>>   		return -ENODEV;
>>   	pf = vsi->back;
>>   
>> +	if (ice_is_vsi_dflt_vsi(vsi))
>> +		ice_clear_dflt_vsi(vsi);
> In the referenced commit, the chunk of code that contained these missing 2 lines
> was moved to ice_vsi_decfg(). It also sounds like a good place for them and will
> be called from ice_vsi_release(). Are you sure we should place them directly in
> ice_vsi_release() instead?
No, ice_vsi_decfg() is not a good place for them because it is not
release only. It also runs on the rebuild and reconfig paths
(ice_vsi_rebuild(), ice_vf_reconfig_vsi(), the ice_vsi_cfg() error
path), where the VSI is reconfigured in place and stays alive, so it
can still be the default VSI afterwards.

Before the refactor the release-path clear lived only in
ice_vsi_release() and the old ice_vsi_rebuild() never cleared it.
Putting it in ice_vsi_decfg() would also clear the default VSI whenever
the default VSI itself is reset or reconfigured, which the original
code never did. ice_vsi_release() keeps it to the case where the owning
VSI is actually torn down, and the ice_is_vsi_dflt_vsi() guard makes it
a no-op everywhere else.

So I would prefer to keep it in ice_vsi_release().

Regards,

Petr

> Thanks,
> Marcin
>
>> +
>>   	if (test_bit(ICE_FLAG_RSS_ENA, pf->flags))
>>   		ice_rss_clean(vsi);
>>   
>

