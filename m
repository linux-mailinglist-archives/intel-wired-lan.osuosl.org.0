Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DC0605E29
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Oct 2022 12:49:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0308283F3B;
	Thu, 20 Oct 2022 10:49:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0308283F3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666262966;
	bh=BxQk5Kdp8CvjHeLx5nmNUHP+nPDy0YFQ5vnsZlcDJ00=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RlEs90/y1ZYGbTt58LrCaUKRb6TsLKI/4fblpE3HWC43yks3w9BiTOosHx4h2erlr
	 Ks7cF6U2oC94oRbVc3KZSfdgEAo1/6Xd6T8IKiw6TZhkJWlSMeGYp++CgcH/GVOPwN
	 zBGqRt+OK89020MUpt30JCJt6d6PHWG2bvitCae1z4nZUmdrqE3gKLRgYiAcTEmOJ3
	 ladXzAVIttonWCjoB19tD/n3PlWOozHDAW+2e1K4W/xhyixUtypGDw2dRpigRdMOy+
	 4d19/u7+B3zCVCXo6hpi1RrQY+IUWTX1J6avS9okpQ3Uxp9aQLOwb7rA91cdIqMNn8
	 SMl6uebKAb36Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ms1YfLAchSaw; Thu, 20 Oct 2022 10:49:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3EA68415F;
	Thu, 20 Oct 2022 10:49:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3EA68415F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 79A861BF955
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Oct 2022 10:49:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4A4C740289
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Oct 2022 10:49:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A4C740289
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T8344bhjcqtB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Oct 2022 10:49:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B0A24013A
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8B0A24013A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Oct 2022 10:49:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="333241390"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="333241390"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 03:49:18 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="607602960"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="607602960"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.11.255])
 ([10.13.11.255])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 03:49:17 -0700
Message-ID: <f8779644-f2f8-a084-e4a8-399700f6713f@linux.intel.com>
Date: Thu, 20 Oct 2022 13:49:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20220930223324.1008555-1-anirudh.venkataramanan@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20220930223324.1008555-1-anirudh.venkataramanan@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666262959; x=1697798959;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=QRyd466nIF+o0KcU4Gmw6p+cSi2X3hdS2GTgs+7xq/8=;
 b=nZMZbkf/CP5krmi/8zhCCzprW1RjjwpOpO++PW4InGXQCV3CFtIta9Ys
 X5a6N137oOQZjCDq5Q9razrDQSLp13wgz4UvX+I3G+XB/VuCfY9LutY8E
 yxAJW2kyh4E9ux19mgHGO3og5elyT9g5vigBTmJJ+KxDjdx7ZVjE1vVC4
 L7R61qqcDRKDlAKNWTYRoCvGEjUGqcW+/mNTtXt2A/dfMeMBjs5VlhDkM
 YYltpTSaehclUowl53PiIWwsIE4ZLvMjAvNUE3NhNml/R33jyA8o4h0hb
 k60rsZRL5ir4JGFil5l+Wh+YVasP0EO0YAdNZ83ibPZtVOdvn9e8xEnrY
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nZMZbkf/
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next] e1000e: Remove
 unnecessary use of kmap_atomic()
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
Cc: Ira Weiny <ira.weiny@intel.com>,
 "Fabio M . De Francesco" <fmdefrancesco@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/1/2022 01:33, Anirudh Venkataramanan wrote:
> alloc_rx_buf() allocates ps_page->page and buffer_info->page using either
> GFP_ATOMIC or GFP_KERNEL. Memory allocated with GFP_KERNEL/GFP_ATOMIC can't
> come from highmem and so there's no need to kmap() them. Just use
> page_address().
> 
> I don't have access to a 32-bit system so did some limited testing on qemu
> (qemu-system-i386 -m 4096 -smp 4 -device e1000e) with a 32-bit Debian 11.04
> image.
> 
> v1->v2:
> - update comment to remove a reference to kmap
> 
> Cc: Ira Weiny <ira.weiny@intel.com>
> Cc: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Suggested-by: Ira Weiny <ira.weiny@intel.com>
> Suggested-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 20 +++++---------------
>   1 file changed, 5 insertions(+), 15 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
