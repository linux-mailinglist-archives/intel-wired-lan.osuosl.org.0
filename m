Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 85538666B42
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jan 2023 07:43:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C469415FC;
	Thu, 12 Jan 2023 06:43:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C469415FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673505834;
	bh=qtmuWh/j7UjCFHwIlBK8EU8sXGNenQdCTgk01TxEgVE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BKaU+2D6NTVhKJMtzNRZmG373DVQ+129mEzV5fT/EsoAwXW3+ywk/nvkkP32Gmq5L
	 A7UjOVSXc7Krkfuo5qRSRkgmSJd/gk1fUj/Ac82uh1iUxqlT+18+xdDtqMs2t1nHL5
	 gxgDZSHZ3NAOXn0XnEzN+ti+WhxcAVF6EewJ2t6YbQY2SGeWNLKFbotjlonCeMIDn6
	 MzIMcTONBXPuTM9z6sDrBXc8RQfdPwP6a1MMvRs0SG7cFQHlP+C4Zv5hwMGrY1AJG6
	 O65b3iF+jBxOTt3tYApvcwp34C97wMCqLsF6QI08wRNmY/3E2rUhJItX5tUM/1hbz4
	 UwOcNlzs362ew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZJH5MFhy5QrY; Thu, 12 Jan 2023 06:43:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22FD8415EC;
	Thu, 12 Jan 2023 06:43:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22FD8415EC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 872E71BF841
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 06:43:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5A3074030A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 06:43:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A3074030A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YIOAMTGHcD1K for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jan 2023 06:43:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E87B402C1
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2E87B402C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 06:43:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="324863456"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="324863456"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 22:43:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="657688043"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="657688043"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 22:43:43 -0800
Date: Thu, 12 Jan 2023 07:43:39 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Dave Ertman <david.m.ertman@intel.com>
Message-ID: <Y7+sG9dK3JAnR0oi@localhost.localdomain>
References: <20230111183145.1497367-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230111183145.1497367-1-david.m.ertman@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673505826; x=1705041826;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=EkoEqmSruzcDg4GsdBNkpRijbCF4ecM192CZCQI0388=;
 b=NYalBkmVhAsQYU1jRnLo8PjNPLllCjLYJ8H8SacDBKGb3BGCZ2dQZqDw
 XMpEtkm9F9bHYXG127LPlQUbxCG/ig5f7eX+58ik6qHdpWbDeu+r9Ab4r
 6SW70GqpD3v6ologOF/4rHb+HWBS4mP/KABr2TjqkDhBQxD5KxnT0NHyW
 T2kFRT0HTeaxuSrpqZMEhq/eD6rQU5xVc+c9YLXgcy89XFyvSeyeDOiZ+
 LV1ehR7+OJzXYEV8iBwKfcmfeHNH+h26n4E5+VUwR5DfaX4gWXZMShvNP
 khdkwXonT7tmaaGDdDcK/KxgioBwetnOpeR9dP4R1z/6jJYHmk+WyaFjj
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NYalBkmV
Subject: Re: [Intel-wired-lan] [PATCH net] ice: avoid bonding causing
 auxiliary plug/unplug under RTNL lock
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
Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 11, 2023 at 10:31:45AM -0800, Dave Ertman wrote:
> RDMA is not supported in ice on a PF that has been added to a bonded
> interface. To enforce this, when an interface enters a bond, we unplug
> the auxiliary device that supports RDMA functionality.  This unplug
> currently happens in the context of handling the netdev bonding event.
> This event is sent to the ice driver under RTNL context.  This is causing
> a deadlock where the RDMA driver is waiting for the RTNL lock to complete
> the removal.
> 
> Defer the unplugging/re-plugging of the auxiliary device to the service
> task so that it is not performed under the RTNL lock context.
> 
> Reported-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
> Link: https://lore.kernel.org/linux-rdma/68b14b11-d0c7-65c9-4eeb-0487c95e395d@leemhuis.info/
> Fixes: 5cb1ebdbc434 ("ice: Fix race condition during interface enslave")
> Fixes: 425c9bd06b7a ("RDMA/irdma: Report the correct link speed")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> -- 
Loogs good to me, even cleaner than previous solution.
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Thanks, Michal
[...]
> 2.37.3
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
