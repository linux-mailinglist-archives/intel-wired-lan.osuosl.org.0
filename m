Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A8D4F1687
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Apr 2022 15:52:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE52F828D1;
	Mon,  4 Apr 2022 13:52:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lh-h4XIzE3dE; Mon,  4 Apr 2022 13:52:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C915A828B3;
	Mon,  4 Apr 2022 13:52:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8FAF91BF574
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 23:19:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7BE0160F30
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 23:19:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=quicinc.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7YAxEEYINjQl for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Apr 2022 23:19:23 +0000 (UTC)
X-Greylist: delayed 00:06:05 by SQLgrey-1.8.0
Received: from alexa-out.qualcomm.com (alexa-out.qualcomm.com [129.46.98.28])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 56EF960F28
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 23:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1648855163; x=1680391163;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=t/uxrWafaSD5EnT5QwWMjaFa+/9c7ciaXbOG1s2P/OA=;
 b=xVLYkYEdUq5LxcpDTziMQd89VrYz+LAKEm2lpZBX5MYoZl2VSyNjerjN
 QmqNZKMYnzXFPJo6Wtxb0Mqmx5tR1AFcE9f5SEDZ8/UZSC2wCh8eVYAgj
 vZHj09mBQ3nkMgmV7ZCP+E3yGMEAjF2SipXDU9gB/ZwckT+OgMt0SK4L0 0=;
Received: from ironmsg08-lv.qualcomm.com ([10.47.202.152])
 by alexa-out.qualcomm.com with ESMTP; 01 Apr 2022 16:13:18 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg08-lv.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 16:13:18 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Fri, 1 Apr 2022 16:13:17 -0700
Received: from [10.110.67.71] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Fri, 1 Apr 2022
 16:13:16 -0700
Message-ID: <275930a5-6f6e-4a93-6ac4-d5f99075d672@quicinc.com>
Date: Fri, 1 Apr 2022 16:13:15 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Jianglei Nie <niejianglei2021@163.com>, <jesse.brandeburg@intel.com>,
 <anthony.l.nguyen@intel.com>, <davem@davemloft.net>, <kuba@kernel.org>
References: <20220401080051.16846-1-niejianglei2021@163.com>
From: Jeff Johnson <quic_jjohnson@quicinc.com>
In-Reply-To: <20220401080051.16846-1-niejianglei2021@163.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-Mailman-Approved-At: Mon, 04 Apr 2022 13:52:20 +0000
Subject: Re: [Intel-wired-lan] [PATCH] ice: Fix memory leak in
 ice_get_orom_civd_data()
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
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/1/2022 1:00 AM, Jianglei Nie wrote:
> Line 637 allocates a memory chunk for orom_data by vzmalloc(). But

References to lile numbers don't age very well.
suggest you s/Line 637/ice_get_orom_civd_data()/

> when ice_read_flash_module() fails, the allocated memory is not freed,
> which will lead to a memory leak.
> 
> We can fix it by freeing the orom_data when ce_read_flash_module() fails.

s/We can fix/Fix/

actual patch LGTM
> 
> Signed-off-by: Jianglei Nie <niejianglei2021@163.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_nvm.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
> index 4eb0599714f4..13cdb5ea594d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_nvm.c
> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
> @@ -641,6 +641,7 @@ ice_get_orom_civd_data(struct ice_hw *hw, enum ice_bank_select bank,
>   	status = ice_read_flash_module(hw, bank, ICE_SR_1ST_OROM_BANK_PTR, 0,
>   				       orom_data, hw->flash.banks.orom_size);
>   	if (status) {
> +		vfree(orom_data);
>   		ice_debug(hw, ICE_DBG_NVM, "Unable to read Option ROM data\n");
>   		return status;
>   	}

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
