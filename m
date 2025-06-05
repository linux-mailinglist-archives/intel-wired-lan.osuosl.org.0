Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E1FACEC14
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Jun 2025 10:37:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 030C2810C8;
	Thu,  5 Jun 2025 08:37:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ofJGKXLdpS55; Thu,  5 Jun 2025 08:37:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF278834BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749112625;
	bh=h496BuLr/8u+a0cQhezcwOBHMfwsNmWHYbX+ni65E4M=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=37yJ6AYnSCh+a6RTRp+OAnjKq1GgQMcNiohNHrcH+AK75lcVgsdc9uE8nEokW9sJD
	 NQWXWMhe/f9c9r3UyHCZ0eqnYo9wXXQLcXJHU4YjfEZxiNh9laD30rrI0GWV9Y+0Fx
	 rKzCk8B5HkcWT/TxCC4n/I8dq7TOkOQi6sKaJiSlllRNZ1AqoU4yxYg9xddT7qFWHk
	 ZwFIVqdqVa7UXkZh5oHpuHmHDaDShFlly/Rdzo9bxS2qWDux+rXzhQLpLAE5eyZKVG
	 UMzPNDwvru0bHpsmoIZnd2J2yhscERfUUtikdhecNv0L9kOWL5PQDmUX2w4R16oVIY
	 Zp44DpeFvhBJQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF278834BB;
	Thu,  5 Jun 2025 08:37:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B9ABD1A6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jun 2025 08:37:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9ED8460813
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jun 2025 08:37:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uMRZyuXpLVKy for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Jun 2025 08:37:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EAB1C606C2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EAB1C606C2
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EAB1C606C2
 for <intel-wired-lan@osuosl.org>; Thu,  5 Jun 2025 08:37:01 +0000 (UTC)
Received: from [172.18.249.96] (ip-185-104-138-50.ptr.icomera.net
 [185.104.138.50])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A340D61E6478F;
 Thu, 05 Jun 2025 10:36:46 +0200 (CEST)
Message-ID: <66679114-c63b-43e1-bdf9-bd227602607b@molgen.mpg.de>
Date: Thu, 5 Jun 2025 10:36:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
Cc: intel-wired-lan@osuosl.org, ValdikSS <iam@valdikss.org>
References: <20250605070617.184882-1-vitaly.lifshits@intel.com>
 <77a2ba00-174a-41f5-83ed-e3ffe86dff7f@molgen.mpg.de>
Content-Language: en-US
In-Reply-To: <77a2ba00-174a-41f5-83ed-e3ffe86dff7f@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] igc: disable L1.2
 PCI-E link substate to avoid performance issue
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

[two additions]

Am 05.06.25 um 10:26 schrieb Paul Menzel:
> [Cc: +iam@valdikss.org]

Remove again, as it does not seem valid anymore.

> Dear Vitaly,
> 
> 
> Thank you for your patch.
> 
> Am 05.06.25 um 09:06 schrieb Vitaly Lifshits:
>> I226 devices advertise support for the PCI-E link L1.2 substate. However,
>> due to a hardware limitation, the exit latency from this low-power state
>> is longer than the packet buffer can tolerate under high traffic
>> conditions. This can lead to packet loss and degraded performance.
> 
> It’d be great if you could add details about the exit latency times.
> 
> Despite, you referencing some of the problem report in the Link: tag, 
> that message is badly formatted, as lines are wrapped. As you have the 
> details about the problem currently in your had, it’d be great if you 
> added the report details too. Another advantage is, that the commit 
> message would be self-contained, and people would get more idea about it 
> without requiring Internet access or loading an HTML page.
> 
>> To mitigate this, disable the L1.2 substate during both probe and resume
>> flows.
> 
> Were you able to reproduce the problem or only the reporter?

Also the power usage implications should be documented.

>> Link: https://lore.kernel.org/intel-wired- 
>> lan/15248b4f-3271-42dd-8e35-02bfc92b25e1@intel.com
>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>> Fixes: 43546211738e ("igc: Add new device ID's")
>> ---
>>   drivers/net/ethernet/intel/igc/igc_main.c | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ 
>> ethernet/intel/igc/igc_main.c
>> index 27575a1e1777..65ec705eac33 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -7074,6 +7074,8 @@ static int igc_probe(struct pci_dev *pdev,
>>       const struct igc_info *ei = igc_info_tbl[ent->driver_data];
>>       int err;
>> +    pci_disable_link_state(pdev, PCIE_LINK_STATE_L1_2);
>> +
> 
> Aren’t you disabling this unconditionally now? Also, a comment would be 
> nice, why this is disabled.
> 
>>       err = pci_enable_device_mem(pdev);
>>       if (err)
>>           return err;
>> @@ -7498,6 +7500,8 @@ static int __igc_resume(struct device *dev, bool 
>> rpm)
>>       pci_enable_wake(pdev, PCI_D3hot, 0);
>>       pci_enable_wake(pdev, PCI_D3cold, 0);ValdikSS <iam@valdikss.org.
>> +    pci_disable_link_state(pdev, PCIE_LINK_STATE_L1_2);
>> +
>>       if (igc_init_interrupt_scheme(adapter, true)) {
>>           netdev_err(netdev, "Unable to allocate memory for queues\n");
>>           return -ENOMEM;
>> @@ -7623,6 +7627,7 @@ static pci_ers_result_t igc_io_slot_reset(struct 
>> pci_dev *pdev)
>>           pci_enable_wake(pdev, PCI_D3hot, 0);
>>           pci_enable_wake(pdev, PCI_D3cold, 0);
>> +        pci_disable_link_state_locked(pdev, PCIE_LINK_STATE_L1_2);
>>           /* In case of PCI error, adapter loses its HW address
>>            * so we should re-assign it here.
>>            */
> 
> 
> Kind regards,
> 
> Paul
