Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A75BB28A82
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Aug 2025 06:16:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E45B40A86;
	Sat, 16 Aug 2025 04:16:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vPlT8AR9QtG8; Sat, 16 Aug 2025 04:16:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB00140A94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755317778;
	bh=grQ8MznX0ax9VmAPZJL5cknDcX/BG/AnrXvD+2GWl80=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=agt9hXWnWwRGjcURp/IF5NentGy94CHKwfIlmJlsF9rHpynP4C1+NCqJceIv2rnlm
	 AgWrJ4/NAmeU5lvOtNNTRvzmEiI+/VEzreot1HSF5ncJXAX9IKy9LO8g6DONTtskqS
	 c5QbhmLZTeFM/FLAnrpo7wt7E6VeOIvigIoWM7oIrq3UzdHhcDdmtWNKkBbNa4PY+9
	 KsMxqaR1O4cvJ9r1Vd+q1MQP97ow6f9CMlL+3RZvYO/RbPSnwsghOle/Mh3AIS+Zxe
	 yAlf2fCbm07I/R6W4VJBU9PZHvw+3rGBpIp1LgihF0mDEb2PSuBCX+isIvVP4YEWqj
	 +a4CcAup7EbWw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB00140A94;
	Sat, 16 Aug 2025 04:16:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7673F223
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 04:16:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5BE2440A6B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 04:16:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TVONxyX227VS for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Aug 2025 04:16:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=44.246.1.125;
 helo=pdx-out-002.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=3160df85f=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6538040A5F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6538040A5F
Received: from pdx-out-002.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-002.esa.us-west-2.outbound.mail-perimeter.amazon.com [44.246.1.125])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6538040A5F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 04:16:11 +0000 (UTC)
X-CSE-ConnectionGUID: zVwOjIXKRri8HnBOwpJqWQ==
X-CSE-MsgGUID: 8XG63X9vSWOTCSVAYklqYA==
X-IronPort-AV: E=Sophos;i="6.16,202,1744070400"; 
   d="scan'208";a="1244802"
Received: from ip-10-5-9-48.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.9.48])
 by internal-pdx-out-002.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Aug 2025 04:16:09 +0000
Received: from EX19MTAUWA002.ant.amazon.com [10.0.21.151:6564]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.45.64:2525]
 with esmtp (Farcaster)
 id 33b31170-08d4-4ec5-90ee-1f3758c28f5d; Sat, 16 Aug 2025 04:16:09 +0000 (UTC)
X-Farcaster-Flow-ID: 33b31170-08d4-4ec5-90ee-1f3758c28f5d
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWA002.ant.amazon.com (10.250.64.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Sat, 16 Aug 2025 04:16:09 +0000
Received: from b0be8375a521.amazon.com (10.37.244.14) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.17;
 Sat, 16 Aug 2025 04:16:06 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <pmenzel@molgen.mpg.de>
CC: <alexanderduyck@fb.com>, <andrew+netdev@lunn.ch>,
 <anthony.l.nguyen@intel.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <enjuk@amazon.com>, <intel-wired-lan@lists.osuosl.org>,
 <kohei.enju@gmail.com>, <kuba@kernel.org>, <netdev@vger.kernel.org>,
 <pabeni@redhat.com>, <przemyslaw.kitszel@intel.com>
Date: Sat, 16 Aug 2025 13:15:28 +0900
Message-ID: <20250816041557.71794-2-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <01054bc5-74b6-4472-b7b6-78febaaf575f@molgen.mpg.de>
References: <01054bc5-74b6-4472-b7b6-78febaaf575f@molgen.mpg.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-Originating-IP: [10.37.244.14]
X-ClientProxiedBy: EX19D037UWB003.ant.amazon.com (10.13.138.115) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1755317772; x=1786853772;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=grQ8MznX0ax9VmAPZJL5cknDcX/BG/AnrXvD+2GWl80=;
 b=UUh3rOWLB+yE8f9EpogEoqmUQrnAk/BtcrRo0LYtnQwqyO8YLdq5hjG2
 JUAgYo+QLp+FEMIP1hD0H11EXj70msSgJ+lazCK7oIUDgMipR7qfmAdHc
 yHn6u2W2ekbwsxbQEMvzuIty+F0am5/wPSYcoUJO1vOZYOW6BH5CJgHMJ
 j+tyGve1jq8mrz5aqvutKk3ewzkqlq8SZe8aZ1TZlxrf+ZtvHokaMTyML
 5qdAICLStw2jU4RTMCl+waZD8To8tWoGZCN19VYdyB2/x8Jh8zVyVTRpM
 ZxmGkKFFvUvDntJvyjy/EhSL5akfm+w23VrtL2fChxiTBIXpNlFuVNZMS
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=UUh3rOWL
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] igb: fix link test
 skipping when interface is admin down
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

On Fri, 15 Aug 2025 09:41:28 +0200, Paul Menzel wrote:=0D
=0D
>[Correct Alexander=E2=80=99s email address]=0D
=0D
Thank you for the correction.=0D
I'll use the correct address going forward.=0D
=0D
>=0D
>Am 15.08.25 um 09:38 schrieb Paul Menzel:=0D
>> Dear Kohei,=0D
>> =0D
>> =0D
>> Thank you very much for your patch.=0D
>> =0D
>> Am 15.08.25 um 08:26 schrieb Kohei Enju:=0D
>>> The igb driver incorrectly skips the link test when the network=0D
>>> interface is admin down (if_running =3D=3D false), causing the test to=
=0D
>>> always report PASS regardless of the actual physical link state.=0D
>>>=0D
>>> This behavior is inconsistent with other drivers (e.g. i40e, ice, ixgbe=
,=0D
>>> etc.) which correctly test the physical link state regardless of admin=
=0D
>>> state.=0D
>> =0D
>> I=E2=80=99d collapse the above two sentences into one paragraph and add =
an empty =0D
>> line here to visually separate the paragraph below.=0D
=0D
Yes, that makes sense. I'll do that.=0D
=0D
>> =0D
>>> Remove the if_running check to ensure link test always reflects the=0D
>>> physical link state.=0D
>> =0D
>> Please add how to verify your change, that means the command to run.=0D
=0D
Sure, I tested the change using the ip and ethtool commands, with the=0D
physical link down. =0D
Should I include the following test steps in the commit message?=0D
=0D
Before:=0D
  $ sudo ip link set dev enp7s0f0 down=0D
  =0D
  $ ip --json link show enp7s0f0 | jq -c ".[].flags"=0D
  ["BROADCAST","MULTICAST"]=0D
  =0D
  $ sudo ethtool --test enp7s0f0 online=0D
  The test result is PASS=0D
  The test extra info:=0D
  Register test  (offline)         0=0D
  Eeprom test    (offline)         0=0D
  Interrupt test (offline)         0=0D
  Loopback test  (offline)         0=0D
  Link test   (on/offline)         0 # <- Not expected=0D
=0D
After:=0D
  $ sudo ip link set dev enp7s0f0 down=0D
  =0D
  $ ip --json link show enp7s0f0 | jq -c ".[].flags"=0D
  ["BROADCAST","MULTICAST"]=0D
  =0D
  $ sudo ethtool --test enp7s0f0 online=0D
  The test result is FAIL=0D
  The test extra info:=0D
  Register test  (offline)         0=0D
  Eeprom test    (offline)         0=0D
  Interrupt test (offline)         0=0D
  Loopback test  (offline)         0=0D
  Link test   (on/offline)         1 # <- Expected=0D
=0D
>> =0D
>>> Fixes: 8d420a1b3ea6 ("igb: correct link test not being run when link is=
 down")=0D
>>> Signed-off-by: Kohei Enju <enjuk@amazon.com>=0D
>>> ---=0D
>>>   drivers/net/ethernet/intel/igb/igb_ethtool.c | 5 +----=0D
>>>   1 file changed, 1 insertion(+), 4 deletions(-)=0D
>>>=0D
>>> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/ =0D
>>> net/ethernet/intel/igb/igb_ethtool.c=0D
>>> index ca6ccbc13954..6412c84e2d17 100644=0D
>>> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c=0D
>>> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c=0D
>>> @@ -2081,11 +2081,8 @@ static void igb_diag_test(struct net_device =0D
>>> *netdev,=0D
>>>       } else {=0D
>>>           dev_info(&adapter->pdev->dev, "online testing starting\n");=0D
>>> -        /* PHY is powered down when interface is down */=0D
>>> -        if (if_running && igb_link_test(adapter, &data[TEST_LINK]))=0D
>>> +        if (igb_link_test(adapter, &data[TEST_LINK]))=0D
>>>               eth_test->flags |=3D ETH_TEST_FL_FAILED;=0D
>>> -        else=0D
>>> -            data[TEST_LINK] =3D 0;=0D
>>>           /* Online tests aren't run; pass by default */=0D
>>>           data[TEST_REG] =3D 0;=0D
>> =0D
>> Regardless of my style comments above:=0D
>> =0D
>> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>=0D
>> =0D
>> =0D
>> Kind regards,=0D
>> =0D
>> Paul=0D
=0D
Thank you for the review, Paul.=0D
