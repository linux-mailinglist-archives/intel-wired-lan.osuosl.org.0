Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 08375807DEF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 02:33:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5A2761598;
	Thu,  7 Dec 2023 01:33:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5A2761598
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701912803;
	bh=3eoq2FF9f6UiSglsL00ZStpblH9gIrzW6aQj8k4V3sI=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lrOXA2enCjg1xW39KLb5xNK2AN9avxJeJ1B8Wl8e84MZEspzuvuYftvBaZY+zQyXG
	 VuLgJOABc+rkMUSoyZ/aG5qSS69+7B6aWRAxTtZ17mF/1TvGHgf7MB+WdiubhaXd1a
	 HWVLZHwMqbdLMTY2LopFpwkE3aUx9o99SJ0DDoGJAvAfJ0KK1OUpW1TMIBqbSdL22z
	 z2zoCTFbOqwaP7pAe1qYVNKlNUVcTlJtUEQ5n6sjkJGuGrI6cUwYpOOPiYhOoYafZd
	 XAEwx5yN6qaboEs99DyH4DerEh3wuzMdnHTkvb7AmqiokWzElro7zsTgnV1HDoB9bJ
	 7YzP7beqDumEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KTms3PZ1n9Z7; Thu,  7 Dec 2023 01:33:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4BDE61591;
	Thu,  7 Dec 2023 01:33:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4BDE61591
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 55A2E1BF359
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 01:33:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2B6F440191
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 01:33:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B6F440191
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cZVaA4BuE__v for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 01:33:16 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 07 Dec 2023 01:33:16 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 19EEC40017
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 19EEC40017
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 01:33:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="1231760"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; 
   d="scan'208";a="1231760"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 17:26:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="19518060"
Received: from alwohlse-mobl.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.209.58.167])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 17:26:06 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20231206140718.57433-1-kurt@linutronix.de>
References: <20231206140718.57433-1-kurt@linutronix.de>
Date: Wed, 06 Dec 2023 17:26:05 -0800
Message-ID: <87r0jy6bwy.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701912796; x=1733448796;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=i4yeWVE6+wrgX9vmL6iqP5eumdCMoGTglZZEcsnM/FM=;
 b=S28kej9awTBu/LTousWAWnyMdVE9nJ7p04xtmjsqRueRhjbinOExxUiy
 R1Fjib7XJLXtHqkWZ0xtXBLRdeY6tek3haR7gDFxpxugNxp38QdmjS4lQ
 4HtI6zGcncOueqz34PCwuJCsmRuZG78/m3y2tLZjg+n3mDQySXXJuQZbQ
 bNDCDYiGccTaUoBq0zr+Aw6lNxkEgBBOqYf5OIseEEvkvkcgUrjCSMNTN
 YpsMIuwV0tGY8k3tZtucx5Rv70kjj9qtS/ISoObzSbNMVhJyC6YuptfPr
 MwWC/zrqfSi67vD9udeEo38aALRbYWiTn8xNNQF46itOGIdUetbQ5XNi1
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S28kej9a
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] igc: Check VLAN EtherType mask
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
 "David S. Miller" <davem@davemloft.net>, Suman Ghosh <sumang@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Kurt Kanzenbach <kurt@linutronix.de> writes:

> Currently the driver accepts VLAN EtherType steering rules regardless of
> the configured mask. And things might fail silently or with confusing error
> messages to the user. The VLAN EtherType can only be matched by full
> mask. Therefore, add a check for that.
>
> For instance the following rule is invalid, but the driver accepts it and
> ignores the user specified mask:
> |root@host:~# ethtool -N enp3s0 flow-type ether vlan-etype 0x8100 \
> |             m 0x00ff action 0
> |Added rule with ID 63
> |root@host:~# ethtool --show-ntuple enp3s0
> |4 RX rings available
> |Total 1 rules
> |
> |Filter: 63
> |        Flow Type: Raw Ethernet
> |        Src MAC addr: 00:00:00:00:00:00 mask: FF:FF:FF:FF:FF:FF
> |        Dest MAC addr: 00:00:00:00:00:00 mask: FF:FF:FF:FF:FF:FF
> |        Ethertype: 0x0 mask: 0xFFFF
> |        VLAN EtherType: 0x8100 mask: 0x0
> |        VLAN: 0x0 mask: 0xffff
> |        User-defined: 0x0 mask: 0xffffffffffffffff
> |        Action: Direct to queue 0
>
> After:
> |root@host:~# ethtool -N enp3s0 flow-type ether vlan-etype 0x8100 \
> |             m 0x00ff action 0
> |rmgr: Cannot insert RX class rule: Operation not supported
>
> Fixes: 2b477d057e33 ("igc: Integrate flex filter into ethtool ops")
> Suggested-by: Suman Ghosh <sumang@marvell.com>
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---

I was just wondering if an alternative would be to use flex filters for
matching vlan-etype with a partial mask. But I don't think there's any
real use case for partial masks, better to reject them:

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
