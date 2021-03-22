Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC8F34495B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Mar 2021 16:36:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AEB0640387;
	Mon, 22 Mar 2021 15:36:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uo3GMzobU9iX; Mon, 22 Mar 2021 15:36:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8AD0140380;
	Mon, 22 Mar 2021 15:36:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1D06A1BF860
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Mar 2021 15:36:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1879040166
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Mar 2021 15:36:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XqY31faGVQZ5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Mar 2021 15:36:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6CFF140137
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Mar 2021 15:36:28 +0000 (UTC)
IronPort-SDR: nyYOgCLdISpQtQrjOOFVqOMwzC8xZ74Ygs9LTO0PNKl59UXyYwxTDxhVlkajkf2Pt2OtwaHApJ
 sqq0PSx49oHg==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="190388800"
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="190388800"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 08:36:27 -0700
IronPort-SDR: Q/H4/+JVNJok82pFItWldcl3WVNosJ0SalGgqz6jpWL1XnigUMagnhUZ9QrID+lspV8TjLunmw
 hiaI1gy4xMRw==
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="451777329"
Received: from canguven-mobl1.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.255.87.118])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 08:36:27 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Richard Cochran <richardcochran@gmail.com>
In-Reply-To: <20201118125451.GC23320@hoboy.vegasvil.org>
References: <20201114025704.GA15240@hoboy.vegasvil.org>
 <874klo7pwp.fsf@intel.com> <20201117014926.GA26272@hoboy.vegasvil.org>
 <87d00b5uj7.fsf@intel.com> <20201118125451.GC23320@hoboy.vegasvil.org>
Date: Mon, 22 Mar 2021 08:36:26 -0700
Message-ID: <87czvrkxol.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH next-queue v2 3/3] igc: Add support
 for PTP getcrosststamp()
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
Cc: linux-pci@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 andre.guedes@intel.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Richard Cochran <richardcochran@gmail.com> writes:

> On Tue, Nov 17, 2020 at 05:21:48PM -0800, Vinicius Costa Gomes wrote:
>> Agreed that would be easiest/simplest. But what I have in hand seems to
>> not like it, i.e. I have an earlier series implementing this "one shot" way
>> and it's not reliable over long periods of time or against having the
>> system time adjusted.
>
> Before we go inventing a new API, I think we should first understand
> why the one shot thing fails.

After a long time, a couple of internal misunderstandings, fixing some
typos in the delay adjustment constants and better error handling, this
one shot method is working well.

I will propose a new version, implementing PTP_SYS_OFFSET_PRECISE using
the one shot way.

>
> If there is problem with the system time being adjusted during PTM,
> then that needs solving in any case!

The new series uses shorter cycles, is able to restart the PTM dialogs
if an error is detected (the clock adjustment in the end causes the NIC
to report a PTM timeout), so things are working better.

>
> Thanks,
> Richard


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
