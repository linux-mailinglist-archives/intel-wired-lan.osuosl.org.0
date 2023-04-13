Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 764076E119F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Apr 2023 18:03:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E743C42139;
	Thu, 13 Apr 2023 16:03:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E743C42139
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681401835;
	bh=MqMDxD22XVU09vmh4tH4LrSCX+uMEv8/9dYAzrsuj5Y=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DYU5ejDZ3WSvklEahLQSStX9NF1BE/UKxaedoWBPhljfErPGLOeWf+4tWKQW8OYxy
	 4F8/LjAnAXLmwFVPBVpTIny2ILPCK1APIuzxD0iW6h3Ye4u07HIR2EBCPp7Vn2gfqf
	 lh62/X74qnGAXVyW+T4gaRoftXX6xBGR20UtwQ+6KokmM27v/RQyDmCeHSr14LMHhE
	 1Q2qwZRaVda4K2avvS+hUfLSg2iXOTrxyU8wBMFkdLNJaYMiG/DDn/zuk/KYaayQCj
	 1aJMcI36AvFWNowvQPLwcdWzo/MxCHmUDef8fHIFu5N2Y5uDX9g7w9TwLzjCLaoxKD
	 Y1SkcIppRbWqw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zBTlVSi-35Bu; Thu, 13 Apr 2023 16:03:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E92E04210A;
	Thu, 13 Apr 2023 16:03:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E92E04210A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D61931C3CAC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 16:03:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AE648429AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 16:03:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE648429AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3-NUlC3LNN-O for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Apr 2023 16:03:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2177F429A7
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2177F429A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 16:03:48 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E165D601D6;
 Thu, 13 Apr 2023 16:03:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA76EC433D2;
 Thu, 13 Apr 2023 16:03:45 +0000 (UTC)
Date: Thu, 13 Apr 2023 09:03:44 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20230413090344.20796001@kernel.org>
In-Reply-To: <1809a34d-dcf4-4b54-089a-a7be3f4c23e1@intel.com>
References: <20230412073611.62942-1-kurt@linutronix.de>
 <1809a34d-dcf4-4b54-089a-a7be3f4c23e1@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1681401826;
 bh=Rc5ZK0hEjJCUPLbarklfttD8GZ7zgofLPT8Ny5BT6ac=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=FDEagfpji6+VQ7vc82LIuUWvzZ3mHINa2z7GCkahDSUnFzV1BxkQlMxxwUQdB7UVH
 kCVWlOTqGx0ZQTBuKuRy0Z6C6gqBL+jFf41fQ3mg6XDYa2EfYdPMw3+p8jTFEgOGvH
 j8d5J3ufTegt+/5v2miE03fQ323wwQJCW4Y1snt23mefUV/QK7ImUL1pSac5U7Dt8O
 lRbHsyp0mN5NWAGASCFxT8ZQEeNUX0CIjdxDF1P/biOyfFEREzexdeYi3wgfbrkMnT
 KpGl+7aNj4rv463i1A5a8xNyD4LX+XyTCe1A8sbJhW6zhkrAhl44ksQiNRvQCvNoJW
 cON6yvABNcAUA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=FDEagfpj
Subject: Re: [Intel-wired-lan] [PATCH net-next] igc: Avoid transmit queue
 timeout for XDP
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
Cc: netdev@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Ong Boon Leong <boon.leong.ong@intel.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 12 Apr 2023 15:30:38 -0700 Jacob Keller wrote:
> Is most driver's XDP implementation broken? There's also
> netif_trans_update but this is called out as a legacy only function. Far
> more drivers call this but I don't see either call or a direct update to
> trans_start in many XDP implementations...
> 
> Am I missing something or are a bunch of other XDP implementations also
> wrong?

Only drivers which use the same Tx queues for the stack and XDP need
this.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
