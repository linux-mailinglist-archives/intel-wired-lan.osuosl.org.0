Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB60277A65B
	for <lists+intel-wired-lan@lfdr.de>; Sun, 13 Aug 2023 14:40:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C0608410A3;
	Sun, 13 Aug 2023 12:40:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C0608410A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691930416;
	bh=V88D2iJmsZa5Ri4kG669oFG3KxZylYU59WyoaW/6QUQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jsBdq4Oo4dt6bRdy3pScRItJKgtond5oqc7X0CMRZQVCOtUmGa/X6Ssn4mtNvVpil
	 LElOK2XCH3URPLc/PvrjrfGll27Lbx0Dx2MaeuUeZtkCPeyhu4pef+KfH/QgOJy1eX
	 RIvZpzAv61P93Vd67BD+PPcjY91vy1j8T71KUHHzIh/LjoVA6zbmq869wRs4NhNmOg
	 +eZGi9TWwU4ipkJwWX3scEnjT9YpcV+BxspMZBm6yvWIPTpGGkeW2T3m6ou5LE/RNt
	 JdRAZtMzQ2m82vVO2jMrTp2lN9OqsR7VNI9fmd9vWw+6QLElErsAXRAdPuFE+GMoqI
	 qXrS9Mq8qbqXQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xd9ICBClZrgC; Sun, 13 Aug 2023 12:40:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D63F40978;
	Sun, 13 Aug 2023 12:40:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D63F40978
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A2B1E1BF41C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 13 Aug 2023 12:40:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 77270402E7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 13 Aug 2023 12:40:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 77270402E7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jK6zkHzm6IdE for <intel-wired-lan@lists.osuosl.org>;
 Sun, 13 Aug 2023 12:40:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3D9B440124
 for <intel-wired-lan@lists.osuosl.org>; Sun, 13 Aug 2023 12:40:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D9B440124
X-IronPort-AV: E=McAfee;i="6600,9927,10801"; a="362039146"
X-IronPort-AV: E=Sophos;i="6.01,170,1684825200"; d="scan'208";a="362039146"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2023 05:40:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10801"; a="733159931"
X-IronPort-AV: E=Sophos;i="6.01,170,1684825200"; d="scan'208";a="733159931"
Received: from onachmix-mobl1.ger.corp.intel.com (HELO [10.251.178.57])
 ([10.251.178.57])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2023 05:40:06 -0700
Message-ID: <2b1105c4-dc8e-be22-206b-8bb1070e2e0b@linux.intel.com>
Date: Sun, 13 Aug 2023 15:39:57 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20230718162857.3566306-1-sasha.neftin@intel.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230718162857.3566306-1-sasha.neftin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691930409; x=1723466409;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=sOynRMh/Uqptrr9XDPTS//SfTDfHjh39yYMAtmE+hFw=;
 b=WbjoPbk2dwBPVI7FxvYdK8EzpT6OIZWyHq1EIm41r51aUHJebspyQtjO
 L2WKNRpoj1IjcbLkf49KmGUOuCH3VxKXuaR0i24GNUaEBkBWQfsIQOPds
 /QbrkiSg8oMGexHiG//cN6YA4has1G82HWuHvT2kMyUjfrj7Btchq+TJ0
 E3bCJwl60qvu8910lOIev7wndIE6cof7VPmoozPbPX6fSAUhUAgKSG+Ub
 0ns1hkbO1f4vv1xylFkrweTnMy8EJNOlecETuj90icZAsPOg6PesmRBLK
 BupqmzFJAxJFhgFZnBqVAngDSO72PP/cRO7zH2iR88B2tJThA/DNl6cfK
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WbjoPbk2
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: Add support
 for the next LOM generation
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

On 7/18/2023 19:28, Sasha Neftin wrote:
> Add devices IDs for the next LOM generations that will be available on the
> next Intel Client platforms. This patch provides the initial support for
> these devices.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/ethtool.c | 2 ++
>   drivers/net/ethernet/intel/e1000e/hw.h      | 3 +++
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 7 +++++++
>   drivers/net/ethernet/intel/e1000e/netdev.c  | 4 ++++
>   drivers/net/ethernet/intel/e1000e/ptp.c     | 1 +
>   5 files changed, 17 insertions(+)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
