Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 555D6629202
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Nov 2022 07:50:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5DDA240890;
	Tue, 15 Nov 2022 06:50:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5DDA240890
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668495006;
	bh=YK12WRn7bC+O70SUQtFQbwnMJVtFSofK1JG6FO5aojk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ebGpWYVSzmiwQ35H59XgMjCX9ATJBhd9QiQoN0WXd7bj4MRHI3epXgWXG/mAOk+jB
	 U0XGNb1XD+fHY1PO9u8Pw70/ZGb/vaWdzyjF2vHXHR04udjePDPkMqiMDMVFXc4Y/5
	 cTKaAAkXsOLPtm9qQ9UkFZm2KX8r6FcgaTvEBzI7sGBcvhzuFZcQXBTOhi20Z3db0N
	 US+BXtb80F2WIXAMEYfcIwXRDU9ib0r+Hp132QrTpmELFbT8mmO9psF3/f4sKoTFPJ
	 aUNKKhUTgub0/IbBrfCnkNt177L/UEE7Pjk8kuYDNyd9oskA/fo1BsfAkEmniiG6DE
	 q2NFMaIKCNC7Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id INQHuPLxDQhM; Tue, 15 Nov 2022 06:50:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D7E140894;
	Tue, 15 Nov 2022 06:50:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D7E140894
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1BE271BF295
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 06:50:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EA7004016D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 06:49:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA7004016D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qLYVbGj4_1Bg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Nov 2022 06:49:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29C8540125
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 29C8540125
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 06:49:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="295543337"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="295543337"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 22:49:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="638834043"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="638834043"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 22:49:54 -0800
Date: Tue, 15 Nov 2022 07:49:50 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <Y3M2jjkv/sWqWwHk@localhost.localdomain>
References: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
 <20221114125755.13659-13-michal.swiatkowski@linux.intel.com>
 <20221114210856.0d76bb2c@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221114210856.0d76bb2c@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668494999; x=1700030999;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=WJPfoBXwWWUlfYGZbGPQiXLGnCRjrkM4dB/g1VMm6M0=;
 b=Gs+amMokbJuajNcNMJ5tfA2Z8gSaI0pt8VTAghqnW9VB+kDGESlcKOKs
 9QjS5CQDDlB14dR6MQZQS0kFO7+i83B660YDTBKLpPfQc7HJSzJLlXzRf
 ey3BD8tMgWaP4AuiSxNHHqnltioj2s5m6lbG7K4RsM74ys0RM3WFZTOpc
 ttcppRG4i5GkfImkGwO3Km3tP3xpufsR8adhvQMToQReC83tWu/S7QFEo
 +HN2MFwVuakih6X6tZe9bjrjKLfPG6y/MWZIA9GG0rkdKCofucq3dV2rS
 FTFGwuL+grRtCiIxymZ2OEhCIf8onuYtaAKfmL75qbNIjUzUdB4o9tu4I
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Gs+amMok
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

On Mon, Nov 14, 2022 at 09:08:56PM -0800, Jakub Kicinski wrote:
> On Mon, 14 Nov 2022 13:57:54 +0100 Michal Swiatkowski wrote:
> > Move MSI-X number for LAN and RDMA to structure to have it in one
> > place. Use req_msix to store how many MSI-X for each feature user
> > requested. Structure msix is used to store the current number of MSI-X.
> > 
> > The MSI-X number needs to be adjust if kernel doesn't support that many
> > MSI-X or if hardware doesn't support it. Rewrite MSI-X adjustment
> > function to use it in both cases.
> > 
> > Use the same algorithm like previously. First allocate minimum MSI-X for
> > each feature than if there is enough MSI-X distribute it equally between
> > each one.
> 
> drivers/net/ethernet/intel/ice/ice_lib.c:455: warning: Function parameter or member 'vsi' not described in 'ice_vsi_alloc_def'
> drivers/net/ethernet/intel/ice/ice_lib.c:455: warning: Excess function parameter 'vsi_type' description in 'ice_vsi_alloc_def'
> drivers/net/ethernet/intel/ice/ice_main.c:4026:9: warning: variable 'err' is uninitialized when used here [-Wuninitialized]
>         return err;
>                ^~~
> drivers/net/ethernet/intel/ice/ice_main.c:4001:29: note: initialize the variable 'err' to silence this warning
>         int v_wanted, v_actual, err, i;
>                                    ^
>                                     = 0

Thanks, will fix 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
