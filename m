Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A4E807A4D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 22:25:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66FE041A84;
	Wed,  6 Dec 2023 21:25:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66FE041A84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701897926;
	bh=hC7DGtd/3+brhDPeBljDderyJe+0DcInn69Zs+yiNmU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hqfkGcMO31hH/YZKEKskKsfaj+C211uu3hl3IWrGdDsbRQ3qRYmxtgVYqKI0D0iWt
	 dJifKXwuxSf++IMXskTYrEZera/ZQjXZx09Kq80CtlF4I2A/KB9rtxYRNCyVrGpT23
	 cVw1fBpctiA87Gy+iyMsw8u7flsD05JjaI+KHGthESs9XsrK+4vvF5MGtl+hlP4NyJ
	 I2PRwk1riw5tjvbwZB6BrkFCwk22XI8B0NdVaCyD854SgKRthYyIjT6LTYQjaHrBAs
	 pphtdqOkXWFNxIsagR8T9aG9FnS+4oduYDqmjLrzlf/1VuuQP4KcdRxbCpxx1FfjkR
	 qM5REaX5WnOYw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id znJpHmfURPJO; Wed,  6 Dec 2023 21:25:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4869F40907;
	Wed,  6 Dec 2023 21:25:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4869F40907
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5CBA01BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 21:25:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2BD5040339
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 21:25:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2BD5040339
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZWCXZdRtPRh4 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 21:25:19 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CF2A3400C8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 21:25:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF2A3400C8
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id A8F84CE20C3;
 Wed,  6 Dec 2023 21:25:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85679C433C8;
 Wed,  6 Dec 2023 21:25:12 +0000 (UTC)
Date: Wed, 6 Dec 2023 21:25:09 +0000
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20231206212509.GA50400@kernel.org>
References: <20231129102311.2780151-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231129102311.2780151-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1701897913;
 bh=0K/Q3+TV9b4ZKPISgc1t6BvtY9or0a9QPAxTEXr8000=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UqiOM5j1vK8ZL65l8ntjuTP2qD/pl+mPCCUKXQO4+X4mU06JmF7+kfojbILGrQEKJ
 WQOLIdfTwdhzvy7DJUH2FvEKOsVSA59/qpvtbpMeLUjiCLvr8xx/nbyMF/5qsDMETN
 wve6Jmvz+K1ThHXfTHVc23uQqJfQNxou+jSwX9uDnjMVKmjQNqGav2HqAjqSzYJL6/
 yfOcpX+eWQMD5MomJT9QOVGKoKl+QbAhv/WYIJdL6pg9iBS4qmaKDne0AD3BI1cW/X
 F3E4gCGapW/P/iOB5N8mLXvK89vM1qtK2dXoHBr48IuzYR1ZvDIi/B90OF3Kl2W63b
 1bGWuI2xHlIyw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=UqiOM5j1
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e:Fix filter input
 checks to prevent config with invalid values
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
Cc: anthony.l.nguyen@intel.com,
 Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>,
 Andrii Staikov <andrii.staikov@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Nov 29, 2023 at 11:23:11AM +0100, Aleksandr Loktionov wrote:
> From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> 
> Prevent VF from configuring filters with unsupported actions or use
> REDIRECT action with invalid tc number. Current checks could cause
> out of bounds access on PF side.
> 
> Fixes: e284fc280473 ("i40e: Add and delete cloud filter")
> Reviewed-by: Andrii Staikov <andrii.staikov@intel.com>
> Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1->v2 add 'Fixes:' tag into commit message

Hi Aleksandr and Sudheer,

Some minor nits from my side:

* Probably there should be a space after 'i40e:' in the subject.
* v2 was posted not long after v1.
  Please consider allowing 24h between posts.

  Link: https://docs.kernel.org/process/maintainer-netdev.html

The above notwithstanding, this looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
