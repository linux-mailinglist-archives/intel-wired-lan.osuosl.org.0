Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3824E81DF84
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Dec 2023 10:36:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BAC6341607;
	Mon, 25 Dec 2023 09:36:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BAC6341607
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703496994;
	bh=U551s65QPfrB7iFwhNNPcwEDRFVFsXi1AUfb0dZqwpo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=F9cOB4rOhq582Z3vK0OMXX6OwldrIkwjf5vy2Xt4XoKyTBzoCZ21fesMfgoy+i0eX
	 ARLEP1CHDSiJVW98qRA6SCZfFYDSMeLnauTf6doBXeYPC5/YCAlOKdHwXEsAqGuLKP
	 ICH3+w4FQ8Zy6dQ6JbgigYWi5scME3v+OA0oQNSMFjFPW0yO0lDob5tUzTVOB7i1lL
	 lyY1osmDjI2W/u825M79iu0jY1b0RRxbl7dpQEH0mVjftHx4OnrtK3SbmLhWVazkht
	 0DcognVLQthJps0KrLc/Mz6WedDkhNprY6kUfK2GdgpshDBoApFYlz8rZxLTnLl8xS
	 SmOX5pV+xGUUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cfOEUsZJW0lF; Mon, 25 Dec 2023 09:36:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83024415FB;
	Mon, 25 Dec 2023 09:36:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83024415FB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D9BB1BF573
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Dec 2023 09:36:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 41AFC60DB7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Dec 2023 09:36:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41AFC60DB7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YWBwPn2cc4sx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Dec 2023 09:36:27 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ABD4160C14
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Dec 2023 09:36:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ABD4160C14
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 580B160C0A;
 Mon, 25 Dec 2023 09:36:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2448C433C7;
 Mon, 25 Dec 2023 09:36:24 +0000 (UTC)
Date: Mon, 25 Dec 2023 09:36:22 +0000
From: Simon Horman <horms@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20231225093622.GF5962@kernel.org>
References: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
 <20231206010114.2259388-16-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231206010114.2259388-16-jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1703496986;
 bh=T5YjMMovrIer/GCTYaj9RNBTfKwPMQu1VtHaEVx7Wqg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S3PG6Q2/+aKEOkiQoCMmG929B1hderAbA59IrvC0DETtYVUGh4+AJ+uYiwX3I+U+h
 mwM+3o3STsP1BympsCy09r4JSbB8UEUNYW/x3IvvgZ+WN9GfRO9FBz+d4gDY0YhlPO
 x8tjHu0BtbzdgwlC2w3crLkFqUXMOxUO+5jFcYAHj1fIeVe7/2wKhkH0Z/ck025rOV
 bXl0SeVfpLrRdKLb4FJtmQuRmbVK044/ANH3FKAthVvhmrEqA+PcYe4w4f2VSd9cbq
 bJ4/topkG6+peTvvo3655cDaa4dNFUUAqAHSrPtNLDovMwczlS4LFFMWGgXP7C8SQ/
 XFa6qYs9k9rjQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=S3PG6Q2/
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 15/15] idpf: refactor some
 missing field get/prep conversions
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
Cc: netdev@vger.kernel.org, marcin.szycik@linux.intel.com,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 aleksander.lobakin@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Dec 05, 2023 at 05:01:14PM -0800, Jesse Brandeburg wrote:
> Most of idpf correctly uses FIELD_GET and FIELD_PREP, but a couple spots
> were missed so fix those.
> 
> Automated conversion with coccinelle script and manually fixed up,
> including audits for opportunities to convert to {get,encode,replace}
> bits functions.
> 
> Add conversions to le16_get/encode/replace_bits where appropriate. And
> in one place fix up a cast from a u16 to a u16.
> 
> @prep2@
> constant shift,mask;
> type T;
> expression a;
> @@
> -(((T)(a) << shift) & mask)
> +FIELD_PREP(mask, a)
> 
> @prep@
> constant shift,mask;
> type T;
> expression a;
> @@
> -((T)((a) << shift) & mask)
> +FIELD_PREP(mask, a)
> 
> @get@
> constant shift,mask;
> type T;
> expression a;
> @@
> -((T)((a) & mask) >> shift)
> +FIELD_GET(mask, a)
> 
> and applied via:
> spatch --sp-file field_prep.cocci --in-place --dir \
>  drivers/net/ethernet/intel/
> 
> CC: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
