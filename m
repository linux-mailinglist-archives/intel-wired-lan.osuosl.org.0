Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFdMEtNXpWlR9wUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 10:26:43 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BD27D1D5891
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 10:26:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66A2180F34;
	Mon,  2 Mar 2026 09:26:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id odPoXQnyP5TC; Mon,  2 Mar 2026 09:26:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9828E80F52
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772443600;
	bh=nkK/0SZxk3VB9zsU9A4J8xiP+AApYqJDgnbCUQlCdpE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=33MiF23g7SRjZNxpP5AGKlQqDnTbVbp0zLf5J8iEOV9TPkDYwBjUIG2kRko+GD9om
	 gS9FUm9W7l9iNd3HuILhX78ZlfD7KwAf7qF/9hsreOCoAVIE1M8uBmeM9IczYHY5z6
	 WT+i8WUjqJmJ2lnaYZ21N5WiyHNSvEHZsR4ueMqhaWQoTc96pWy1L/Ow/MzUvtfXSc
	 9ndrpawJVUMRpVjogyjMYbCcBz9faKcP4OQi/CA9CSj3yuUbG60PtSyIC8Yks7eJYb
	 SyxjIGZtjiFJX0pcKXAs0qQaUENKSnTiwY1UIykV1OM5dMmOaSHAGAPi09W618+DvL
	 3TeLdLa9W3ERA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9828E80F52;
	Mon,  2 Mar 2026 09:26:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E089A1EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 09:26:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C675160F81
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 09:26:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Xwd58aZBhw2 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2026 09:26:38 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 02 Mar 2026 09:26:38 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 23AC860F74
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 23AC860F74
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 23AC860F74
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 09:26:38 +0000 (UTC)
X-CSE-ConnectionGUID: nYnIruxTRH2RotJtzupUNQ==
X-CSE-MsgGUID: WTOe3kSbQGuNDijuiHpcSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="73314179"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="73314179"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 01:19:30 -0800
X-CSE-ConnectionGUID: jFUXfjS9R22YWTwjdAdCRg==
X-CSE-MsgGUID: lEpMcT/2QaGeea64a/3xUQ==
X-ExtLoop1: 1
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.52])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 01:19:27 -0800
Date: Mon, 2 Mar 2026 11:19:24 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Message-ID: <aaVWHBraQAE4zHJv@ashevche-desk.local>
References: <20260302090305.2193349-1-andriy.shevchenko@linux.intel.com>
 <a58053f0-9780-4226-87ea-d4cf9bf32383@molgen.mpg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a58053f0-9780-4226-87ea-d4cf9bf32383@molgen.mpg.de>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772443599; x=1803979599;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=YM8tNg/Z31mqUp9nCyhNI5i22biy1kDUHa7E9+5pBEU=;
 b=RkORfQ5XpyFs0r4QWtBMRlm90s3iQv5L/0hFHIGdS1o+4Zkc26cD4dJO
 Gwk6ElJKGtrq+2LgCtK21zoEdYx4czsKPI0Jhm1o1XYthJv6QgJDdVAs4
 QN7VV4eW1UlPafzgJpJMYpr9Y4/BRUkCzlFKWEQ2AQOn8IefGWHuasqYu
 G/FPH02hO0eFq+xvWnnGK4lumBXh6bKrtLm9JDBUprHrnqD+cTtqh/cCj
 HgP/S9uqcGA21f7zMwat0m4NCacHF8wLBNo8seGQNY+GKAy2v2OIa9eqs
 0qWiey9d1bZX+PoUgfqLm+iAV3IgT6aAkOtos398NgU4qZ0+AOcp8GjOP
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RkORfQ5X
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/1] i40e: Add missing
 header
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pmenzel@molgen.mpg.de,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ashevche-desk.local:mid,mpg.de:email];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BD27D1D5891
X-Rspamd-Action: no action

On Mon, Mar 02, 2026 at 10:10:52AM +0100, Paul Menzel wrote:
> 
> Thank you for the patch. In the summary/title I’d add the header name.
> Should you resend, maybe:
> 
> i40e: Include missing wordpart.h header

Done in v2!

> Am 02.03.26 um 10:03 schrieb Andy Shevchenko:

> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>

Thanks!

-- 
With Best Regards,
Andy Shevchenko


