Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E06249139
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Aug 2020 00:52:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1D61886CF9;
	Tue, 18 Aug 2020 22:52:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y3S2himSRp9D; Tue, 18 Aug 2020 22:52:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7CCDD86C7E;
	Tue, 18 Aug 2020 22:52:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 89EE91BF3F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 22:52:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 82CA085BDF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 22:52:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0L_D_-hLQScF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Aug 2020 22:52:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6250E85BB5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 22:52:33 +0000 (UTC)
IronPort-SDR: tPGGvxSPJnviBo5N7Q9sBt/eZzUhpnjScSBTsCSNPgiWZILXhYVkVzZkk+vJBpub9hnLWs2r4N
 YIpS1w7XY8sQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9717"; a="216542180"
X-IronPort-AV: E=Sophos;i="5.76,329,1592895600"; d="scan'208";a="216542180"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2020 15:52:32 -0700
IronPort-SDR: Slo5R7AJ3dHKcitWvSee5guQMoxPrIOIFCo7bGeELvlTUy9NRwpiHxzhriYlfmf+wEohpI450j
 0x0HZmSH3Nwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,329,1592895600"; d="scan'208";a="497020551"
Received: from jrperren-desk4.amr.corp.intel.com (HELO ellie) ([10.212.63.39])
 by fmsmga006.fm.intel.com with ESMTP; 18 Aug 2020 15:52:32 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20200818143615.00000f16@intel.com>
References: <20200817231231.2971207-1-vinicius.gomes@intel.com>
 <20200818143615.00000f16@intel.com>
Date: Tue, 18 Aug 2020 15:52:31 -0700
Message-ID: <87h7szr2hc.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 1/2] igc: Fix wrong timestamp latency
 numbers
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
Cc: andre.guedes@intel.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jesse Brandeburg <jesse.brandeburg@intel.com> writes:

> Vinicius Costa Gomes wrote:
>
>> The previous timestamping latency numbers were obtained by
>> interpolating the i210 numbers with the i225 crystal clock value. That
>> calculation was wrong.
>> 
>> Use the correct values from real measurements.
>> 
>> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>
> Is this targeted at net or net-next, and because it is a fix I
> recommend you have subject
> [PATCH net 1/2]

Oh, sorry about that. I used the wrong 'git format-patch' line.

>
> and you should include a "Fixes:" tag since this driver has been
> released in previous kernels.

Yes. This should have been directed to 'net-queue', thanks for noticing.

Will send a v2.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
