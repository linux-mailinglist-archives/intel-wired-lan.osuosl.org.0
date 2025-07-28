Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 254F0B135D8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Jul 2025 09:49:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C7FC440F52;
	Mon, 28 Jul 2025 07:49:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8AmpdBvl7HHk; Mon, 28 Jul 2025 07:49:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E7C340F5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753688977;
	bh=StdH6hiQPNUOElU8ehVMiBVCL02ksTLORmlWk7YtvsI=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dWTEVXxBXWzL5sUCa/0gEeyHo3UmOwfkcadx+nfZAGWuoxawofdoBsa9EJQz1aFqe
	 8o9qYQA/ObLQdSJEv7PXW9RJKY4K4xW0orKYtMnfvANA1Lo8hCT4ahBZod7nq4t08g
	 lgtJ1QJLDsWgE9uxq3gg6MpeGotbnibPMrlGM+Af4OpDlpkIJtV3fhmHMoRsRcnDql
	 FJIlPZlsE1XesssWBvU7e1f0jlYMS6vXA9Q0g92+y6Ec9Jxpdyk5K0h1cUdbu6lsRF
	 OY0AQWj558GRw8cFIqirbYFYyqUfHMf2PfKSWbKOVGSSlIux34XAq5y0jgqRQbaKnM
	 ECAAHAtyFXHdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E7C340F5B;
	Mon, 28 Jul 2025 07:49:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1587CDA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jul 2025 07:49:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 074EF40F4F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jul 2025 07:49:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dT1gUkEPIaGC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Jul 2025 07:49:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7C7E040F48
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C7E040F48
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7C7E040F48
 for <intel-wired-lan@osuosl.org>; Mon, 28 Jul 2025 07:49:33 +0000 (UTC)
Received: from [192.168.2.202] (p57bd9d4f.dip0.t-ipconnect.de [87.189.157.79])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 46E5561E64849;
 Mon, 28 Jul 2025 09:49:23 +0200 (CEST)
Message-ID: <3836001e-e2e3-4333-b2ad-141e9edf57ce@molgen.mpg.de>
Date: Mon, 28 Jul 2025 09:49:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: ValdikSS <iam@valdikss.org.ru>
Cc: intel-wired-lan@osuosl.org, vitaly.lifshits@intel.com,
 linux-pci@vger.kernel.org
References: <8d1e606d-7320-4f02-98fe-e899702ac6e7@molgen.mpg.de>
 <20250727204331.564435-1-iam@valdikss.org.ru>
 <c3713450-605d-4b1e-ae41-bbbcaedc946f@molgen.mpg.de>
 <b99f8cdd-4adc-451e-9ccf-ba40f34fdb58@valdikss.org.ru>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <b99f8cdd-4adc-451e-9ccf-ba40f34fdb58@valdikss.org.ru>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH] igc: fix disabling L1.2 PCI-E link
 substate on I226 on init
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

Dear ValdikSS,


Am 28.07.25 um 09:24 schrieb ValdikSS:
> On 28.07.2025 10:03 AM, Paul Menzel wrote:

>> Thank you for your patch. Please make sure to use `git format-patch - 
>> v<N>` (reroll count) to mark the iteration of the patch.
>>
>> Am 27.07.25 um 22:43 schrieb ValdikSS:
>>> Device ID comparison in igc_is_device_id_i226 is performed before
>>> the ID is set, resulting in always failing check on init.
>>>
>>> Before the patch:
>>> * L1.2 is not disabled on init
>>> * L1.2 is properly disabled after suspend-resume cycle
>>>
>>> With the patch:
>>> * L1.2 is properly disabled both on init and after suspend-resume
>>>
>>> How to test:
>>> Connect to the 1G link with 300+ mbit/s Internet speed, and run
>>> the download speed test, such as:
>>>
>>>      curl -o /dev/null http://speedtest.selectel.ru/1GB
>>>
>>> Without L1.2 disabled, the speed would be no more than ~200 mbit/s.
>>> With L1.2 disabled, the speed would reach 1 gbit/s.
>>> Note: it's required that the latency between your host and the remote
>>> be around 3-5 ms, the test inside LAN (<1 ms latency) won't trigger the
>>> issue.
>>
>> `sudo lspci -vv -s <x>` can be used to check L1.2 enablement under 
>> `L1SubCtl1`.
> 
> Is this what you suggest me to include and send the patch again?

I’d have added it, but others might say, it’s common knowledge, so *no 
need* to resend, no that it’s also documented in the list archive.

(Did you check, that L1.2 PCI-E link substate is disabled, or just the 
speed check.)

> I'd prefer not to be involved in the bug fixing process. I just sent a 
> patch because it works for me, as the suggestion for the fix. I did not 
> know it would require me to be involved in the process.

Yeah, it can be tedious. Sorry about that. As you sent the message 
tagged with [PATCH], I’d assumed you want it to be committed. (And it 
looks like it’s going to be as it adheres to all the requirements.) 
Thank you again!

>>> Link: https://lore.kernel.org/intel-wired-lan/15248b4f-3271-42dd-8e35-02bfc92b25e1@intel.com
>>> Fixes: 0325143b59c6 ("igc: disable L1.2 PCI-E link substate to avoid performance issue")
>>> Signed-off-by: ValdikSS <iam@valdikss.org.ru>
>>> Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>>> ---
>>>   drivers/net/ethernet/intel/igc/igc_main.c | 14 +++++++-------
>>>   1 file changed, 7 insertions(+), 7 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
>>> index 031c332f6..1b4465d6b 100644
>>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>>> @@ -7115,6 +7115,13 @@ static int igc_probe(struct pci_dev *pdev,
>>>       adapter->port_num = hw->bus.func;
>>>       adapter->msg_enable = netif_msg_init(debug, DEFAULT_MSG_ENABLE);
>>> +    /* PCI config space info */
>>> +    hw->vendor_id = pdev->vendor;
>>> +    hw->device_id = pdev->device;
>>> +    hw->revision_id = pdev->revision;
>>> +    hw->subsystem_vendor_id = pdev->subsystem_vendor;
>>> +    hw->subsystem_device_id = pdev->subsystem_device;
>>> +
>>>       /* Disable ASPM L1.2 on I226 devices to avoid packet loss */
>>>       if (igc_is_device_id_i226(hw))
>>>           pci_disable_link_state(pdev, PCIE_LINK_STATE_L1_2);
>>> @@ -7141,13 +7148,6 @@ static int igc_probe(struct pci_dev *pdev,
>>>       netdev->mem_start = pci_resource_start(pdev, 0);
>>>       netdev->mem_end = pci_resource_end(pdev, 0);
>>> -    /* PCI config space info */
>>> -    hw->vendor_id = pdev->vendor;
>>> -    hw->device_id = pdev->device;
>>> -    hw->revision_id = pdev->revision;
>>> -    hw->subsystem_vendor_id = pdev->subsystem_vendor;
>>> -    hw->subsystem_device_id = pdev->subsystem_device;
>>> -
>>>       /* Copy the default MAC and PHY function pointers */
>>>       memcpy(&hw->mac.ops, ei->mac_ops, sizeof(hw->mac.ops));
>>>       memcpy(&hw->phy.ops, ei->phy_ops, sizeof(hw->phy.ops));
>>
>> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>

Kind regards,

Paul
