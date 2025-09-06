Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DE3B468C0
	for <lists+intel-wired-lan@lfdr.de>; Sat,  6 Sep 2025 06:03:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 26CE66154E;
	Sat,  6 Sep 2025 04:03:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JMPQQfOIEABp; Sat,  6 Sep 2025 04:03:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46A346154B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757131436;
	bh=J5ZOTt1HaPJaQ6DJyafCrxQeclOH3Tq1B3XLAa0dGoU=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8uVo8Wtw9215P6IXbFmru+Kq/EewzjNQzt/hiUnPS6Sx4jipvM03GvEnGrivVDUtS
	 CZm0JYW5Q1UPlrm2gZ6RimGbA+NMKS31eKcljdaFY6/3UrqRSyWKAf5/A5AeZQ0GAt
	 vwf46ACVQMVwpIIfMjUZQpY2UCpKq6ePhLNCqzItcOOY4sCMAzLum99YbqBiQ6gpsJ
	 FxZiseuL+hehELd6ASaFIIVvNFgPKrYkLJK+2mEk47OZT6XbXkVOwXtOtm3GSdOKDm
	 ZNntvEINcj/bQszt+abydNqRkfl+IaEQVpSyG5md5PyHLynsvNr690EFv/PneVf57y
	 Frnd/LXr2LAbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46A346154B;
	Sat,  6 Sep 2025 04:03:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 30FCBCA
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Sep 2025 04:03:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 231E741003
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Sep 2025 04:03:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0eTLBQGLcnP3 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Sep 2025 04:03:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.162.73.231;
 helo=pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=3374551b6=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3E19540E0C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E19540E0C
Received: from pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [35.162.73.231])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3E19540E0C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Sep 2025 04:03:52 +0000 (UTC)
X-CSE-ConnectionGUID: LcO5SYmSRgeaOoJAAZED9g==
X-CSE-MsgGUID: G2+nnun5Q/KylIEbs/+NXg==
X-IronPort-AV: E=Sophos;i="6.18,243,1751241600"; 
   d="scan'208";a="2411794"
Received: from ip-10-5-6-203.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.6.203])
 by internal-pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Sep 2025 04:03:50 +0000
Received: from EX19MTAUWC002.ant.amazon.com [10.0.7.35:41364]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.29.106:2525]
 with esmtp (Farcaster)
 id d28f64c9-f167-4aa0-acdb-b99228e97b22; Sat, 6 Sep 2025 04:03:50 +0000 (UTC)
X-Farcaster-Flow-ID: d28f64c9-f167-4aa0-acdb-b99228e97b22
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWC002.ant.amazon.com (10.250.64.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Sat, 6 Sep 2025 04:03:50 +0000
Received: from b0be8375a521.amazon.com (10.37.244.8) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Sat, 6 Sep 2025 04:03:48 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <aleksandr.loktionov@intel.com>
CC: <andrew+netdev@lunn.ch>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <enjuk@amazon.com>,
 <intel-wired-lan@lists.osuosl.org>, <kohei.enju@gmail.com>,
 <kuba@kernel.org>, <netdev@vger.kernel.org>, <pabeni@redhat.com>,
 <przemyslaw.kitszel@intel.com>, <vitaly.lifshits@intel.com>
Date: Sat, 6 Sep 2025 13:03:38 +0900
Message-ID: <20250906040340.87510-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <IA3PR11MB8986CD55611A08A9AB8B6DF1E507A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <IA3PR11MB8986CD55611A08A9AB8B6DF1E507A@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.8]
X-ClientProxiedBy: EX19D043UWA002.ant.amazon.com (10.13.139.53) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1757131433; x=1788667433;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J5ZOTt1HaPJaQ6DJyafCrxQeclOH3Tq1B3XLAa0dGoU=;
 b=GJ7AYJbZmwn+kR/19wMLURSNy+YZkx1P/qa5va0a8qC7FI7nnR4tW23K
 Lm6zXi/Eg750d8shKxF7hjCg4etQDtOeDl2TA8zmCpVgqQ3h8YAXiKwU5
 m6oM+jRK9771kgYnXpWn+aRBr/YWBFNlYENWCxPqby4fH4yNTbkBhm452
 GyjTdun8UYqDZx7EXKc0QtnzPNBhQ+j9mDj3I3IQwmowCzIkVEwxsXlFd
 aMIFDOmizp8sB9C1SsX2kY18ll6ro4C9RgDxCISA80Xr6Cx3XB+9DTjNC
 /MUuYqYIP06VVbfbZhof7hBTj21qZXAB+GH84/QqHAA0CXaumfwG8ButX
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=GJ7AYJbZ
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

On Mon, 1 Sep 2025 07:03:34 +0000, Loktionov, Aleksandr wrote:

[...]
>>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 3 +++
>>  1 file changed, 3 insertions(+)
>> 
>> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> index f3e7218ba6f3..ca93629b1d3a 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> @@ -2094,6 +2094,9 @@ static void igc_ethtool_diag_test(struct
>> net_device *netdev,
>>  		netdev_info(adapter->netdev, "Offline testing
>> starting");
>>  		set_bit(__IGC_TESTING, &adapter->state);
>> 
>> +		/* power up PHY for link test */
>> +		igc_power_up_phy_copper(&adapter->hw);
>> +
>1.You unconditionally power the PHY up but you don't restore the previous power state at the end of the test.

You're right about the concern, but it's already handled by the existing 
code flow:
    /* power up PHY for link test */
	igc_power_up_phy_copper(&adapter->hw);

    /* doing link test */

    if (if_running)
        igc_close(netdev);
    else
        igc_reset(adapter);
        
    /* other tests */
    igc_reset(adapter);

igc_reset() calls igc_power_down_phy_copper_base() when !netif_running(), 
so the PHY is properly powered down again.

>2. igc_power_up_phy_copper() returns a status, but you ignore it. If the MDIO access fails (e.g., bus issue), you should mark the link test as failed and continue with the rest...

Hmm, indeed I didn't check the status, but should I tweak `void
igc_power_up_phy_copper(struct igc_hw *hw)` itself?

My intention was to try to power up PHY if possible, but give it up when
not possible (e.g., bus issue). When powering up is not successful, that
is, PHY is still powered down, igc_link_test() should fail as it does so
now.

>n. igc is predominantly copper, but it's still best practice to guard with: 	if (hw->phy.media_type == igc_media_type_copper) or or check that hw->phy.type != igc_phy_none

Got it. I'll do that in v2.

>
>>  		/* Link test performed before hardware reset so autoneg
>> doesn't
>>  		 * interfere with test result
>>  		 */
>> --
>> 2.48.1
