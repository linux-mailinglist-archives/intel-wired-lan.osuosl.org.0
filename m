Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0563EB468B1
	for <lists+intel-wired-lan@lfdr.de>; Sat,  6 Sep 2025 05:50:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A108761542;
	Sat,  6 Sep 2025 03:50:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6jrAQ7R8Y7OU; Sat,  6 Sep 2025 03:50:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFBAF61539
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757130608;
	bh=aO8+nEpF99IvHNQjRBfgpFFnyCKBbemhn1G4CvD32TY=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0AY4LOcwLZ+9uZeO74crC+Pmexm/J+vEDMgkb5x43Eyc1j116oYphfyGHRN8G4bAN
	 i9NXiRAhEp6L4qsu9ZpNuZWia9jKtAAiKnZO7DymAFWjkale6MlCf22zrehv775/hW
	 lFx6wIcBkJbkn1Xc5BqQbRZbQ4aK8vlUoyuuQZ88KVg+tpCIpNpg5VRokgSGIaPIcx
	 rKvjjwbSfaGDd+AJWeoUUnIjP1DBRpMdO8yPwZIl3m3MzAVVPO6bcTal942S3pmc0J
	 Rz1x4FfCXkpu27frEuU1dmNceAqf8cdJiMWMk1Pqnu4yq4JFF9Y0r1e3gQ5yTvmwlS
	 y9esADZqRLmcw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFBAF61539;
	Sat,  6 Sep 2025 03:50:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C3333967
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Sep 2025 03:50:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C09D840F72
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Sep 2025 03:50:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jA9lfXcQBG32 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Sep 2025 03:50:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.26.1.71;
 helo=pdx-out-006.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=3374551b6=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1470140C6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1470140C6A
Received: from pdx-out-006.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-006.esa.us-west-2.outbound.mail-perimeter.amazon.com [52.26.1.71])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1470140C6A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Sep 2025 03:50:06 +0000 (UTC)
X-CSE-ConnectionGUID: JS+jbI/BQc+4/mnO851DDw==
X-CSE-MsgGUID: iVXFn2O7T66wRf5aBabymQ==
X-IronPort-AV: E=Sophos;i="6.18,243,1751241600"; 
   d="scan'208";a="2523582"
Received: from ip-10-5-12-219.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.12.219])
 by internal-pdx-out-006.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Sep 2025 03:50:04 +0000
Received: from EX19MTAUWC002.ant.amazon.com [10.0.7.35:56062]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.63.19:2525]
 with esmtp (Farcaster)
 id 114baa6d-9cb5-424e-a946-24af8906c8bc; Sat, 6 Sep 2025 03:50:04 +0000 (UTC)
X-Farcaster-Flow-ID: 114baa6d-9cb5-424e-a946-24af8906c8bc
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWC002.ant.amazon.com (10.250.64.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Sat, 6 Sep 2025 03:50:04 +0000
Received: from b0be8375a521.amazon.com (10.37.244.8) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Sat, 6 Sep 2025 03:50:02 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <vitaly.lifshits@intel.com>
CC: <andrew+netdev@lunn.ch>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <enjuk@amazon.com>,
 <intel-wired-lan@lists.osuosl.org>, <kohei.enju@gmail.com>,
 <kuba@kernel.org>, <netdev@vger.kernel.org>, <pabeni@redhat.com>,
 <przemyslaw.kitszel@intel.com>
Date: Sat, 6 Sep 2025 12:49:51 +0900
Message-ID: <20250906034954.82685-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <5a80cd22-49d9-4200-80d5-5416a1d78a5f@intel.com>
References: <5a80cd22-49d9-4200-80d5-5416a1d78a5f@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.8]
X-ClientProxiedBy: EX19D041UWA001.ant.amazon.com (10.13.139.124) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1757130607; x=1788666607;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aO8+nEpF99IvHNQjRBfgpFFnyCKBbemhn1G4CvD32TY=;
 b=JLi7Aaq6qD4gM8Wg5BjnaX32DO5la9ryxDnXR5sGSgGEGywK0+0vBGeg
 f7jASc8oJNp8AmR9o9zKHkg9UAwoCDj7kdCKFqGdA9zT8OZ6/Em0G4eZb
 joEwelc9weCPi+rdPOT3gpd8qDPLQw9qSmgKR9iNyQK9GIosMWW2cZYnl
 n2G8+Oa19Fr40ayiRBr7VQtC0ioNfdBiGjGMWl2/siuSSGmYQO6Ti73e6
 HHa7HOWL5+WsJOUplnVjG3L96r442TYFAni6UCoEC7C3IXhvcI0ta1gV3
 DsCncoTTUa8WO19aQFIE7dxMPSb/07cW+QnI+8QpfO2d+LweaBdO789gB
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=JLi7Aaq6
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

On Mon, 1 Sep 2025 07:36:21 +0300, Lifshits, Vitaly wrote:

>
>> ---
>>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 3 +++
>>   1 file changed, 3 insertions(+)
>> 
>> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> index f3e7218ba6f3..ca93629b1d3a 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> @@ -2094,6 +2094,9 @@ static void igc_ethtool_diag_test(struct net_device *netdev,
>>   		netdev_info(adapter->netdev, "Offline testing starting");
>>   		set_bit(__IGC_TESTING, &adapter->state);
>>   
>> +		/* power up PHY for link test */
>> +		igc_power_up_phy_copper(&adapter->hw);
>
>I suggest moving this to igc_link_test functionn igc_diags.c as it 
>relates only to the link test.

Thank you for taking a look, Lifshits.

Now I'm considering changing only offline test path, not including
online test path.
This is because I think online test path should not trigger any
interruption and power down/up PHY may cause disruption.

So, I forgo the online path and my intention for this patch is to power
up PHY state only in offline test path.
I think introducing igc_power_up_phy_copper() in igc_link_test()
needs careful consideration in online test path.

>
>> +
>>   		/* Link test performed before hardware reset so autoneg doesn't
>>   		 * interfere with test result
>>   		 */
>
>
>Thank you for this patch.
