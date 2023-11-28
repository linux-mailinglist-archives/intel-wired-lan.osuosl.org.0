Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 857BE7FCAEC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 00:37:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F423043527;
	Tue, 28 Nov 2023 23:37:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F423043527
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701214654;
	bh=s4munxkJNX+ZI99Kag5cCgx19QZgY1Uj4Vx6QuxIJo4=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GycEEXrviHVlf1mJwD/hWJKItMrOMnFsxS9/igzLxI5zsiD64a7llPpjtp2GtQ7AW
	 AQSbgqgwDUIJO7n/hQX8PYxEaUa7PwO2A6yNbjvYRLdO6S8BsG4Lzyi1D869ydYb8x
	 3+E2sLaeW5wQdQL4r3WL/EgUFLJgSMdWhJXH6G6otnBksjHtDngaXp0x4PBAq3FjtL
	 bKUJUcclb38/nHL9KOt6Mqs3HFmEN354OSJoeB6zuvvCOhYpqBxX2na8i/a/hADtWn
	 fSA8gbHH3f3HP+Z6TkMsLv9WeGKMsdmEdbkIedMJlmmTxj7fLQihKj6XGsPArXjIxp
	 IGJKpYIXho08Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dlDdFJLbDWxP; Tue, 28 Nov 2023 23:37:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A38C416E5;
	Tue, 28 Nov 2023 23:37:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A38C416E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CFE4A1BF32D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 23:37:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9C7F460BB1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 23:37:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C7F460BB1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dYvompofTE_9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Nov 2023 23:37:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0DF9B60B53
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 23:37:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DF9B60B53
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="479250765"
X-IronPort-AV: E=Sophos;i="6.04,234,1695711600"; d="scan'208";a="479250765"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 15:37:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,234,1695711600"; d="scan'208";a="10253019"
Received: from ticela-or-268.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.212.190.61])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 15:37:25 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20231128074849.16863-1-kurt@linutronix.de>
References: <20231128074849.16863-1-kurt@linutronix.de>
Date: Tue, 28 Nov 2023 15:37:24 -0800
Message-ID: <87bkbdsb4b.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701214646; x=1732750646;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=EGEixHtQb1+ZHIfzVRxJRAfvWyXmF6jAq+s8NNkM3sU=;
 b=nOVUcEPO79UPrjQQzaqCtcyzXgyuXEniqVIER3/9UZnBjxu8eNehncvL
 a4XuIM6yKQlcgx6Q1YwuODNZSkQEgtI5ZM980WWE1dV3hp3F8wbfTkYnY
 nyuiMGiITdabwWvG2JpGsLg8xp169KnvePrQrVUFiDWDQWHpV3KLYbvo6
 kiTObdcm4V0Tjohno7WXbxrg+VSxipXjDAWzzvNwJU+yYF4/Kbua1m9hv
 W15AoW9G4dA3AwW7xaetSedMtvFrn6lgj9K7zmvux8PIkK4VVIOQJ8Ox5
 3BUht4GUTHbijeJuhzpMeRgpMmc1HTgFZGw0hoMbxG7y8Q+c3XO3pLGl0
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nOVUcEPO
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/5] igc: ethtool: Check VLAN
 TCI mask
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

Kurt Kanzenbach <kurt@linutronix.de> writes:

> Hi,
>
> currently it is possible to configure receive queue assignment using the VLAN
> TCI field with arbitrary masks. However, the hardware only supports steering
> either by full TCI or the priority (PCP) field. In case a wrong mask is given by
> the user the driver will silently convert it into a PCP filter which is not
> desired. Therefore, add a check for it.
>
> Patches #1 to #4 are minor things found along the way.
>

Some very minor things: patches 2,3 and 4 have extra long lines in their
commit messages that checkpatch.pl doesn't seem to like.

Patches 4 and 5 read more like fixes to me. I think they could be
proposed to -net, as they contain fixes to user visible issues. Do you
think that makes sense?

As for the code, feel free to add my Ack to the series:

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
