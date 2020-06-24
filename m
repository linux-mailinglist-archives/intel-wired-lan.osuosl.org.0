Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEC3206A82
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 05:24:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C606A87899;
	Wed, 24 Jun 2020 03:24:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 74sUi7eMaKvj; Wed, 24 Jun 2020 03:24:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 161CC87889;
	Wed, 24 Jun 2020 03:24:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BE2CA1BF3BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 03:24:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B9C87220A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 03:24:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fyjMIdxK2mOB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2020 03:24:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 0B6EE22056
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 03:23:59 +0000 (UTC)
IronPort-SDR: tSmNoVBizEFh/y390wjQ59eJzPpif0KpVNbARadDIHJPKQjFNpIQCB6nNENCfbfNgJveLwiQ+D
 HXLYrWXPKBTQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="144344385"
X-IronPort-AV: E=Sophos;i="5.75,273,1589266800"; d="scan'208";a="144344385"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 20:23:59 -0700
IronPort-SDR: UGPZl9dLL8YAUmkY5sKV+ypoaXiqFjewp2DSNPVecHbJ3itQRsp5xbhunk2SVXbaAtsSUb8qbt
 kHxtvRfcaTmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,273,1589266800"; d="scan'208";a="452486623"
Received: from zeshed-mobl1.ger.corp.intel.com (HELO [10.249.80.159])
 ([10.249.80.159])
 by orsmga005.jf.intel.com with ESMTP; 23 Jun 2020 20:23:58 -0700
To: "Brown, Aaron F" <aaron.f.brown@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20200604112516.44949-1-sasha.neftin@intel.com>
 <DM6PR11MB2890D64AD6055EB780EF3885BC950@DM6PR11MB2890.namprd11.prod.outlook.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <5a821cd7-cd51-6725-34a3-2c4322ed35ba@intel.com>
Date: Wed, 24 Jun 2020 06:23:57 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <DM6PR11MB2890D64AD6055EB780EF3885BC950@DM6PR11MB2890.namprd11.prod.outlook.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Add LPI counters
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/24/2020 04:05, Brown, Aaron F wrote:
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>> Sasha Neftin
>> Sent: Thursday, June 4, 2020 4:25 AM
>> To: intel-wired-lan@lists.osuosl.org
>> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Add LPI counters
>>
>> Add EEE TX LPI and EEE RX LPI counters. A EEE TX LPI event
>> occurs when the transmitter enters EEE (IEEE 802.3az) LPI
>> state. A EEE RX LPI event ocuurs when the receiver detect
>> link partner entry into EEE(IEEE 802.3az) LPI state.
> 
> Are these counters exposed anywhere I can view them?
Just added relevant LPI registers. EEE support only in initial phase, 
many stuff will be added later.
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
