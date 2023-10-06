Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F657BB663
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 13:23:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 17FE541E99;
	Fri,  6 Oct 2023 11:23:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 17FE541E99
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696591400;
	bh=r+UJktAw4prqZQaKDLFf0puHEHcZU8EnSXJPZuL4Jaw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8wT8SAhfud6ONNiOXNM5oT6zb+YGXgKROPSxOmxhyrg1ylvPAhdu0ZeD9+yHd4ZLh
	 9NKnbuA22iJ3nx7T1OEC1cszFQUN7PoHrmKqZvt0enZROHPNbsM1qA1GGR9k4CPZlH
	 cnpljiKDY258Exk98yKMB8OgVxI6uFcerHeI5Pq1ROU4Ny7liczOZ4Pz8AgTtcbeWO
	 S+C1NoFMqfv2QuVlDjgNmQ9gP7Drl4092y/ao0KMOGb7heB+vGzbFxI2xx0zqXOyCr
	 Bq+8QF94O5pDYDkcBsfedugiQ1cV5fKDnyln9ggiar2YQGeI7wBbsopzVHwc2Li8DJ
	 3m3t3AzA8/3Jg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sggn1FjTzlPl; Fri,  6 Oct 2023 11:23:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B32BC41E7B;
	Fri,  6 Oct 2023 11:23:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B32BC41E7B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A38431BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:23:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7C1CF61410
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:23:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C1CF61410
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fSOEUhYBepBk for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 11:23:12 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D8E5F61221
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:23:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8E5F61221
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 2387561D0A;
 Fri,  6 Oct 2023 11:23:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 881E1C433C7;
 Fri,  6 Oct 2023 11:21:06 +0000 (UTC)
Date: Fri, 6 Oct 2023 13:21:04 +0200
From: Simon Horman <horms@kernel.org>
To: Dan Carpenter <dan.carpenter@linaro.org>
Message-ID: <ZR/toAqmRnTWljdy@kernel.org>
References: <4d61f086-c7b4-4762-b025-0ba5df08968b@moroto.mountain>
 <34603f41-1d51-48df-9bca-a28fd5b27a53@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <34603f41-1d51-48df-9bca-a28fd5b27a53@moroto.mountain>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1696591268;
 bh=2OvrbOVd1DKguidAQ5wXL9nm274STWXog0it8L1OjsM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GdZZwAQSgZBHWp1jTnfdzwFBAtEaTGAn8O2qY7csoymxukv1i+x6bVX714q6IREqu
 CEl0BDx9ADZFQ4hPKZbF7j6jaMQEN9IGE2L2Scvto9fcflXDe0ly/ULA8TZOPHcWVW
 USV0yQ/MPTbYN40TNv6D6v3Ox6msODB4Fw6AJpaU4YK+AmuVDQEnZlwOXSpCS+pcRj
 Mkn5eUhg/LMAUYNirlKoiX4QeeU125ckl/GfElank9zcVUNUPA0oXi9psoL5RNU+J7
 QLuZYVdl0crucpwbB3AHsZXUqqHovYkTP8lOhruoPURrj4mpcAeXbq33Ef5oeZPLt6
 pJKSvTHkYQVkA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=GdZZwAQS
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] ixgbe: fix end of loop
 test in ixgbe_set_vf_macvlan()
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
Cc: intel-wired-lan@lists.osuosl.org, Jinjie Ruan <ruanjinjie@huawei.com>,
 kernel-janitors@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 05, 2023 at 04:58:01PM +0300, Dan Carpenter wrote:
> The list iterator in a list_for_each_entry() loop can never be NULL.
> If the loop exits without hitting a break then the iterator points
> to an offset off the list head and dereferencing it is an out of
> bounds access.
> 
> Before we transitioned to using list_for_each_entry() loops, then
> it was possible for "entry" to be NULL and the comments mention
> this.  I have updated the comments to match the new code.
> 
> Fixes: c1fec890458a ("ethernet/intel: Use list_for_each_entry() helper")
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
