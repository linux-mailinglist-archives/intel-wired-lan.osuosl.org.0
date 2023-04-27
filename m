Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BC56EFFD1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Apr 2023 05:29:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 452DA83AEE;
	Thu, 27 Apr 2023 03:29:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 452DA83AEE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682566157;
	bh=SUlxDiC58JJg/LB6Hv/eujTUI2KRYJMyIpyaQ6C3gEg=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QEBPS7JYK+d5LFnpDazDmY/f5hoqUylKKCclcN2Djt5L8UU8LZRXaFz0a4YQYSu8C
	 9F6XJHZYGxGaQqrVNGcfb+3KQirHSnxz7cFFDS8h/t5CZiUUUw6LS9SuN9tdgXzG7z
	 IkI8G4SKHPSbXwW746q4eBLc6l2YVsOFGccPF56V9OBqEVoE494loq71w9dM1cWCzs
	 hWg93wzfRQe+vLr2LaMFoZAfowcrhPQCoLYjDIb97brHWPJPqBW1Ekq/E+smoYFvfm
	 +T4f07JxoTCgag5RKW7r515L+hx05ZhrsmD1/A80trzB4XCUx5yHU3GiZUX8/PN6Mh
	 i3/giiDR83mFA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gzl0W6oOS1cE; Thu, 27 Apr 2023 03:29:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C9AA82660;
	Thu, 27 Apr 2023 03:29:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C9AA82660
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 76E401BF41D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Apr 2023 03:29:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 485A060E35
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Apr 2023 03:29:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 485A060E35
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IoH5A_GjVngS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Apr 2023 03:29:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A93460C19
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8A93460C19
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Apr 2023 03:29:10 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D00A8618C5;
 Thu, 27 Apr 2023 03:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E4B0C433D2;
 Thu, 27 Apr 2023 03:29:08 +0000 (UTC)
Date: Wed, 26 Apr 2023 20:29:07 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 <jesse.brandeburg@intel.com>
Message-ID: <20230426202907.2e07f031@kernel.org>
In-Reply-To: <97f635bf-a793-7d10-9a5e-2847816dda1d@intel.com>
References: <20230427020917.12029-1-emil.s.tantilov@intel.com>
 <20230426194623.5b922067@kernel.org>
 <97f635bf-a793-7d10-9a5e-2847816dda1d@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1682566149;
 bh=z+S56DhLOtmm3A8skW8fYaGY6+iLH8uKt0bdGWwqhbc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VHbYbVC3hbdfC9VO1p+XL7NlnF60p4N50GntVuhvGsfLHmppdHBNy+QRNn593Bg8W
 u1ZxqwkQSrLV8a2IVlSJbcUA+Kp9/CdfxcKT8U2n2jWfeDvsuE3aujBAd7HiLa28v+
 /E1HRZH46mrbrRL+56tZ0PFkc7JF/rwSUpzctfaYUkz2I9FBPGvIWOlt2625YxMWOC
 Wku85elfj51xQSow2GxacZwltCmXhXBbtrZFRfEy6dNj5Lx0Q1j7GWzIiTlMauFmS7
 7+C+OJRp31+917/bkPh7kK0Zs9bHc8C4XYXrStXcNfWs8cHCeBAvpoVyXHnhk8DdtE
 oyUdEmbNtvjRQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=VHbYbVC3
Subject: Re: [Intel-wired-lan] [net-next v3 00/15] Introduce Intel IDPF
 driver
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
Cc: willemb@google.com, pabeni@redhat.com, leon@kernel.org,
 shailendra.bhatnagar@intel.com, netdev@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, simon.horman@corigine.com,
 intel-wired-lan@lists.osuosl.org, phani.r.burra@intel.com, decot@google.com,
 davem@davemloft.net, shannon.nelson@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 26 Apr 2023 19:55:06 -0700 Tantilov, Emil S wrote:
> The v3 series are primarily for review on IWL (to intel-wired-lan, 
> netdev cc-ed) as follow up for the feedback we received on v2.

Well, you put net-next in the subject.

> Was I not supposed to cc netdev in the quiet period?

That's what you got from my previous email? Did you read it?
The answer was there :|

The community volunteers can't be expected to help teach every team of
every vendor the process. That doesn't scale and leads to maintainer
frustration. You have a team at Intel which is strongly engaged
upstream (Jesse, Jake K, Maciej F, Alex L, Tony etc.) - I'd much rather
interface with them.

Jesse, does it sound workable to you? What do you have in mind in terms
of the process long term if/once this driver gets merged?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
