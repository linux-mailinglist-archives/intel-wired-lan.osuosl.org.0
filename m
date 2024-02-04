Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D21E3848ECF
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 Feb 2024 16:13:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 40EE641748;
	Sun,  4 Feb 2024 15:13:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40EE641748
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707059580;
	bh=gflw4YyLuMAe2h5xazTuDp4SL2Shijesbk5Fa6ADkLI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wti51ao1JHl9dA/DJZlUXEDm35onG3+nn1YzH+/GYv8WfQeDq2PzCbWt/JLTncnzO
	 3BbUMGi1lgkijp4Wt/66RCFdNzdUlXfO+hZESAzZefRKtB2hSpu+NHXOENY1NUs74J
	 kJZo3shOwNcHf8D5S/rGtBU6eLMhHwdrnalVgcc07IHeF9H2nZQVKo2JKt+6BMD9We
	 Gg4+ikc3Sq1omrO+ToPiI1UmkcB0nUUuBh2vB6SrqcMTnaoIISDfsD6TFAAU3Qppf+
	 RKbQBdpVW7QdNDpApMD7LlXcSDuRv1dBHbWZ2nyop+H+SvLpSuvwessEwNkUDqbzcS
	 h2q1ZAoOAoouw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MwFn593EqroZ; Sun,  4 Feb 2024 15:12:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 59F3541741;
	Sun,  4 Feb 2024 15:12:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59F3541741
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4788B1BF47A
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Feb 2024 15:12:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1CB5D41741
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Feb 2024 15:12:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CB5D41741
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OqsnGQqEmlny for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Feb 2024 15:12:52 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 04 Feb 2024 15:12:52 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A74F841737
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A74F841737
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Feb 2024 15:12:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10973"; a="550259"
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="550259"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2024 07:05:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10973"; a="823649190"
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; d="scan'208";a="823649190"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.124.132.248])
 ([10.124.132.248])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2024 07:05:41 -0800
Message-ID: <1e8740a0-b2b3-41d3-a554-9fb2d79dd32a@linux.intel.com>
Date: Sun, 4 Feb 2024 17:05:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Kurt Kanzenbach <kurt@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
References: <20240124085532.58841-1-kurt@linutronix.de>
 <20240124085532.58841-3-kurt@linutronix.de>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20240124085532.58841-3-kurt@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707059573; x=1738595573;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=AJAMi8u56refPBbstHaeF9yjwnclv72YCW5sJ51shrE=;
 b=P7m3RMhGQSy5YKcou/zEKOX4VtYqWG8xGNrjqh44xeNzI4QhFvSZySrs
 C+8HUswVAoM5gc6k58RONm8bkE/NOSisrOJqtIPB+GMduB0WhMbAQZWWa
 l31QN/6dPJ/Yu890GXLK7osi8vmnNoFt6n2MCPok2GzrUzif41LMrDf+2
 zQK8M323Rj1e+m7wr1vRNyNzX82vIP0I213xeNgp5MElNn19WnSTkoyLB
 YfEc8MlIBNHgcYwredr6oqRV2ZWPW72QGWNx6vsY+Fq8w4AfTxPBiR0sA
 DVsnAFAudW4ROq/pkQkM7hwtU3etVoQcSRmENBmNGNdYJ0oea5gUtsFZA
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P7m3RMhG
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 2/3] igc: Use netdev
 printing functions for flex filters
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
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/24/2024 10:55, Kurt Kanzenbach wrote:
> All igc filter implementations use netdev_*() printing functions except for
> the flex filters. Unify it.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 9 ++++-----
>   1 file changed, 4 insertions(+), 5 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
