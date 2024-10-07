Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E87993AA2
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Oct 2024 01:03:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7ED4580D2C;
	Mon,  7 Oct 2024 23:03:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LWa6hCNwV9_W; Mon,  7 Oct 2024 23:03:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C84D80D42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728342187;
	bh=zOg6ogmZKiE7fpK+yT5L7udC9CjSK1kzjhMe6bjr8LY=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Fy9GpqR34GaWYn5GDhEOt6Oa+MXn5V0/vRHXiuVnBP4HeQuYEOAUQ8nQIyox6Vzoi
	 rwrG34n9DcEtPxGY3y0bhAbojn5m5tbHzO0ACrB2vIMJ7r9fvcWCYWHXi4+3GE9sFm
	 FZbPK3CG6aVmkp0HXvk706bOgBaC6d/kiORbXXA2+m601tSrm53dvx2dLQ6Kp8jDrG
	 H40v9byRQrPTaG5serij5jk+VckiQCK967a6co4Q9GsFJDs1a4Z6gD/+hzivDD5yl0
	 gmSq9jirkm203Qf+N8fDxfe2x+x42OcocFWAIJONldiaI6+QtZSkcZJ4sBpiY2g868
	 INqSZemL+K3DQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C84D80D42;
	Mon,  7 Oct 2024 23:03:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EC6B61BF424
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 23:03:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DA73740190
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 23:03:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D9onueh7vdn5 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Oct 2024 23:03:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EA9D540298
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA9D540298
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EA9D540298
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 23:03:03 +0000 (UTC)
X-CSE-ConnectionGUID: 6Y77ZFEAROi0DK9VqP/kcA==
X-CSE-MsgGUID: A/6djPZZR8ywPq0Jgxy67w==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="27454570"
X-IronPort-AV: E=Sophos;i="6.11,185,1725346800"; d="scan'208";a="27454570"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 16:03:03 -0700
X-CSE-ConnectionGUID: G9AYz1QISK6vASQrVyCYHA==
X-CSE-MsgGUID: YoOhUAmDRXmN0/OTIzzNug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,185,1725346800"; d="scan'208";a="75185870"
Received: from gargmani-mobl1.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.124.222.97])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 16:03:01 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Joe Damato <jdamato@fastly.com>, netdev@vger.kernel.org
In-Reply-To: <20241003233850.199495-1-jdamato@fastly.com>
References: <20241003233850.199495-1-jdamato@fastly.com>
Date: Mon, 07 Oct 2024 16:03:00 -0700
Message-ID: <87h69ntt23.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728342184; x=1759878184;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Duo4y6dwJDlWYCUCaXKo3IgzU776UNw0umD4Fhn68fY=;
 b=PqkyVuYWRSw5C0A7PeokrYWEOXl+OK3/9IDxTqlH6axFxgt1tk2BvYcA
 kLPWt+s/2CTbIcqTRLSCkZ/PELrcmUJfadiPZQ1Dl3EIeI3m4kEmZFNPf
 yh2+t8q4gwwWQ7+dOqJRWCUs6TL7RfDUA2dKI8T5zzHGND5yu0FU0X60a
 YzHJZ5HwzY5O1zmhEDQwFWF4vbJqtVx8koSMBtk67wpsfpBv9jD6AIgOV
 we3LAt/dbdILpvKpGX3s7eFOnZXz56F7iARrYVK9iOWN06xB2QN3r8VpJ
 WjtfILsTEldkP59DNh+LcA+684L73ZnI7aMqsBU9xPT5QG3ePOHXUq26p
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PqkyVuYW
Subject: Re: [Intel-wired-lan] [RFC net-next 0/2] igc: Link IRQs and queues
 to NAPIs
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Joe Damato <jdamato@fastly.com>, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "moderated
 list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Joe Damato <jdamato@fastly.com> writes:

> Greetings:
>
> This is an RFC to get feedback before submitting an actual series and
> because I have a question for igc maintainers, see below.
>
> This series addss support for netdev-genl to igc so that userland apps
> can query IRQ, queue, and NAPI instance relationships. This is useful
> because developers who have igc NICs (for example, in their Intel NUCs)
> who are working on epoll-based busy polling apps and using
> SO_INCOMING_NAPI_ID, need access to this API to map NAPI IDs back to
> queues.
>
> See the commit messages of each patch for example output I got on my igc
> hardware.
>
> My question for maintainers:
>
> In patch 2, the linking should be avoided for XDP queues. Is there a way
> to test that somehow in the driver? I looked around a bit, but didn't
> notice anything. Sorry if I'm missing something obvious.
>

From a quick look, it seems that you could "unlink" the XDP queues in
igc_xdp_enable_pool() and (re-)link them in igc_xdp_disable_poll().

Or just the existence of the flag IGC_RING_FLAG_AF_XDP_ZC in the rings
associated with the queue is enough?

I still have to take a better look at your work to help more, sorry.

> Thanks,
> Joe
>
> Joe Damato (2):
>   igc: Link IRQs to NAPI instances
>   igc: Link queues to NAPI instances
>
>  drivers/net/ethernet/intel/igc/igc.h      |  1 +
>  drivers/net/ethernet/intel/igc/igc_main.c | 33 ++++++++++++++++++++---
>  2 files changed, 30 insertions(+), 4 deletions(-)
>
> -- 
> 2.25.1
>
>

Cheers,
-- 
Vinicius
