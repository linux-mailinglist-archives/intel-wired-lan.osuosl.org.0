Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FE9B97DF4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Sep 2025 02:27:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2907661084;
	Wed, 24 Sep 2025 00:27:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jjubgu12ezta; Wed, 24 Sep 2025 00:27:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B025C61367
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758673673;
	bh=1JN0mgRK5y2iI4aB9BwxFTYq1NjnoUPfXCywQTzOLiw=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LWhp2DLXVTAg87nb/B6k2Ls+EPTHXsA26Ho1iDp1nOwxb4+QnCTU2orQak86ICkaX
	 tNP7uQ+kDmPCeKsk/gzdl4TxmKrzBDBVUm/wLPlipL/KEY5CewWhw96Citnv3z2/SB
	 /Yy1wi51RvKVVkpLqtEwDjjx5hjTEYQOxrsH8xDwh0q/yWwoJf4HIGKl+WuX9YmUf+
	 vuyZzqyjrHO8Kwk2GCEijvSUkWdSRxfweXmuMBjvhX4RBVaO46TTXQVAhRtXuvOumm
	 kWq9Zs0RR45s6uNLQbPYST9oFiU0Ui0mT1v5bQJcf5MTIdhxlpX8IuX/4Py0iWMEJt
	 7cCAjLa26YJFw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B025C61367;
	Wed, 24 Sep 2025 00:27:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E01CAE7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 00:27:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D132983C5F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 00:27:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hlfQRquh1Gaz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Sep 2025 00:27:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 436D583C66
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 436D583C66
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 436D583C66
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 00:27:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 04D99601D4;
 Wed, 24 Sep 2025 00:27:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AEDDC4CEF5;
 Wed, 24 Sep 2025 00:27:49 +0000 (UTC)
Date: Tue, 23 Sep 2025 17:27:48 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org, Donald
 Hunter <donald.hunter@gmail.com>, Carolina Jubran <cjubran@nvidia.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org
Message-ID: <20250923172748.7269e6f7@kernel.org>
In-Reply-To: <20250922100741.2167024-2-vadim.fedorenko@linux.dev>
References: <20250922100741.2167024-1-vadim.fedorenko@linux.dev>
 <20250922100741.2167024-2-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758673669;
 bh=0jZz5CUadTlqMTZqsY4u85H5twUdMl/A+qFlWUZs9OA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=NcbTa/mj0Vr39Mf/kc/FiXh0PWzMXcAvLEwjViTOhxqZfEomV3Po7c0r5ttwQ8RbS
 QkUB3d3/QLl7oQFTgZyFcaYn1tOn93lqeTIgvnIF/l3OmtaRQbJryu6AOossyjaNeE
 CGaU0MJGOJp2xqAWSv9m5CxYMONSeXM07GwJwF23HhLDpsRSYFW44DMJh1YVPsKN6e
 +h/d7P80iQWO+NGUZM11szOypv7B6fZEl+hDsBTarEzKyr9mzr7pi6dRScQPUDID3H
 59Jom7enwuH51eoA5ygvr+cMip1/h/+uXGmAT3yo59EwlB8SmnXKyE3onU6Cl1/U7J
 /otA/AeJXgqjg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=NcbTa/mj
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 1/5] ethtool: add FEC bins
 histogram report
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

On Mon, 22 Sep 2025 10:07:37 +0000 Vadim Fedorenko wrote:
> +		if (j && nla_put_64bit(skb, ETHTOOL_A_FEC_HIST_BIN_VAL_PER_LANE,
> +				       sizeof(u64) * j,
> +				       values[i].per_lane,
> +				       ETHTOOL_A_FEC_STAT_PAD))

The pad attribute needs to be from the same attr space as the attr
you're outputting. You need to create your own pad attr in the spec.
