Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E2072472F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 17:04:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 89162418F3;
	Tue,  6 Jun 2023 15:04:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89162418F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686063846;
	bh=RIGLId2D8/NuBn4/YTghGFk+A0r28cLYY/6Qj9X2ke4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nckbgmLdEFSHwQaw4HaBlKKXydilDIk0sB1q/IrETb9Z3m53YxUi6s2s5teX9FpcV
	 1wYAo/yKx38hyLXoD6o+B8+GK6xTHOonYXiZqMt1zc6wgf/xoriUltanx265o+MPeR
	 8zEUIZISOJtWgjyEOpkfpkKU8NeFd4Ij1XsYqloDgMiv8rL54mBN7CJ+G1OWRvAg6P
	 1tnkJF72lC09ElOIt5uqOacn0ToJFNKk81pbT9+ov3hN5uUv4UOnurPof4ybbOxLQH
	 vKvbrHALHKwt2/qel3MOnLGubSH938M1fJAmbsM2YOZpinGoCyII2EYEoY/4S5rvvg
	 1mobFIJXem7dA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rk1zphdaNZnm; Tue,  6 Jun 2023 15:04:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4DB5E4034D;
	Tue,  6 Jun 2023 15:04:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4DB5E4034D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19F641BF5A3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 10:54:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E51BF81E4B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 10:54:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E51BF81E4B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lWuVrzvmogju for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 10:54:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C27281E3D
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4C27281E3D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 10:54:21 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="228631386"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Jun 2023 03:54:19 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 6 Jun 2023 03:54:19 -0700
Received: from DEN-LT-70577 (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Tue, 6 Jun 2023 03:54:18 -0700
Date: Tue, 6 Jun 2023 10:54:18 +0000
From: Daniel Machon <daniel.machon@microchip.com>
To: Dave Ertman <david.m.ertman@intel.com>
Message-ID: <20230606105418.m2sqt4gol6sg77oj@DEN-LT-70577>
References: <20230605182258.557933-1-david.m.ertman@intel.com>
 <20230605182258.557933-6-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230605182258.557933-6-david.m.ertman@intel.com>
X-Mailman-Approved-At: Tue, 06 Jun 2023 15:03:41 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1686048861; x=1717584861;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2mgkjY4JRZMn/4ypVV5YelTdREnMl+I1l887OEPTrBQ=;
 b=dYP3QgQgYlunjYccOiQpLlTMe8JYpWDD9Ot03Og2fzHcxAeru9+8U7aH
 XAGYXcNE/dhkGQ46LDaYqIoNICwv2mlrb5n9GF9qNS3YQxnMFaUHvF9Gg
 pkEtHhLYNHbxeNquYc2SmUsxHAuZMw6gmiA6BlicR23yPoo7u1k5BoVKY
 3x+ygUUE5Dv8NMsTZ6NuMEN47/B2M9sJ5vjimnIwOIzynrfmEeJ8Fyzwc
 m0CCMgp8sbkUltKEfeCFgxFaG5NUpLNjeyv3b1r2vKO21IbX/x+HVaZPv
 ekYpKRXrTrZuVKo2FntsHSoXhZo/9Xv7sDTWp/lngkKgytb62pQLLO1f8
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com
 header.a=rsa-sha256 header.s=mchp header.b=dYP3QgQg
Subject: Re: [Intel-wired-lan] [PATCH net v2 05/10] ice: process events
 created by lag netdev event handler
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> +/**
> + * ice_lag_add_prune_list - Add 's event_pf's VSI to primary's prune list

Adds?

Other than that:

Reviewed-by: Daniel Machon <daniel.machon@microchip.com>

> + * @lag: lag info struct
> + * @event_pf: PF struct for VSI we are adding to primary's prune list
> + */
> +static void ice_lag_add_prune_list(struct ice_lag *lag, struct ice_pf *event_pf)
> +{
> +} 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
