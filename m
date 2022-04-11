Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A78AD4FC825
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Apr 2022 01:36:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4F34A4015D;
	Mon, 11 Apr 2022 23:36:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BC4Vtp0GeH2G; Mon, 11 Apr 2022 23:36:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4FFF440004;
	Mon, 11 Apr 2022 23:36:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 043601BF399
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 23:36:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E53A8410C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 23:36:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7nwnl4Bm1PN8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Apr 2022 23:36:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 20B1A410BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 23:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649720203; x=1681256203;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=NzZt4IBwnWx6owLRJPhA+huTplPrlQZy3WYXyAwpsSA=;
 b=YCJm8N1Cqk4YbrNzpdHtR57cxzX7tgHCQmDrx3QmfrhZVGBRGgCqYMNq
 OcpLNSApQoiDq/XS/y13lWcEoJB6fOop6ck3go20McZu3cKLIL44xeTE2
 wNRPwqEyzs1OHxwiGBzyBtQMUBKrPkhpV5ud7acP6JO+qAj30b4MqbZJJ
 uQxlq1qK+I37ha8ijUoxvPtWhOZKulJ3Y6kZ5FUPefymiE+DhqrZiuHxS
 q0HC4HWjr0P5WvS5Pzize2OrCKd3QGw8OZy43IabGa3ydZjc4wihviKhj
 aNaA3hsFjbhKZEqlBMCcLj2Lj9PreB2y8ZkWnRZXYpTMEjztiiKqTubiR g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10314"; a="244122426"
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="244122426"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 16:36:42 -0700
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="572469523"
Received: from vcostago-mobl3.jf.intel.com (HELO vcostago-mobl3)
 ([10.24.14.61])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 16:36:42 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20210628092003.bribdjfaxwnpdt5f@skbuf>
References: <20210626003314.3159402-1-vinicius.gomes@intel.com>
 <20210626003314.3159402-12-vinicius.gomes@intel.com>
 <20210628092003.bribdjfaxwnpdt5f@skbuf>
Date: Mon, 11 Apr 2022 16:36:42 -0700
Message-ID: <87wnfvchv9.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 11/12] igc: Check
 incompatible configs for Frame Preemption
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
Cc: "mkubecek@suse.cz" <mkubecek@suse.cz>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Po Liu <po.liu@nxp.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Vladimir Oltean <vladimir.oltean@nxp.com> writes:

> On Fri, Jun 25, 2021 at 05:33:13PM -0700, Vinicius Costa Gomes wrote:
>> Frame Preemption and LaunchTime cannot be enabled on the same queue.
>> If that situation happens, emit an error to the user, and log the
>> error.
>> 
>> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> ---
>
> This is a very interesting limitation, considering the fact that much of
> the frame preemption validation that I did was in conjunction with
> tc-etf and SO_TXTIME (send packets on 2 queues, one preemptible and one
> express, and compare the TX timestamps of the express packets with their
> scheduled TX times). The base-time offset between the ET and the PT
> packets is varied in small increments in the order of 20 ns or so.
> If this is not possible with hardware driven by igc, how do you know it
> works properly? :)

Good question. My tests were much less accurate than what you were
doing, I was basically flooding the link with preemptable packets, and
sending some number of express packets, and counting them using some
debug counters on the receiving side.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
