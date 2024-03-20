Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C503C880C2B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Mar 2024 08:39:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DAD80414CE;
	Wed, 20 Mar 2024 07:39:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2TqEyHupEOb9; Wed, 20 Mar 2024 07:39:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F37640A75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710920377;
	bh=qzcBOQ9A2gjB2nXWLEneAyXAgJH2MzSNJvie31esoxU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m9eIu4z0V0YTN0hS5KMGPkoD5CXvDyJLOqu7bhaqjoxfhmft4RvDWtl8O4IwlcIpq
	 j4IYV7rmoWK4BvaaSygWAnj1UvPQUUglaC3lG8upAfdRi63Ie76IGBl2A4VhnJEPU/
	 AhjpDUXPRgSb9zrXjgOta4MoJ++8ekbRVc7PzOFrrc+AX0oz74fj9lhAgos2SBGL95
	 hf6hBmn50AdBm6Ld792hW/EP7Md446pG1/7/n+J6j7LJ23OK+dRAmbUXgzc2CcvWwO
	 /0p8oWDIyuG4A54ofb8uVHNHgOUU3WlVYw0QvuyZF83gkgagnBBwCJs8CdUUpa98zT
	 p0MrMIbik/8gQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1F37640A75;
	Wed, 20 Mar 2024 07:39:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0410B1BF82F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 07:39:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F29C2606E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 07:39:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w3--4qZuKOVe for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Mar 2024 07:39:34 +0000 (UTC)
X-Greylist: delayed 431 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 20 Mar 2024 07:39:33 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9533D60675
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9533D60675
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.134.164.104;
 helo=mail3-relais-sop.national.inria.fr; envelope-from=julia.lawall@inria.fr;
 receiver=<UNKNOWN> 
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9533D60675
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 07:39:33 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.07,139,1708383600"; d="scan'208";a="82621728"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
 by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2024 08:32:18 +0100
Date: Wed, 20 Mar 2024 08:32:17 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Dan Carpenter <dan.carpenter@linaro.org>
In-Reply-To: <facf5615-d7ac-4167-b23c-6bab7c123138@moroto.mountain>
Message-ID: <f1bdbed9-8549-3787-bd17-ecd62851e8a@inria.fr>
References: <77145930-e3df-4e77-a22d-04851cf3a426@moroto.mountain>
 <20240319124317.3c3f16cd@kernel.org>
 <facf5615-d7ac-4167-b23c-6bab7c123138@moroto.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=inria.fr; s=dc;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=qzcBOQ9A2gjB2nXWLEneAyXAgJH2MzSNJvie31esoxU=;
 b=hvE5SlOaaYtsnN0MQvi5uhuOIyDe8W3ACZt7Xy+mVsU0ATlOQNLPa2BJ
 bL5yAPtVv0Ru0aanmuHg7DuVoqohm8Fw3aEqNQSjKqTyZkJONR+6yfeRJ
 ionEiL2ncdyt87/84p3UwUr1tbbXr0ZssuoZq9LQbojhkPCb002PysCzG
 s=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=inria.fr
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256
 header.s=dc header.b=hvE5SlOa
X-Mailman-Original-Authentication-Results: mail3-relais-sop.national.inria.fr;
 dkim=none (message not signed)
 header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr;
 dmarc=fail (p=none dis=none) d=inria.fr
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix freeing uninitialized
 pointers
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, Jonathan Cameron <jic23@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On Wed, 20 Mar 2024, Dan Carpenter wrote:

> On Tue, Mar 19, 2024 at 12:43:17PM -0700, Jakub Kicinski wrote:
> > On Sat, 16 Mar 2024 12:44:40 +0300 Dan Carpenter wrote:
> > > -	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree);
> > > -	void *mac_buf __free(kfree);
> > > +	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) = NULL;
> > > +	void *mac_buf __free(kfree) = NULL;
> >
> > This is just trading one kind of bug for another, and the __free()
> > magic is at a cost of readability.
> >
> > I think we should ban the use of __free() in all of networking,
> > until / unless it cleanly handles the NULL init case.
>
> Free handles the NULL init case, it doesn't handle the uninitialized
> case.  I had previously argued that checkpatch should complain about
> every __free() pointer if the declaration doesn't have an assignment.
>
> The = NULL assignment is unnecessary if the pointer is assigned to
> something else before the first return, so this might cause "unused
> assignment" warnings?  I don't know if there are any tools which
> complain about that in that situation.  I think probably we should just
> make that an exception and do the checkpatch thing because it's such a
> simple rule to implement.

My understanding from Jonathan Cameron was that Linus wants a NULL always,
unless there is an initialization with the declaration.

julia
