Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 608E980D4F7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Dec 2023 19:08:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A48B6143F;
	Mon, 11 Dec 2023 18:08:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A48B6143F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702318127;
	bh=7/9Qb8EmQKzG7eXAeCXQIyf5pU7EqTdoZCFZFw4ZjqM=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4TYz8Evqw3Qt7zPfva1zLxyupHFqKs0Q1mcIzs1lhc5GxDk/iqwLmC/oXxXIdhxv5
	 B7IhvocTmpF3rWABsJNxrMihcRJ6s/TkazV6BJij9t3NJffdGbpV/1FrV4Ghs2a6QI
	 zHOlZc10QVEutDjZS/wYajgGONO6BMtcp1Z8L0r0AUNj4QWa72lxwmhf0ERaa+Q5qh
	 3Tba2tguoI/op97GyyCEvdCZZWbonANEiAl4FplxSo55xmKc57oc8HAaPyaxdfWBaN
	 LdflZSZ1HlbEABwYxIh12pYrogsIsIm3mLjjOsdMFclI9wO1GIUWOsgY0smshMLL3y
	 5D54lDGcrwO+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Y9T2ERL6s9X; Mon, 11 Dec 2023 18:08:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 061FD60F0D;
	Mon, 11 Dec 2023 18:08:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 061FD60F0D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B35C1BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 18:08:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E2FDC8215E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 18:08:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2FDC8215E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VLZ7MJPD3DWV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Dec 2023 18:08:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8AE9D82116
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 18:08:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8AE9D82116
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="425811000"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="425811000"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 10:08:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="17595834"
Received: from ashnaupa-mobl1.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.209.96.90])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 10:08:37 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Rodrigo CADORE CATALDO <rodrigo.cadore@l-acoustics.com>, Rodrigo Cataldo
 via B4
 Relay <devnull+rodrigo.cadore.l-acoustics.com@kernel.org>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Aravindhan
 Gunasekaran <aravindhan.gunasekaran@intel.com>, Mallikarjuna Chilakala
 <mallikarjuna.chilakala@intel.com>
In-Reply-To: <PR0P264MB1930850228C3F58EE8B7F9FAC88FA@PR0P264MB1930.FRAP264.PROD.OUTLOOK.COM>
References: <20231208-igc-fix-hicredit-calc-v1-1-7e505fbe249d@l-acoustics.com>
 <871qbwry9y.fsf@intel.com>
 <PR0P264MB1930850228C3F58EE8B7F9FAC88FA@PR0P264MB1930.FRAP264.PROD.OUTLOOK.COM>
Date: Mon, 11 Dec 2023 10:08:37 -0800
Message-ID: <87v894r4re.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702318119; x=1733854119;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=zsHw8c+yNsgNCrRgEh9GvMAaMJXHxP/gdyNdElE3dk0=;
 b=HQlnKKQiDoZ3kwztSPtqoh1ltPlKiqIBzO9SxKKDOFpYKye8GAJqAlD/
 RtjEEhGVylp02QZuArCpPGYvMiMEWl3p5m0AjlmsD9+zwjtKkRb17iuPy
 fUrvHFxmiPkihDEyq0fewHilmfaTq8X06f8TQKXryhB0oLN8U8zEhH3Mc
 oIrAnJNiXWPL7YKvB8dgwmPM66FIF3HeHzC4SFt1oIeXCrSCY7OYRAkGY
 xtFd5mQqUoDVzaODK5jsBeqNSLq7or0eiCh5fgQEmUdEYASFDG2YHG1s0
 GVzCSkssnwhs+j5OW8QNsZB/WXTuz3OlkWkJ3T4i3kXqV1Xxd2kA9WL4v
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HQlnKKQi
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] igc: Fix hicredit calculation
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Rodrigo CADORE CATALDO <rodrigo.cadore@l-acoustics.com> writes:

>> -----Original Message-----
>> From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> 
>> Rodrigo Cataldo via B4 Relay
>> <devnull+rodrigo.cadore.l-acoustics.com@kernel.org> writes:
>> 
>> > From: Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>
>> >
>> > According to the Intel Software Manual for I225, Section 7.5.2.7,
>> > hicredit should be multiplied by the constant link-rate value, 0x7736.
>> >
>> > Currently, the old constant link-rate value, 0x7735, from the boards
>> > supported on igb are being used, most likely due to a copy'n'paste, as
>> > the rest of the logic is the same for both drivers.
>> >
>> > Update hicredit accordingly.
>> >
>> > Fixes: 1ab011b0bf07 ("igc: Add support for CBS offloading")
>> > Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
>> > Signed-off-by: Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>
>> > ---
>> 
>> Very good catch.
>> 
>> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> 
>> Just for curiosity, my test machines are busy right now, what kind of
>> difference are you seeing?
>> 
>
> Hello Vinicius, thank you for the ACK.
>
> For our internal setup, this does not make a difference. My understanding is 
> that hicredit is used for non-SR traffic mixed with SR traffic (i.e., hicredit is
> directly related to the max non-SR frame size). But our setup does not mix
> them (q0 is used only for milan audio/clock SR class A).

I see.

>
> Let me know if you think we need a testcase for this.
>

It was just curiority. No need. Thanks.

>> > This is a simple fix for the credit calculation on igc devices
>> > (i225/i226) to match the Intel software manual.
>> >
>> > This is my first contribution to the Linux Kernel. Apologies for any
>> > mistakes and let me know if I improve anything.
>> > ---
>> >  drivers/net/ethernet/intel/igc/igc_tsn.c | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c
>> b/drivers/net/ethernet/intel/igc/igc_tsn.c
>> > index a9c08321aca9..22cefb1eeedf 100644
>> > --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
>> > +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
>> > @@ -227,7 +227,7 @@ static int igc_tsn_enable_offload(struct igc_adapter
>> *adapter)
>> >                       wr32(IGC_TQAVCC(i), tqavcc);
>> >
>> >                       wr32(IGC_TQAVHC(i),
>> > -                          0x80000000 + ring->hicredit * 0x7735);
>> > +                          0x80000000 + ring->hicredit * 0x7736);
>> >               } else {
>> >                       /* Disable any CBS for the queue */
>> >                       txqctl &= ~(IGC_TXQCTL_QAV_SEL_MASK);
>> >
>> > ---
>> > base-commit: 2078a341f5f609d55667c2dc6337f90d8f322b8f
>> > change-id: 20231206-igc-fix-hicredit-calc-028bf73c50a8
>> >
>> > Best regards,
>> > --
>> > Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>
>> >
>> 
>> Cheers,
>> --
>> Vinicius
>
> Best Regards,
> Rodrigo Cataldo


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
