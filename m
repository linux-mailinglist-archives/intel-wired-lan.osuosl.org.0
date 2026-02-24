Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gO5eI2cTnml+TQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 22:08:55 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2572C18C994
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 22:08:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B7A6845B1;
	Tue, 24 Feb 2026 21:08:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s_2m8RuxEKXC; Tue, 24 Feb 2026 21:08:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1AE5D8228D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771967333;
	bh=YWKOEY4/b8YlFZx8gm+pqM2QTtVFquwY26TX8gM22Do=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kOJn8E+En5VdMR+nAuz7q1JOQQJHYdnxBXg2MQb55/APZG4SE2hYzRah+Of9zKzD9
	 zE0oXznmriGDcCu7eWRCifm27h0qnARpg4SVPHRAyTA88L9Wjo08vajt8zaQJ4NUG2
	 zLKBiTca5hRbouEU5+n6oIYvDHVzyi5upGyFg11XTT/i0wICnQJAxj6NdApoJ47bZ9
	 V2KwLWbmBQtRnIWtgtBIKkwT9mj+QekO4cBthKEaKQZc61ctOUKtumyLc4xwX4pM3H
	 sG8cjpT+yqiuxrLdRMA41oKE9npc1xFxXCidOvM+c72lyRGfgQwT5vs6qI1+FpKSMg
	 VrbAm7VghPpbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1AE5D8228D;
	Tue, 24 Feb 2026 21:08:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 402CA1B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 21:08:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 25FF58224D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 21:08:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zKI8hGVyo2ZZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 21:08:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 23B658221A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23B658221A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 23B658221A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 21:08:50 +0000 (UTC)
X-CSE-ConnectionGUID: ADO7eA/aTW2Tm+sxNPUHFg==
X-CSE-MsgGUID: 2f/uCg8aRB+vxdpVrNTcFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="72967988"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="72967988"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 13:08:50 -0800
X-CSE-ConnectionGUID: BBVJnObmTf6dX3BrMB6C6A==
X-CSE-MsgGUID: /P93JMUTRVaUi63HmbNT1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="213224721"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.88.27.144])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 13:08:50 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Mika Westerberg <mika.westerberg@linux.intel.com>,
 linux-pci@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, Bjorn Helgaas <bhelgaas@google.com>,
 Lukas Wunner <lukas@wunner.de>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Saeed
 Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Tariq
 Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>, Richard Cochran
 <richardcochran@gmail.com>, Andy Shevchenko <andriy.shevchenko@intel.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>, Ilpo =?utf-8?Q?J=C3=A4rvinen?=
 <ilpo.jarvinen@linux.intel.com>, Dima Ruinskiy <dima.ruinskiy@intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>
In-Reply-To: <20260224111044.3487873-4-mika.westerberg@linux.intel.com>
References: <20260224111044.3487873-1-mika.westerberg@linux.intel.com>
 <20260224111044.3487873-4-mika.westerberg@linux.intel.com>
Date: Tue, 24 Feb 2026 13:08:49 -0800
Message-ID: <87ldgh7sta.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771967331; x=1803503331;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=yZVE3IFGLgSzwdJm/9yVkBOGWvu/M2sKhlEwe2Wr6m0=;
 b=MfUtpisbAQxtgqIkFAkVLRp4Vs5ahk6e2jvFeYrsf6l6rtYCRqcSkQXm
 KwgYafyR6RNS8uJ0Y77MdGQ0IcJadAV1l1bi8utBtjAsGtpVuugls7/+e
 l35GIgM3l1gJEDO98EUYJkAzgtfa597DqYYolqgZfBuEze4sQxCiEiUvh
 JSFhK5lwTXQPbLdRqagFPJHsYzNmZNxLCd0YB+UlaaF5JaSLMC6bGL08U
 5e7cbhyB4NN/I15u8opgeSpiU3uR26oU96hh38IKWJvz9ildgp81p4vKB
 ETkN1Diju/Sb/ZcOaDhjJEyzZAf73lRg1eG+nVlzS7DYQyTynjuGucxgx
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MfUtpisb
Subject: Re: [Intel-wired-lan] [PATCH 3/5] igc: Don't reset the hardware on
 suspend path
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
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER(0.00)[vinicius.gomes@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mika.westerberg@linux.intel.com,m:linux-pci@vger.kernel.org,m:bhelgaas@google.com,m:lukas@wunner.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:saeedm@nvidia.com,m:leon@kernel.org,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:richardcochran@gmail.com,m:andriy.shevchenko@intel.com,m:vitaly.lifshits@intel.com,m:ilpo.jarvinen@linux.intel.com,m:dima.ruinskiy@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[lists.osuosl.org,google.com,wunner.de,intel.com,lunn.ch,davemloft.net,redhat.com,nvidia.com,kernel.org,gmail.com,linux.intel.com];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:mid,intel.com:email];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinicius.gomes@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.959];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2572C18C994
X-Rspamd-Action: no action

Mika Westerberg <mika.westerberg@linux.intel.com> writes:

> Commit c01163dbd1b8 ("PCI/PM: Always disable PTM for all devices during
> suspend") made the PCI core to suspend (disable) PTM before driver
> suspend hooks are called. In case of igc what happens is that on suspend
> path PCI core calls pci_suspend_ptm() then igc suspend hook that calls
> igc_down() that ends up calling igc_ptp_reset() (which according to the
> comment is actually needed for re-enabling the device). Anyways that
> function also poll IGC_PTM_STAT that will end up timing out because PTM
> is already disabled:
>
>   [  160.716119] igc 0000:03:00.0 enp3s0: Timeout reading IGC_PTM_STAT register
>
> There should be no reason resetting the hardware on suspend path so fix
> this by avoiding the reset.
>
> Signed-off-by: Mika Westerberg <mika.westerberg@linux.intel.com>
> ---

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>


Cheers,
-- 
Vinicius
