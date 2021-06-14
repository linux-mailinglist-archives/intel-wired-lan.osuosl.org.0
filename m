Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DBD33A6D1D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Jun 2021 19:26:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A4016081C;
	Mon, 14 Jun 2021 17:26:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YxExnlIEqOlY; Mon, 14 Jun 2021 17:26:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A272060811;
	Mon, 14 Jun 2021 17:26:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9CF1A1BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 17:26:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8A53F40459
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 17:26:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vJt-6zaFQWT9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jun 2021 17:26:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 71DC7404D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 17:26:20 +0000 (UTC)
IronPort-SDR: 7C9uTbUcopPzxMvMO00jaVZsJCk4z7t9PKileYy6DyDHUw7gfMA9+KUZgN39KaLyQKnrzEF7gT
 +5MsH8diX1EQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="266997176"
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="266997176"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 10:26:19 -0700
IronPort-SDR: XlY/EJW0fjsmG5wN91ezMaFaouIZTr4s4OdlBSZGTwjvSz8hQ2q+MnVjT9RwfVbpwwdwFdNZG/
 P01tfd2pHe2g==
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="451662933"
Received: from jroberts-mobl.amr.corp.intel.com (HELO [10.212.172.19])
 ([10.212.172.19])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 10:26:18 -0700
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20210609202937.1135836-1-jacob.e.keller@intel.com>
 <81762743e833402ca3c959050862cbdbacf47e86.camel@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <0871761b-d2bd-4d98-b4c6-0779a19d62cf@intel.com>
Date: Mon, 14 Jun 2021 10:26:18 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <81762743e833402ca3c959050862cbdbacf47e86.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] ice: add support for auxiliary
 input/output pins
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
Cc: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/14/2021 10:15 AM, Nguyen, Anthony L wrote:
> On Wed, 2021-06-09 at 13:29 -0700, Jacob Keller wrote:
>> From: Maciej Machnikowski <maciej.machnikowski@intel.com>
>>
>> The E810 device supports programmable pins for enabling both input
>> and
>> output events related to the PTP hardware clock. This includes both
>> output signals with programmable period, as well as timestamping of
>> events on input pins.
>>
>> Add support for enabling these using the CONFIG_PTP_1588_CLOCK
>> interface.
>>
>> This allows programming the software defined pins to take advantage
>> of
>> the hardware clock features.
>>
>> Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> ---
> 
> I'm seeing this for a 32bit build:
> 
>> make[2]: *** Deleting file 'modules-only.symvers'
>> ERROR: modpost: "__udivdi3" [drivers/net/ethernet/intel/ice/ice.ko]
> undefined!
>> ERROR: modpost: "__umoddi3" [drivers/net/ethernet/intel/ice/ice.ko]
> undefined!
>> make[2]: *** [../scripts/Makefile.modpost:150: modules-only.symvers]
> Error 1
>> make[1]: *** [/next-queue/Makefile:1754: modules] Error 2
>> make: *** [Makefile:215: __sub-make] Error 2
> 

I'm not certain which divisions are causing problems, but I suspect it
is the roundup() macro and/or some of the % modulo operations.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
