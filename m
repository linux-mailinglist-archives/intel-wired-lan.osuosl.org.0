Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5AF1F6104
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2020 06:33:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5F119878AA;
	Thu, 11 Jun 2020 04:33:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qBawiMFPXTcl; Thu, 11 Jun 2020 04:33:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CC82087898;
	Thu, 11 Jun 2020 04:33:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A97C71BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2020 04:33:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9482F88614
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2020 04:33:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J8Akmh1j0Zqo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jun 2020 04:33:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D41E188612
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2020 04:33:35 +0000 (UTC)
IronPort-SDR: mlikvn0DI0/TiJKF7jo3sWq+gSe9Ow+sx4KR8u69iI0TLsik0GqqUwgDCN9sIbYG+U3s3qrWc9
 mDv6mo72X1qA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 21:33:35 -0700
IronPort-SDR: LTr7ebC++P7PI6r7/btXOVTCU6NHlt7D/FkFFAK07P5FHTVVYxOAVFrxFzj9j/Bj9IF/RXRfin
 03U+WXEHXTog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,498,1583222400"; d="scan'208";a="259508313"
Received: from sneftin-mobl.ger.corp.intel.com (HELO [10.185.169.52])
 ([10.185.169.52])
 by fmsmga007.fm.intel.com with ESMTP; 10 Jun 2020 21:33:33 -0700
To: Andre Guedes <andre.guedes@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20200610124308.41422-1-sasha.neftin@intel.com>
 <159181443856.78170.15999671258648186100@camachog-mobl.amr.corp.intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <c9854869-5522-29ea-41c0-4306e9829f4f@intel.com>
Date: Thu, 11 Jun 2020 07:33:33 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <159181443856.78170.15999671258648186100@camachog-mobl.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] igc: Remove unneeded check for
 copper media type
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

On 6/10/2020 21:40, Andre Guedes wrote:
> Hi Sasha,
> 
>> PHY of the i225 device support only copper mode.
>> There is no point to check media type in the
>> igc_power_up_link() method.
> 
> A quick grep shows that we have many checks like this in the igc code. How
> about we extend this patch to remove all of them at once?
yes I know. we will do clean up per logic impact. For example, "force 
speed" mode not supported, need to clean up all logic, not only "copper 
media type".
> 
> Regards,
> 
> Andre
> 
Hello Andre,
Thanks,
Sasha

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
