Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6155E94F633
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2024 19:59:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 135F740972;
	Mon, 12 Aug 2024 17:59:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2Aa1eBCVFPLw; Mon, 12 Aug 2024 17:59:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 480AD403AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723485553;
	bh=JxAA28NLk6PnTxLiz/r5TZWNzkEqXPJZhiKcuz+Kudc=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8kdhP/J2MyURP8wdh6BMfLr9ZL6lpw6bC/RJ9ViD6idbJsOr2D4C+JtlANr0Ypuqh
	 J2Ub+HMEZhReagyZwLNcDLv4W7LX+1YzwAapDmvFEpmFr370D9GFcdwdSN4gqwHyqR
	 ghCidu62L08CJRdy/r/fE8e52kXpFZheMbYTkh/cjd3NruL49y7MfTUkItm3mgYP2n
	 W4L9+a449TM2kQCNn02kkf7CY2au/jrUZeIVAt1+LaUMhMjl3ccCFh/GoDbArBpOMl
	 zITZnqb42UJlDUw/F08cxe+dmIsyD0rx+HTB1PZESx9+62gZjKAs+S0G0sF/Zx6qRs
	 WIAhmAEZaUHZQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 480AD403AD;
	Mon, 12 Aug 2024 17:59:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DB09D1BF20D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 17:59:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D50218105C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 17:59:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VAOWmdLrYpBH for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Aug 2024 17:59:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9DA628104F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DA628104F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9DA628104F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 17:59:10 +0000 (UTC)
X-CSE-ConnectionGUID: d5/jsQODRhOytE3BAeVYvA==
X-CSE-MsgGUID: 26qKrVsXSkmwJbJRhjplgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="32232753"
X-IronPort-AV: E=Sophos;i="6.09,283,1716274800"; d="scan'208";a="32232753"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 10:59:10 -0700
X-CSE-ConnectionGUID: lqmqNyJRTvaXvQIVJUa3Qg==
X-CSE-MsgGUID: VMuQJ5CiTWq71zcqj1hqfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,283,1716274800"; d="scan'208";a="63201380"
Received: from unknown (HELO vcostago-mobl3) ([10.241.225.92])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 10:59:09 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Daiwei Li <daiweili@gmail.com>, Richard Cochran <richardcochran@gmail.com>
In-Reply-To: <CAN0jFd1CpPtid7TGJcgzajRXQ5oxYN1LjLjLwK7HjQ1piuZ_XQ@mail.gmail.com>
References: <20240810002302.2054816-1-vinicius.gomes@intel.com>
 <Zrb0wdmIsksG38Uc@hoboy.vegasvil.org>
 <CAN0jFd1CpPtid7TGJcgzajRXQ5oxYN1LjLjLwK7HjQ1piuZ_XQ@mail.gmail.com>
Date: Mon, 12 Aug 2024 10:59:08 -0700
Message-ID: <87sev9wrkj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723485550; x=1755021550;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=89tBf3JaxrUSUgE4DeBjSLiEkLK6rYWE9SbgQJLHxL8=;
 b=VLSX5kkPr4lOWgLGPvQvheoA6kuC8IfB9WlP1QyV/9mbu5vaWS3TK/0R
 h7P5mQGFMZ7NQ39QnVBMNCq4HWUeP/VxYE9U5KfB12whMbxHM64EgTd/k
 CX1L9ZiukekvG6+dYv9V0OK/d3eUIvKurDliAM/iCn0KxbYk0ZnXSYQif
 WO5wTf12Q4ievu1d8YyCijqyOC6ED95nTwTnE3pp/bqTX1KgE3PyfhV/K
 3ZMw7zwK5S026llJ0auPbFkBxX79CR2srqpeB9ETrxgGqam6TkAAS3vNH
 Eg9pcsE+ilAuVFAjLTlFIPpj73gZ6QHVCHk3LhrvkVy9U9dVC28MM38yt
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VLSX5kkP
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igb: Fix not clearing
 TimeSync interrupts for 82580
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
Cc: sasha.neftin@intel.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 kurt@linutronix.de, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Daiwei Li <daiweili@gmail.com> writes:

>> @Daiwei Li, I don't have a 82580 handy, please confirm that the patch
> fixes the issue you are having.
>
> Thank you for the patch! I can confirm it fixes my issue. Below I offer a
> patch that also works in response to Paul's feedback.
>

Your patch looks better than mine. I would suggest for you to go ahead
and propose yours for inclusion.

>> Please also add a description of the test case
>
> I am running ptp4l to serve PTP to a client device attached to the NIC.
> To test, I am rebuilding igb.ko and reloading it.
> Without this patch, I see repeatedly in the output of ptp4l:
>
>> timed out while polling for tx timestamp increasing tx_timestamp_timeout=
 or
>> increasing kworker priority may correct this issue, but a driver bug lik=
ely
>> causes it
>
> as well as my client device failing to sync time.
>
>> and maybe the PCI vendor and device code of your network device.
>
> % lspci -nn | grep Network
> 17:00.0 Ethernet controller [0200]: Intel Corporation 82580 Gigabit
> Network Connection [8086:150e] (rev 01)
> 17:00.1 Ethernet controller [0200]: Intel Corporation 82580 Gigabit
> Network Connection [8086:150e] (rev 01)
> 17:00.2 Ethernet controller [0200]: Intel Corporation 82580 Gigabit
> Network Connection [8086:150e] (rev 01)
> 17:00.3 Ethernet controller [0200]: Intel Corporation 82580 Gigabit
> Network Connection [8086:150e] (rev 01)
>
>> Bug, or was it a feature?
>
> According to https://lore.kernel.org/all/CDCB8BE0.1EC2C%25matthew.vick@in=
tel.com/
> it was a bug. It looks like the datasheet was not updated to
> acknowledge this bug:
> https://www.intel.com/content/www/us/en/content-details/333167/intel-8258=
0-eb-82580-db-gbe-controller-datasheet.html
> (section 8.17.28.1).
>
>> Is there a nicer way to write this, so `ack` is only assigned in case
>> for the 82580?
>
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> b/drivers/net/ethernet/intel/igb/igb_main.c
> index ada42ba63549..87ec1258e22a 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -6986,6 +6986,10 @@ static void igb_tsync_interrupt(struct
> igb_adapter *adapter)
>         struct e1000_hw *hw =3D &adapter->hw;
>         u32 tsicr =3D rd32(E1000_TSICR);
>         struct ptp_clock_event event;
> +       const u32 mask =3D (TSINTR_SYS_WRAP | E1000_TSICR_TXTS |
> +                          TSINTR_TT0 | TSINTR_TT1 |
> +                          TSINTR_AUTT0 | TSINTR_AUTT1);
> +
>
>         if (tsicr & TSINTR_SYS_WRAP) {
>                 event.type =3D PTP_CLOCK_PPS;
> @@ -7009,6 +7013,13 @@ static void igb_tsync_interrupt(struct
> igb_adapter *adapter)
>
>         if (tsicr & TSINTR_AUTT1)
>                 igb_extts(adapter, 1);
> +
> +       if (hw->mac.type =3D=3D e1000_82580) {
> +               /* 82580 has a hardware bug that requires a explicit
> +                * write to clear the TimeSync interrupt cause.
> +                */
> +               wr32(E1000_TSICR, tsicr & mask);

Yeah, I should have thought about that, that writing '1' into an
interrupr that is cleared should be fine.

> +       }
>  }
> On Fri, Aug 9, 2024 at 10:04=E2=80=AFPM Richard Cochran
> <richardcochran@gmail.com> wrote:
>>
>> On Fri, Aug 09, 2024 at 05:23:02PM -0700, Vinicius Costa Gomes wrote:
>> > It was reported that 82580 NICs have a hardware bug that makes it
>> > necessary to write into the TSICR (TimeSync Interrupt Cause) register
>> > to clear it.
>>
>> Bug, or was it a feature?
>>
>> Or IOW, maybe i210 changed the semantics of the TSICR?
>>
>> And what about the 82576?
>>
>> Thanks,
>> Richard

--=20
Vinicius
