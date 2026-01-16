Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 169F0D37AA8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jan 2026 18:49:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2453160DBC;
	Fri, 16 Jan 2026 17:49:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qg_xgeNkEMkC; Fri, 16 Jan 2026 17:49:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9170560DC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768585741;
	bh=huCUD7bs8+g4aaXCnNw/cJq5EI/Xq5B+FBa2TB80bVY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PisEHs8K8qgDhUzt7XnEeL65csxc6EShCTlp5Lvzpgm/EZepoLX3r1f/sbkWgaaJK
	 aNdU/TE303gJ8FTpAw0+NVf5wk5LwDi3k5/vD+Bb0x3YorLnqQbNYwjxhZrWMVu1cY
	 koo2LfdbVzC2OKCfVbS7tVhqv/Q40EbDmGOJGFMqX+HG9/NeSLmyO3ZE9WIrYBShqo
	 NiHhHyMfElq4S1FcQVr80wUPz/cC4oQgNiA8HPgutnkuvAFe2x4cLZxtP+dbl7EI1p
	 RALhMZRp5Bzzv2ydLsjXcwE2MPJvgI/b/AD9PKP3LCYe35d9H+nqzQfYpXs+vc4oDV
	 jn0buzetKoVIQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9170560DC1;
	Fri, 16 Jan 2026 17:49:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 974B9223
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 17:48:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 87E9D406EB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 17:48:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aGawdx6q1Pcm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jan 2026 17:48:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D52C04022A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D52C04022A
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D52C04022A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 17:48:57 +0000 (UTC)
Received: from [10.0.54.236] (unknown [62.214.191.67])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 207344C2887195;
 Fri, 16 Jan 2026 18:48:46 +0100 (CET)
Message-ID: <62ad756f-f507-4030-9b01-aeb3ad3f89ea@molgen.mpg.de>
Date: Fri, 16 Jan 2026 18:48:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: Sreedevi Joshi <sreedevi.joshi@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20260113180113.2478622-1-sreedevi.joshi@intel.com>
 <f7f38dbf-3c5e-428d-a4c3-19f3a9ce18ee@molgen.mpg.de>
Content-Language: en-US
In-Reply-To: <f7f38dbf-3c5e-428d-a4c3-19f3a9ce18ee@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: Fix flow rule delete
 failure due to invalid validation
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

[Cc: Remove Ahmed as address bounces]

Am 16.01.26 um 18:39 schrieb Paul Menzel:

> Dear Sreedevi,
> 
> 
> Thank you for your patch.
> 
> Am 13.01.26 um 19:01 schrieb Sreedevi Joshi:
>> When deleting a flow rule using "ethtool -N <dev> delete <location>",
>> idpf_sideband_action_ena() incorrectly validates fsp->ring_cookie even
>> though ethtool doesn't populate this field for delete operations. The
>> uninitialized ring_cookie may randomly match RX_CLS_FLOW_DISC or
>> RX_CLS_FLOW_WAKE, causing validation to fail and preventing legitimate
>> rule deletions. Remove the unnecessary sideband action enable check and
>> ring_cookie validation during delete operations since action validation
>> is not required when removing existing rules.
>>
>> Fixes: ada3e24b84a0 ("idpf: add flow steering support")
>> Signed-off-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> ---
>>   drivers/net/ethernet/intel/idpf/idpf_ethtool.c | 3 ---
>>   1 file changed, 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/ 
>> net/ethernet/intel/idpf/idpf_ethtool.c
>> index 2efa3c08aba5..49cefb973f4d 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
>> @@ -307,9 +307,6 @@ static int idpf_del_flow_steer(struct net_device 
>> *netdev,
>>       vport_config = vport->adapter->vport_config[np->vport_idx];
>>       user_config = &vport_config->user_config;
>> -    if (!idpf_sideband_action_ena(vport, fsp))
>> -        return -EOPNOTSUPP;
>> -
>>       rule = kzalloc(struct_size(rule, rule_info, 1), GFP_KERNEL);
>>       if (!rule)
>>           return -ENOMEM;
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> 
> 
> Kind regards,
> 
> Paul
