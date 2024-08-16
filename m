Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 17187954F50
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2024 18:51:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9246A84499;
	Fri, 16 Aug 2024 16:51:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d6UQN3YOz0BQ; Fri, 16 Aug 2024 16:51:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C044784472
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723827096;
	bh=u75YxH6uA/bkkcP2XFLHvxDo3k4L2z8Sxq8fPNzj9HA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ftdnbCVVvSn7uTFdb1c/nxVrOxdodwvR17g84kNJnhy9MdCyM1x9xqXHuNZYpZNA8
	 l/qOu17ZsQfu/9kYGhUJW1ioD//tOt4R69AuSB6sK8+LfELTyQrLlAeCrkyrgukj1c
	 L4oyo7Y0gRDP+qdGptNYI4G/ULQ1r1lCfhcqt8SqdQ94hP+ZdKa+9nAKV5elpnM0UJ
	 +8rGvkwWfe+6Y2y/JXjNhnDCu6QhOTYpn82f6uSxXzpeIBtGgjWnNeLERGjylwKm2S
	 t0dozIG6tmFasflEholY53wshH0IGoSt2x75c6Zhni0YGy1z+Q6bOCKv7Ck3r1/bTo
	 MW2qJ7r+erf/A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C044784472;
	Fri, 16 Aug 2024 16:51:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 34A381BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 16:51:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 215124000B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 16:51:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dO3dErUGNz0G for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Aug 2024 16:51:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 277E64024D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 277E64024D
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 277E64024D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 16:51:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 071D5CE1DBC;
 Fri, 16 Aug 2024 16:51:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A6EDC4AF0B;
 Fri, 16 Aug 2024 16:51:26 +0000 (UTC)
Date: Fri, 16 Aug 2024 17:51:24 +0100
From: Simon Horman <horms@kernel.org>
To: Yue Haibing <yuehaibing@huawei.com>
Message-ID: <20240816165124.GZ632411@kernel.org>
References: <20240816101638.882072-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240816101638.882072-1-yuehaibing@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1723827089;
 bh=h9wGdr8bSQV99HJYZ9yR9TGr7cPVcjfNE1R0NMCwxFM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=l53Elb4x0oxFDNSVmJnYAAmuUk8GNhK03kg2bTdbEzdS84I4aYfJH2bWCDUptH3mc
 OnpRr6d7GxHpilYk3EUfXEdCyfp2B/EBtYlAurHF2qN6OWimF+o3NfyjJTnMlkWmw4
 xnpy7Vob1rIcB7Y2aa9+7XhwDhlN5u5fm2DjfqSzbDzuMlMYL8aEP2QYlekdX2Pj1B
 qxkKlueg63ElFefvop52EpfdTNNfGvLrts1NgQPPfyV2IRsErsJbe6Km9y9ybzFodk
 6mUz5rm2bNZ7kDUyNAQ6RI7oOrPkv/md3hcjiqrrOZge8Sawa27yFmeWjvFeBEjsDt
 nhCJrJ7ydvDqA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=l53Elb4x
Subject: Re: [Intel-wired-lan] [PATCH net-next] igbvf: Remove two unused
 declarations
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
Cc: przemyslaw.kitszel@intel.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, olga.zaborska@intel.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 16, 2024 at 06:16:38PM +0800, Yue Haibing wrote:
> There is no caller and implementations in tree.
> 
> Signed-off-by: Yue Haibing <yuehaibing@huawei.com>

Reviewed-by: Simon Horman <horms@kernel.org>

