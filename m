Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8227CE4CA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 19:40:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D02F74219E;
	Wed, 18 Oct 2023 17:40:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D02F74219E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697650829;
	bh=cXeXKU4Lpu0xnG7fqHPZStffwxLix07RToINkPNeKaU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xtSGHb3LEXqrpCW9lYZVpMl8GcEzLLWo838738xU3MnUuXVPS2IFoYAN0pYCb3WBk
	 wfbgxWamekkb2y3fgRxkWzOyTp2fA29sHLD/ZDYERHHMpaJRQhwSA29TSYIUljoONg
	 zkEZsDuwd9C8eudyNxaGKpeU1/+McEPRGvGLTabAZpDLNKK4k8nh6YvWixTZuyj1Ye
	 HziI2jX7M0z+Jia12rfWBTKHeac5isbhTJqBFoyDB6YRXsin+nZcgClqu1rynt3mIx
	 BrmptqTq4vXnot1JrHs5X9srrQoZsRJKCcnsjT1JClnjBjgfUwmSs692bp3KG7oNLw
	 haSc0Cm94FoHA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vXaYVrnbXBJQ; Wed, 18 Oct 2023 17:40:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A54E41FAC;
	Wed, 18 Oct 2023 17:40:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A54E41FAC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DAE961BF865
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 17:40:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B277F41FAC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 17:40:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B277F41FAC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fDTdkLKff5-a for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 17:40:21 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8958441772
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 17:40:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8958441772
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 7AB45CE247C;
 Wed, 18 Oct 2023 17:40:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56F17C433C8;
 Wed, 18 Oct 2023 17:40:16 +0000 (UTC)
Date: Wed, 18 Oct 2023 10:40:15 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Harald Welte <laforge@gnumonks.org>
Message-ID: <20231018104015.42b2465b@kernel.org>
In-Reply-To: <ZS-TfMKAxHLEiXBl@nataraja>
References: <20231012060115.107183-1-hayatake396@gmail.com>
 <20231016152343.1fc7c7be@kernel.org>
 <CADFiAcKOKiTXFXs-e=WotnQwhLB2ycbBovqS2YCk9hvK_RH2uQ@mail.gmail.com>
 <CADFiAcLiAcyqaOTsRZHex8g-wSBQjCzt_0SBtBaW3CJHz9afug@mail.gmail.com>
 <20231017164915.23757eed@kernel.org>
 <CADFiAc+OnpyNTXntZBkDAf+UfueRotqqWKg+BrApWcL=x_8vjQ@mail.gmail.com>
 <ZS-TfMKAxHLEiXBl@nataraja>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697650816;
 bh=a4MNBzIoQraa+P47UnuWNFSqE8gtKcdSsgT0BnTe1Vs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=YVvNKp1Gdiy4zquRwSNqkoqP9Y8U1CeEAVV8xmeElCyZ8nCupZmWYM7ZTz1xZB9dY
 8AHPqT+TI3kITYLP7q8ccjFQhl5JV9Bc9bjmAkXAEHYzrFH3pve6CqtbDbab8Bnnl6
 yeua8COeRAd6q1xaRDSLEgFDq1OkCzqHdXUlq6CcxFeAVmCICPR5MnkBm18/eiBt41
 8QYwyXm+zebSU3kSVNasCwuS+26jLzVO1PBQflcoYVqsHuyli5k4x7yd6eHqQ3+FrA
 jLTRGDCWrhp4z06IZP4FBWDo7gCM7ZJixinvMqNLCMPyUeDoFTldAABiA8VYmt/mUv
 au/6sQvEm84NQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=YVvNKp1G
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ethtool: ice: Support for
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>, netdev@vger.kernel.org,
 osmocom-net-gprs@lists.osmocom.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 takeru hayasaka <hayatake396@gmail.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Pablo Neira Ayuso <pablo@netfilter.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 18 Oct 2023 10:12:44 +0200 Harald Welte wrote:
> > If we were to propose again, setting aside considerations specific to
> > Intel, I believe, considering the users of ethtool, the smallest units
> > should be gtpu4|6 and gtpc4|6.  
> 
> agreed.  Though I'm not entirely sure one would usually want to treat v4
> different from v6.  I'd assume they would usually both follow the same
> RSS scheme?

FWIW I had the same thought. But if we do add flow matching 
support for GTP one day we'll have to define a struct like
struct ethtool_tcpip4_spec, which means size of the address
matters?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
