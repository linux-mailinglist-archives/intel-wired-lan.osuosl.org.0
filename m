Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6DA65A99A
	for <lists+intel-wired-lan@lfdr.de>; Sun,  1 Jan 2023 11:34:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC07F60BE6;
	Sun,  1 Jan 2023 10:34:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC07F60BE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672569271;
	bh=IQucLoZpHAvBUlT37uTetR3S6SOIhRsLCISL2cxh1eY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FOCSkwZnvd24dEPXj/l2cl1WWNS4O8dAs9U8U6Z9JvLvco4lwGej2/oSgrAXOIxKf
	 MkAzj+UD/b7EkwsTM52fxeO/VZ71ogsYYCnqDuLAd0/nYd+L+N+gKhzKhZHhnlCfKA
	 uLSyMMqZW6T0nwLHkke99qlLnK7u/JVhyqe/mCrGdMZFD98ByM008gRp4VTaomWDk9
	 wLDF1Ejn0CpGIzVn2Gs0TZDeQVMWZq1dG3UBr3eVI/d56XVSY5CThAxjKaAa3plsmH
	 oWh8eoofVQ2bJQUp/yhbG75BFGZZQZIzsg2j66UqwfcUkM3w/vgObsMKhS+y0qCksV
	 83A17G0EsL9mQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bfgF-gZ5kQxy; Sun,  1 Jan 2023 10:34:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 962EE60BD6;
	Sun,  1 Jan 2023 10:34:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 962EE60BD6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5F4D41BF578
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Jan 2023 10:34:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 45C90400E7
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Jan 2023 10:34:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45C90400E7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UFVnoaH23CEz for <intel-wired-lan@lists.osuosl.org>;
 Sun,  1 Jan 2023 10:34:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7FBF8400D1
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7FBF8400D1
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Jan 2023 10:34:24 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aefd4.dynamic.kabel-deutschland.de
 [95.90.239.212])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id F17AE60027FCB;
 Sun,  1 Jan 2023 11:34:21 +0100 (CET)
Message-ID: <a4216a94-72b3-4711-bc90-ad564a57b310@molgen.mpg.de>
Date: Sun, 1 Jan 2023 11:34:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Leon Romanovsky <leon@kernel.org>,
 Rajat Khandelwal <rajat.khandelwal@linux.intel.com>
References: <20221229122640.239859-1-rajat.khandelwal@linux.intel.com>
 <Y7FFESJONJqGJUkb@unreal>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <Y7FFESJONJqGJUkb@unreal>
Subject: Re: [Intel-wired-lan] [PATCH] igc: Mask replay rollover/timeout
 errors in I225_LMVP
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: linux-pci@vger.kernel.org, netdev@vger.kernel.org,
 rajat.khandelwal@intel.com, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 kuba@kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[Cc: +Bjorn, +linux-pci]

Dear Leon, dear Rajat,


Am 01.01.23 um 09:32 schrieb Leon Romanovsky:
> On Thu, Dec 29, 2022 at 05:56:40PM +0530, Rajat Khandelwal wrote:
>> The CPU logs get flooded with replay rollover/timeout AER errors in
>> the system with i225_lmvp connected, usually inside thunderbolt devices.
>>
>> One of the prominent TBT4 docks we use is HP G4 Hook2, which incorporates
>> an Intel Foxville chipset, which uses the igc driver.
>> On connecting ethernet, CPU logs get inundated with these errors. The point
>> is we shouldn't be spamming the logs with such correctible errors as it
>> confuses other kernel developers less familiar with PCI errors, support
>> staff, and users who happen to look at the logs.
>>
>> Signed-off-by: Rajat Khandelwal <rajat.khandelwal@linux.intel.com>
>> ---
>>   drivers/net/ethernet/intel/igc/igc_main.c | 28 +++++++++++++++++++++--
>>   1 file changed, 26 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
>> index ebff0e04045d..a3a6e8086c8d 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -6201,6 +6201,26 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
>>   	return value;
>>   }
>>   
>> +#ifdef CONFIG_PCIEAER
>> +static void igc_mask_aer_replay_correctible(struct igc_adapter *adapter)
>> +{
>> +	struct pci_dev *pdev = adapter->pdev;
>> +	u32 aer_pos, corr_mask;
>> +
>> +	if (pdev->device != IGC_DEV_ID_I225_LMVP)
>> +		return;
>> +
>> +	aer_pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_ERR);
>> +	if (!aer_pos)
>> +		return;
>> +
>> +	pci_read_config_dword(pdev, aer_pos + PCI_ERR_COR_MASK, &corr_mask);
>> +
>> +	corr_mask |= PCI_ERR_COR_REP_ROLL | PCI_ERR_COR_REP_TIMER;
>> +	pci_write_config_dword(pdev, aer_pos + PCI_ERR_COR_MASK, corr_mask);
> 
> Shouldn't this igc_mask_aer_replay_correctible function be implemented
> in drivers/pci/quirks.c and not in igc_probe()?

Probably. Though I think, the PCI quirk file, is getting too big.


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
