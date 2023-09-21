Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5117AA5D6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Sep 2023 01:58:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 311744029C;
	Thu, 21 Sep 2023 23:58:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 311744029C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695340702;
	bh=GJ6D8XILK0Tt2p5XA/FkIdERsGCUcLsWrz7573cmUBU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WPoh4ENHAyqa8xKRfBXPtNrCvc8/Iz+ur8PZQaChqWAMZGAO/6jz7aRg1dv+VzMKe
	 AdboREe7hzjcInI9xkCU39ZlIYAutOywyC6R7L6UuNaY3h4zrZ3VDBqil/JCEU3lt/
	 0ZMFjk++PMArdLV1+wuMqO14AFJwVGs+jxKJQNO5JO7guCA56wxmxHowA7r+ep48+X
	 4RHfhWAns2/HfUVl8KTkgZAyc2F7VcrQUzrTfw41lTZ/EJNZFkYNFkAFR4cZrHmH2S
	 wxIeiLDCRctqyZJV7AuDOF5yHGbgVKSfsNdu4veYHuA9cM1LwwQR3W6W4Q9s/P+lgy
	 g0n3/rsUeTYpw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GbWBdS1xDEQu; Thu, 21 Sep 2023 23:58:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BFA7140267;
	Thu, 21 Sep 2023 23:58:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BFA7140267
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 421381BF21A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 23:58:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CD592400F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 23:58:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD592400F6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NMAN7Wq-pFAU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Sep 2023 23:58:13 +0000 (UTC)
Received: from out-216.mta0.migadu.com (out-216.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::d8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C28C0400D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 23:58:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C28C0400D5
Message-ID: <e5022460-fc45-5571-1f5b-2b81f7811a7d@linux.dev>
Date: Fri, 22 Sep 2023 00:58:04 +0100
MIME-Version: 1.0
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jacob Keller <jacob.e.keller@intel.com>
References: <20230920180745.1607563-1-aleksander.lobakin@intel.com>
 <20230920180745.1607563-3-aleksander.lobakin@intel.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20230920180745.1607563-3-aleksander.lobakin@intel.com>
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1695340689;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DUJHN3YfhHAwoXl+1sbrTgWZ/YrCi9D1KruOjj1djMM=;
 b=hz6nVQjKD0rPC1gxSGbf9AaBCRYE5ubk4LvtwRm0zjPsMz2vq/WYMTr5od3zFykk6d+1/6
 uzX2glTAi41cOAgZi4PWHKelE5jD+s8uUQrPiBdLtGF82daQfAXhVUs0MH8MRJCYgIrqr/
 JNLU2uUx1IJtzZ+RKW9lit3RmXVObtE=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=hz6nVQjK
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] ice: fix undefined
 references from DPLL code when !CONFIG_PTP_1588_CLOCK
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
Cc: Michal Michalik <michal.michalik@intel.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, linux-kernel@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Milena Olech <milena.olech@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 20/09/2023 19:07, Alexander Lobakin wrote:
> DPLL code in ice unconditionally calls several PTP functions which are
> only built when CONFIG_PTP_1588_CLOCK is set. This throws a good bunch
> of link errors:
> 
> ERROR: modpost: "ice_cgu_get_pin_name"
> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> ERROR: modpost: "ice_get_cgu_state"
> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> OR: modpost: "ice_is_cgu_present"
> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> ERROR: modpost: "ice_get_cgu_rclk_pin_info"
> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> ERROR: modpost: "ice_cgu_get_pin_type"
> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> ERROR: modpost: "ice_cgu_get_pin_freq_supp"
> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> 
> ice_dpll_{,de}init() can be only called at runtime when the
> corresponding feature flags are set, which is not the case when PTP
> support is not compiled. However, the linker has no clue about this.
> Compile DPLL code only when CONFIG_PTP_1588_CLOCK is enabled and guard
> the mentioned init/deinit function calls, so that ice_dpll.o is only
> referred when it gets compiled.
> 
> Note that ideally ice_is_feature_supported() needs to check for
> compile-time flags first to be able to handle this without any
> additional call guards, and we may want to do that in the future.
> 

There is another fix under review [1], which came from Jacob.
It converts the code a bit more, and will create conflicts.
I would suggest to drop this patch until another series is fully
reviewed.

[1] 
https://lore.kernel.org/netdev/20230921000633.1238097-1-jacob.e.keller@intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
