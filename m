Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BA3A4386A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 09:57:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B581A81119;
	Tue, 25 Feb 2025 08:57:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XbEqdjlC7zPK; Tue, 25 Feb 2025 08:57:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA37F81110
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740473873;
	bh=KO8QT1Iud2j7VddE/JgWZ6zVDpqfkHfxQ9iGzJdyXlA=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=q8jB4WsZvD0UeXZWmw/FatMXgCzFcb3VKlcZexprkP2Yn2LHPK7rI9Q09V+bRBBG6
	 PIjccdupvYjhMYGW5R6mMK2LGpnnWBAR8G9A+9hIXKRon5Iwdf207XvL19mhVx02uH
	 VXCUa0id/bUnrTiHLq1tYld7lCKAemMjieU9RQpkGXdoPuxowqX650c5VOaMQi2j8M
	 GzgdEJ7t4+Hdq7+DEdTKKRCmQfFuFIn/avt2Xhmc0Wqfa6ZE3MJMRAJGrOh5yZKoyz
	 XYi8DQwvBV58O/DzWvGPtu6AOL1q2Xh+O5vl3ubAH7LIiVMU6d6cHB1nIi2J7/XMBK
	 s9yX1GAlXrc8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA37F81110;
	Tue, 25 Feb 2025 08:57:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0515D2292
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 08:57:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D63C4810F0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 08:57:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DUDiwVYmiUQK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 08:57:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=62.96.220.36;
 helo=mx1.secunet.com; envelope-from=steffen.klassert@secunet.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1B3FC810F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B3FC810F7
Received: from mx1.secunet.com (mx1.secunet.com [62.96.220.36])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B3FC810F7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 08:57:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mx1.secunet.com (Postfix) with ESMTP id 6477B20799;
 Tue, 25 Feb 2025 09:57:45 +0100 (CET)
X-Virus-Scanned: by secunet
Received: from mx1.secunet.com ([127.0.0.1])
 by localhost (mx1.secunet.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Xi-FHaOAzru; Tue, 25 Feb 2025 09:57:44 +0100 (CET)
Received: from cas-essen-02.secunet.de (rl2.secunet.de [10.53.40.202])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.secunet.com (Postfix) with ESMTPS id 8DFC32050A;
 Tue, 25 Feb 2025 09:57:44 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.secunet.com 8DFC32050A
Received: from mbx-essen-02.secunet.de (10.53.40.198) by
 cas-essen-02.secunet.de (10.53.40.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 25 Feb 2025 09:57:44 +0100
Received: from gauss2.secunet.de (10.182.7.193) by mbx-essen-02.secunet.de
 (10.53.40.198) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Tue, 25 Feb
 2025 09:57:43 +0100
Received: by gauss2.secunet.de (Postfix, from userid 1000)
 id 4C09F3182E64; Tue, 25 Feb 2025 09:57:43 +0100 (CET)
Date: Tue, 25 Feb 2025 09:57:43 +0100
From: Steffen Klassert <steffen.klassert@secunet.com>
To: Leon Romanovsky <leon@kernel.org>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, Ayush Sawal
 <ayush.sawal@chelsio.com>, Bharat Bhushan <bbhushan2@marvell.com>, "Eric
 Dumazet" <edumazet@google.com>, Geetha sowjanya <gakula@marvell.com>,
 hariprasad <hkelam@marvell.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 <intel-wired-lan@lists.osuosl.org>, Jakub Kicinski <kuba@kernel.org>, "Jay
 Vosburgh" <jv@jvosburgh.net>, Jonathan Corbet <corbet@lwn.net>,
 <linux-doc@vger.kernel.org>, <linux-rdma@vger.kernel.org>, Louis Peens
 <louis.peens@corigine.com>, <netdev@vger.kernel.org>,
 <oss-drivers@corigine.com>, Paolo Abeni <pabeni@redhat.com>, "Potnuri Bharat
 Teja" <bharat@chelsio.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Subbaraya Sundeep <sbhatta@marvell.com>,
 Sunil Goutham <sgoutham@marvell.com>, Tariq Toukan <tariqt@nvidia.com>, "Tony
 Nguyen" <anthony.l.nguyen@intel.com>, Zhu Yanjun <yanjun.zhu@linux.dev>,
 Bharat Bhushan <bharatb.linux@gmail.com>
Message-ID: <Z72GB6wIUgDqunsQ@gauss3.secunet.de>
References: <cover.1739972570.git.leon@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <cover.1739972570.git.leon@kernel.org>
X-ClientProxiedBy: cas-essen-01.secunet.de (10.53.40.201) To
 mbx-essen-02.secunet.de (10.53.40.198)
X-EXCLAIMER-MD-CONFIG: 2c86f778-e09b-4440-8b15-867914633a10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=secunet.com; s=202301; t=1740473864;
 bh=KO8QT1Iud2j7VddE/JgWZ6zVDpqfkHfxQ9iGzJdyXlA=;
 h=Date:From:To:CC:Subject:References:In-Reply-To:From;
 b=O884BqCB+2PDt7/FG+IfXb4WPIOnChiGWm5WWq+2pT+Rqlscx5O7PCQNReE6yHd+t
 wVUcFru8nNgtg9SCQPFh3Q+13UNXJ1bWkPTI6h2B3nP01iSw3AY89yd4tagjbTLRXs
 Sc9amBwHuomP2H4FXE9Ir/89yOFheh98Yu4pfP2sShIbKXDpggGQYGRbpUI1U3GydN
 uNeLSwvDk7AOb04jwK3ouTeVvOQGL31nXhWNvcPS60c1/mw8BmV5b4d1h8dWBvZWF8
 nU0rGs4im59pTYSOEqWM0oErNGY3SATZQK6RnHO4SjY2whOmEd/6lC+P3obB1Yy3+D
 0IRRrKP9gVtDg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=secunet.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=secunet.com header.i=@secunet.com header.a=rsa-sha256
 header.s=202301 header.b=O884BqCB
Subject: Re: [Intel-wired-lan] [PATCH ipsec-next v1 0/5] Support PMTU in
 tunnel mode for packet offload
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

On Wed, Feb 19, 2025 at 03:50:56PM +0200, Leon Romanovsky wrote:
> Changelog:
> v1:
>  * Changed signature and names of functions which set and clear type_offload
>  * Fixed typos
>  * Add Zhu's ROB tag
> v0: https://lore.kernel.org/all/cover.1738778580.git.leon@kernel.org
> 
> Hi,
> 
> This series refactors the xdo_dev_offload_ok() to be global place for
> drivers to check if their offload can perform encryption for xmit
> packets.
> 
> Such common place gives us an option to check MTU and PMTU at one place.
> 
> Thanks
> 
> Leon Romanovsky (5):
>   xfrm: delay initialization of offload path till its actually requested
>   xfrm: simplify SA initialization routine
>   xfrm: rely on XFRM offload
>   xfrm: provide common xdo_dev_offload_ok callback implementation
>   xfrm: check for PMTU in tunnel mode for packet offload

Series applied, thanks a lot Leon!
