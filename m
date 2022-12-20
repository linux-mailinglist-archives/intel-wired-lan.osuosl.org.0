Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAF0652550
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Dec 2022 18:12:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 557E141686;
	Tue, 20 Dec 2022 17:12:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 557E141686
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671556334;
	bh=xOjTdYoINY3Tx4HCmRXb4r4q046zkeMnd2Uf5KP+w1w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CEcn0eYCA0DQRt87P55L7hbbJaoirTYaekny876oc5RIWk7LVbpkoPsHcn4HNDzWK
	 PIhaU9apcLdqZBQxn80Mci0nOO9Ad9x5CiBbR7Xs7q7zP5StCqbuz7nFBQInyX0Fy6
	 hYdjj+ImYds4nzhLnaPH3vdY1vU5F34giM2YtYGC7QlsJAliF41Iywmq16yjmE67K1
	 UdHeu5v6d6don3Y4YSGJbxs+1s60+JS3pEH4ThQ/FHIdCzdNYJ1HGNQsOgSsQPuHGR
	 +wN+u2zbCMGKgkfHtDDWeMSNNJXn3pNC9oJbJB14A7n8FVKgRHWh42hdjq409wBJ/x
	 Pqr/9FfJainUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HjSR_9NY-HoF; Tue, 20 Dec 2022 17:12:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1FDF440265;
	Tue, 20 Dec 2022 17:12:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1FDF440265
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BB5FE1BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 17:12:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 93D9F409A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 17:12:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93D9F409A0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9x6ZEManUt7s for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Dec 2022 17:12:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 94AA940265
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 94AA940265
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 17:12:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="307344289"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="307344289"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 09:08:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="825342435"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="825342435"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga005.jf.intel.com with ESMTP; 20 Dec 2022 09:08:23 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 2BKH8MMS032567; Tue, 20 Dec 2022 17:08:22 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
Date: Tue, 20 Dec 2022 18:08:22 +0100
Message-Id: <20221220170822.749685-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221220160506.173628-1-benjamin.mikailenko@intel.com>
References: <20221220160506.173628-1-benjamin.mikailenko@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671556324; x=1703092324;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7zEYWfZVYgjMZRI9OHulq2xBLRHk8DWXb6YehDj721I=;
 b=hNac9toqv1HLnOYY3IhHoeah/28ym/dKNTj+iANjaV7VdB5D+pmLF3GZ
 1L+NpPFLx5tvH3U1bh7Qji98wB9gqIkRojD7nV80Tehye4d67yUfPblSM
 gRKlyCv15RNCJbTBY+gtsAgIF3doUTfq8FPWW3B24O5EMtRA1gUSzMuz9
 QOD6AUy5tDBfJ50rTpS2/6lARcmE183YlTYrQirMga5rxPSV7qAg+chtb
 3z1Y98qnI/a6E2pN0sH3CEaRE1bnhdFHnNHYL4/bAnW/j0KuKzc2q9wUw
 vrf2Re2XHoCtF6ry7nl0mNd7B9OT8sO3xlMuCwnJhwcs6JTCCFP4fSrbo
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hNac9toq
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Reset stats on queue
 change
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
Date: Tue, 20 Dec 2022 11:05:06 -0500

> Commit 288ecf491b16 ("ice: Accumulate ring statistics over reset")
> implemented functionality for interface statistics to persist over reset.
> This avoided the case where a reset happens in the background, statistics
> set to zero, and the user checks ring statistics expecting them to be
> populated.
> 
> In the case of changing the number of queues, statistics should reset.
> This is because old data should clear after parameter reconfiguration.

"Should clear" -- because? Who said that? Stats are usually a
netdev-lifetime entity (or even pcidev-lifetime).

> 
> Fix this by resetting statistics when the number of queues changes.
> 
> Fixes: 288ecf491b16 ("ice: Accumulate ring statistics over reset")

It's not even clear why resets are needed, not speaking of if it
actually fixes anything. I think this wouldn't hit the net-fixes
tree with no real scenario where the mentioned commit provides a
serious regression.

> Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 65 ++++++++++++++++++++++++
>  1 file changed, 65 insertions(+)

[...]

> -- 
> 2.34.3

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
