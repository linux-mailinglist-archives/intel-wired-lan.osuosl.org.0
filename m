Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5A05A7CFD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Aug 2022 14:13:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8AE82418A7;
	Wed, 31 Aug 2022 12:13:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8AE82418A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661947993;
	bh=iyAkAiaBeNi03ZAfGJSs3HrR3tIA+Kg7p4v5cSGPfco=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6Zaz7VQF9Ejf1LPfH5Si+2uMAtKWuACy3XmQBYShHf+bbeZjjTzX06jfDMALwjM4S
	 ySmXJcAyThCB/WYnoTGrceKzzlmJI8WhbYdJcPCfeEjduytMJah5OQ6rcRTBHeqP9L
	 Fn7gTSKa8UhYFmzoIKI05djyMB5aECf+7R/PJ9WLjmpVo14IYXWK9JSVLe2KLJq2eN
	 99cc15rROmV0QP+XaQct5KB6/ZAP+BxgW4sTr5TWTQ5ISHjsUKsfAWcjd9h/GwYLRq
	 37BHorbsEJbOoD5W63bHHNfd+ota9XOZC5gPYynH2j05Jx2E3uSPXTbWPO2vSd4j9R
	 N1+M5mtsY0I1g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fi1mRx4Myvmm; Wed, 31 Aug 2022 12:13:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46EBB4189B;
	Wed, 31 Aug 2022 12:13:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 46EBB4189B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 081E01BF335
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 12:13:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E3259610A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 12:13:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E3259610A9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HGvN9FVXPNtN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Aug 2022 12:13:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA4E06107D
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AA4E06107D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 12:13:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="282405392"
X-IronPort-AV: E=Sophos;i="5.93,277,1654585200"; d="scan'208";a="282405392"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 05:13:02 -0700
X-IronPort-AV: E=Sophos;i="5.93,277,1654585200"; d="scan'208";a="641850711"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 05:12:56 -0700
Date: Wed, 31 Aug 2022 05:16:05 -0400
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <Yw8m1Zp+StyBCah9@localhost.localdomain>
References: <20220829094412.554018-1-wojciech.drewek@intel.com>
 <20220829094412.554018-6-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220829094412.554018-6-wojciech.drewek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661947982; x=1693483982;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=zxpSWiTAZR6ZAvdqfxXlOFs3pXGCsF/GCbCTJHi8LQk=;
 b=ACDyTaau+DD7aIBZeToEuEeUL8gthXhwN8TxwUwLihymn7qtF16/Xf7y
 D4kNEA6vx13wfi4QhSuntQEIz4jFZ09oWFU8s8M73UX5MmJkburIavFEm
 dH0vwhTkZrTK3aq6wmwYaLZvqPpA6wCwdZdKaoTlvbYj+/qWxrsMlLzo0
 TKlAaEjvk6ryRzjT1bAKc3goz2lN+ba5+iacXZar0zXVxHsYoLcMXICql
 CnK1LG+7JnoolQcAXB6vHOANU5koqmHNrbSYtPHfHnIf3wOKvenAUhFQm
 /EQ+VWjAl9uE8foZehLxTuWSJVwznSzshXFROm55F7MyIlL+pZogUdtga
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ACDyTaau
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v2 5/5] ice: Add L2TPv3
 hardware offload support
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
Cc: simon.horman@corigine.com, maksym.glubokiy@plvision.eu,
 komachi.yoshiki@gmail.com, jchapman@katalix.com, edumazet@google.com,
 boris.sukholitko@broadcom.com, louis.peens@corigine.com, gnault@redhat.com,
 intel-wired-lan@lists.osuosl.org, vladbu@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, pablo@netfilter.org, baowen.zheng@corigine.com,
 kurt@linutronix.de, jiri@resnulli.us, paulb@nvidia.com, jhs@mojatatu.com,
 xiyou.wangcong@gmail.com, netdev@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 29, 2022 at 11:44:12AM +0200, Wojciech Drewek wrote:
> From: Marcin Szycik <marcin.szycik@linux.intel.com>
> 
> Add support for offloading packets based on L2TPv3 session id in switchdev
> mode.
> 
> Example filter:
> tc filter add dev $PF1 ingress prio 1 protocol ip flower ip_proto l2tp \
>     l2tpv3_sid 1234 skip_sw action mirred egress redirect dev $VF1_PR
> 
> Changes in iproute2 are required to be able to specify l2tpv3_sid.
> 
> ICE COMMS DDP package is required to create a filter as it contains L2TPv3
> profiles.
> 

<snip>

ice part looks fine, thanks.
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
