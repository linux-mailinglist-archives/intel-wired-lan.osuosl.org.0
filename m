Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GcBcO2tQOmqV5wcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2026 11:22:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 530A36B5C28
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2026 11:22:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=5sAalhB6;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F405060869;
	Tue, 23 Jun 2026 09:22:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iX0BDNun4LtG; Tue, 23 Jun 2026 09:22:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 538356086B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782206566;
	bh=SOdTWq+p8sJ0245Qcs9+jdnl9QgNg3Le2dbi5AxVxX8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5sAalhB6xynIn3+YGwsFDkZdBmLiJoh4cemnoYJRQznKWWPjMV3NeuG6aSnWpelAk
	 zWpl3gJBNQwCaJWH78ch1+sRDAidqbcXzeZOHd5pMZSYgP3/GMB2/dMBDJAcL3XiGs
	 beSqp03q1LYTbfj964Gg/a51O2I1LR+LesJMNUQBBlynFv0/Ih1+QdyfVJhSlDldv8
	 l4y57MgBPOjx3YNJEzTcnjlWiFmrunQQkXL/GMcpkirXeBjZEWEz5N+bPj5t7fzZUl
	 RJzH4UR2g0BR71HcmidVFScSsYIJsqPMnELB9th+jFLQaWzn48Rbe7OxqCj//sIXVL
	 R1vZ+srLcKvpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 538356086B;
	Tue, 23 Jun 2026 09:22:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4E89D157
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2026 09:22:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 34A834077F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2026 09:22:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q0mn2DZ-sFfM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jun 2026 09:22:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0E21E40735
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E21E40735
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0E21E40735
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2026 09:22:43 +0000 (UTC)
X-CSE-ConnectionGUID: e6+Z9mezS/CMbZwDKGoHYg==
X-CSE-MsgGUID: 1Dn07tz6RLucdJv71N+AJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="100494343"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="100494343"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 02:22:43 -0700
X-CSE-ConnectionGUID: q7bRuC+cQhO9tBwhfzsjDw==
X-CSE-MsgGUID: jvOrFFIwTkuJGQ+GKX6/Ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="243112031"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.246.20.168])
 ([10.246.20.168])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 02:22:40 -0700
Message-ID: <296a60de-b72b-4ae0-8c02-485536bc509d@linux.intel.com>
Date: Tue, 23 Jun 2026 11:22:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Petr Oros <poros@redhat.com>, netdev@vger.kernel.org
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
 <e85d04b5-9108-4a5a-85e7-81178b6ef679@redhat.com>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <e85d04b5-9108-4a5a-85e7-81178b6ef679@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782206564; x=1813742564;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Sngb6sg1fHzFxjTYkyKDvyb0KvAqnAxmfkMk0H+3t2A=;
 b=j3vo9Wa1gZUKMjB6jDtmfhmUsFfQhWwwOH6iX9LhHsIRWpOdV8iL1JsJ
 lexSR7oAY5p+fJCK0IVKuLSL6wuVVbvcgj2cUylXNUJiJIohXuHw/3uFB
 sUyABMTmMa2lBD7+DOXQ56oms3R4HyGw8960UyPJxfEDVtN5gIuEIjvbQ
 jl5p67S2qJE3C9oVEBQBs4q0YCF3Js3Cf50c3p/rz7AV7d21rybXw7Nki
 XWt+O6/44JJ8IwInDLGHqiIB4ktIyFGOpW80H/vg9+SHxphXJiG6WB44n
 disj/cmest3uEcDDN60KoZtpSRSpNZzxfbZgZPwRp+cEE5XsaEcMP4LHt
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=j3vo9Wa1
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
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:michal.swiatkowski@linux.intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,linux.intel.com:from_mime,intel.com:email,osuosl.org:dkim,osuosl.org:from_smtp];
	FORGED_SENDER(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 530A36B5C28



On 22.06.2026 17:30, Petr Oros wrote:
> 
> On 6/22/26 15:52, Marcin Szycik wrote:
>>
>> On 22/06/2026 10:10, Petr Oros wrote:
>>> When a VSI is configured as the switch's default forwarding VSI
>>> (ICE_SW_LKUP_DFLT) and is then torn down, the rule is left behind in
>>> the switch. ice_vsi_release() no longer removes it, and the SR-IOV VF
>>> free path (ice_free_vfs() -> ice_free_vf_res() -> ice_vf_vsi_release()
>>> -> ice_vsi_release()) does not disable promiscuous mode either, which
>>> only happens on VF reset in ice_vf_clear_all_promisc_modes().
>>>
>>> A trusted VF that enters unicast promiscuous mode becomes the default
>>> forwarding VSI (this is the default mode, when the PF does not have VF
>>> true-promiscuous mode enabled). If the VFs are then destroyed without
>>> the VF first leaving promiscuous mode, the ICE_SW_LKUP_DFLT rule for
>>> the now-freed VSI is leaked. When VFs are recreated, a VSI reuses the
>>> freed hw_vsi_id. If it is assigned a different VSI handle than the
>>> leaked rule holds, ice_set_dflt_vsi() does not recognize it as
>>> already-default, and ice_add_update_vsi_list() folds the dangling
>>> (freed) handle into a VSI list, which the firmware rejects. The VSI
>>> handle assigned on re-creation varies, so the failure is intermittent
>>> rather than every cycle.
>>>
>>> Reproduce by repeatedly running the cycle below on the two ports of the
>>> same card, where $VF0 and $VF1 are the netdevs of vf 15 once they
>>> appear. The VF must be brought up so iavf actually pushes the unicast
>>> promiscuous request, and the rule must settle before the VFs are torn
>>> down again:
>>>
>>>    echo 16 > /sys/class/net/$PF0/device/sriov_numvfs
>>>    echo 16 > /sys/class/net/$PF1/device/sriov_numvfs
>>>    ip link set $PF0 vf 15 trust on
>>>    ip link set $PF1 vf 15 trust on
>>>    ip link set $VF0 up
>>>    ip link set $VF1 up
>>>    ip link set $VF0 promisc on
>>>    ip link set $VF1 promisc on
>>>    sleep 1
>>>    echo 0 > /sys/class/net/$PF0/device/sriov_numvfs
>>>    echo 0 > /sys/class/net/$PF1/device/sriov_numvfs
>>>
>>> Within a few cycles the ice PF and iavf VF log:
>>>
>>>    Failed to set VSI 25 as the default forwarding VSI, error -22
>>>    Turning on/off promiscuous mode for VF 63 failed, error: -22
>>>    PF returned error -53 (IAVF_ERR_ADMIN_QUEUE_ERROR) to our request 14
>>>
>>> This cleanup used to live in ice_vsi_release() but was dropped by the
>>> referenced refactor. Restore it. Clear the default forwarding VSI rule
>>> in ice_vsi_release() when this VSI owns it, which covers every teardown
>>> path.
>>>
>>> Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
>>> Signed-off-by: Petr Oros <poros@redhat.com>
>>> ---
>>>   drivers/net/ethernet/intel/ice/ice_lib.c | 3 +++
>>>   1 file changed, 3 insertions(+)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
>>> index 2717cc31bff8fe..408464434506ef 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
>>> @@ -2872,6 +2872,9 @@ int ice_vsi_release(struct ice_vsi *vsi)
>>>           return -ENODEV;
>>>       pf = vsi->back;
>>>   +    if (ice_is_vsi_dflt_vsi(vsi))
>>> +        ice_clear_dflt_vsi(vsi);
>> In the referenced commit, the chunk of code that contained these missing 2 lines
>> was moved to ice_vsi_decfg(). It also sounds like a good place for them and will
>> be called from ice_vsi_release(). Are you sure we should place them directly in
>> ice_vsi_release() instead?
> No, ice_vsi_decfg() is not a good place for them because it is not
> release only. It also runs on the rebuild and reconfig paths
> (ice_vsi_rebuild(), ice_vf_reconfig_vsi(), the ice_vsi_cfg() error
> path), where the VSI is reconfigured in place and stays alive, so it
> can still be the default VSI afterwards.
> 
> Before the refactor the release-path clear lived only in
> ice_vsi_release() and the old ice_vsi_rebuild() never cleared it.
> Putting it in ice_vsi_decfg() would also clear the default VSI whenever
> the default VSI itself is reset or reconfigured, which the original
> code never did. ice_vsi_release() keeps it to the case where the owning
> VSI is actually torn down, and the ice_is_vsi_dflt_vsi() guard makes it
> a no-op everywhere else.
> 
> So I would prefer to keep it in ice_vsi_release().
> 
> Regards,
> 
> Petr

Thanks for the writeup, sounds reasonable.

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>

> 
>> Thanks,
>> Marcin
>>
>>> +
>>>       if (test_bit(ICE_FLAG_RSS_ENA, pf->flags))
>>>           ice_rss_clean(vsi);
>>>   
>>
> 

