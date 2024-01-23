Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA616839536
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jan 2024 17:48:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4806E402C3;
	Tue, 23 Jan 2024 16:48:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4806E402C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706028522;
	bh=J4XnJyMEg5OYRtYI5Yirozk1UhnOj/hZ5M7/gyHBVvU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EDdvG0GT2QrKa9esff0PmYH//IgkaSLi+f8VFkW3iO0SXMl9YqGMvCZogtKMF/APt
	 /B37CkXX+Jxlrni4ZPdpxqmKzKBq9esv/mYIMrSJewRPvKkay+yS4pxp3tZPgLq/XK
	 owquhv2x/WT4qIW3tFGBmdGHrmr83uVBfzUYhQ+9Vj2wpmowxnfxphBikQ0kgvboFp
	 K1tyuD04wB3uRQREpMj1sfYcpzl/vws39YVBJW48vxksk0FeU+Tz8GHVS6CdbUcQiJ
	 u+yiBTJgJ3H0Yv8YlNsTgBVP+TX3ZZrvJquCxVnRLdE8Vf0ZwVzGT2GPqNdw8+xaT0
	 1WCqIMfCEc/IQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kVfgKHL5H6O6; Tue, 23 Jan 2024 16:48:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 192D9403E5;
	Tue, 23 Jan 2024 16:48:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 192D9403E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 33C701BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 16:48:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0BBA1607E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 16:48:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BBA1607E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tPjSQGagBPyK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jan 2024 16:48:35 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7ECC9607A1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 16:48:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7ECC9607A1
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C4933615B8;
 Tue, 23 Jan 2024 16:48:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B6B0C433C7;
 Tue, 23 Jan 2024 16:48:32 +0000 (UTC)
Date: Tue, 23 Jan 2024 16:48:30 +0000
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240123164830.GH254773@kernel.org>
References: <20240123105131.2842935-1-karol.kolacinski@intel.com>
 <20240123105131.2842935-3-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240123105131.2842935-3-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706028514;
 bh=RYoO9jDumV+r59op/XZ/ktXEsNIugdrzJGVKIDBudlA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r8OS+XSoMyeAvG8ypAPS00QpS8EBN3IMbf/k6IKeiZyhF1K4yzFUCD2AEDdCwv1Av
 Uo/JGhX/77ZqdpfXkJg3nOGNIQX8yS/pxWYbdfNFH7rTleIiuTJol6LEKIkC6MD8EK
 en17YNG0181OxkQz5fW3VuDRSVm9KFR96kPTGptsVxGBYfZeyjNc3HWdwRjWx3UZgw
 +yRSfGFdR58bPHBVLwUtkWhMVU3D75TB33nfRLDsLZJmpvQLSy66m6Tqg6HjKfgHe/
 GH7QEysBK668Z/r7pCpYWc970nLeUab3y91EB4qL1YJtFTIj0Qm3PHCMvd24gR5pdP
 NA4wguTvkJcEQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=r8OS+XSo
Subject: Re: [Intel-wired-lan] [PATCH v7 iwl-next 2/7] ice: pass reset type
 to PTP reset functions
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 23, 2024 at 11:51:26AM +0100, Karol Kolacinski wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The ice_ptp_prepare_for_reset() and ice_ptp_reset() functions currently
> check the pf->flags ICE_FLAG_PFR_REQ bit to determine if the current
> reset is a PF reset or not.
> 
> This is problematic, because it is possible that a PF reset and a higher
> level reset (CORE reset, GLOBAL reset, EMP reset) are requested
> simultaneously. In that case, the driver performs the highest level
> reset requested. However, the ICE_FLAG_PFR_REQ flag will still be set.
> 
> The main driver reset functions take an enum ice_reset_req indicating
> which reset is actually being performed. Pass this data into the PTP
> functions and rely on this instead of relying on the driver flags.
> 
> This ensures that the PTP code performs the proper level of reset that
> the driver is actually undergoing.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Sorry, I sent this just now for v6, not realising that v7 had been posted.

Reviewed-by: Simon Horman <horms@kernel.org>
