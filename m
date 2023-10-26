Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8397D8497
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Oct 2023 16:24:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A30D083E09;
	Thu, 26 Oct 2023 14:24:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A30D083E09
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698330276;
	bh=fIDEFS5mUCeJD/++BPQFbGeriN7Ov9TIVJtIoeW65rM=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=khBjqv4Io6jCa7xLlBg5iaTDquZnXCznqPZ8XUgHqXJA7c+lsig6cKqoeCkL27Re1
	 AifsbQEYOeZEVbdh+WJ32YH8EcV50Rf9wJQ+7OfQVC5f0vh0obBHrJXum6r44OfN1i
	 ulIOeA4/38iG58pDN/ejcAC+Z9WKkf21+SMxSgGZ3nsChuO2oCOFQtu3YYAsgLr+NS
	 3nypTQ1u8K+XBLabuf0DwX7uAORPMuk1f3+Vtsd9Mc/qbGnLSj530Q6n+Tt17Zo9y7
	 BzNfsJyqKh/ixVSLxjF15afKgZp0uPRuGN5w8Mhg1J3hRfZTfseMraHI2N/mfxs+mj
	 EmPLB+LSpBpuw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ml6NwiI-Wkkj; Thu, 26 Oct 2023 14:24:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A6E3E83E07;
	Thu, 26 Oct 2023 14:24:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6E3E83E07
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 269761BF955
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 14:24:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0C8DF6F638
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 14:24:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C8DF6F638
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 01gi9-Jf7cCn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 14:24:29 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 88DCC616E4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 14:24:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 88DCC616E4
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 6E35DB8369A;
 Thu, 26 Oct 2023 14:24:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 182A7C433C9;
 Thu, 26 Oct 2023 14:24:24 +0000 (UTC)
Date: Thu, 26 Oct 2023 07:24:23 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Justin Stitt <justinstitt@google.com>
Message-ID: <20231026072423.2ebd4619@kernel.org>
In-Reply-To: <f4b69b9d-2294-e0bf-a12a-9622eb70bd99@intel.com>
References: <20231025-ethtool_puts_impl-v1-0-6a53a93d3b72@google.com>
 <20231025-ethtool_puts_impl-v1-2-6a53a93d3b72@google.com>
 <f4b69b9d-2294-e0bf-a12a-9622eb70bd99@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1698330265;
 bh=JvktxjVfkL+L338qM5yYJHIrOtY6B+d/w/XgfHIyqJ8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=T1+gpBbuxN3eqF4QCYpT83BIEg0rFmZapScZQJ7whB+Hy4Y/GiypWgWapxytG+HJC
 L7rExCB0EvByr/Vt+KvKSm76qzkqsOkFDfe/wAMJIdo6IL1dtgF+73RmWPjkdgyJ9x
 VpBFQsqP5eZGpg2gIfQb3IgEFrlXXaIt2mSR29CCMBO2qAOr8IWz0OVqsuOiLiiYNf
 ngP7MiDMktJlqG64ShxT7abpgW2RH1nBTjet9kL9keKfzE2EQfxKhCHyzSeB87Xo7k
 7LHSK8Vmz4IyxE7sGkdZx2bmn14F3rM646El/iJmEqiHCVYgP3zttjDHjxIlY/pBcM
 wkbdWdLe9uXQw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=T1+gpBbu
Subject: Re: [Intel-wired-lan] [PATCH 2/3] treewide: Convert some
 ethtool_sprintf() to ethtool_puts()
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
Cc: linux-hyperv@vger.kernel.org, Brett Creeley <brett.creeley@amd.com>,
 Ronak Doshi <doshir@vmware.com>,
 VMware PV-Drivers Reviewers <pv-drivers@vmware.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Arthur Kiyanovski <akiyano@amazon.com>, Louis Peens <louis.peens@corigine.com>,
 Wei Liu <wei.liu@kernel.org>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Dexuan Cui <decui@microsoft.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, Noam Dagan <ndagan@amazon.com>,
 intel-wired-lan@lists.osuosl.org, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Shay Agroskin <shayagr@amazon.com>, Kees Cook <keescook@chromium.org>,
 Haiyang Zhang <haiyangz@microsoft.com>, Nathan Chancellor <nathan@kernel.org>,
 Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>,
 drivers@pensando.io, Salil Mehta <salil.mehta@huawei.com>,
 GR-Linux-NIC-Dev@marvell.com, Rasesh Mody <rmody@marvell.com>,
 David Arinzon <darinzon@amazon.com>, oss-drivers@corigine.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>,
 Dwaipayan Ray <dwaipayanray1@gmail.com>, Saeed Bishara <saeedb@amazon.com>,
 Dimitris Michailidis <dmichail@fungible.com>,
 Sudarsana Kalluru <skalluru@marvell.com>,
 Shannon Nelson <shannon.nelson@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 26 Oct 2023 11:23:37 +0200 Przemek Kitszel wrote:
> this would now fit into one line
> (perhaps it's the same in other cases, I just checked this one manually)

I think cocci would fold lines automatically? Could be worth trying
spatch to do the conversion for that reason, if you aren't already.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
