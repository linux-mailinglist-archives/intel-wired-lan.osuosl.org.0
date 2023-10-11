Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 069C77C47A2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 04:10:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 618A6415D0;
	Wed, 11 Oct 2023 02:10:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 618A6415D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696990231;
	bh=RLGhS4HeXMKedXMBgpYhLZCdhjbecdbA1kxTGCj0w4Q=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wI1FP3/nXOVCYRH3FLSFtZhOP3gkPQpfFLq1A1FeZ955+QG6EbtoLMowqaDhVysun
	 g2xRYiP7n/3v/eq2jzR2lwSAxD65GnDdrWxCN2JcvvKuPZrK819fFlf4DPIO9/BC3A
	 LUhm5VEUgBIjeWrb3/onwwlXjpoZp7sx9T8fVrNo2oQQLLbLohAJrPCe9mJxqx0KMi
	 LinjYHAjk5MJCppepR7bRWGLJXjds9FysgAhfK8PaxDCI0rViTW2MDiNaD0QiC9NdU
	 WKi/kI+dUShHxoOMnPE2Wuksbf8pVEQHa7QOJ5DEXSajjnaLQvyT6oJyugxX30JFzN
	 jxUrfgedBL5jw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8cKPoxdlKOCP; Wed, 11 Oct 2023 02:10:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1E03D404BF;
	Wed, 11 Oct 2023 02:10:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E03D404BF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 277CE1BF292
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 02:10:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F3D614047C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 02:10:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F3D614047C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ye7lZ7lE6rAG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 02:10:23 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0F3EE4158B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 02:10:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F3EE4158B
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 99C2561026;
 Wed, 11 Oct 2023 02:10:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1D5DC433C8;
 Wed, 11 Oct 2023 02:10:20 +0000 (UTC)
Date: Tue, 10 Oct 2023 19:10:19 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: takeru hayasaka <hayatake396@gmail.com>
Message-ID: <20231010191019.12fb7071@kernel.org>
In-Reply-To: <CADFiAcKF08osdvd4EiXSR1YJ22TXrMu3b7ujkMTwAsEE8jzgOw@mail.gmail.com>
References: <20231008075221.61863-1-hayatake396@gmail.com>
 <20231010123235.4a6498da@kernel.org>
 <CADFiAcKF08osdvd4EiXSR1YJ22TXrMu3b7ujkMTwAsEE8jzgOw@mail.gmail.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1696990221;
 bh=SCN+YvrTAvn/rzETs6OSh7GFIZOLCdOcc5xTG+BWl0g=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=A0n2bizFMpZqqKeGhyfo1ozKH4zwv1E5WO/KuO+JorM7wXzRM6u21i+SvPPYJPSgL
 8IqhnLJh5EdIJKh+kVXpg8RCAGy8fiWXmjx6wag+lF9y2PDpt33HpFV6iz8JSsWBIM
 QFyLHie+TUizdXcW9qnZcCeEwjxw3/2lrXoEwz9cZ1ctYvcWrhSBPQmqeaysAwknlh
 BUkjjBOydhkCOQvKK2JxDXFKCCFNMJ5XcTXWPK8kz/gRCkT8fW47b9auOrDVAGrzGQ
 vzgylqoG1XQ39ay/nXMofyJqIkddLIywkojM3gpXsJy4O0dYN98IQuVdgltPbH1/Ag
 0z1PUB0veiV3A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=A0n2bizF
Subject: Re: [Intel-wired-lan] [PATCH net-next] ethtool: ice: Support for
 RSS settings to GTP from ethtool
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 11 Oct 2023 10:56:17 +0900 takeru hayasaka wrote:
> GTP generates a flow that includes an ID called TEID to identify the
> tunnel. This tunnel is created for each UE (User Equipment).
> By performing RSS based on this flow, it is possible to apply RSS for
> each communication unit from the UE.
> Without this, RSS would only be effective within the range of IP addresses.
> For instance, the PGW can only perform RSS within the IP range of the SGW.
> What I'm trying to say is that RSS based solely on IP addresses can be
> problematic from a load distribution perspective, especially if
> there's a bias in the terminals connected to a particular base
> station.
> As a reference that discusses a similar topic, please see the link
> below(is not RSS, is TEID Flow):
> https://docs.nvidia.com/networking-ethernet-software/cumulus-linux-56/Layer-3/Routing/Equal-Cost-Multipath-Load-Sharing/#gtp-hashing

Makes sense, thanks for the extra information. I think it would be
worth adding all of this to the commit message!

Regarding the patch - you are only adding flow types, not a new field 
(which are defined as RXH_*). If we want to hash on an extra field, 
I think we need to specify that field as well?

> Thank you for your understanding.
> ---
> Sorry! My email was blocked because it wasn't sent in plain text mode.
> I've made the necessary changes and will resend it.

No worries! Additional request - in the future please prefer the
bottom-posting or interleaved style of replies:
https://en.wikipedia.org/wiki/Posting_style#Interleaved_style
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
