Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6D7731B9E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 16:43:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E183C41932;
	Thu, 15 Jun 2023 14:43:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E183C41932
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686840233;
	bh=Bp3sosaM8oTjG/CtYh3Sjo+xOEYyWcXnldJ/pxNowlY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3zz0fiKY2fYVmLMzMdjjRj+aj/Kar+RVICmSf4zw6o5OF9/GyV2iB7oVXLn0GFu8U
	 +A5TnIanyEW2Hzalc2HzIkkbNP2C54/7SnY1fCqSBHhRgXgRyvrLKptPqxrObKVy7T
	 8G2GD8PbdzdpMR+zJCrXmwPJac/JNrmNrE10OIeYTzRPXdc/DjGzANF4ff2MRMJ/FQ
	 DpOvQy+2CAprkEuoH6zg8jMBGDiUygX/Qsvai8HSv0+9O1Mdb3u8QNxpKRWQH457t0
	 adpRHqn6m5y06ocUlZwwoeM/PNBGKhOKZ+kDiyIoD08iH8Robz/k4lyBHMK250lL6T
	 whi0ML/uDLn1A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id npSYNFfx-DGe; Thu, 15 Jun 2023 14:43:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D20E24060D;
	Thu, 15 Jun 2023 14:43:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D20E24060D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 998CD1BF263
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 14:43:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6C0DD41EBF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 14:43:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C0DD41EBF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vC-qR5LVLJ8m for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 14:43:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 446A841EB1
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 446A841EB1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 14:43:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="356425078"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="356425078"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 07:43:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="689797987"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="689797987"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 07:43:28 -0700
Date: Thu, 15 Jun 2023 16:43:24 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <ZIsjjGTAJK2/Bhw/@localhost.localdomain>
References: <20230615123830.155927-1-michal.swiatkowski@linux.intel.com>
 <20230615123830.155927-2-michal.swiatkowski@linux.intel.com>
 <ZIseq7r5alm5DctL@boxer>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZIseq7r5alm5DctL@boxer>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686840226; x=1718376226;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=R7m6EwVSs6DhwY+ljeHN8KXcYvla1ddTVA4Uzy8YF9E=;
 b=IcRlOSwkr3IAVYQfoZI7a55HKhaM+isAGduWmd0dAlepYy9kakppqazW
 nvlVrFiU+j8nM3VoueHx8T47A/7AQsl243Gktwgci8RqRXmSqc6y5gInf
 uykKtZA6a7hH3jTNAHAJ+e6KMxWh1wQGNTCyV0vUtpHN1avqD3PJAPqzE
 eyohc5AN6kr+EHyY389iAgGsEtk2GfavbgMNdvm+X1ULxVdBYqoB1+b0j
 5E+4cyQzYWa9CFNTeN7Z17ocRGcJYqO4uhgKKa2qVDi+1Z/WUhGG2eVkk
 yZ5bsWDDjbmEwyHGpiQZQNxUggry37fHlsXqmDhgqeW0/zKKrJe+MOqg5
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IcRlOSwk
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/4] ice: implement
 num_msix field per VF
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 15, 2023 at 04:22:35PM +0200, Maciej Fijalkowski wrote:
> On Thu, Jun 15, 2023 at 02:38:27PM +0200, Michal Swiatkowski wrote:
> > Store the amount of MSI-X per VF instead of storing it in pf struct. It
> > is used to calculate number of q_vectors (and queues) for VF VSI.
> > 
> > Calculate vector indexes based on this new field.
> 
> Can you explain why? From a standalone POV the reasoning is not clear.
> 

Maybe I should reword it. Previously we had pf->vf_msix - number of MSI-X
on each VF. The number of MSI-X was the same on all VFs. After this
changes user is allowed to change MSI-X per VF. We need new field in VF
struct to track it. Calculation of queues / vector/ indexes is the same
as it was, but the number can be different for each VF, so intead of
baseing calculation on per VF MSI-X we have to base it on real VF MSI-X.

Feel like I over complicated simple thing by this commit message.
Calculation remainis the same, we have per VF field to store MSI-X instead
of one field for all of the VFs.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
