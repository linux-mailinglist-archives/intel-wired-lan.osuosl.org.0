Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6DD62915F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Nov 2022 06:08:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 639C640370;
	Tue, 15 Nov 2022 05:08:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 639C640370
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668488916;
	bh=alF6S1v5s5dIgpNTHnZTyHv+uWH8Mhc/Gdfl04UsG1s=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=imc94xN2ungsI/S7BiLavUKHVAvO0QmD4t32aD+ojm967ANNlfV/PT6PJUdBybZZc
	 FZb3QIOVlCXnFkKhtCL/U2ZuxokCvnwORwzNBnHIIvB+/LmNWcPWS7+3X+1VWJryX6
	 9FOuE3ntnzWXYcZtfMjWCJziw1A2Reotoru5fEd7Y6g6/doCIkypJ4ZzqkST8dID9v
	 teS8a+9pRu8FqWXV7F0BVxtfPhacnkuxWdKYB0NFyDeVSCix70fetHfgsL00BlmXP1
	 seSuM6VTHC6sBROqZjbh2u7ca0MuWnPGbupJqjuduqCrO/ChghqnvGy8K2fdEgkIpG
	 YigdouQvKzcYg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SIitHB1kxzon; Tue, 15 Nov 2022 05:08:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 50AB84034B;
	Tue, 15 Nov 2022 05:08:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 50AB84034B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ACFF91BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 05:08:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 872E660AC2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 05:08:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 872E660AC2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FxAuWwl2W8BT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Nov 2022 05:08:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D12160594
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5D12160594
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 05:08:29 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 496FC61472;
 Tue, 15 Nov 2022 05:08:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF7F4C433C1;
 Tue, 15 Nov 2022 05:08:26 +0000 (UTC)
Date: Mon, 14 Nov 2022 21:08:25 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20221114210825.5c12894c@kernel.org>
In-Reply-To: <20221114125755.13659-5-michal.swiatkowski@linux.intel.com>
References: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
 <20221114125755.13659-5-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1668488907;
 bh=UQm5ePsKWUbiHJq57qNre2xNT2+8tQVZsGFCGqRXI/Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JXzN0Nuvt0+7Cd65DZwjtZQp4L6w3DMahhKBI/POKLIIYJUpfjFjm/4tkRoS5FWju
 CL/LEy/GLYI7wWgoAg+8zaUd5FzamNJAAsIn+suyGmJSawOXc1jEmmaEI+s2ml5w2I
 2zDkAj4eq9Oqj8UkC2ahRVYMDN9QVx6Jv+PO60eBLqaq/3WT5tPezC1DZnYgBz7Sgk
 lya8OAujQbr3/z+yNWKLF41+AxjQwrWhL+7T6ZDFNezSkoka5TrRT7F24trDnSe9As
 ceHUkAA5hrGmifAJX9mXqsUsPW360ycq93z5+bIhkoOXIroS8BpBLoXeYIvgDpu17H
 7RvsZlKcS9mqw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=JXzN0Nuv
Subject: Re: [Intel-wired-lan] [PATCH net-next 04/13] ice: split
 ice_vsi_setup into smaller functions
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
Cc: mustafa.ismail@intel.com, netdev@vger.kernel.org,
 leszek.kaliszczuk@intel.com, przemyslaw.kitszel@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, jiri@nvidia.com, pabeni@redhat.com,
 shiraz.saleem@intel.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 14 Nov 2022 13:57:46 +0100 Michal Swiatkowski wrote:
> Main goal is to reuse the same functions in VSI config and rebuild
> paths.
> To do this split ice_vsi_setup into smaller pieces and reuse it during
> rebuild.
> 
> ice_vsi_alloc() should only alloc memory, not set the default values
> for VSI.
> Move setting defaults to separate function. This will allow config of
> already allocated VSI, for example in reload path.
> 
> The path is mostly moving code around without introducing new
> functionality. Functions ice_vsi_cfg() and ice_vsi_decfg() were
> added, but they are using code that already exist.
> 
> Use flag to pass information about VSI initialization during rebuild
> instead of using boolean value.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

nit:

drivers/net/ethernet/intel/ice/ice_lib.c:459: warning: Function parameter or member 'vsi' not described in 'ice_vsi_alloc_def'
drivers/net/ethernet/intel/ice/ice_lib.c:459: warning: Excess function parameter 'vsi_type' description in 'ice_vsi_alloc_def'

Sorry, didn't get to actually reviewing because of the weekend backlog.
Will do tomorrow.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
