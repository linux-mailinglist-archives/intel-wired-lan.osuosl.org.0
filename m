Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EEBFBB57038
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Sep 2025 08:27:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 907606F890;
	Mon, 15 Sep 2025 06:27:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h_TKBMY7J7IR; Mon, 15 Sep 2025 06:27:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 050366F891
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757917652;
	bh=0cx64MLt6wOLnGfchORu8msW59PuoSYedOvwRKPWZz0=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=soYPcQ0DsESYKzboQv0A6mT+NW3Pio6D40iw4/A3TkhB4A+4vbxN9MA9htPPnsf8w
	 Alg2iBk4cdIKduIRsLpIY8VUeJBnJiy/O7sbUd4IMNN4VhGor/ZOX5YvMlJHxRpoo9
	 ZtYTdDKgpo0GylX9Xfpwgm6HRqUSvnL7POzAlaQceOKxjMQOBPNncEf2hyJjOQSXdz
	 HyoDcwGoAbi+t6V5kRMP4y1d2An/LrIfuCqEjTap52HTnHofC3m7L3ulUq4MlKHr3H
	 O8PUYbqr9FNAZsXeBSckNDd6Qaeq3X84mJaOfCVG7G4GK6t39+o/9xkvlRXUCq/E6z
	 uY8Cg1xtsW6+Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 050366F891;
	Mon, 15 Sep 2025 06:27:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2CF0412D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 06:27:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 13D5C84BAF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 06:27:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x2IFlSyVEj2e for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Sep 2025 06:27:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.42.203.116;
 helo=pdx-out-008.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=34605c4ff=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 28C5484BAD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28C5484BAD
Received: from pdx-out-008.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-008.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [52.42.203.116])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 28C5484BAD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 06:27:28 +0000 (UTC)
X-CSE-ConnectionGUID: o2vD+q8zRFKQdLkWLGH3mg==
X-CSE-MsgGUID: t1Y+BNU1RiaI/AD/xghYWg==
X-IronPort-AV: E=Sophos;i="6.18,265,1751241600"; 
   d="scan'208";a="2988076"
Received: from ip-10-5-0-115.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.0.115])
 by internal-pdx-out-008.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Sep 2025 06:27:26 +0000
Received: from EX19MTAUWC001.ant.amazon.com [10.0.21.151:4553]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.14.105:2525]
 with esmtp (Farcaster)
 id 53496f85-2d7e-4b5d-9ed1-690a7113ee27; Mon, 15 Sep 2025 06:27:26 +0000 (UTC)
X-Farcaster-Flow-ID: 53496f85-2d7e-4b5d-9ed1-690a7113ee27
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWC001.ant.amazon.com (10.250.64.174) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Mon, 15 Sep 2025 06:27:26 +0000
Received: from b0be8375a521.amazon.com (10.37.244.13) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Mon, 15 Sep 2025 06:27:23 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <vitaly.lifshits@intel.com>
CC: <andrew+netdev@lunn.ch>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <enjuk@amazon.com>,
 <intel-wired-lan@lists.osuosl.org>, <kohei.enju@gmail.com>,
 <kuba@kernel.org>, <netdev@vger.kernel.org>, <pabeni@redhat.com>,
 <przemyslaw.kitszel@intel.com>, <aleksandr.loktionov@intel.com>
Date: Mon, 15 Sep 2025 15:27:06 +0900
Message-ID: <20250915062715.48528-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <5d795b34-1ad7-4250-b7fd-0b8558e30b5e@intel.com>
References: <5d795b34-1ad7-4250-b7fd-0b8558e30b5e@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.13]
X-ClientProxiedBy: EX19D037UWC002.ant.amazon.com (10.13.139.250) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1757917649; x=1789453649;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0cx64MLt6wOLnGfchORu8msW59PuoSYedOvwRKPWZz0=;
 b=TyhA7pPE+q8IndHCb2EAAnjgL3/gK+7Lwo+192hUs24ceTx6FLnYa7y3
 nTDwFhe9nkGt54dCiCeS2hf9qdBoDceAGkSXB7E34j/Bf8EM5egjzqGpi
 OBD+p44VgyozqV/ZTVSX1Hm64/Ub6lI8uqZ6omU8BURM0qzB0Q71lpMA/
 twfBVUHfbBcbTrrtcHR/K/JsmGcpTLCTmSFDvrurGX+CRmJ9cGaNobtEi
 wACZCD9WhmI2N9dIZs8nhhA+NJPg0RLCtbFIYsEPOcUIQvGW26kRN7oIg
 4fPknst2aTnUBgCvN7VJccBsfAvHNCtrx28EbKs3f42WPVL1O+J0Nt83D
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=TyhA7pPE
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] igc: power up PHY before
 link test
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

+ Alex

On Sun, 7 Sep 2025 16:51:53 +0300, Lifshits, Vitaly wrote:

>On 9/6/2025 6:49 AM, Kohei Enju wrote:
>> On Mon, 1 Sep 2025 07:36:21 +0300, Lifshits, Vitaly wrote:
>> 
>>>
>>>> ---
>>>>    drivers/net/ethernet/intel/igc/igc_ethtool.c | 3 +++
>>>>    1 file changed, 3 insertions(+)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>>>> index f3e7218ba6f3..ca93629b1d3a 100644
>>>> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
>>>> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>>>> @@ -2094,6 +2094,9 @@ static void igc_ethtool_diag_test(struct net_device *netdev,
>>>>    		netdev_info(adapter->netdev, "Offline testing starting");
>>>>    		set_bit(__IGC_TESTING, &adapter->state);
>>>>    
>>>> +		/* power up PHY for link test */
>>>> +		igc_power_up_phy_copper(&adapter->hw);
>>>
>>> I suggest moving this to igc_link_test functionn igc_diags.c as it
>>> relates only to the link test.
>> 
>> Thank you for taking a look, Lifshits.
>> 
>> Now I'm considering changing only offline test path, not including
>> online test path.
>> This is because I think online test path should not trigger any
>> interruption and power down/up PHY may cause disruption.
>> 
>> So, I forgo the online path and my intention for this patch is to power
>> up PHY state only in offline test path.
>> I think introducing igc_power_up_phy_copper() in igc_link_test()
>> needs careful consideration in online test path.
>
>Yes, I see that now.
>Then it's ok to leave it as is.

Sorry for late response. Thank you for taking a look, Vitaly!

>
>Regarding the question whether to wrap igc_power_up_phy_copper with an 
>if (hw->phy.media_type == igc_media_type_copper), I think that it's not 
>necessary. First of all, igc devices are only copper devices. Secondly, 
>in the other place where we call this function (in igc_main), we don't 
>check the media type, therefore I suggest being consistent with the 
>already existing code and leaving it as it is now.

Indeed, I think you're right.

I looked at the existing code and found that indeed there are codes
which are assuming only copper devices at least for now. [1, 2, 3]

So, I'll rephrase the commit message in v2 to clarify:
- This change is applied only for offline testing, forgoing online
  testing.
- In this case, original power state is restored in igc_reset()
  afterwards.

and leave the diff as it is in V2 patch.

>
>> 
>>>
>>>> +
>>>>    		/* Link test performed before hardware reset so autoneg doesn't
>>>>    		 * interfere with test result
>>>>    		 */
>>>
>>>
>>> Thank you for this patch.

Thanks, 
Kohei

[1] igc_main.c
```
void igc_reset(struct igc_adapter *adapter)
{
  ...
  if (!netif_running(adapter->netdev))
      igc_power_down_phy_copper_base(&adapter->hw);
```

[2] igc_main.c
```
static void igc_power_up_link(struct igc_adapter *adapter)
{
  ...
  igc_power_up_phy_copper(&adapter->hw);
```

[3] igc_main.c
```
static int __igc_open(struct net_device *netdev, bool resuming)
{
  ...
  err_req_irq:
  igc_release_hw_control(adapter);
  igc_power_down_phy_copper_base(&adapter->hw);
```
