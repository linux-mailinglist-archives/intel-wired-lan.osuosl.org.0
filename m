Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB396DBF75
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Apr 2023 12:34:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 16F0D4038D;
	Sun,  9 Apr 2023 10:34:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16F0D4038D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681036441;
	bh=QoRyv6uq6lVhg3AyJPAEymJy+M4LuRdAQcckHRaMDFY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=G82SIhzoQ98i6ddxDlsFAbJP7TzZkgyPBN2nOmjavvn8x79q1655rSSgZSmPziFP0
	 1l+j6w0Fz0v7wth7MN6dTWbHNaX4Hkxi6Yv+yIkxFpNyt4Lc2qLUDBqZLpvP6SrUqS
	 S2qu5RWnJn+/dB3/qzgK5JO4oRZI0+sCkOP0inO3RRt756XoPWbv3XdPMVwaoa/qT+
	 G9qOZ/9w3wPjEeX6hjghgl6UZP+DFnzJxdH1uoymHPdD6Kgh7wF/1hy+86AAb5xPpn
	 kMpAlnwaR4UvLNw7jFha+mordILmIUNyH/s5uOBiB398NWVz/ZrmjFlcMz+9CJcpjP
	 RWKibeFFZAx3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZVLeCMhJa4u4; Sun,  9 Apr 2023 10:34:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 01A3B401D5;
	Sun,  9 Apr 2023 10:33:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01A3B401D5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 49E4B1BF30D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Apr 2023 10:33:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 223234031C
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Apr 2023 10:33:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 223234031C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qlv2hnLdO8U9 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Apr 2023 10:33:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C654401F6
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5C654401F6
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Apr 2023 10:33:54 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A08F860DF8;
 Sun,  9 Apr 2023 10:33:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 887C1C433A7;
 Sun,  9 Apr 2023 10:33:52 +0000 (UTC)
Date: Sun, 9 Apr 2023 13:33:49 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20230409103349.GK14869@unreal>
References: <20230407165219.2737504-1-michal.swiatkowski@linux.intel.com>
 <20230407165219.2737504-3-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230407165219.2737504-3-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1681036433;
 bh=jfH3xAKdzetozjlPkiNYb9TwyrG13HO/lg7417hKVMg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FjnCe57fp6wd+6dOTDZVEY+HGdwYQ883xoDGkEzKyjDCGmXsrwh30wxNMxpWdnEWi
 L8pXgqKkJTtdc3y9z3oZu88vqHdBOWalSht2XwCUX1EZ+Xp3UWlfhqadEwgdXPCeRC
 67ELUnLJPAMGhjlGOda9u8mQ71v9QSLfTqJ55Jck/VuMeORqocfplxYVx9SJgQ2Pyr
 CgVT/bgcLn2fkj+KHsmmWXMUJCTYH3+dHdZJBIO94nlIfIVTMY9oOuEMNUR1eK8QC6
 ljOb+edJyqCKljO32zuO+Xf70chiKCEY+wKNJuhfKORBGmEW6cUsFORqc49dA9TX2M
 Pf48E2UUkZRsA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=FjnCe57f
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 2/5] ice: remove redundant
 Rx field from rule info
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Simon Horman <simon.horman@corigine.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Apr 07, 2023 at 06:52:16PM +0200, Michal Swiatkowski wrote:
> Information about the direction is currently stored in sw_act.flag.
> There is no need to duplicate it in another field.
> 
> Setting direction flag doesn't mean that there is a match criteria for
> direction in rule. It is only a information for HW from where switch id
> should be collected (VSI or port). In current implementation of advance
> rule handling, without matching for direction meta data, we can always
> set one the same flag and everything will work the same.
> 
> Ability to match on direction meta data will be added in follow up
> patches.
> 
> Recipe 0, 3 and 9 loaded from package has direction match
> criteria, but they are handled in other function.
> 
> Move ice_adv_rule_info fields to avoid holes.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Reviewed-by: Simon Horman <simon.horman@corigine.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c |  1 -
>  drivers/net/ethernet/intel/ice/ice_switch.c  | 22 ++++++++++----------
>  drivers/net/ethernet/intel/ice/ice_switch.h  |  8 +++----
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c  |  5 -----
>  4 files changed, 14 insertions(+), 22 deletions(-)
> 

Thanks,
Reviewed-by: Leon Romanovsky <leonro@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
