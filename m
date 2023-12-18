Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B2F816D74
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Dec 2023 13:09:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ECE1F40AEB;
	Mon, 18 Dec 2023 12:09:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ECE1F40AEB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702901355;
	bh=7HT87doCs/xRfSCyWfKVc44TuU14rs3wORmiyYz0JvA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mDJq1YG6jThOgx1Uyu4kQsalOQ8zQpfx2r9au+4FiR3AIbNHeBDpzb+kRb2+mSmCR
	 vem2SQNHhXGDQXcu+7YaS3SenLEkQfezKeKEuyRaiYRExcjxJKcfhTR2TVh2OE1TaE
	 UT3l0f3iKDMiqXDj6P/Zxjj7Xrs3fQD25uw7btOLpZlvyMy4aoxQtiQfp1WAU/rsvn
	 80AHc9DlX7Wa7QYkWQWhFcAYsAoO7DYuikDgjHx4VJrwQ+wuG2XCyEuXUuzeEln5vU
	 eSailRttOVXjz/6H84Hu4efBauWL+wFtzYveFhSact3Ez2f/eCaGKhJyJwSyAAC7YM
	 YDYDQ0oHmoWqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HV0hoJhI8srz; Mon, 18 Dec 2023 12:09:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8BD8B405E0;
	Mon, 18 Dec 2023 12:09:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8BD8B405E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 251C01BF31B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 12:09:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F010B41695
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 12:09:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F010B41695
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SQAVOL3uByfD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Dec 2023 12:09:07 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3058341685
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 12:09:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3058341685
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 0F84BB80E59;
 Mon, 18 Dec 2023 12:09:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0984BC433CB;
 Mon, 18 Dec 2023 12:09:01 +0000 (UTC)
Date: Mon, 18 Dec 2023 12:08:58 +0000
From: Simon Horman <horms@kernel.org>
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Message-ID: <20231218120858.GC6288@kernel.org>
References: <20231215234807.1094344-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231215234807.1094344-1-pavan.kumar.linga@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702901343;
 bh=5T8VNG0SXY77I499chQGBaQNatxLNPqrynNliZvOJrQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hBWD3xupk4+m+SCJsXi49aIaSlqk65+7PrxYDFLV1eYaiB/c7ndk+d2nOgLErI/nz
 rs7Dkq/jxP/mYct5v+Q3uLgnWomh0nu2fAOGWr/KW2ciBY90/kmiUgngc4V1+C/p12
 dqd8OUY0k/BLyg2iGcHk9qavrFGODkM1Wkfo1BlgiWjf1G0iEAJAufdeJfrfJYmy2x
 DEsxM2Ko8LT9Gj+NPUlvS2Z9Fc3KTB8HFLHq4rWQhP26K2SBzjf5O40TX0N1sxIrZb
 8bq5y+P75jdepzrBMhYteGC9tR0Jyo8axxVCtgfEYh/J+OEhejeAsRKw+/qksg17B/
 vRMMeYIITHFfA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=hBWD3xup
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: avoid compiler
 introduced padding in virtchnl2_rss_key struct
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
Cc: netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 larysa.zaremba@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Dec 15, 2023 at 03:48:07PM -0800, Pavan Kumar Linga wrote:
> Size of the virtchnl2_rss_key struct should be 7 bytes but the
> compiler introduces a padding byte for the structure alignment.
> This results in idpf sending an additional byte of memory to the device
> control plane than the expected buffer size. As the control plane
> enforces virtchnl message size checks to validate the message,
> set RSS key message fails resulting in the driver load failure.
> 
> Remove implicit compiler padding by using "__packed" structure
> attribute for the virtchnl2_rss_key struct.
> 
> Also there is no need to use __DECLARE_FLEX_ARRAY macro for the
> 'key_flex' struct field. So drop it.
> 
> Fixes: 0d7502a9b4a7 ("virtchnl: add virtchnl version 2 ops")
> Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
