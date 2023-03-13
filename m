Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 645A36B848E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Mar 2023 23:13:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F15BB817AF;
	Mon, 13 Mar 2023 22:13:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F15BB817AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678745601;
	bh=8fu9NBs1TbzwbI8nrfojP6fOHRmax8XRvQf8GoLNAWI=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xfleAZMKAbhacw+aSkFMLW+sWT2UbOC2TK3hRBnW1w1kq8yquGCjrRb+ic+8igUkx
	 ZSD6XkrXr3crS3UEZzqiPM9jVWE5VxOVjCm7ELsYD/Szsk4U5YZ7Q3dMwft3TsloKK
	 sn2zcavWsDZ0XLH8h+vx4xosxvgIbbOCoZ62Xkz5T1zNLr+tubixDfwEnehNi0cCh5
	 PiIDqEPfG3QoXxYjQeRzYtW/GIXKTyDN2A4OVVYu6W75RxcxfNHx5oSQTncL2OzjjX
	 0/68htwujXsaPO8ZdY6d+kDQiKD7+02WDVCrIPMrPPYgAgeCg2pP9pUhlBccx4IhHI
	 e4zR5T3tc55yQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l-rkDx7bC5kd; Mon, 13 Mar 2023 22:13:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC20D8175E;
	Mon, 13 Mar 2023 22:13:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC20D8175E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD7981BF30C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 22:13:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 91EB260FEF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 22:13:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 91EB260FEF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zfg7jg3ty4gb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Mar 2023 22:13:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CFD9B60E73
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CFD9B60E73
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 22:13:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="321123989"
X-IronPort-AV: E=Sophos;i="5.98,258,1673942400"; d="scan'208";a="321123989"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 15:13:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="628797639"
X-IronPort-AV: E=Sophos;i="5.98,258,1673942400"; d="scan'208";a="628797639"
Received: from snehanja-mobl1.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.209.43.37])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 15:13:12 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>
In-Reply-To: <20230313100207.ztxhu3cbxkb5c6iy@pengutronix.de>
References: <20230228054534.1093483-1-vinicius.gomes@intel.com>
 <20230228054534.1093483-4-vinicius.gomes@intel.com>
 <20230313100207.ztxhu3cbxkb5c6iy@pengutronix.de>
Date: Mon, 13 Mar 2023 15:13:12 -0700
Message-ID: <87edpsi9l3.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678745593; x=1710281593;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=r6OC6ohMDH431tKy07iboe7CGls/DJ9v+jC1Bi4j9bY=;
 b=OOlilI6oqNn7BeS+6wsWWUgS5sUa1YOm6hu2koNK2p2nzZtZrGs9519v
 E3VcG6eW+U4TlQslaNuuR7kgxRpq1WKwBNHk1MdxEv2PnGHw0plLGR/dk
 mPA4Yrx5H2m9BJtx44R0N3GQXhHWgR5pSlKtO6XOqiNhbMWAhjIcXfLoO
 0/EEgyyKwEenmDieOw/1I1fKq45gQnvTT+rDVph+Ydo3L6Q5Hy7iYS78Q
 8LT1B6lscHNBm5wPp/AUnMJP5nsFcM2qJpLRRZgfv6UK6D78wQLqRSI1R
 NwTOgr/uGgGWxM1KKHc369RWqols5HXHA8WN70bH+i4COx3dNR7OJhDcA
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OOlilI6o
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 3/3] igc: Use
 ptp->aux_worker to retrieve TX timestamps
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
Cc: vladimir.oltean@nxp.com, kurt@linutronix.de, anthony.l.nguyen@intel.com,
 kernel@pengutronix.de, intel-wired-lan@lists.osuosl.org, jzi@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Marc Kleine-Budde <mkl@pengutronix.de> writes:

> On 27.02.2023 21:45:34, Vinicius Costa Gomes wrote:
>> ptp->aux_worker is a kthread and allows the user to set it's priority,
>> which is useful for workloads that time synchronization is required.
>> 
>> As an optimization, when the interrupt is handled try to retrieve the
>> timestamps "inline", if they are not, schedule the workload. This
>> should reduce the delay before the TX timestamp is available to
>> userspace.
>> 
>> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>
> Can this optimization also be applied to the igb?
>

The idea behind this optimization applies, but I think that also
introducing something like patch 1/3 (the spinlock) would make the code
easier to reason about.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
