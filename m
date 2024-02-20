Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE2B85C2CC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 18:37:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DE48D41500;
	Tue, 20 Feb 2024 17:37:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aOHG3xmNGP4G; Tue, 20 Feb 2024 17:37:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B946414F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708450669;
	bh=duae2QhKMa8k+aJMEGhEWPvMgh5gaPLt+YftKrVUsME=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kzWje7VYCHQx1nJ1AZWEotfzlguKnshRxJVP3NfTYo1J6dM2T6oiIoqFVC3GveC2g
	 LCuQv+/PrwN01XMfMHzlP/ezblS029mRhShxFZO3uQVVN3oGgwK2jrNG4Demt9iecf
	 lq0isnqJiZnzAhI3zuOTNbHmfGPsPegmCU8fqk2ewCXYZbjqNtKMQOmi2j4AVIVDIk
	 qg8iYUeqTUS9AGWPbjwMbsDdFth4IfSsuplCqcJeD6zAyXisnZCPXsgzPkJ0JUFAwq
	 yNhUxf5OWr2GEK4vvrHD9XrYnAnQ69ndzbHO8w3VGzwHCiKhdiy+3BW05m98vRVMgy
	 ct7SU5OiyO5ag==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B946414F1;
	Tue, 20 Feb 2024 17:37:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3D6A41BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 17:37:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 29C366068A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 17:37:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7E6c89zUMC5w for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 17:37:45 +0000 (UTC)
X-Greylist: delayed 429 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 20 Feb 2024 17:37:45 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5C18360684
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C18360684
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5C18360684
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 17:37:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="2440886"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="2440886"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 09:30:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="913113242"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; d="scan'208";a="913113242"
Received: from akogon-mobl.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.125.19.103])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 09:30:34 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Richard Cochran <richardcochran@gmail.com>
In-Reply-To: <ZdDk9AHE8svlNbbl@hoboy.vegasvil.org>
References: <20240217010455.58258-1-vinicius.gomes@intel.com>
 <20240217010455.58258-3-vinicius.gomes@intel.com>
 <ZdDLI4o1Bll1xvH6@hoboy.vegasvil.org>
 <ZdDk9AHE8svlNbbl@hoboy.vegasvil.org>
Date: Tue, 20 Feb 2024 09:30:33 -0800
Message-ID: <877ciz59hi.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708450666; x=1739986666;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ewruDfDUwyGuba3mq73luIf32qgjbcvGQHybwFYwAUo=;
 b=mjXw3itxp8xfIcErVY1zglBC4setpJmn7/QPYNwHexc8pniosobFWHwq
 szHno91v8Yf6MaTXoRG8lymsd5blxdB5Y21dtXdwyNjqH8b4wNaGcxdGy
 sYluJN8YSZwBwzgdFLWh0D49M8kMAF9tsXDkkLEYaSWmNwrMgRi2Y+UH8
 na6GAnNUQiwUIhVzfq3C3HnYm0zmyIsTU/B9kTUt/L1RRvR7uFxgFMmZo
 RlQ1bnbECAjK9ssjgM3hH26ODFkFve46OgYSH8TgoBMAIpaEihyviGBBd
 ym3VwS/EVg4W7KWlQKP87pzLzznqodpk10hrTXihMPEpUbINUu7i4QP6S
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mjXw3itx
Subject: Re: [Intel-wired-lan] [iwl-net v1 2/2] igb: Fix missing time sync
 events
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
Cc: sasha.neftin@intel.com, netdev@vger.kernel.org, kurt@linutronix.de,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, anthony.l.nguyen@intel.com,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Richard Cochran <richardcochran@gmail.com> writes:

> On Sat, Feb 17, 2024 at 07:05:07AM -0800, Richard Cochran wrote:
>
>> Does setting ICR.Time_Sync[TXTS] also clear ICR.Time_Sync[RXTS] ?
>> 
>> That is what you seem to be saying.
>
> Okay, so you really mean that if the _same_ bit becomes set between
> the read and the acknowledgment, then that event will be missed,
> right?
>

Yeah, I will reword the commit messages so it's clearer that it's the
same bit.

> In that case, thank you for fixing this more than nine year old bug!
>
> Acked-by: Richard Cochran <richardcochran@gmail.com>
>
>  

Thank you,
-- 
Vinicius
