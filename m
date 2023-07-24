Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D5274760131
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jul 2023 23:30:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 706A3417DF;
	Mon, 24 Jul 2023 21:30:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 706A3417DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690234205;
	bh=hyRX8PnobI72Ph0joaS+LdsJ6wD9CDtg4Vj4KNZzrHE=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8ZLzTVbq5eokOlrbDPBBb+x0wTJnmRp5aTda8oW1etV7sctLvEkFzYkJwQp4bv8Wg
	 MWx+KFfB3m47vHUagyMRDxvg+EDBlukd7Yy1XbWMwcCODmHH7Bhptrpk72D2AR17Yj
	 C8jGkvbQTQTR3OdkxYJ40Z0ytvuFi0JxLJIn310ZtOxJwQBYfltSKlOHHq8gTrPCi+
	 vK722KGFeUoNu/ypQOWpV2hcV425nm2sEYODVOhJGhQwqqJjb8L96Vw0wkOSTzid4Y
	 qZzF8p00VQOq/dtkugZHAlmnE2MfQ2WJpkB/pkebWhUiBJejn2Q+7Tr57OnJS7R431
	 w7uNriT7p5row==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L57qyAJYlIMt; Mon, 24 Jul 2023 21:30:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D72DD417C2;
	Mon, 24 Jul 2023 21:30:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D72DD417C2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 18FC51BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 21:29:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F2FA440578
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 21:29:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2FA440578
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kQS9t8vf_7C0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jul 2023 21:29:57 +0000 (UTC)
X-Greylist: delayed 478 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 24 Jul 2023 21:29:57 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B795E400AC
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B795E400AC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 21:29:57 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id BF5F3613FB;
 Mon, 24 Jul 2023 21:21:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83DFDC433C7;
 Mon, 24 Jul 2023 21:21:56 +0000 (UTC)
Date: Mon, 24 Jul 2023 14:21:55 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Leon Romanovsky <leon@kernel.org>, Lin Ma <linma@zju.edu.cn>
Message-ID: <20230724142155.13c83625@kernel.org>
In-Reply-To: <20230724174435.GA11388@unreal>
References: <20230723075042.3709043-1-linma@zju.edu.cn>
 <20230724174435.GA11388@unreal>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1690233717;
 bh=KcmOvjdsIerNh9iSPOIWnJQYWkn+4DhLR22pWifJh68=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Wb0PN3QFq+FC5EzT5PMzMn8X3+hXurSz7N4oj71as22oZ5BheFT6FS7tYLQyIqwy0
 FFtVf5qKLvDaIzk2hUrAC/PrgOAfrawHIgRoKeNiIoAGscZTYq1YgvfcWUjDV7FxBc
 qrHZwJx2r0AFP3NldFG4SwYZPD6ryn72aV373L9iENvpkM9WnJ0A67xVCzbme8tsqJ
 A0max3XRxjfoKurA51JQGiaZgb8pKH8Dc3JaKinewdlcORonMTipSfk6V/8nKTYcKx
 5WNcGhpuU3jjItgdoNOO/fNQqTqvfjoUlv+7Ig2Es4zGrsYSR3yazkHm3Axs3Op8R4
 PVkynMm2fhx2g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Wb0PN3QF
Subject: Re: [Intel-wired-lan] [PATCH v1] i40e: Add length check for
 IFLA_AF_SPEC parsing
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
Cc: hawk@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org,
 richardcochran@gmail.com, john.fastabend@gmail.com, jesse.brandeburg@intel.com,
 ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 24 Jul 2023 20:44:35 +0300 Leon Romanovsky wrote:
> > @@ -13186,6 +13186,9 @@ static int i40e_ndo_bridge_setlink(struct net_device *dev,
> >  		if (nla_type(attr) != IFLA_BRIDGE_MODE)
> >  			continue;
> >  
> > +		if (nla_len(attr) < sizeof(mode))
> > +			return -EINVAL;
> > +  
> 
> I see that you added this hunk to all users of nla_for_each_nested(), it
> will be great to make that iterator to skip such empty attributes.
> 
> However, i don't know nettlink good enough to say if your change is
> valid in first place.

Empty attributes are valid, we can't do that.

But there's a loop in rtnl_bridge_setlink() which checks the attributes.
We can add the check there instead of all users, as Leon points out.
(Please just double check that all ndo_bridge_setlink implementation
expect this value to be a u16, they should/)
-- 
pw-bot: cr
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
