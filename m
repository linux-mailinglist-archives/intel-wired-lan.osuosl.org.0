Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C2C7B6BBE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Oct 2023 16:35:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F1AA4024D;
	Tue,  3 Oct 2023 14:35:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F1AA4024D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696343700;
	bh=pmUXViCwArGdnNrNHcg5wF1JgJ8IOX1Z9TXCJ4fP5Qk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=znYgvALZ+6lAx8FPRUyiIEzbDABb36pWUFXmkFHfUmUFYU5M0O4drIOgn+juulgJj
	 uc3gzz4tr5MJfBy1fn8urHScqlZpNQjy1CuL+DoSgHd+dqXg01sAHeDZMjSn01ZWSe
	 M5uZoGxDNg/6uY5zrRUc0AKoCNGXFmPhKrNlz0mQ/XOK5FleEd2ipNOhqUAiuFoORT
	 ZDbVpQyQiFvFjlillkfrdT9noT6wGV7ECNCU36P8IdGtJDC16oFgje7cKg+jVirP2T
	 UbQzJoGqya3Va7I8ZjK84vUvX6MLOO4dnCS5Gj8KvTLei7Xe5A1XA4p7Kg9HqCCeWl
	 YtyMfaKuT5wBw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w_w7s7PJqLEY; Tue,  3 Oct 2023 14:34:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9CC2140240;
	Tue,  3 Oct 2023 14:34:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9CC2140240
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE79B1BF393
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 14:34:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8F38A401AD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 14:34:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F38A401AD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7gK-ALGzHJhL for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 14:34:53 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CEA33400FE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 14:34:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CEA33400FE
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id C9EFCCE1811;
 Tue,  3 Oct 2023 14:34:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2A95C433C8;
 Tue,  3 Oct 2023 14:34:46 +0000 (UTC)
Date: Tue, 3 Oct 2023 16:34:44 +0200
From: Simon Horman <horms@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <ZRwmhINftLVQ8EnU@kernel.org>
References: <20231003053110.3872424-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231003053110.3872424-1-jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1696343687;
 bh=D3JHpbuUCsOPCV2/Kb8gL0Xp3qFkbADEWPSvE7cDcFQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CsN5Yq+OBWTY57OCo7MXg9a79vV07FR0Zcnz/xaLUM/UwZNKIkQY1q1j9+Fy4j59R
 xWkkVeb5CuVkZZ+1hltxiCElnEXtUonqGJcsLb4zbnekw3nAaR2Eiu+k03P5Ib38/t
 SiAPoFF3f+snBIefeoy9fKh8LpcpKHENGsAYRxdinjp73fWPwzbmUelbceDtkuVAXc
 8eS8eqtIWszZYyc5/ZXkXxLU7eXtM5y9lRHzVH8hpwybchZCpnWUxF3661v0TDY8Q+
 tu01g1zFJ0nxXihMD8oknPEutZTC07dm4qIoIlQsaQMkbbyxwfItG/i7yAdqtOCoHh
 8o4Im3mWwqgDQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=CsN5Yq+O
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix over-shifted
 variable
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 stable@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Oct 02, 2023 at 10:31:10PM -0700, Jesse Brandeburg wrote:
> Since the introduction of the ice driver the code has been
> double-shifting the RSS enabling field, because the define already has
> shifts in it and can't have the regular pattern of "a << shiftval &
> mask" applied.
> 
> Most places in the code got it right, but one line was still wrong. Fix
> this one location for easy backports to stable. An in-progress patch
> fixes the defines to "standard" and will be applied as part of the
> regular -next process sometime after this one.
> 
> Fixes: d76a60ba7afb ("ice: Add support for VLANs and offloads")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> CC: stable@vger.kernel.org
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
