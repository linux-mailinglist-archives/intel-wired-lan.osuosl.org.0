Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B17A16B37
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Jan 2025 12:06:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 83A018407B;
	Mon, 20 Jan 2025 11:06:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LCoJ6M-MU59T; Mon, 20 Jan 2025 11:06:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E734184072
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737371206;
	bh=U/reIQ+EoIY2ZcAlQK+/m6tRIV3bcpvk8sPnYN0dG1w=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hRNZaB5oQs59d2SAah32lAybDdFnUAAXZHBEx7of41mq0NsF/YZfqpF5cfFHa8h4t
	 mnwbnpXhHW7arznMQ3IljZ0kJVCNedPyp9b/4QTnXPRcXvHxzhP9BY0aX02zu2wMAU
	 +b5ptA170rRJKxxWLbS1SHQNUtdpsCFrExopvfhLKX465TEW/JlwrLQvUTveAw0331
	 aShXQikyjmQ+4RviaxbSjsmhP8k5dwukKpzup3r3EUaZOK61XoluMAQSW7pPvBpzbr
	 kw2w0m+E9gIWcpufie+nGvV+s9wK9+Zj9vXP/nf2+0uRFeR4RHkBAOpozzmikevg3z
	 gvM/Zx60+Bpsg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E734184072;
	Mon, 20 Jan 2025 11:06:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3D8D3959
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2025 11:06:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3735141392
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2025 11:06:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4x9ZAx_rG-cK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Jan 2025 11:06:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5CEB141388
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CEB141388
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5CEB141388
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2025 11:06:43 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 0A401A40DBD;
 Mon, 20 Jan 2025 11:04:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 697B1C4CEDD;
 Mon, 20 Jan 2025 11:06:40 +0000 (UTC)
Date: Mon, 20 Jan 2025 11:06:38 +0000
From: Simon Horman <horms@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20250120110638.GW6206@kernel.org>
References: <20250117080632.10053-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250117080632.10053-1-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1737371201;
 bh=37gfub3Ya1whwevuLBoRfK388bZussEj/iFKl91dWHA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nNgdQ64xd8aWNLylvyLca1kCwQb9VwlL2i/GAx8DAX7BKuh8IaAdqynQi0wvsA7Bd
 g7FQgwe9yxftCT5bu+Y7gYpUY2fhhpKzR4sqcwWq26sg1TJ4tAicJ/Bbz1IdupwqlA
 cH6dXCmkVwn5EFviGKWL2Eh6GHdKg12YduDCJH+1WBuyKAqjYCYsDe0sTurtuY9YP7
 PsSJq73/szLqvh9gjEFhdRg2t8THe3mvVOrUy3YbLkB/ya/8U2iIZ84r4VIaNCxFyf
 L5UpR6tzJOWnq72tcHH5DCYSDQhEo4YeO7OJQNmoWnHQHRlWagH1oLprxhueL4fRd+
 o4UJc+O03x5GQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=nNgdQ64x
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: refactor
 ice_fdir_create_dflt_rules() function
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

On Fri, Jan 17, 2025 at 09:06:32AM +0100, Mateusz Polchlopek wrote:
> The Flow Director function ice_fdir_create_dflt_rules() calls few
> times function ice_create_init_fdir_rule() each time with different
> enum ice_fltr_ptype parameter. Next step is to return error code if
> error occurred.
> 
> Change the code to store all necessary default rules in constant array
> and call ice_create_init_fdir_rule() in the loop. It makes it easy to
> extend the list of default rules in the future, without the need of
> duplicate code more and more.
> 
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>
