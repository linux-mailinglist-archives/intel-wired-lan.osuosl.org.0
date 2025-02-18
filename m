Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B250A3A9BE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2025 21:47:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DFF1481DF5;
	Tue, 18 Feb 2025 20:47:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7-tgAsLUNI6f; Tue, 18 Feb 2025 20:47:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 504EC81D67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739911667;
	bh=jpY7Wp9A5OrP01XjYb8sMlnmyc1nWglgkRg0g+3xUdg=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lBQLJMPf8/vNdKXv30JjYIFHYF1fWHyk6eO7wWjpjmE8/jV/58HcG02rpX9t5Prpc
	 u103U4WW4knt05c7cDkRKz6SRsa3ouWput1q/++MU9mrGmGkn2N5cSbl148iU9B7nb
	 hkFTidmzQ8iWHCI+3o0ZPaq5Y25MJzF5xF5Q6htMe0dW6TIFW8xX28q34aUanJR3eD
	 ZM7rzdW1pFYZ9BK+TrJCbOd5yAaPmgDTn+WfMziH+4U2fYPIpTbtk662+Eev/EhEpL
	 J8MtkD6/Ozksm5Vws6TBTQrwtZd+ft1+j5XlUehFS+NxaH1i486aSxDBSQ0H50dtgy
	 Mk4jIpQVw81og==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 504EC81D67;
	Tue, 18 Feb 2025 20:47:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 53C43968
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 20:47:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40D2840418
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 20:47:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AoP9wdg9F-dC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2025 20:47:44 +0000 (UTC)
X-Greylist: delayed 469 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 18 Feb 2025 20:47:42 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F229840002
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F229840002
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=91.218.175.176;
 helo=out-176.mta0.migadu.com; envelope-from=yanjun.zhu@linux.dev;
 receiver=<UNKNOWN> 
Received: from out-176.mta0.migadu.com (out-176.mta0.migadu.com
 [91.218.175.176])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F229840002
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 20:47:42 +0000 (UTC)
Message-ID: <0462df14-0aaa-4861-a0a4-dade4cfa727e@linux.dev>
Date: Tue, 18 Feb 2025 21:39:44 +0100
MIME-Version: 1.0
To: Leon Romanovsky <leon@kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>
Cc: Leon Romanovsky <leonro@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 Ayush Sawal <ayush.sawal@chelsio.com>, Bharat Bhushan
 <bbhushan2@marvell.com>, Eric Dumazet <edumazet@google.com>,
 Geetha sowjanya <gakula@marvell.com>, hariprasad <hkelam@marvell.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Jay Vosburgh <jv@jvosburgh.net>,
 Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
 linux-rdma@vger.kernel.org, Louis Peens <louis.peens@corigine.com>,
 netdev@vger.kernel.org, oss-drivers@corigine.com,
 Paolo Abeni <pabeni@redhat.com>, Potnuri Bharat Teja <bharat@chelsio.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Subbaraya Sundeep <sbhatta@marvell.com>,
 Sunil Goutham <sgoutham@marvell.com>, Tariq Toukan <tariqt@nvidia.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Ilia Lin <ilia.lin@kernel.org>
References: <cover.1738778580.git.leon@kernel.org>
 <3de0445fa7bf53af388bb8d05faf60e3deb81dc2.1738778580.git.leon@kernel.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Zhu Yanjun <yanjun.zhu@linux.dev>
In-Reply-To: <3de0445fa7bf53af388bb8d05faf60e3deb81dc2.1738778580.git.leon@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1739911190;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jpY7Wp9A5OrP01XjYb8sMlnmyc1nWglgkRg0g+3xUdg=;
 b=tcCAXXONjDT/OngPf2x8vKJiHrWMIUrrugxnILHDOpCXRYu3MBoazO82ZM7VSPkuczGLWw
 1KZasNRLocM8fP8QV99JR7+aRscLdZIenUpkrd9/lva1TkO4U0TnNW6Tw38WI5yUEZArgS
 ayvN642CY1KMmwMmNZSdemceCsQGgaY=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=tcCAXXON
Subject: Re: [Intel-wired-lan] [PATCH ipsec-next 3/5] xfrm: rely on XFRM
 offload
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

在 2025/2/5 19:20, Leon Romanovsky 写道:
> From: Leon Romanovsky <leonro@nvidia.com>
> 
> After change of initialization of x->type_offload pointer to be valid
> only for offloaded SAs. There is no need to rely both on x->type_offload
                                                   ^^^^^^^^
                                                rely on both ??
Thanks a lot.
Reviewed-by: Zhu Yanjun <yanjun.zhu@linux.dev>

Zhu Yanjun

> and x->xso.type to determine if SA is offloaded or not.
> 
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
