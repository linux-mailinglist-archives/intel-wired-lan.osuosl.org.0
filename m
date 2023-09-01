Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7839578FE97
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Sep 2023 15:50:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C2C1441989;
	Fri,  1 Sep 2023 13:50:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2C1441989
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693576213;
	bh=O61OYVh7z/l5shj/Yz+EixEIqm61UwLy1i7Dxs4uNJU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=41yc1P/fTxNa1fp14NXNr7gYbmMowscsuctBU+qTL2QHWGVKp9EAAWotd2JTPYAis
	 3ShyRmpvE4we/iiJjFcSv/ZnD9I473CEpxYpzdw6K2eTpJ+yKEUq7bcw+GzduJW+Vl
	 nn7nTrfB9E6m+zfGt1uZMcNeEI28H/R4Y8A+AopWtuxISsaLyRddjpWiOq4W/R1+SH
	 f8831h9whdhWMpG3lzPfJTaXHzuz0GbsTCp9+WqzPCfP50FhAhTebRMfLflPgLVXdN
	 EWg/mgX1R6yEgYxrNESnunnET6X406arZ6frHsks1u5CVej0/Us+2REYpuIgjAvf1l
	 Q4qNLbu96+9ig==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q48ZNjJrG_Yq; Fri,  1 Sep 2023 13:50:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D461641979;
	Fri,  1 Sep 2023 13:50:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D461641979
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9B68F1BF35A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 13:50:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6086C4197F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 13:50:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6086C4197F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dWH6Wy4i-0B4 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Sep 2023 13:50:03 +0000 (UTC)
X-Greylist: delayed 387 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 01 Sep 2023 13:50:03 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8713840236
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8713840236
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 13:50:03 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id AD622CE2394;
 Fri,  1 Sep 2023 13:43:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EE03C433C7;
 Fri,  1 Sep 2023 13:43:23 +0000 (UTC)
Date: Fri, 1 Sep 2023 15:43:17 +0200
From: Simon Horman <horms@kernel.org>
To: Corinna Vinschen <vinschen@redhat.com>
Message-ID: <20230901134317.GE140739@kernel.org>
References: <20230831121914.660875-1-vinschen@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230831121914.660875-1-vinschen@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1693575807;
 bh=S1jwN1zV//umF6+/E1V1G1E/k9AQG21vORb5+zuWKQA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eGMGNeKSbgOHXlgx52/VsCggkXiwztV8/WKypoU34JQhkwRVPek3DPmIIjB7wyDfg
 FzcgZAsViRb0RoZz1UO8AuD3gSGQvg314cdt2ZsDrh+3rEz0gNQhI0+JXKTFPfvLto
 8rucs8tkNBJscML9h5R2OnyBF8W7YP25jby7cRtmVYtHsYd32RaPesKCvjB7SvjGwZ
 gIwbzIWg7HH0TPRof2LvVlrJFmOIW17Lu0r7jomMZHqmmFSH/ESz8oJ09H2N7bDDN8
 U25kN3OCRu9rzGiZ2gK9AsjFU8JKLZsG7GcSL2V0XEToNngd981IA+PX1OqRB6zwMJ
 fD5C3lohRx0bw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=eGMGNeKS
Subject: Re: [Intel-wired-lan] [PATCH v2 net] igb: disable virtualization
 features on 82580
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
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 jesse.brandeburg@intel.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 31, 2023 at 02:19:13PM +0200, Corinna Vinschen wrote:
> Disable virtualization features on 82580 just as on i210/i211.
> This avoids that virt functions are acidentally called on 82850.
> 
> Fixes: 55cac248caa4 ("igb: Add full support for 82580 devices")
> Signed-off-by: Corinna Vinschen <vinschen@redhat.com>

Reviewed-by: Simon Horman <horms@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
