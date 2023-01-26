Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0513B67C7C7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jan 2023 10:51:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8607781E31;
	Thu, 26 Jan 2023 09:51:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8607781E31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674726680;
	bh=+efDtJsjEOPCPwioGttBydXtl00B8yN28OVYT4cjY6Y=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zHjKACfP6Ngep5O9NKid8f1hXDv/s2JtWvkqvWybxNUfSAvoiAYj5ruc0uLR3vfSw
	 Nzp6y2Oc05R+lJ/VZLqaz8OtbmyubU0CCYHtGauw0pmPzioMJiUOAsio4y7Ic2+ILD
	 1UQfT+GP1li+W2lcHMTi/eKUTd5NtnxCHHL2BPehZHGOXe2ZVmKv45R+1c0otRFE/a
	 uQk1P3UcUuDmRqpjOtj2xaiTwLdYJV5v6aSk9MUjTyU+xhmhVvimaL2eZ3rI9d0ftj
	 SIOz2VF4oeKanTPb9I4FdtaWTG69zgWAdFHXGGZcV0J+RitAFjSiUmSuRXHusYZswZ
	 O+OCavgvqRKNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HOc6rMfuO5x8; Thu, 26 Jan 2023 09:51:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8249B81E2F;
	Thu, 26 Jan 2023 09:51:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8249B81E2F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D39F81BF83C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 09:51:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B88B860E7B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 09:51:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B88B860E7B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ErUwjIPqqMJ4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jan 2023 09:51:12 +0000 (UTC)
X-Greylist: delayed 00:08:04 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8416F60E05
Received: from a.mx.secunet.com (a.mx.secunet.com [62.96.220.36])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8416F60E05
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 09:51:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by a.mx.secunet.com (Postfix) with ESMTP id 0973F20265;
 Thu, 26 Jan 2023 10:43:05 +0100 (CET)
X-Virus-Scanned: by secunet
Received: from a.mx.secunet.com ([127.0.0.1])
 by localhost (a.mx.secunet.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D3n78DnnaS0g; Thu, 26 Jan 2023 10:43:04 +0100 (CET)
Received: from mailout1.secunet.com (mailout1.secunet.com [62.96.220.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by a.mx.secunet.com (Postfix) with ESMTPS id 70ECD201E4;
 Thu, 26 Jan 2023 10:43:04 +0100 (CET)
Received: from cas-essen-01.secunet.de (unknown [10.53.40.201])
 by mailout1.secunet.com (Postfix) with ESMTP id 6132680004A;
 Thu, 26 Jan 2023 10:43:04 +0100 (CET)
Received: from mbx-essen-01.secunet.de (10.53.40.197) by
 cas-essen-01.secunet.de (10.53.40.201) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.34; Thu, 26 Jan 2023 10:43:04 +0100
Received: from gauss2.secunet.de (10.182.7.193) by mbx-essen-01.secunet.de
 (10.53.40.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Thu, 26 Jan
 2023 10:43:03 +0100
Received: by gauss2.secunet.de (Postfix, from userid 1000)
 id B49063180DFB; Thu, 26 Jan 2023 10:43:03 +0100 (CET)
Date: Thu, 26 Jan 2023 10:43:03 +0100
From: Steffen Klassert <steffen.klassert@secunet.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20230126094303.GA665047@gauss3.secunet.de>
References: <cover.1674560845.git.leon@kernel.org>
 <20230125110133.7195b663@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230125110133.7195b663@kernel.org>
X-ClientProxiedBy: cas-essen-01.secunet.de (10.53.40.201) To
 mbx-essen-01.secunet.de (10.53.40.197)
X-EXCLAIMER-MD-CONFIG: 2c86f778-e09b-4440-8b15-867914633a10
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 00/10] Convert drivers to
 return XFRM configuration errors through extack
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
Cc: Veaceslav Falico <vfalico@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Leon Romanovsky <leon@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Jay
 Vosburgh <j.vosburgh@gmail.com>, oss-drivers@corigine.com,
 linux-doc@vger.kernel.org, Raju Rangoju <rajur@chelsio.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Ayush Sawal <ayush.sawal@chelsio.com>,
 Simon Horman <simon.horman@corigine.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S . Miller" <davem@davemloft.net>,
 Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 25, 2023 at 11:01:33AM -0800, Jakub Kicinski wrote:
> On Tue, 24 Jan 2023 13:54:56 +0200 Leon Romanovsky wrote:
> > This series continues effort started by Sabrina to return XFRM configuration
> > errors through extack. It allows for user space software stack easily present
> > driver failure reasons to users.
> 
> Steffen, would you like to take these into your tree or should we apply
> directly? Looks like mostly driver changes.

You can just take it directly as it is mostly driver changes.
The ipsec-next tree is currently empty so there will be no
conflicts.

Thanks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
