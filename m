Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 939401D87CA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 May 2020 21:05:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 20FAA220C2;
	Mon, 18 May 2020 19:05:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5A5iUrUgPvW2; Mon, 18 May 2020 19:05:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6146522179;
	Mon, 18 May 2020 19:05:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 98D7C1BF314
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2020 19:05:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 928D687FEE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2020 19:05:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KYguW4I8-I15 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 May 2020 19:05:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 715F387FCD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2020 19:05:05 +0000 (UTC)
IronPort-SDR: H2urDyNTXDmLNaF9cO1UDzabCKLHANkWKXoiRp2+vpT0bOXZ4OoqLyupzF118lba1GmHqKPm6f
 2tBH2YOd2bDA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 12:05:05 -0700
IronPort-SDR: CKN7mrYhZdBl5EPysAv1eSPnvqpEUHmG2tRwwcNDEXqUnA6luRwh3AceAMODl0bsmfhMqWfOVl
 tBDotq4nNZwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="465863900"
Received: from melassa-mobl1.amr.corp.intel.com (HELO ellie) ([10.212.228.130])
 by fmsmga006.fm.intel.com with ESMTP; 18 May 2020 12:05:04 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: David Miller <davem@davemloft.net>, olteanv@gmail.com
In-Reply-To: <20200516.151932.575795129235955389.davem@davemloft.net>
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
 <20200516.133739.285740119627243211.davem@davemloft.net>
 <CA+h21hoNW_++QHRob+NbWC2k7y7sFec3kotSjTL6s8eZGGT+2Q@mail.gmail.com>
 <20200516.151932.575795129235955389.davem@davemloft.net>
Date: Mon, 18 May 2020 12:05:04 -0700
Message-ID: <87wo59oyhr.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next-queue RFC 0/4] ethtool: Add support for
 frame preemption
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
Cc: Jose.Abreu@synopsys.com, netdev@vger.kernel.org, po.liu@nxp.com,
 m-karicheri2@ti.com, intel-wired-lan@lists.osuosl.org, vladimir.oltean@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

David Miller <davem@davemloft.net> writes:

> From: Vladimir Oltean <olteanv@gmail.com>
> Date: Sun, 17 May 2020 00:03:39 +0300
>
>> As to why this doesn't go to tc but to ethtool: why would it go to tc?
>
> Maybe you can't %100 duplicate the on-the-wire special format and
> whatever, but the queueing behavior ABSOLUTELY you can emulate in
> software.

Just saying what Vladimir said in different words: the queueing behavior
is already implemented in software, by mqprio or taprio, for example.

That is to say, if we add frame preemption support to those qdiscs all
they will do is pass the information to the driver, and that's it. They
won't be able to use that information at all.

The mental model I have for this feature is that is more similar to the
segmentation offloads, energy efficient ethernet or auto-negotiation
than it is to a traffic shaper like CBS.

>
> And then you have the proper hooks added for HW offload which can
> do the on-the-wire stuff.
>
> That's how we do these things, not with bolted on ethtool stuff.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
