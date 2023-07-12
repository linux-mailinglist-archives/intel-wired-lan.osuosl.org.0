Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A13E75114F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 21:36:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 877A941EF4;
	Wed, 12 Jul 2023 19:36:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 877A941EF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689190583;
	bh=MWn+TMGQTDrDvnhIDx1MU3cIgGb1SHlu3k1JOCTkNNI=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UqHqWZ5q07Xmn0WI824r1gjssU6mKc3nWnIOUBaDfs4PL04veD3dIJYaWjdnZvd89
	 syVzqJdBCAxpXZxT/c8wGJomgf8FfaLVlsAaiN+Zc09YqJciVBWLTRac+3HvfcHQFK
	 HAcGGSy4tipjxeDp3/cIOB/iu/gJVKVIug8tHHj1Qk0B7Pp9PvnhZVgZgkjklthehx
	 IYgIWtwfzjyVwCmTYchMA0HZHmaTZJdftJi2Qx/Adj3ZE3Bd/VVDjkiaHacKUN7d9R
	 8hC04HH5gm25yC48Ao4I5d+3fanPrMHpaA7gxAfpzLQjZiTJ9OLgpsFnsUVckGgOya
	 rCg1qWlm3fvAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YnILcI8ldFXr; Wed, 12 Jul 2023 19:36:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0EB7441EA3;
	Wed, 12 Jul 2023 19:36:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0EB7441EA3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D89EF1BF3BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 19:36:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BCE9561267
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 19:36:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCE9561267
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MnMtKgqLYrM2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jul 2023 19:36:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 342F060E02
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 342F060E02
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 19:36:16 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 68AC0618F8;
 Wed, 12 Jul 2023 19:36:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E222C433C8;
 Wed, 12 Jul 2023 19:36:14 +0000 (UTC)
Date: Wed, 12 Jul 2023 12:36:13 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20230712123613.20a98732@kernel.org>
In-Reply-To: <20230712133247.588636-1-ivecera@redhat.com>
References: <20230712133247.588636-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1689190574;
 bh=EogeTGIiuUFqzne3v5vm4Ifad7BZZ2pCtarM917N8FI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=LpE3SJuNK4U7nmwc8P4oTt0ZKY7/t2LKkaEq8vEXLKYM8LnUOaJU0H7H0C+RhZ4mv
 ttm0IOyk6cIjvzPIMUxFThldGR4abW/8Aknzi53P2wErDaQpIoPiU5gAaWKIhHWY/2
 EtMI8/8C3jH0byvt5apBXNgnl9RERwkcMMqffHgnOpZH3eskXZXWBPo66ohtW4v88M
 2PwmkAW2cUDbgkk5A8EJt8OgxuC1PcQY7W8Lqio7OUlzAwtDlHIBOOTXOOCOrGO+8I
 2XW6vyo6jBcouoJXLjKa44KCxp5fRJDiXH8JHDYDCjwziNuOxnJLrYvZCrRG3IscTu
 DEhB8WwhRBQiA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=LpE3SJuN
Subject: Re: [Intel-wired-lan] [PATCH v2 1/2] i40e: Add helper for VF inited
 state check with timeout
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
Cc: Ma Yuying <yuma@redhat.com>, Leon Romanovsky <leon@kernel.org>,
 netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <simon.horman@corigine.com>, "moderated list:INTEL
 ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 12 Jul 2023 15:32:46 +0200 Ivan Vecera wrote:
> +	for (i = 0; i < 15; i++)
> +		if (!test_bit(I40E_VF_STATE_INIT, &vf->vf_states))
> +			msleep(20);
> +
> +	if (!test_bit(I40E_VF_STATE_INIT, &vf->vf_states)) {
> +		dev_err(&vf->pf->pdev->dev,
> +			"VF %d still in reset. Try again.\n", vf->vf_id);
> +		return false;

I like my loop more but if you want to have the msleep() indented just
add an else { return true; } branch. Take advantage of the fact this is
a function, now, and you can just return.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
