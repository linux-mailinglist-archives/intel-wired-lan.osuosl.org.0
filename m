Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC91B27A43
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Aug 2025 09:42:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8288440AB4;
	Fri, 15 Aug 2025 07:42:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8cw_Dibsg_bC; Fri, 15 Aug 2025 07:42:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E927E40A96
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755243724;
	bh=m414ylhkntSecSPihJmuq6RGEaxziGPnxii/f3d8bnI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=A7aYcUAByy0jOJqZ1EyUcGHH/TdGMD6BWtp6cV+PMNxJxd6ILKV40dab6DVXiVHf/
	 urA+1gQCMAAEF/9Wnn9QSLj8hUo29aBNUKG7anQnMz9NwOqNJqNEvbzv0lamCmwsFu
	 moxv2TKnwxLLKLVwQ6oV3CZ+44qz7B0A3XqL1xzqOiAwAfU2ZkkHhY0hXndt0qegWJ
	 NsrAAYrvqyUXglwU6/BoiktolfsiCj08CzgcxOlrc773leuLWMko3pJOdGp9uMGn9J
	 xTd+MatHOBojT1a1ZqxNkbPQU07CuYf7bZIIa/XUfUrKn1UUAuX8IcGaKmKQGxauZV
	 MqD5LSbmXws9Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E927E40A96;
	Fri, 15 Aug 2025 07:42:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id BC907228
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 07:42:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A2BDF608C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 07:42:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MRl_5V4-EFas for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Aug 2025 07:42:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3408560826
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3408560826
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3408560826
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 07:42:01 +0000 (UTC)
Received: from [192.168.1.9]
 (dynamic-077-183-003-144.77.183.pool.telefonica.de [77.183.3.144])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id E383C61E647AC;
 Fri, 15 Aug 2025 09:41:29 +0200 (CEST)
Message-ID: <01054bc5-74b6-4472-b7b6-78febaaf575f@molgen.mpg.de>
Date: Fri, 15 Aug 2025 09:41:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: Kohei Enju <enjuk@amazon.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexander Duyck <alexanderduyck@fb.com>, kohei.enju@gmail.com
References: <20250815062645.93732-2-enjuk@amazon.com>
 <9ee14d54-b680-4b1a-82c2-56c0c1b26fa1@molgen.mpg.de>
Content-Language: en-US
In-Reply-To: <9ee14d54-b680-4b1a-82c2-56c0c1b26fa1@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
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

[Correct Alexander’s email address]

Am 15.08.25 um 09:38 schrieb Paul Menzel:
> Dear Kohei,
> 
> 
> Thank you very much for your patch.
> 
> Am 15.08.25 um 08:26 schrieb Kohei Enju:
>> The igb driver incorrectly skips the link test when the network
>> interface is admin down (if_running == false), causing the test to
>> always report PASS regardless of the actual physical link state.
>>
>> This behavior is inconsistent with other drivers (e.g. i40e, ice, ixgbe,
>> etc.) which correctly test the physical link state regardless of admin
>> state.
> 
> I’d collapse the above two sentences into one paragraph and add an empty 
> line here to visually separate the paragraph below.
> 
>> Remove the if_running check to ensure link test always reflects the
>> physical link state.
> 
> Please add how to verify your change, that means the command to run.
> 
>> Fixes: 8d420a1b3ea6 ("igb: correct link test not being run when link is down")
>> Signed-off-by: Kohei Enju <enjuk@amazon.com>
>> ---
>>   drivers/net/ethernet/intel/igb/igb_ethtool.c | 5 +----
>>   1 file changed, 1 insertion(+), 4 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/ 
>> net/ethernet/intel/igb/igb_ethtool.c
>> index ca6ccbc13954..6412c84e2d17 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
>> @@ -2081,11 +2081,8 @@ static void igb_diag_test(struct net_device 
>> *netdev,
>>       } else {
>>           dev_info(&adapter->pdev->dev, "online testing starting\n");
>> -        /* PHY is powered down when interface is down */
>> -        if (if_running && igb_link_test(adapter, &data[TEST_LINK]))
>> +        if (igb_link_test(adapter, &data[TEST_LINK]))
>>               eth_test->flags |= ETH_TEST_FL_FAILED;
>> -        else
>> -            data[TEST_LINK] = 0;
>>           /* Online tests aren't run; pass by default */
>>           data[TEST_REG] = 0;
> 
> Regardless of my style comments above:
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> 
> 
> Kind regards,
> 
> Paul
