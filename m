Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0351256C18F
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Jul 2022 00:14:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1048E848DD;
	Fri,  8 Jul 2022 22:14:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1048E848DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657318475;
	bh=tN6GbPcBTem85ANObovMDlISqQF37XI90tp7s40xiMk=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Dw4ltOUbZ3JtH+eArWXaBXaOITk6unQNGj1iDVeaYv8F0v1A5oa4eb7Kf+BJrIWTK
	 a53feFIMRqQEtyLy56aXMSrlFZeTGICrPJqGIWhp5GdGYZ4vtQYHllovx87gV0mYsn
	 1Qzn3WecElp5cvya0I/9O4sUlN2wQPccXI19sWC3VhhjGZOAOu0uc0m9fKztMtIavX
	 Hy9lxDhb8wJhIY1fWr8DOmvaOznMPMo9ORjtl+lDKzgNUoAuracFvFZfpRPcjlP6/6
	 jaNeI/+op3coV7KoFYoOQs7tg8M4x87gNUtLJ0xylxoyj9mE92CdkxUCgvhKq3WDN5
	 d/O6l/NJoovew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TlFhcq64LrCW; Fri,  8 Jul 2022 22:14:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1493C848DA;
	Fri,  8 Jul 2022 22:14:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1493C848DA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 057801BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jul 2022 22:14:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D290C848DA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jul 2022 22:14:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D290C848DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QwoWmMJtQ8_r for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Jul 2022 22:14:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FAD4848D7
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1FAD4848D7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jul 2022 22:14:27 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 27AC0B82970;
 Fri,  8 Jul 2022 22:14:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C0BCC341C0;
 Fri,  8 Jul 2022 22:14:23 +0000 (UTC)
Date: Fri, 8 Jul 2022 15:14:22 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Zhongjun Tan <hbut_tan@163.com>
Message-ID: <20220708151422.57456006@kernel.org>
In-Reply-To: <20220708035154.44079-1-hbut_tan@163.com>
References: <20220708035154.44079-1-hbut_tan@163.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1657318463;
 bh=hnkI3EzBsIYdVofpLd1p8NWR26J1mZBS0im12Dq1kVo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PzoMvn2pH5N1J1BbZKd10pCEe59haLGaXhOWwWyqxjrghzlMx6CYoi8j4ULfiRebv
 aG0Nx9uDylhvn4s13wdqCejNIOANRlUKEcCPfIjhjvBf/kX0lthz/1ZMFcD9SpiPk7
 pwQDsey96LV+5b7h/waF5ERUxNvB0yymG0kfl1W9AI5kP+vejdza/DBdgpUFeZY0FG
 SVq22Go+7DMkuBFfmAVs2KUR+Tai4PkfzioOLs4krOSeiMw46+jZz8P2O8qn6U7+qf
 fSyG+doHXwTCU0Io80WWs2WWaJcaGnl+draRZIE5gWhJS4DluMBMjRUXJ4ZswMwiUi
 QozrCbh1DfUdA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=PzoMvn2p
Subject: Re: [Intel-wired-lan] [PATCH] iavf: Remove condition with no effect
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
Cc: netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 Zhongjun Tan <tanzhongjun@coolpad.com>, linux-kernel@vger.kernel.org,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri,  8 Jul 2022 11:51:54 +0800 Zhongjun Tan wrote:
> From: Zhongjun Tan <tanzhongjun@coolpad.com>
> 
> Remove condition with no effect

The code is fine, please fix the tool you're using to not generate such
patches.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
