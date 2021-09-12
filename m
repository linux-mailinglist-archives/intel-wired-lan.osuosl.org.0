Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 407FB407DB2
	for <lists+intel-wired-lan@lfdr.de>; Sun, 12 Sep 2021 15:45:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1DCE3404BD;
	Sun, 12 Sep 2021 13:45:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2A8bcAFIvvCe; Sun, 12 Sep 2021 13:45:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F0FAF40235;
	Sun, 12 Sep 2021 13:45:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 38A6C1BF473
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Sep 2021 13:45:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 32C60606FA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Sep 2021 13:45:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bHVDtjNR3ElQ for <intel-wired-lan@lists.osuosl.org>;
 Sun, 12 Sep 2021 13:45:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7C6F160630
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Sep 2021 13:45:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10104"; a="208694903"
X-IronPort-AV: E=Sophos;i="5.85,287,1624345200"; d="scan'208";a="208694903"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2021 06:45:40 -0700
X-IronPort-AV: E=Sophos;i="5.85,287,1624345200"; d="scan'208";a="550817585"
Received: from krausnex-mobl.ger.corp.intel.com (HELO [10.13.9.164])
 ([10.13.9.164])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2021 06:45:38 -0700
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org,
 michael.edri@intel.com, nechamax.kraus@intel.com
References: <20210909174904.3765604-1-sasha.neftin@intel.com>
From: "Kraus, NechamaX" <nechamax.kraus@linux.intel.com>
Message-ID: <6697ce2f-b678-db5e-4c9c-4cddab898ed2@linux.intel.com>
Date: Sun, 12 Sep 2021 16:45:30 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210909174904.3765604-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Update the device ID
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

On 9/9/2021 20:49, Sasha Neftin wrote:
> Update device ID for the I226_K part.
> 
> Fixes: bfa5e98c9de4 ("igc: Add new device ID")
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_hw.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
Tested-by: Nechama Kraus <nechamax.kraus@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
