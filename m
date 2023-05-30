Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE777170BC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 00:33:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 715D081E7A;
	Tue, 30 May 2023 22:33:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 715D081E7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685485994;
	bh=XqaOyFJts6dosrYToEzrmzUOaAsy793IQ53drKjtAzI=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OSHfnycmMUWwY+8i/pgplaMS0xzrvY9/Qkyc7Lzj4zgaN7kZtdJnyJwQLNdvx0xRT
	 4EM54J4H8NsiflhDmiz/ucT2/aPnSSadsm1TJq8tuErvnUlqELh7471yQfgBHreVNG
	 ovTUKTPSiZ4f/PbJSKeIlimh2ypqJnpfq1neeKTywOnEEy0nIltT8PQplU81G1bUMZ
	 wDNDXa0sER9bjvCTH0oOe7oPEFkn098xAMlIZ8ZzC2NkUmscikhAXDPGbyn5NQOwi3
	 vARFMlbLfRnSLYh8f/xho8192y4Bi+GBA8gcf8fuC2aGKWKX4hosp2USWrzWexSyOF
	 CaMxEioiRc1zw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D6Mlk5ZBfUD9; Tue, 30 May 2023 22:33:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E49B081B3E;
	Tue, 30 May 2023 22:33:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E49B081B3E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C6D341BF35C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 22:33:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AAB3660FB1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 22:33:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AAB3660FB1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y8mS1ayh-zIg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 22:33:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D08560F97
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2D08560F97
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 22:33:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="358322061"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="358322061"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 15:33:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="880914492"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="880914492"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.17])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 15:33:02 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20230530213252.pddrmwgppneawmht@skbuf>
References: <20230530091948.1408477-1-vladimir.oltean@nxp.com>
 <20230530091948.1408477-2-vladimir.oltean@nxp.com>
 <87edmxv7x2.fsf@intel.com> <20230530213252.pddrmwgppneawmht@skbuf>
Date: Tue, 30 May 2023 15:33:02 -0700
Message-ID: <878rd5v49t.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685485985; x=1717021985;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=VABDFdCJy0Ud+Ks8o/SFbThuZCncKrRivw4ObAAYIR8=;
 b=P+kkw8dYQD+M0bIFBD1IBW+RdX870JA2uZdwRybdWDIMrH9HK+Ct3hPV
 6bN3e9PR06zpcBztXTt8X5llR7CR5uJ/D3bDapn9dLMkjQq6hC/gBvIsH
 1kalHg4bCQW6xbbvpGZaeZLuydg7NDweUxAvMIKZkb6h0xqpAuVfnkpkZ
 Uu8+gZJMwrkR1yOkXfbURBFMBszeihhHx0xrUaioXwEzwko4179P846Dx
 EYdQTjtx5YOZVLEktoyllgFVyHKKQ0cnrQnsmE4IrOtXTv/IZZdBJUZeM
 w0aCavBOI5t6JOyj69uN4WCpNHbgCx9CgkqdOB5DvWKW573gRvYgkMLSx
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P+kkw8dY
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/5] net/sched: taprio: don't
 overwrite "sch" variable in taprio_dump_class_stats()
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ferenc Fejes <ferenc.fejes@ericsson.com>, Kurt Kanzenbach <kurt@linutronix.de>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Cong Wang <xiyou.wangcong@gmail.com>,
 Gerhard Engleder <gerhard@engleder-embedded.com>, UNGLinuxDriver@microchip.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Xiaoliang Yang <xiaoliang.yang_1@nxp.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Mohammad Athari Bin Ismail <mohammad.athari.ismail@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Pranavi Somisetty <pranavi.somisetty@amd.com>,
 Jiri Pirko <jiri@resnulli.us>, Jamal Hadi Salim <jhs@mojatatu.com>,
 Roger Quadros <rogerq@kernel.org>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Michael Sit Wei Hong <michael.wei.hong.sit@intel.com>,
 Harini Katakam <harini.katakam@amd.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jose Abreu <joabreu@synopsys.com>,
 Oleksij Rempel <linux@rempel-privat.de>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Vladimir Oltean <vladimir.oltean@nxp.com> writes:

> On Tue, May 30, 2023 at 02:14:17PM -0700, Vinicius Costa Gomes wrote:
>> But I have a suggestion, this "taprio_queue_get() ->
>> dev_queue->qdisc_sleeping()" dance should have the same result as
>> calling 'taprio_leaf()'.
>> 
>> I am thinking of using taprio_leaf() here and in taprio_dump_class().
>> Could be a separate commit.
>
> Got it, you want to consolidate the dev_queue->qdisc_sleeping pattern.
> Since taprio_dump_class() could benefit from the consolidation too, they
> could really be both converted separately. Or I could also handle that
> in this patch set, if I need to resend it.

Exactly. Both options sound great.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
