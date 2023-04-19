Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6769B6E705B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Apr 2023 02:19:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CE1AB40BF0;
	Wed, 19 Apr 2023 00:19:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE1AB40BF0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681863554;
	bh=rqqm7km6zrsgVVp3ZcfSPJylig2sDLOj4OukDN7W+Pg=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q/NlzTONdkXP3NzfE5bB5MqP6y/h/nJmFaOMqjeF+BQhIIq5ukdu6UXiAqtwuxQno
	 z0YXa7gSXBlSm/AhlPxAwPW/mkUjL7g2595PRSogFvRSxRQoMt/A3Sod9DQjGGS4eS
	 VIaGKAPAqMrdMvw7Z4mWMV2a+EbSsLt/BhlmFi1GwyZUKEpQ1+ik8UUDUTmmPa4ag/
	 WfoK1G/9mEOExVAKZ5SgOUFlDKgOTMpJx+ulO0+JRTFufnkE5vsixzwRaT1nzPAb6D
	 IEjGtLjTI/YgMx5dw3jW2qWndLKvZ7K4KIjm0Qi4VVJwsbQz1h85Mm+PAYqf2sioxP
	 zEA89m4342Uug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ynLvTNBCTYgp; Wed, 19 Apr 2023 00:19:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B4E5140B54;
	Wed, 19 Apr 2023 00:19:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B4E5140B54
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 914501BF2C1
 for <intel-wired-lan@osuosl.org>; Wed, 19 Apr 2023 00:19:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 74B354008E
 for <intel-wired-lan@osuosl.org>; Wed, 19 Apr 2023 00:19:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74B354008E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X8vDwEMosJqX for <intel-wired-lan@osuosl.org>;
 Wed, 19 Apr 2023 00:19:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B6C840084
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2B6C840084
 for <intel-wired-lan@osuosl.org>; Wed, 19 Apr 2023 00:19:06 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0B63B62E5F;
 Wed, 19 Apr 2023 00:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A9BCC433D2;
 Wed, 19 Apr 2023 00:19:05 +0000 (UTC)
Date: Tue, 18 Apr 2023 17:19:04 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20230418171904.2d01642c@kernel.org>
In-Reply-To: <84acb1a0-f51b-cd2d-d42c-5133767a6698@intel.com>
References: <20230411055543.24177-1-muhammad.husaini.zulkifli@intel.com>
 <84acb1a0-f51b-cd2d-d42c-5133767a6698@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1681863545;
 bh=WTJjtl9TTYd+zlbJcxATIS40gborXoccvf2LXfVseYw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=IKX9hnLbnNlsx9b2+jXh8HiFcWgHQ19M/hC3cB9Z3qDHvoJjVt+SzpS6YF6FZJNnG
 g9VLsbbL3Y+AviCZl0INkUALbs4k1g7s+onsRah7Ip1DWa6JTgAiPvxKxhTfb2iXLJ
 m54iJsOahn+ViLUDIJ/I9FpZiuzKU2W3y0bXxqDyqA+d/7MZdlYTvh5YkSz85rcsS5
 QlQrjSKKMv6QbRefRNTWHydRvTMT920fc+UEB7q8K3hn/JOywynmRAlKxT2HAJeFSW
 YuVA1kUupiHEXMStS50ROPqiTuhkl7zakbrh9qzZOLgZNndkdseAYv/gmBFZIXHjnz
 teBo+zIKbHtlg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=IKX9hnLb
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] igc: Add
 TransmissionOverrun counter
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
Cc: tee.min.tan@linux.intel.com, intel-wired-lan@osuosl.org,
 jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 18 Apr 2023 16:51:17 -0700 Tony Nguyen wrote:
> On 4/10/2023 10:55 PM, Muhammad Husaini Zulkifli wrote:
> > Add TransmissionOverrun as defined by IEEE Std 802.1Q.
> > TransmissionOverrun counter shall be incremented if the implementation
> > detects that a frame from a given queue is still being transmitted by
> > the MAC when that gate-close event for that queue occurs.
> > 
> > This counter is utilised by the Certification conformance test to
> > inform the user application whether any packets are currently being
> > transmitted on a particular queue during a gate-close event.
> > 
> > Intel Discrete I225/I226 have a mechanism to not transmit a packets if
> > the gate open time is insufficient for the packet transmission by setting
> > the Strict_End bit. Thus, it is expected for this counter to be always
> > zero at this moment.  
> 
> This still nets to adding driver statistics that always reports 0. My 
> initial reaction is since it's an IEEE stat and part of a certification 
> test, it should go higher than driver level since other drivers running 
> the test would need the same statistic? However, I'm not sure how that 
> fits in since you're adding per-queue tracking.
> 
> Also, not a fan of the camel case naming.
> 
> Jakub - are you ok with this 0 driver stat or did you have a thought of 
> where you'd like to see it?

Seems like something that should be reported back to the qdisc which
configured the gate.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
