Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BE87377B3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 00:57:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B6B8661396;
	Tue, 20 Jun 2023 22:57:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6B8661396
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687301842;
	bh=gR5B+vhy+T+xJLPRPK7cGRAY4CVSfdi1oraR9R7vN5U=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pGpKPAkR5Ev3yUaNoP1O2/5l0R60WPB4AZC87DS6jVZf58pN26nA3h0UDoX2E4qRL
	 xF5Pzj7oCqDOVsfGxlze6mPqNbNqqJ2fk4J2YaPNfEadY8HVlEt8pg8CPKYxXQxT89
	 qVDIZc6DNzXxMsUCZ0tC+szPSRRBeCmyFcMfEk8zT0jXkrsme8uRiuthb6NXjCoqN2
	 Q8GZ+mRpHQqXZ3qnGhMTLz8KAMBxpVNi9kQ3uLZ5jzddbFLN+SuXVXf1qi+MjEP3RC
	 8sTDThSqQqf2hWkxmtDHudCNvmSqVq5L/kLUjv85rGRiW32jKRgfO00LONRLbS3laN
	 sTSjGydFkAHzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yQo8EjHY5Hzc; Tue, 20 Jun 2023 22:57:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C0F4560B98;
	Tue, 20 Jun 2023 22:57:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C0F4560B98
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 252C11BF59A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 22:57:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F00AC41DA2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 22:57:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F00AC41DA2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gCPJFJxzMr-r for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 22:57:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E3D6C41DA1
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E3D6C41DA1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 22:57:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="363424839"
X-IronPort-AV: E=Sophos;i="6.00,258,1681196400"; d="scan'208";a="363424839"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 15:57:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="779614321"
X-IronPort-AV: E=Sophos;i="6.00,258,1681196400"; d="scan'208";a="779614321"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.17])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 15:57:02 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Florian Kauer <florian.kauer@linutronix.de>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Tan Tee Min <tee.min.tan@linux.intel.com>, Muhammad
 Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>, Aravindhan
 Gunasekaran <aravindhan.gunasekaran@intel.com>, Malli C
 <mallikarjuna.chilakala@intel.com>
In-Reply-To: <20230619100858.116286-1-florian.kauer@linutronix.de>
References: <20230619100858.116286-1-florian.kauer@linutronix.de>
Date: Tue, 20 Jun 2023 15:57:02 -0700
Message-ID: <87ilbhrbcx.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687301835; x=1718837835;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=9b6M6GkQMwHB7xw638t8AtwIppSq4XNQXPspm0IhPTU=;
 b=hqiq5sNk5YpXGR5B2xwN7Szy+XbYR0bfyq9uTAbFT8sCOlMdExkfPnhG
 eEAMn9SjnSmiMGoUB5wBtOFS1LbWVj5EECG+dlzcR5Bl+MA7M//Of6dEI
 SwZuOq53HJcT6egu5RsvXcz65GOJEjlpZgJ87O9jJ2P56qOtTDDgErWg3
 lWTok6H+Jn9mUqljH2/6t+hzTw/hJbvM+l9lZXZzFN3RUQGdCO6of38iP
 +pzqW2fKFiyJ2LXfow4eyD6NLu5CMtV9ZwY7/j5Cd+58xyaADbSY3Komg
 ToAECYolezuMODWnwPJSbQ9zcbiTpoqV+mL9jOEEd9dfMU8sUkzUyRDdk
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hqiq5sNk
Subject: Re: [Intel-wired-lan] [PATCH net v2 0/6] igc: Fix corner cases for
 TSN offload
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
Cc: netdev@vger.kernel.org, kurt@linutronix.de,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Florian Kauer <florian.kauer@linutronix.de> writes:

> The igc driver supports several different offloading capabilities
> relevant in the TSN context. Recent patches in this area introduced
> regressions for certain corner cases that are fixed in this series.
>
> Each of the patches (except the first one) addresses a different
> regression that can be separately reproduced. Still, they have
> overlapping code changes so they should not be separately applied.
>
> Especially #4 and #6 address the same observation,
> but both need to be applied to avoid TX hang occurrences in
> the scenario described in the patches.
>
> Signed-off-by: Florian Kauer <florian.kauer@linutronix.de>
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
>
> ---

For the series:

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
