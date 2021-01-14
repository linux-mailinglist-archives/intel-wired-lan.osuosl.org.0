Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 504652F6EB6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Jan 2021 23:59:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E78128730B;
	Thu, 14 Jan 2021 22:59:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QG5MqSvY7u5J; Thu, 14 Jan 2021 22:59:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 92C1D8732E;
	Thu, 14 Jan 2021 22:59:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CE1511BF232
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 22:59:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C9E4C863F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 22:59:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0T3C5EU4Xvri for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jan 2021 22:59:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6E72085082
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 22:59:34 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4CA2E23A6C;
 Thu, 14 Jan 2021 22:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610665174;
 bh=NO3uBXxBHXjqq9XWB38oasf4fPzlFUfHGvI2jkiaFwc=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=OXDdgD0Bj78gR3J/ta31RAPUPBW0J5ORAajOF6IdWLcID2dKbGZCLN7IKR4nV7wUa
 vCPsLpENYam/USFEPo+MkL3nOSYZQZeFRoTlWPry6B/L9opWOMlttfry/PDv1DyNG0
 Th5Wg9SghAxRsAmRxdQpkPEm2zg1sNv7t7eCuYOydcGB9XjS9Pitg5bKi6B/Ejjo1g
 sqb+d+CXkGIA0scbXC0ZCC9iitfVVIIUT9w4/dyioW2U0joBt7aQg9SG5/Q6S5Tn4u
 KimH255QISM7MbceanUu1F5DKyg3A+PnBBwEjWFf2HoopWpq26Qvo/loKvUytpILCw
 H98de2rPenGFA==
Message-ID: <68e347348c3f71a92a43a51fb71bce90aec56451.camel@kernel.org>
From: Saeed Mahameed <saeed@kernel.org>
To: Cristian Dumitrescu <cristian.dumitrescu@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Date: Thu, 14 Jan 2021 14:59:32 -0800
In-Reply-To: <20210114143318.2171-1-cristian.dumitrescu@intel.com>
References: <20210114143318.2171-1-cristian.dumitrescu@intel.com>
User-Agent: Evolution 3.36.5 (3.36.5-2.fc32) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/4] i40e: small improvements
 on XDP path
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
Cc: netdev@vger.kernel.org, edwin.verplanke@intel.com, bpf@vger.kernel.org,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2021-01-14 at 14:33 +0000, Cristian Dumitrescu wrote:
> This patchset introduces some small and straightforward improvements
> to the Intel i40e driver XDP path. Each improvement is fully
> described
> in its associated patch.
> 
> Cristian Dumitrescu (4):
>   i40e: remove unnecessary memory writes of the next to clean pointer
>   i40e: remove unnecessary cleaned_count updates
>   i40e: remove the redundant buffer info updates
>   i40: consolidate handling of XDP program actions
> 
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 149 +++++++++++------
> ----
>  1 file changed, 79 insertions(+), 70 deletions(-)
> 
FWIW,
Reviewed-by: Saeed Mahameed <saeedm@nvidia.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
