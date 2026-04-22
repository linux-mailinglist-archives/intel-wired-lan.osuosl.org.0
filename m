Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eLb6K8se6Wl+UgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2026 21:17:31 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E8544A138
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2026 21:17:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF1B040239;
	Wed, 22 Apr 2026 19:17:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MwWitFNkT6X0; Wed, 22 Apr 2026 19:17:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 555644023F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776885448;
	bh=c58WyJAsGl6Zxg673v15wl6Ol9ueBA67C9y/ZIOdNaQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GT2xei8yJLu3wxRmKPbvxEVsOm0tZgquDKqPmlMsNdRurjqyTCZ+Its/+NrSKLMew
	 8ptKqwrgYy1kx9EFcWFYzn4afFLXdIlDKI0glxvM7j2HwtjMWxd2Mry3dcqnAPXuQ7
	 y6yc4cQDFIODKyUMI1Y6aTZtYEnyJNi+R331JCS0qd0ijWzn2UyLz31icyFE5JHSJK
	 PjCKHjBYwGwomkP4sEu8qErvuSRE9oSagavo6/V1HvXbsHQWgCzupDg9hkkyNxSiWO
	 aMOoHwB+8YrJIo7BHxUi2F3sNIPTq1PWVus7/EstH8160hUzUZ+zqgxTDARFRdxoPJ
	 DSH66CImiiCdw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 555644023F;
	Wed, 22 Apr 2026 19:17:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 713CC24D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 19:17:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5738D805DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 19:17:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t87Ge_E2y0EV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Apr 2026 19:17:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 33840805D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33840805D8
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 33840805D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 19:17:24 +0000 (UTC)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-47-te_PElKjOUqx2uzYLk70UQ-1; Wed, 22 Apr 2026 15:17:21 -0400
X-MC-Unique: te_PElKjOUqx2uzYLk70UQ-1
X-Mimecast-MFC-AGG-ID: te_PElKjOUqx2uzYLk70UQ_1776885440
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-4411a572dc5so3035707f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 12:17:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776885440; x=1777490240;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=c58WyJAsGl6Zxg673v15wl6Ol9ueBA67C9y/ZIOdNaQ=;
 b=iNfm+JoeCS+43C1EI1tpN1T3ahl1wg9CpeOYnSZQzk2Z/BC7Nt3L6E1sgXP8S28Dgq
 hKxSgo2+kq2HnuQjngTh90OW3IzaPzPea4ANi+YAfwLXdi09/RqmG3AXb0kwRo1dQGwc
 FJbmvu7o8pzB5dOxKVJHg4PhUDtdbHT3+qkmkkp9a5OYalGMaBevfXAlGEicT4mAhHGq
 qoXcZyb/zveZHuSg4eVDrtY8zX7mxqGOiQED8zf0ryhYTuxxKiP7I3zq9j5pbUIViEgc
 hK3buG+3tVO/uvwRxOWKtVGeW0u/oH75PhISpM8wNaazFqm1GLDvbNMzkfPWLcdeoPm9
 BVRw==
X-Forwarded-Encrypted: i=1;
 AFNElJ/tK9EiEKkP+9OXf5EGtkA06WsNzSa81N5MXGVh5w0Jz2gWLQ/q8vcKGPGLjbGRGmHcyjDMkAMEDzlciIJfxLY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwZDFTmPq2h60Qlu4g4QICLwSbsTI+J9JKeGkL4TCYQs6bvF7jR
 3F9dFpMQkhvwXFHHdUSKLPQTsDVPMQpYZSANAH687MP3b7MEcI0A+AmWMB84S99hirhP/UD+cGw
 QNQA5BzS+Bv9QhZpO37hRe0nJs1/DKus0xTygfaKHPudIMfrpNW1d/q9sWZxobpZQrgh2y20=
X-Gm-Gg: AeBDietDI/qEVFXz6wRBgV6bWDBBMgV8uLmBu1U2EyNcb6CqOOlZEE6aZg9j8iIZGJZ
 ObbqEb9E/W3KP/PTpmm9Ql8eBdylumkZPj7dBM1qzTcxB36zbfPkuicSsqrgDf1QnOhhta0uBhI
 yedeA6aWPQuECFbknU1y1K7OPc+VK2WWhwpo0tNnd0bsCdxGuHN8UZgYfhjKBt+Lj6lLsDsmGP4
 w1rhhjbzuMyJlkFP2yFRiO32fcY4HLV5mOX/zNJLcQF3l6Xt7y0mcaMm3mQh2OKX9+WMlXfBjOP
 F+f8vDQjqKNzKBkIQZQD83P2gOJ21ZVFg1CExOCol8Y62CuWr716tbAztAleLpDV14F67Rx7DEZ
 9Ltp5hFlp4sqMbAUckFC/0I2JYpjRlTA=
X-Received: by 2002:a05:600c:2e42:b0:489:1fa4:50c6 with SMTP id
 5b1f17b1804b1-4891fa451bamr103358825e9.20.1776885440432; 
 Wed, 22 Apr 2026 12:17:20 -0700 (PDT)
X-Received: by 2002:a05:600c:2e42:b0:489:1fa4:50c6 with SMTP id
 5b1f17b1804b1-4891fa451bamr103358605e9.20.1776885439968; 
 Wed, 22 Apr 2026 12:17:19 -0700 (PDT)
Received: from [192.168.2.83] ([46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43fe4e44f69sm49650997f8f.25.2026.04.22.12.17.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Apr 2026 12:17:19 -0700 (PDT)
Message-ID: <a3243a70-4163-41f6-8337-83da1972f871@redhat.com>
Date: Wed, 22 Apr 2026 21:17:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Daniel Zahka <daniel.zahka@gmail.com>,
 Paul Greenwalt <paul.greenwalt@intel.com>,
 Dave Ertman <david.m.ertman@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 jacob.e.keller@intel.com, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20260413191420.3524013-1-poros@redhat.com>
 <20260415163003.GP772670@horms.kernel.org>
From: Petr Oros <poros@redhat.com>
In-Reply-To: <20260415163003.GP772670@horms.kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 2kM5cJUloSGe1Uiudk9QNIcrfyS68DBLHVBQKbcZ5Vw_1776885440
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1776885443;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=c58WyJAsGl6Zxg673v15wl6Ol9ueBA67C9y/ZIOdNaQ=;
 b=Ytr94msmHisYHuCoYauxPZlVBrZu21ptqAzPFzzQBU4nGZGPFjZvZz44kez0frB75aCPft
 eZe7IqqW3NK/3DeCh2Pq6uR5BddVPTJWdvy1N77MQpxy1GOoT1N0/fjmZA6c4UDlZOUjLR
 WH4vnw5hXv8CM8Sc52j8a7rRXi6SbS8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Ytr94msm
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix infinite recursion
 in ice_cfg_tx_topo via ice_init_dev_hw
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,blackwall.org,gmail.com,linux.intel.com,lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksandr.loktionov@intel.com,m:razor@blackwall.org,m:daniel.zahka@gmail.com,m:paul.greenwalt@intel.com,m:david.m.ertman@intel.com,m:michal.swiatkowski@linux.intel.com,m:jacob.e.keller@intel.com,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,m:danielzahka@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
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
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 98E8544A138
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 4/15/26 18:30, Simon Horman wrote:
> On Mon, Apr 13, 2026 at 09:14:20PM +0200, Petr Oros wrote:
>> On certain E810 configurations where firmware supports Tx scheduler
>> topology switching (tx_sched_topo_comp_mode_en), ice_cfg_tx_topo()
>> may need to apply a new 5-layer or 9-layer topology from the DDP
>> package. If the AQ command to set the topology fails (e.g. due to
>> invalid DDP data or firmware limitations), the global configuration
>> lock must still be cleared via a CORER reset.
>>
>> Commit 86aae43f21cf ("ice: don't leave device non-functional if Tx
>> scheduler config fails") correctly fixed this by refactoring
>> ice_cfg_tx_topo() to always trigger CORER after acquiring the global
>> lock and re-initialize hardware via ice_init_hw() afterwards.
>>
>> However, commit 8a37f9e2ff40 ("ice: move ice_deinit_dev() to the end
>> of deinit paths") later moved ice_init_dev_hw() into ice_init_hw(),
>> breaking the reinit path introduced by 86aae43f21cf. This creates an
>> infinite recursive call chain:
>>
>>    ice_init_hw()
>>      ice_init_dev_hw()
>>        ice_cfg_tx_topo()         # topology change needed
>>          ice_deinit_hw()
>>          ice_init_hw()           # reinit after CORER
>>            ice_init_dev_hw()     # recurse
>>              ice_cfg_tx_topo()
>>                ...               # stack overflow
>>
>> Fix by moving ice_init_dev_hw() back out of ice_init_hw() and calling
>> it explicitly from ice_probe() and ice_devlink_reinit_up(). The third
>> caller, ice_cfg_tx_topo(), intentionally does not need ice_init_dev_hw()
>> during its reinit, it only needs the core HW reinitialization. This
>> breaks the recursion cleanly without adding flags or guards.
>>
>> The deinit ordering changes from commit 8a37f9e2ff40 ("ice: move
>> ice_deinit_dev() to the end of deinit paths") which fixed slow rmmod
>> are preserved, only the init-side placement of ice_init_dev_hw() is
>> reverted.
>>
>> Fixes: 8a37f9e2ff40 ("ice: move ice_deinit_dev() to the end of deinit paths")
>> Signed-off-by: Petr Oros <poros@redhat.com>
> Hi Petr,
>
> I don't intended to delay this patch.
> But could you follow-up by looking over the AI generated
> review of this patch on sashiko.dev?
>
> Thanks!
>
Hi Simon,

Thanks, the sashiko.dev concern is valid. ice_init_dev_hw() swallowing
-ENODEV from the torn-down hw is a latent UAF independent of the
recursion fix here. I will send a follow-up patch that propagates
-ENODEV to abort probe cleanly.

Regards,
Petr

