Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F8E55A51D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jun 2022 01:56:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42A6C60EC0;
	Fri, 24 Jun 2022 23:56:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 42A6C60EC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656115001;
	bh=o3Qoh656MRRP+ulgFXRSBE/UIb9RKRxRkw6b33RZMpQ=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9cZPK+XKmot+Nv9pQ7KizCzJeTyuay95zRgzUViAInkb54ZtcfrCKKGECBb78FMT8
	 adwfIIys94/NQqY3jv0/T4tDrNtzCcr5UakE1kC3e69XtaBJjs9z65UCT0EjT4P04f
	 QHe98HwVN1h4yyfQGsnERR6Zm0c3yVggRqhgy6hZO+f+Wp3MPjqH3GjGhrJtURDJb3
	 vN0/jR7xcy2Zf0Bl7Vi9SPLtjWPy9t1p3Ox9HG2Pm4khM7aTsH3MWJG7z5PB1ol4Fm
	 jdhKQuH2Ok1h64R4z/B87AhuCbvCeXjYio/QERu2X3wBfp5IaXdTFANPi2GW7UDNTd
	 Y1ymzqKr49g1A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XBJjidLcORIa; Fri, 24 Jun 2022 23:56:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36FB260B0C;
	Fri, 24 Jun 2022 23:56:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36FB260B0C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CAB871BF279
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 23:56:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AB3E140D81
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 23:56:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB3E140D81
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8N3NIoZLhW8u for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jun 2022 23:56:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D14B340D35
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D14B340D35
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 23:56:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10388"; a="279883963"
X-IronPort-AV: E=Sophos;i="5.92,220,1650956400"; d="scan'208";a="279883963"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 16:56:24 -0700
X-IronPort-AV: E=Sophos;i="5.92,220,1650956400"; d="scan'208";a="593442823"
Received: from jzhan12-mobl1.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.212.38.121])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 16:56:23 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220606092747.16730-1-kurt@linutronix.de>
References: <20220606092747.16730-1-kurt@linutronix.de>
Date: Fri, 24 Jun 2022 16:56:23 -0700
Message-ID: <87pmixy5so.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656114993; x=1687650993;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Zz07mbh9YfRoTYX5tVtIlDjpohvOvHEpK3Dp4+QSLvI=;
 b=I30sRA0p86LP90RonZlr6FGEV0sth9RhCD36Qp9R+joECEBlstB9+JRD
 ZirgvsOMnyCBapkzeX5d2ZX3DLUZHal9oGAdRxVHS5Onoq9WMFKZPSoa3
 BonECEtrGF3KDUwmj1fvV+kgrQtPvDq24YB8RSoyYgRwaQldeM1s4S1T1
 PSL1kRez8MQ0Po84dY4Vkh8Bbbc6FwkrR2JRNYEDex/K2ABGmnU7qNSYZ
 RIB+HT+Q7SeICzsPUXhW3V3OtyavqzeYN2AfO0jNY5Ycm4B0MVBaLsldq
 29Uf9iwsCKKXzJGNjmiEIlEzP/2dTArjU5R1FgweWk49Dlvo9eOo1yD7t
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I30sRA0p
Subject: Re: [Intel-wired-lan] [PATCH net-next] igc: Lift TAPRIO schedule
 restriction
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
Cc: netdev@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Kurt Kanzenbach <kurt@linutronix.de> writes:

> Add support for Qbv schedules where one queue stays open
> in consecutive entries. Currently that's not supported.
>
> Example schedule:
>
> |tc qdisc replace dev ${INTERFACE} handle 100 parent root taprio num_tc 3 \
> |   map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \
> |   queues 1@0 1@1 2@2 \
> |   base-time ${BASETIME} \
> |   sched-entry S 0x01 300000 \ # Stream High/Low
> |   sched-entry S 0x06 500000 \ # Management and Best Effort
> |   sched-entry S 0x04 200000 \ # Best Effort
> |   flags 0x02
>
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---

Finally did a few rounds of testing here, everything worked as expected:

Reviewed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
