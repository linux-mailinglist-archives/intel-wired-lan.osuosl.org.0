Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFEF629161
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Nov 2022 06:09:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00923402E1;
	Tue, 15 Nov 2022 05:09:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00923402E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668488948;
	bh=MRap2iTvjBDEG+3bE/Ftu5IAhc95ZYubh7j6qSnJ154=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=D8ltjwLzVpW+G7EwBDtz9BUJCpkN0ao7bLQfJDZnjtszCIyr/EyqwW48XPIbJsjy2
	 F+iDWgMkiDChx79dVIKTH3QNC5mh26Pcw5YQVSXXGAG8ch0/sQvdvgE4AyOlxwLKOc
	 K9h7097HjxdwD+0UiCBziPsOEeBhwjKNSJfdBysRxKEcWwUuRJq9CVQ83rsaQ61K53
	 1RUNliWjNjJ5HouVEI2Mt65OkmshBNKYcT+t/6JRM7oC7okEBD79gSxh4jGhsGMIHB
	 zAq6OhJC/2s5ooJaxBlnHJwe/DnSVPxgTyqu4AYv0o5wsoNHDsuMI7O5ZXhk8KM1p6
	 OVGpin1dEP28Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SPqY5ZZtC27N; Tue, 15 Nov 2022 05:09:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96A96408EB;
	Tue, 15 Nov 2022 05:09:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96A96408EB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D68611BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 05:09:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BD08D40309
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 05:09:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD08D40309
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jNjHmToW5Wot for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Nov 2022 05:09:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E08F5402E1
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E08F5402E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 05:08:59 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1D14D61487;
 Tue, 15 Nov 2022 05:08:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABD17C433D6;
 Tue, 15 Nov 2022 05:08:57 +0000 (UTC)
Date: Mon, 14 Nov 2022 21:08:56 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20221114210856.0d76bb2c@kernel.org>
In-Reply-To: <20221114125755.13659-13-michal.swiatkowski@linux.intel.com>
References: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
 <20221114125755.13659-13-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1668488938;
 bh=bBPdVJBnQflcUos860RsE9Maik4P+Mc7RQiwH/m90FQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Khrc7B0yZonEQ1V07JxaEdOZ700mxv+4bKUYxqy6qka4PV3faSKkT5COqRHlHYIkd
 +03vXjqgjJ4aFB19dYXrr9WNVBanTPosuVcoXqiuGDCJxTvwf4b0eRijI+nEkP6NzE
 OWhaaQwsGsLc3UjVPRntTDpK/kbkWiDAMRpu9GY+RzCLQVotmSLME6J83nEwsm0S4Q
 CQ+BCTEiS5EK37D++bd/n7m8sga1CS2RJh6e5bk0/VDzZ9RHSXaMqgsaw7Y9kepiZL
 DyGAeLe/83pxL/X6VB9rdoRfVSsKFy95DkPiSvOaF94dSna9S8bM16Ek1PNwpT7eWI
 QFZ4sxjuzA5qA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Khrc7B0y
Subject: Re: [Intel-wired-lan] [PATCH net-next 12/13] ice,
 irdma: prepare reservation of MSI-X to reload
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

On Mon, 14 Nov 2022 13:57:54 +0100 Michal Swiatkowski wrote:
> Move MSI-X number for LAN and RDMA to structure to have it in one
> place. Use req_msix to store how many MSI-X for each feature user
> requested. Structure msix is used to store the current number of MSI-X.
> 
> The MSI-X number needs to be adjust if kernel doesn't support that many
> MSI-X or if hardware doesn't support it. Rewrite MSI-X adjustment
> function to use it in both cases.
> 
> Use the same algorithm like previously. First allocate minimum MSI-X for
> each feature than if there is enough MSI-X distribute it equally between
> each one.

drivers/net/ethernet/intel/ice/ice_lib.c:455: warning: Function parameter or member 'vsi' not described in 'ice_vsi_alloc_def'
drivers/net/ethernet/intel/ice/ice_lib.c:455: warning: Excess function parameter 'vsi_type' description in 'ice_vsi_alloc_def'
drivers/net/ethernet/intel/ice/ice_main.c:4026:9: warning: variable 'err' is uninitialized when used here [-Wuninitialized]
        return err;
               ^~~
drivers/net/ethernet/intel/ice/ice_main.c:4001:29: note: initialize the variable 'err' to silence this warning
        int v_wanted, v_actual, err, i;
                                   ^
                                    = 0
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
