Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCE81D9B4F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 17:32:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5BC5188081;
	Tue, 19 May 2020 15:32:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gDS1kfvfLUFG; Tue, 19 May 2020 15:32:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5D07188680;
	Tue, 19 May 2020 15:32:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 15CE11BF3E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 15:32:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0614B228F1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 15:32:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XjDkbJ1E7ZOv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 15:32:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id D4EA3220C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 15:32:41 +0000 (UTC)
IronPort-SDR: jEBkkYtoUlC+bnwHvLV+uxm2IHA8wcFssK57B6Q00YOlNS8vt6oPWBaDOAXWTxZPvRfEkVVxuY
 G/mYpL6fqqXg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 08:32:41 -0700
IronPort-SDR: /D8eAVIdFAdKR2ZCtY+BpIV7wTp3ROMhUFbR0tChvaBGec4BDg2JXDjaXjdhNNtswao3uiQm2d
 eZOPASOl7pog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="466165188"
Received: from stputhen-mobl1.amr.corp.intel.com (HELO ellie) ([10.209.5.127])
 by fmsmga006.fm.intel.com with ESMTP; 19 May 2020 08:32:40 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Murali Karicheri <m-karicheri2@ti.com>, intel-wired-lan@lists.osuosl.org
In-Reply-To: <b33e582f-e0e6-467a-636a-674322108855@ti.com>
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
 <b33e582f-e0e6-467a-636a-674322108855@ti.com>
Date: Tue, 19 May 2020 08:32:40 -0700
Message-ID: <87v9ksndnr.fsf@intel.com>
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
 vladimir.oltean@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Murali Karicheri <m-karicheri2@ti.com> writes:

>> $ ethtool $ sudo ./ethtool --show-frame-preemption enp3s0
>> Frame preemption settings for enp3s0:
>> 	support: supported
>> 	active: active
>> 	supported queues: 0xf
>
> I assume this is will be in sync with ethtool -L output which indicates
> how many tx h/w queues present? I mean if there are 8 h/w queues,
> supported queues will show 0xff.

In this approach, the driver builds these bitmasks, so it's responsible
to keep it consistent with the rest of the stuff that's exposed in
ethtool.

>
>> 	supported queues: 0xe
>  From the command below, it appears this is the preemptible queue mask.
> bit 0  is Q0, bit 1 Q1 and so forth. Right? In that case isn't it more
> clear to display
>          preemptible queues : 0xef
>
> In the above Q7 is express queue and Q6-Q0 are preemptible.

In my case, the controller I have here only has 4 queues, and Queue 0 is
the highest priority one, and it's marked as express.

>
> Also there is a handshake called verify that happens which initiated
> by the h/w to check the capability of peer. It looks like
> not all vendor's hardware supports it and good to have it displayed
> something like
>
>          Verify supported/{not supported}
>
> If Verify is supported, FPE is enabled only if it succeeds. So may be
> good to show a status of Verify if it is supported something like
>          Verify success/Failed
>
>> 	minimum fragment size: 68
>> 
>> 
>> $ ethtool --set-frame-preemption enp3s0 fp on min-frag-size 68 preemptible-queues-mask 0xe
>> 
>> This is a RFC because I wanted to have feedback on some points:
>> 
>>    - The parameters added are enough for the hardware I have, is it
>>      enough in general?
>
> As described above, it would be good to add an optional parameter for
> verify
>
> ethtool --set-frame-preemption enp3s0 fp on min-frag-size 68 
> preemptible-queues-mask 0xe verify on
>

The hardware I have do not support this, but this makes sense.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
