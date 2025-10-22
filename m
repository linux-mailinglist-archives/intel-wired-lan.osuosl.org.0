Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9601BBFBD5F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 14:25:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0FE760EA2;
	Wed, 22 Oct 2025 12:25:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3KP4n1mNs6il; Wed, 22 Oct 2025 12:25:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 380AA60F7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761135943;
	bh=ehkVHxFhZUW7YsWUJhtB/mozUqKplRy67Lv0Ol9Qe8w=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HwcxQgbOkD8n9XNE+p0ozpJLSkrPSEl8/tv03ybytwV5l/3W0v8aKFpBVdhHD0lCp
	 RCftCvr4si0ZelEW7kOs/gjqT+77K7INuKSiQ9TzvuEWTHZ320ZVrVRku37ZQQvbPc
	 DzELuyKInGn23JcwvZNQhA6qQ6RzuJPSSPFIn/kg4F1iY3NakVilB0giZBBea+zARo
	 cYCY1LZ8scNodl6GUmTyIGVnjQKc2YXbaIo+9qIwEKJRHbDkfkOtiHWWeOGt2dVjss
	 73BpWtlJVE2Z3DdNfCVlEIcvHSCi3aS8IjE2LzB6wLn0sg+PZDfB3kyivHpETiiFOl
	 D+Yj/VyyC4Uug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 380AA60F7E;
	Wed, 22 Oct 2025 12:25:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8F56843F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 12:25:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 75D1440AEC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 12:25:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CmLMn8Co3Bc0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 12:25:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0E63A40AE7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E63A40AE7
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0E63A40AE7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 12:25:38 +0000 (UTC)
Received: from [134.104.50.123] (unknown [134.104.50.123])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id CCD6E6028F34B;
 Wed, 22 Oct 2025 14:25:06 +0200 (CEST)
Message-ID: <5578e792-2dd6-42db-8ad6-b12cd05c2617@molgen.mpg.de>
Date: Wed, 22 Oct 2025 14:24:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Robert Malz <robert.malz@canonical.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jamie Bainbridge <jamie.bainbridge@gmail.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Dennis Chen <dechen@redhat.com>,
 Przemyslaw Kitszel <przemyslaw.kitszel@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Anthony L Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
References: <20251021154439.180838-1-robert.malz@canonical.com>
 <0c62b505-abe7-474e-9859-a301f4104eeb@molgen.mpg.de>
 <IA3PR11MB89860CA0245498E6FF720E48E5F3A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <IA3PR11MB89860CA0245498E6FF720E48E5F3A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH] i40e: avoid redundant VF link state
 updates
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

Dear Alex,


Thank you for your input.

Am 22.10.25 um 14:06 schrieb Loktionov, Aleksandr:

>> -----Original Message-----
>> From: Paul Menzel <pmenzel@molgen.mpg.de>
>> Sent: Wednesday, October 22, 2025 1:49 PM

>> Am 21.10.25 um 17:44 schrieb Robert Malz:
>>> From: Jay Vosburgh <jay.vosburgh@canonical.com>
>>>
>>> Multiple sources can request VF link state changes with identical
>>> parameters. For example, Neutron may request to set the VF link state
>>> to
>>
>> What is Neutron?
>>
>>> IFLA_VF_LINK_STATE_AUTO during every initialization or user can issue:
>>> `ip link set <ifname> vf 0 state auto` multiple times. Currently, the
>>> i40e driver processes each of these requests, even if the requested
>>> state is the same as the current one. This leads to unnecessary VF
>>> resets and can cause performance degradation or instability in the VF
>>> driver - particularly in DPDK environment.
>>
>> What is DPDK?
>>
> I think Robert needs:
> - to expand acronyms in the commit message (Neutron → OpenStack Neutron, DPDK → Data Plane Development Kit).
> - to fix the comment style as per coding guidelines.
> - add a short note in the commit message about how to reproduce the issue.
> @Paul Menzel right?

Correct.

Maybe also mention how to force it, as there seems to be such an option 
judging from the diff.

>>> With this patch i40e will skip VF link state change requests when the
>>> desired link state matches the current configuration. This prevents
>>> unnecessary VF resets and reduces PF-VF communication overhead.
>>
>> Add a test (with `ip link …`) case to show, that it works now.
>>
>>> Co-developed-by: Robert Malz <robert.malz@canonical.com>
>>> Signed-off-by: Robert Malz <robert.malz@canonical.com>
>>> Signed-off-by: Jay Vosburgh <jay.vosburgh@canonical.com>
>>> ---
>>>    drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 12 ++++++++++++
>>>    1 file changed, 12 insertions(+)
>>>
>>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>>> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>>> index 081a4526a2f0..0fe0d52c796b 100644
>>> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>>> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>>> @@ -4788,6 +4788,7 @@ int i40e_ndo_set_vf_link_state(struct net_device *netdev, int vf_id, int link)
>>>    	unsigned long q_map;
>>>    	struct i40e_vf *vf;
>>>    	int abs_vf_id;
>>> +	int old_link;
>>>    	int ret = 0;
>>>    	int tmp;
>>>
>>> @@ -4806,6 +4807,17 @@ int i40e_ndo_set_vf_link_state(struct net_device *netdev, int vf_id, int link)
>>>    	vf = &pf->vf[vf_id];
>>>    	abs_vf_id = vf->vf_id + hw->func_caps.vf_base_id;
>>>
>>> +	/* skip VF link state change if requested state is already set */
>>> +	if (!vf->link_forced)
>>> +		old_link = IFLA_VF_LINK_STATE_AUTO;
>>> +	else if (vf->link_up)
>>> +		old_link = IFLA_VF_LINK_STATE_ENABLE;
>>> +	else
>>> +		old_link = IFLA_VF_LINK_STATE_DISABLE;
>>> +
>>> +	if (link == old_link)
>>> +		goto error_out;
>>
>> Should a debug message be added?
> 
> I think adding one would be redundant since skipping identical state
> changes is expected behavior.

My thinking was, if something does not work as expected for a user, like 
issuing the command to force a reset, that it might be useful to see 
something in the logs.

>>> +
>>>    	pfe.event = VIRTCHNL_EVENT_LINK_CHANGE;
>>>    	pfe.severity = PF_EVENT_SEVERITY_INFO;

Kind regards,

Paul
