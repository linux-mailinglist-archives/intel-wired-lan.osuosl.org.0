Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BE15C94D4D6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Aug 2024 18:39:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E982841C7;
	Fri,  9 Aug 2024 16:39:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5FXpnAPZWBSo; Fri,  9 Aug 2024 16:39:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 620D084329
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723221543;
	bh=MF+yZSiYhfhr7ebTdXx/fOTMkpicTdLJUYY+rC7kXPU=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jJt8zfKa5odvRdfIyfI1KB9wIJEOHjnHvps65ddiB3V05aXFkujDneNk9UI+7oVGs
	 Kbp7xkNw+MzkF2pue2Wy3dZ270rltCmeGyD1YIBUFWZfquVqo2ER7Dli01eA0fYpk/
	 WMbvlJTKDrhIANcyhSEX3pYWDxZNWDokhVl9XP4+B35u9JFGlOsNbLYBQp2LJw643W
	 CF3fROpOj+SRmoQFcXp4eOHx6xkqASNmGaPSB7Sw9idiPRhq2A9rlcIpB9mIEwRa61
	 VJ1UxBx0RFvQdzl0srBv4OmPT4YIvdmiur+QYbuNm67Z6NTXKOC+RcfSd/eUWUWv6o
	 kT6EM4zpyAy8w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 620D084329;
	Fri,  9 Aug 2024 16:39:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8ED581BF867
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 16:39:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 87C4041123
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 16:39:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yaJZn2NDEa44 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Aug 2024 16:39:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6066F403D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6066F403D6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6066F403D6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 16:39:00 +0000 (UTC)
X-CSE-ConnectionGUID: 6LGIztEcR1K/3pF+eS0WpA==
X-CSE-MsgGUID: t4kMRbIIRc2eG88CconbeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11159"; a="24305302"
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="24305302"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 09:39:00 -0700
X-CSE-ConnectionGUID: tLOrSCFdRauODjLbCnpZfg==
X-CSE-MsgGUID: wuAx09PISS6NT9TXeaW3qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="57696321"
Received: from bjrankin-mobl3.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.124.221.140])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 09:38:59 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Daiwei Li <daiweili@gmail.com>
In-Reply-To: <CAN0jFd1kO0MMtOh8N2Ztxn6f7vvDKp2h507sMryobkBKe=xk=w@mail.gmail.com>
References: <CAN0jFd1kO0MMtOh8N2Ztxn6f7vvDKp2h507sMryobkBKe=xk=w@mail.gmail.com>
Date: Fri, 09 Aug 2024 09:38:58 -0700
Message-ID: <87y155wt0d.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723221540; x=1754757540;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=DYzuCPdoyOkh7yU5ZV53ubQ5DiZzTv7NNppITDFVMSQ=;
 b=Uq5P3OxaPTUQOHVTpH27MsAOUwF8E72Rya26VOsWBH3fWlhPzpqFzB+c
 tLqTock8a0RAYTeJxKoha/0AIsiO5/49aB8NzsCtRJ4CQ4MJ+GooM8CIn
 dOR29CWjdW5PRDj1su0UMbX8pH2eS7gGVK4XKZyIZ/20w2YnGLltLJIiz
 su+Pd7J14l/OY7PQMXOOfgtyHaBoVirExa6tCs54aNrXSGWGRzVSuzxlS
 NbIx++UxsgejTxXOZk1pkNFLuJBQNHKKvM9G2AlP6wQlUWZ+VW1tWCfap
 NrN1pw4aub0FsRY2idTmUkhyCAm5xznLxz0RysGi7LVRM3/v1iZPsGZcU
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Uq5P3Oxa
Subject: Re: [Intel-wired-lan] [iwl-net v2 2/2] igb: Fix missing time sync
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
Cc: sasha.neftin@intel.com, netdev@vger.kernel.org, richardcochran@gmail.com,
 kurt@linutronix.de, jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Daiwei Li <daiweili@gmail.com> writes:

> Hi,
>
> It appears this change breaks PTP on the 82580 controller, as ptp4l reports:
>
>> timed out while polling for tx timestamp increasing tx_timestamp_timeout or
>> increasing kworker priority may correct this issue, but a driver bug likely
>> causes it
>
> The 82580 controller has a hardware bug in which reading TSICR doesn't clear
> it. See this thread
> https://lore.kernel.org/all/CDCB8BE0.1EC2C%25matthew.vick@intel.com/ where the
> bug was confirmed by an Intel employee. Any chance we could add back the ack
> for 82580 specifically? Thanks!

Of course, I'll prepare a patch for that. 

Thanks for digging that one up.


Cheers,
-- 
Vinicius
