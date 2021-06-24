Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFEE3B300B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jun 2021 15:34:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E8C35415C2;
	Thu, 24 Jun 2021 13:34:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hwnNwGLadMhd; Thu, 24 Jun 2021 13:34:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE19A415C5;
	Thu, 24 Jun 2021 13:34:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 625781BF365
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 13:34:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4F678415C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 13:34:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wSZSRFaN9Cs8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jun 2021 13:34:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7B25B415C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 13:34:22 +0000 (UTC)
IronPort-SDR: eY/OMzg3CeVjzGgYGHN1QgikhGW5bSS4VBvzxqm+oDsx7sz5MU/G2boCqdW4IqTm4wZYhr2Sv7
 keULRyKUKBCw==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="207405080"
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="207405080"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 06:34:21 -0700
IronPort-SDR: BfaabqN1fu5H1zuU7NiGULQD8hRdF9ult5T4miWL5mFeBpjcipQn69034dJ9CYgBqTBrbzcUQN
 IjSSuH8YW29A==
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="487755959"
Received: from dfuxbrum-mobl.ger.corp.intel.com (HELO [10.13.13.106])
 ([10.13.13.106])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 06:34:20 -0700
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org,
 michael.edri@intel.com
References: <20210612170220.3930002-1-sasha.neftin@intel.com>
From: "Fuxbrumer, Dvora" <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <77b99082-c855-889f-d62c-3241eb40b1ca@linux.intel.com>
Date: Thu, 24 Jun 2021 16:34:18 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210612170220.3930002-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Add support for the
 next LOM generation
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/12/2021 20:02, Sasha Neftin wrote:
> Add devices IDs for the next LOM generations that will be
> available on the next Intel Client platforms
> This patch provides the initial support for these devices
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/hw.h     | 4 ++++
>   drivers/net/ethernet/intel/e1000e/netdev.c | 4 ++++
>   2 files changed, 8 insertions(+)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
