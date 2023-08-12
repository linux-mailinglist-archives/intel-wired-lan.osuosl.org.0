Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A5277A033
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Aug 2023 15:46:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 684B160A4F;
	Sat, 12 Aug 2023 13:46:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 684B160A4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691848015;
	bh=grrYm5QfbCTrMxdJiwqyDEoAMtU14RFGE6ucScYfZcs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ps2HfkJIQfZMv8Capsvmdjz8NTioE0Wtmd8qEKxBKPE652vpCC8kahdNRqpuMZNIw
	 RG7HWwPqpBRcEw865yZU+c2ttR6gOdua+OtVi5I86iKd+BDJ0+IuG2qasOCdK7v4YO
	 EJaL9WS7WQ+T8UcIOAmelcmNjuxLY8aQBkddkrI4qfw0ZFxz9+shm89d+dPhvVz3G6
	 ZjaKFlJZPeqWieRrxpAuZtvNHWeAaF8BrRlS5WE1G1Ao2IjLugcufKROK7zaYu/GZ6
	 l4z6O5q807I3YC/a5Dq6k4s3Vp7Df/cUik6E02ytcCk6eslkZx3iK6g9hc4WTT5orq
	 cDbJg7tboEyAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XsMlgpF6js3Z; Sat, 12 Aug 2023 13:46:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 548E2608D8;
	Sat, 12 Aug 2023 13:46:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 548E2608D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD11E1BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Aug 2023 13:46:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A1C49607AA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Aug 2023 13:46:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A1C49607AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PKK3drCxeJtO for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Aug 2023 13:46:49 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F2577608D8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Aug 2023 13:46:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F2577608D8
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C9A0460C8D;
 Sat, 12 Aug 2023 13:46:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B62DC433C8;
 Sat, 12 Aug 2023 13:46:45 +0000 (UTC)
Date: Sat, 12 Aug 2023 15:46:43 +0200
From: Simon Horman <horms@kernel.org>
To: Yue Haibing <yuehaibing@huawei.com>
Message-ID: <ZNeNQ5tAefTj3JQl@vergenet.net>
References: <20230811105005.7692-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230811105005.7692-1-yuehaibing@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1691848007;
 bh=FF19mRP9MCnqBmcE1/PThUv5SqaymEY1w30r5hJqrrI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rD347akMUJagmLChtJkZ1WvfXiRN4Cm2AVyQXxOjWdl6G5ijCbuTtZtlZMEBfGmrY
 TpcagMa2zMldidEu8xD9CcX3PiSgCPVrC5TLcEVEu0yDmA83Pwub7hPj97jm6+i0yJ
 oV2lCD5FKtgzPLXDlO2DQqVA5ntasxPE0qYz/XPJSo9UE+TViLTbkGl2hB12PthUzU
 lt9+Iz4LaaU+zPX2WneF130/eKBnF0V09iuq+NfbaWAfqlb6wptxVeyikC5GCrIug4
 lJM6uVHJF2EevLD3Hcx/BstmtMvcJPQWnX6qjoIYrtav4rJJoNYHyIX4E2iZg7wgvt
 QV6cFP63NLD2Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rD347akM
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: e1000: Remove unused
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 11, 2023 at 06:50:05PM +0800, Yue Haibing wrote:
> Commit 675ad47375c7 ("e1000: Use netdev_<level>, pr_<level> and dev_<level>")
> declared but never implemented e1000_get_hw_dev_name().
> Commit 1532ecea1deb ("e1000: drop dead pcie code from e1000")
> removed e1000_check_mng_mode()/e1000_blink_led_start() but not the declarations.
> Commit c46b59b241ec ("e1000: Remove unused function e1000_mta_set.")
> removed e1000_mta_set() but not its declaration.
> 
> Signed-off-by: Yue Haibing <yuehaibing@huawei.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
