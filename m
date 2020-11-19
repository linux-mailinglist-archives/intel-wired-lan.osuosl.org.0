Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4382B8903
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Nov 2020 01:22:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 48D2086A8E;
	Thu, 19 Nov 2020 00:22:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cBKouPgtGUrN; Thu, 19 Nov 2020 00:22:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6BB9986A7D;
	Thu, 19 Nov 2020 00:22:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B727A1BF84C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Nov 2020 00:22:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AD89787283
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Nov 2020 00:22:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bodjk9NwHXk7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Nov 2020 00:22:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 201D887281
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Nov 2020 00:22:40 +0000 (UTC)
IronPort-SDR: cA2lCU9nMigVP9nCi0M0zZkyazmX0v1mrl3OePJqCn62X8NEIqcpQeEPuucCr/MZh4IhX6D3ZT
 vaQz6B0ZDanA==
X-IronPort-AV: E=McAfee;i="6000,8403,9809"; a="158979725"
X-IronPort-AV: E=Sophos;i="5.77,488,1596524400"; d="scan'208";a="158979725"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2020 16:22:39 -0800
IronPort-SDR: WolBowoaeNrGJ0peStyiP01po1wnNwy2OasZK67igl9TNe+Fffxtkf9DoW7u78zFQ8bwu+eUWi
 +fCfEpL8XUDA==
X-IronPort-AV: E=Sophos;i="5.77,488,1596524400"; d="scan'208";a="532953743"
Received: from prasadpr-mobl.amr.corp.intel.com (HELO ellie) ([10.212.21.86])
 by fmsmga006-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Nov 2020 16:22:38 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Richard Cochran <richardcochran@gmail.com>
In-Reply-To: <20201118125451.GC23320@hoboy.vegasvil.org>
References: <20201114025704.GA15240@hoboy.vegasvil.org>
 <874klo7pwp.fsf@intel.com> <20201117014926.GA26272@hoboy.vegasvil.org>
 <87d00b5uj7.fsf@intel.com> <20201118125451.GC23320@hoboy.vegasvil.org>
Date: Wed, 18 Nov 2020 16:22:37 -0800
Message-ID: <87wnyi2o1e.fsf@intel.com>
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
Cc: andre.guedes@intel.com, linux-pci@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, bhelgaas@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Richard,

Richard Cochran <richardcochran@gmail.com> writes:

> On Tue, Nov 17, 2020 at 05:21:48PM -0800, Vinicius Costa Gomes wrote:
>> Agreed that would be easiest/simplest. But what I have in hand seems to
>> not like it, i.e. I have an earlier series implementing this "one shot" way
>> and it's not reliable over long periods of time or against having the
>> system time adjusted.
>
> Before we go inventing a new API, I think we should first understand
> why the one shot thing fails.

Talking with the hardware folks, they recommended using the periodic
method, the one shot method was implemented as a debug/evaluation aid.

The explanation I have is something along these lines: the hardware
keeps track of the "delta" between the Master Time and its own clock,
and uses it to calculate the timestamps exposed in the NIC registers. To
have a better "delta" it needs more samples. And so it has improved
stability when PTM dialogs happen more continuously, and that's the
recommended way.

The PCIe PTM specification doesn't suggest how the timestamps need to be
exposed/calculated, and how long it needs to run, and it sounded to me
that other implementations could have similar behavior.

>
> If there is problem with the system time being adjusted during PTM,
> then that needs solving in any case!

When PTM is running in the periodic mode, system clock adjustments are
handled fine.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
