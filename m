Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD2A87AB00
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Mar 2024 17:23:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B4ED60C06;
	Wed, 13 Mar 2024 16:23:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UKOeMC0_PD5w; Wed, 13 Mar 2024 16:23:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC61D60071
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710346995;
	bh=OP4XfExdgKALT49FLHn2A5xMOxDTx6HKoV0OjVzMEsw=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U3JLTtrpun90WMmCTuml0o1TCDklENDGPAnj8lfIkxHV21ALQrV0t5OLOJtQjgHLz
	 CxKtG0scMao5XUjllU4b+glpu1ceYuE+FvIkI8ZhMgpNYE2mqioZDgGcJ62owH2z4G
	 zJ2V0MYVw27lqf3sTzqUod5vFi8o8TcEpVSYkf7Yg8hk9BMggFQR2n9Nt1dBvGbKsW
	 QX/zoPYMX67LmRk5ZL1lGaV0s19/VbrLtATxiwrC6RFHnpGcEGAf0wieqbv/soQe3q
	 sMooaKn9oRYAt8dPGZkoWDnOcRoEy7k3ecFWfBoAur8ojZShUjJoG9sRRZUnSbfWbV
	 S3yHO5C8F9RAQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC61D60071;
	Wed, 13 Mar 2024 16:23:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 24B7E1BF239
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 16:23:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1C69B6076D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 16:23:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zvNahjGwqDjf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Mar 2024 16:23:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1E7ED60071
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E7ED60071
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1E7ED60071
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 16:23:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="8068759"
X-IronPort-AV: E=Sophos;i="6.07,123,1708416000"; 
   d="scan'208";a="8068759"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 09:23:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,123,1708416000"; d="scan'208";a="16572134"
Received: from unknown (HELO vcostago-mobl3) ([10.125.110.77])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 09:23:11 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Vladimir Oltean <vladimir.oltean@nxp.com>, Muhammad
 Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
In-Reply-To: <20240313-igc_txts_comment-v1-1-4e8438739323@linutronix.de>
References: <20240313-igc_txts_comment-v1-1-4e8438739323@linutronix.de>
Date: Wed, 13 Mar 2024 09:23:11 -0700
Message-ID: <87v85qp0cw.fsf@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710346993; x=1741882993;
 h=from:to:cc:mime-version:subject:in-reply-to:references:
 date:message-id;
 bh=bIh/N/2R/W06MlUKTSgW8YZVPxC6qNVJHsYSfuglBYI=;
 b=CMEW6VcFOqInQ+wsvRvUG2KdJhLEtcqQGt01plK0HrS3N2RrvBNtTSDQ
 oTGfTqRQhqvKeMDpCcX7Ysay6U+t1JoY8dThE71ZcdqGMBo/vv7HwDt/W
 sslFrdxAs8Rp4IxHCEv3gfMwUutNercdhAf06ijtc2tjp/3eGd5ULrwxd
 QeMk3z91olNwZeky4mTOIgSd6d2vkbJiCMG6lMdwPpwg9rpaAxfUjUm0H
 3TYlaaZ5HtN4ClUcusRF8SEYST8mIJdsO9/0FQEklAC8277HgSh0ipOTY
 uiZLG9Mn8kClgSkuMmi+hTlLAJ7QpDb8/4lFr7T6hhOis8mxgM6GUO4kv
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CMEW6VcF
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] igc: Remove stale comment
 about Tx timestamping
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
Cc: netdev@vger.kernel.org, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Kurt Kanzenbach <kurt@linutronix.de>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Kurt Kanzenbach <kurt@linutronix.de> writes:

> The initial igc Tx timestamping implementation used only one register for
> retrieving Tx timestamps. Commit 3ed247e78911 ("igc: Add support for
> multiple in-flight TX timestamps") added support for utilizing all four of
> them e.g., for multiple domain support. Remove the stale comment/FIXME.
>
> Fixes: 3ed247e78911 ("igc: Add support for multiple in-flight TX timestamps")
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---

Ugh, sorry for forgetting about that.

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>


Cheers,
-- 
Vinicius
