Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJ7AENj7wGkwPAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 09:37:44 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3012EE558
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 09:37:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 040C060736;
	Mon, 23 Mar 2026 08:37:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tuTMD9UJa7ih; Mon, 23 Mar 2026 08:37:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B75E606FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774255061;
	bh=PTAb3BalGSZwPh5wtxjIj5LdP1IEByYqFV8DXSZ3Z9E=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IWimxAKXwskpf3Y5ZRu0ksXToPEHDAG5NpegHDtdnirLLuD8+4PBqxEQ7RDYGBGMg
	 Qx9lk1y8Mw4hDmccTy7d1LWzyWPYaZIjDX5zpcCw0r/KKKfoXK7vcu7uLDyFy53jqW
	 hm/WnXmGLZ6WQBoPGOqgNet5pi91cZmk9tWcBifk3mFTbfo8D7zK0omAL0kD/Xq05M
	 qRb4HqcbtsaBi7VxcXLG5AAde/9dJenxUvo5jeiPTDcekBANTTbFB3zCGkF+FgDQHi
	 O2owMRB9soGJGErRovSz/pETIPby/eGTvuCBLPBvgv7ryZFz8y9XDsOavw1xaVAoSK
	 egbG/1fl/9CRw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B75E606FA;
	Mon, 23 Mar 2026 08:37:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8ECE7F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 08:37:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 13D48821D2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 08:37:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rO6pMogwARJ4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2026 08:37:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2D63882244
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D63882244
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2D63882244
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 08:37:36 +0000 (UTC)
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-618-uedlVWMOP5eV6OLY14JIJQ-1; Mon, 23 Mar 2026 04:37:33 -0400
X-MC-Unique: uedlVWMOP5eV6OLY14JIJQ-1
X-Mimecast-MFC-AGG-ID: uedlVWMOP5eV6OLY14JIJQ_1774255052
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-4870221e1fdso17570685e9.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 01:37:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774255052; x=1774859852;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=PTAb3BalGSZwPh5wtxjIj5LdP1IEByYqFV8DXSZ3Z9E=;
 b=GkS1lq3OmRtKP6ffdsJzQ+30jjKg/IY0rs1DdY4qhsVCj/p2RRBiOh/qbBbjvGjcuM
 31JPNg4OK8mPqVN6Xd/3cGu/3RpMTcTeVBobW86tQ3gGxqwUYXm+dRFcafdXchwavgJJ
 IFcZYiahRnmMq27RuZ69paIOkOQvIEtsclMIXHdHSHCjhXg+7XolybE4K69CF8KnUhVd
 RIVAeZ60MU2BY1vXBwKjhGwrQU/qF7K0gJw6GaRxwFkrJF2GMGMummqHmgHKGECjyANj
 6Y+t9Or5CfhaXUTjmUY4AQKvturuIsHWf1PnNDw43VSGS/HGIapmYhxWWstlbxtSThiK
 Pncw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVvC7lytnEZy8X6B01XeKSbcZuQC3UOxs32m48mGMSbaLn/uJHRNc5ldFHvfhSui9qw5Jjv2PRKndFhzT2hduU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxF9EzBwWdHr0BqLWnKIqfM8cZBbR9uEZDa0OzG5cB2AqTUNfal
 8WnD89ulKvtd95jA1VEbqe7KA8T67VTBFaoHz9BUDBdshFKZZlgMCn7Ce6rTW/UcrMG6y/Y/BZU
 9z48xbKmrXDVWsM5zjctk5NzxYGk6a6mtu+n9YhK3Tzt20PXLx8GnYHOEfLZtl/wbk6cOR2I=
X-Gm-Gg: ATEYQzw/PjQXqStJZeUWlKi05Xu3TrOfFMJ5/Ni2tRZuRcPUvZPTsYWydzeKHdJq2m4
 rSAya+c9aatDt8n15lKC7aMm0EtjQ/1x0J8Kb34tOvVBxte/T/gDPYolv113qrWczPhGn9QxXaJ
 q5DqjxZsJQIeyMEMzK7w5FGAFcsk2UVRSg0Yw4/dsb7+rjIx1/4c1zMI7bVdu1E+xaiUOYm4l7E
 itaU5I3YPM53l/Cg8QrKNTO/pfCXEsuGEk1una3lPV1I7VRxMaQFA2hEwqMJpbNuBagbLpka7iB
 uCWQLQhNsiFaR9bz6ypOEl8U7B3OnveLLNFpkaU5G3QFSkNR12AKnGvGC5XQFjmqKxdcEvn7TyZ
 oz8Eaiz308y4b+lhE7fH1
X-Received: by 2002:a05:600c:3b94:b0:486:faa8:9e4 with SMTP id
 5b1f17b1804b1-486fe8ef087mr180279145e9.12.1774255051957; 
 Mon, 23 Mar 2026 01:37:31 -0700 (PDT)
X-Received: by 2002:a05:600c:3b94:b0:486:faa8:9e4 with SMTP id
 5b1f17b1804b1-486fe8ef087mr180278855e9.12.1774255051520; 
 Mon, 23 Mar 2026 01:37:31 -0700 (PDT)
Received: from [192.168.2.83] ([46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-486fe879d37sm98149575e9.1.2026.03.23.01.37.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Mar 2026 01:37:30 -0700 (PDT)
Message-ID: <c2fa7a08-b75d-49a9-8725-fc98217c2dbe@redhat.com>
Date: Mon, 23 Mar 2026 09:37:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen
 <anthony.l.nguyen@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20260320135326.1171433-1-poros@redhat.com>
 <310379eb-9b99-444d-bf02-2bde3bd79374@molgen.mpg.de>
From: Petr Oros <poros@redhat.com>
In-Reply-To: <310379eb-9b99-444d-bf02-2bde3bd79374@molgen.mpg.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: qFinwY1nxfrKZz30IQlsVjp5EyU0nA5lj7H_EyBBzFg_1774255052
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1774255054;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PTAb3BalGSZwPh5wtxjIj5LdP1IEByYqFV8DXSZ3Z9E=;
 b=HtFgfQmBi0Kgsx6mBEit9386JungFE6ZnUdX/SLlXJmAOP3V98RjCVaiK8O4dZ4E4XLJH7
 U02YTQE4xjrA29THDNXYquM/hU2l7tsVEAKya5gekoNxA7QriR6mdZAXo/FPRgH8pGSRvw
 Av2OSUOJU+Y790tW1GqYjnvT7sIoqfw=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=HtFgfQmB
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] iavf: fix wrong VLAN mask for
 legacy Rx descriptors L2TAG2
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
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mpg.de:email,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:pmenzel@molgen.mpg.de,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:mateusz.polchlopek@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:netdev@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 6C3012EE558
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/20/26 15:29, Paul Menzel wrote:
> Dear Petr,
>
>
> Thank you for your patch.
>
> Am 20.03.26 um 14:53 schrieb Petr Oros:
>> The IAVF_RXD_LEGACY_L2TAG2_M mask was incorrectly defined as
>> GENMASK_ULL(63, 32), extracting 32 bits from qw2 instead of the
>> 16-bit VLAN tag. In the legacy Rx descriptor layout, the 2nd L2TAG2
>> (VLAN tag) occupies bits 63:48 of qw2, not 63:32.
>>
>> The oversized mask causes FIELD_GET to return a 32-bit value where the
>> actual VLAN tag sits in bits 31:16. When this value is passed to
>> iavf_receive_skb() as a u16 parameter, it gets truncated to the lower
>> 16 bits (which contain the 1st L2TAG2, typically zero). As a result,
>> __vlan_hwaccel_put_tag() is never called and software VLAN interfaces
>> on VFs receive no traffic.
>>
>> This affects VFs behind ice PF (VIRTCHNL VLAN v2) when the PF
>> advertises VLAN stripping into L2TAG2_2 and legacy descriptors are
>> used.
>>
>> The flex descriptor path already uses the correct mask
>> (IAVF_RXD_FLEX_L2TAG2_2_M = GENMASK_ULL(63, 48)).
>
> Do you have a reproducer to verify the fix?

Yes, i have

  1. Create 2 VFs on ice PF (echo 2 > sriov_numvfs)
  2. Disable spoofchk on both VFs
  3. Move each VF into a separate network namespace
  4. On each VF: create VLAN interface (e.g. vlan 198), assign IP, bring up
  5. Set rx-vlan-offload OFF on both VFs
  6. Ping between VLAN interfaces → expect PASS
      (VLAN tag stays in packet data, kernel matches in-band)
  7. Set rx-vlan-offload ON on both VFs
  8. Ping between VLAN interfaces → expect FAIL if bug present
      (HW strips VLAN tag into descriptor L2TAG2 field,
       wrong mask extracts bits 47:32 instead of 63:48,
       truncated to u16 → zero, __vlan_hwaccel_put_tag() never called,
       packet delivered to parent interface, not VLAN interface)

>
>> Fixes: 2dc8e7c36d80 ("iavf: refactor iavf_clean_rx_irq to support 
>> legacy and flex descriptors")
>
> (That first entered Linux v6.15-rc1, and Linux 6.12 and 6.18 are LTS 
> series.)
>
The reproducer works but requires legacy Rx descriptors to be in use.
On modern ice + iavf with full PTP support, flex descriptors are always
negotiated and the buggy legacy path is never reached.

Flex descriptors require all of the following:
   - CONFIG_PTP_1588_CLOCK enabled in kernel config
   - VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC granted by PF
   - PTP capabilities negotiated (VIRTCHNL_VF_CAP_PTP)
   - VIRTCHNL_1588_PTP_CAP_RX_TSTAMP supported
   - VIRTCHNL_RXDID_2_FLEX_SQ_NIC present in DDP profile

If any of these conditions is not met, iavf_select_rx_desc_format()
falls back to legacy descriptors (RXDID=1) and the wrong L2TAG2 mask is hit.

In our kernel we ended up in a state where the iavf Rx path refactor was
backported but the full PTP support chain was not. Without PTP,
iavf_ptp_cap_supported() returns false and flex descriptors
are never selected, exposing the bug.

Regards,

Petr


>> Signed-off-by: Petr Oros <poros@redhat.com>
>> ---
>>   drivers/net/ethernet/intel/iavf/iavf_type.h | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h 
>> b/drivers/net/ethernet/intel/iavf/iavf_type.h
>> index 1d8cf29cb65ac5..5bb1de1cfd33b1 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_type.h
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
>> @@ -277,7 +277,7 @@ struct iavf_rx_desc {
>>   /* L2 Tag 2 Presence */
>>   #define IAVF_RXD_LEGACY_L2TAG2P_M        BIT(0)
>>   /* Stripped S-TAG VLAN from the receive packet */
>> -#define IAVF_RXD_LEGACY_L2TAG2_M        GENMASK_ULL(63, 32)
>> +#define IAVF_RXD_LEGACY_L2TAG2_M        GENMASK_ULL(63, 48)
>>   /* Stripped S-TAG VLAN from the receive packet */
>>   #define IAVF_RXD_FLEX_L2TAG2_2_M        GENMASK_ULL(63, 48)
>>   /* The packet is a UDP tunneled packet */
>
> Nice find.
>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
>
>
> Kind regards,
>
> Paul
>

