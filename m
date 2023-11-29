Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 311A17FDD89
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 17:46:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 720EA821DD;
	Wed, 29 Nov 2023 16:46:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 720EA821DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701276367;
	bh=sSixjPm10MhafrJoNvgE8t+gP/rytQuMJ/K3zuuC0Pc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PUQ/nyRPLNnf+vNSXoS0aRGOpdfdGI456TkFKsc3DgjciO7vsNEGSf7Foae6kEAl0
	 T8iIDqLAhr9X5Q8lw219uwjm+1caVNd2n5JbQX2+G2cQ+llZ0qUKG7NeX5qNdj4PXr
	 bpGVTOR63/71y3Lf0RUiWqtOZ3MkH9ww71ESwFekc+lCmOligswhDwwkTk4hypgmuU
	 j+G/qrOEIELEcJj7v0FHGb818TtdQA2Pf85GRkVEsaePgo/8buOnRCd/gOV2wUY9r+
	 dEGyhyE0wCQDBD14OZrBx4RouwDnE5KLqyPvs42VJXz5eThX9eNe8BIDBQ9dZcYSNH
	 +Abo7L+mh4f7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1ozRWtilt2lK; Wed, 29 Nov 2023 16:46:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 242DB82237;
	Wed, 29 Nov 2023 16:46:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 242DB82237
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 18A841BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 16:46:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E3EBC41829
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 16:45:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E3EBC41829
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7b48VGyiqG3k for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Nov 2023 16:45:58 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7F2A241823
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 16:45:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F2A241823
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 073F6CE1E53;
 Wed, 29 Nov 2023 16:45:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E246DC433C7;
 Wed, 29 Nov 2023 16:45:53 +0000 (UTC)
Date: Wed, 29 Nov 2023 16:45:51 +0000
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20231129164551.GE43811@kernel.org>
References: <20231124114555.253412-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231124114555.253412-1-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1701276355;
 bh=xyGkzJOwryPI3xou4Wa2vHE+sW4/4uqtG68QNchN5LY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D9VeoTMN7TnMhvL6wfalm6GNQThPs3Snm3mnXssmcl0J1HauRPKtxlU9A7wr+ptQn
 LuOCmmHpGvxXVtVVmb2ClkCsJ86oHQ9w18MNXtd6n5wQblx4SOVe3gZGJXh1XQZ3xd
 OzD6VXd59rUJhFpJikhdC3KaIH3nZ90z2Ng5ZsUzSJQ6Fink4Hiv57fnYQGAC03qau
 RfxfMxu4Qs5ddGtGuzSa3YXEOpT9un53ZJgnbPvtEeeHZwfDh42cHvh8UOcD31F/lA
 PFWjYWryfH68HVxuQRcwh+hLfCb6RlxIvsmOr1u3Miab6Po18foGpb1+4O8NT190U9
 J63vW+f18BY9w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=D9VeoTMN
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Rename E822 to E82X
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Nov 24, 2023 at 12:45:55PM +0100, Karol Kolacinski wrote:
> When code is applicable for both E822 and E823 devices, rename it from
> E822 to E82X.
> ICE_PHY_PER_NAC_E822 was unused, so just remove it.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Hi Karol,

while I think this naming scheme may have some shortcomings
if other E82[0-9] chips come along with different overlap
in function re-use, I also do see that it is a convenient
shorthand. And moreover that it matches what is already in-tree
as of at least:

88c360e49f51 ("ice: Support cross-timestamping for E823 devices")

So, FWIIW, beyond my mumblings here I am happy with this patch.

Reviewed-by: Simon Horman <horms@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
