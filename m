Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D4EA852D55C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 May 2022 15:58:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F036612E8;
	Thu, 19 May 2022 13:58:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pYhcUjsoB0sg; Thu, 19 May 2022 13:58:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 836F8612E9;
	Thu, 19 May 2022 13:58:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E30241BF426
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 08:42:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DE88C4033A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 08:42:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AL7NRVduFNln for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 May 2022 08:42:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com
 [IPv6:2607:f8b0:4864:20::536])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A6B4840334
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 08:42:26 +0000 (UTC)
Received: by mail-pg1-x536.google.com with SMTP id 137so4463015pgb.5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 01:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=tp6uHwKbiyfkPRv6UsmdgIfCgqD+7scWnKma7GflAv8=;
 b=Z1rUcMSoIl80xDblUuiawbJI9/zMgoVhXFXrqgs5bLN0d20lhlFsF53JX3QlDdGERd
 xjlY5hhMcucOlh7LmvsJE8AKUJSpvKfn5QXEj79QssLeKTg60ZIV7/swTpDij6dh9EwC
 bgbvH9x1CmK7Yp/YXzLgEPnbbOZy8DnoYZZ0Nuti/yxN3fNBsymsdCACfEVDeKEaNj94
 6lEO8oBIIKzk9iLjlTb7PCpuCeu1xUpneBY6C9bB4HOjzkcORBnPhNwS03NeVDsBip79
 pJD0GQia81VS4rosmBIlaWXCdkifgcU1EF8YBdN6i/6Jtf7NGUjgJDM/HtujQnKq85EU
 t/kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=tp6uHwKbiyfkPRv6UsmdgIfCgqD+7scWnKma7GflAv8=;
 b=ASAmRMLvLVTUrrDixFJzlqdzWzbC81eUrCvjIWFv3IgFnju48rg+YWh3OM5rIdYzS2
 Wmc9IQfBhZSkoTdNLta/P7FPFSA2fw3/3ch7Z/CH7Rw07OARRVVZrcLlwd6gaiRk2Si4
 IpSd7qv2xOfHLEjGVyp0jPg/QtasPBbO6HJRBu9E7AZ17BKp1WTQsqOwb/33QikRiHcx
 rmklcGa1JwiPjr0ELmJh6Ck7bxBtW/dAdA8C4nm7NMFHA6pqPf5OBrMH/ejyrHFP6r6O
 biuHRo5jaLGSCYwMfvYdj+rjzoF5b+viV7po3rVZd3POCg/IWCBCbXAphghVDaKAVTCB
 hcQQ==
X-Gm-Message-State: AOAM532zv6QHk+G1NwCT2nsUYesPNogGSGxOp0UfSEd5cg6kEQx3rJ7G
 ktNyqWHG+t4IJN+oEMw8cAXrknBcPrI=
X-Google-Smtp-Source: ABdhPJzPEE/jIq+UN4tbi5X+G5IXbypukoocZi2TTTlIhx3dS3Vq3DhC9W1G/+NDaOWGWI0zU/bq4Q==
X-Received: by 2002:a05:6a00:c8b:b0:518:495d:a6f2 with SMTP id
 a11-20020a056a000c8b00b00518495da6f2mr160224pfv.76.1652949745721; 
 Thu, 19 May 2022 01:42:25 -0700 (PDT)
Received: from acelan-xps15-9560 (220-135-95-34.hinet-ip.hinet.net.
 [220.135.95.34]) by smtp.gmail.com with ESMTPSA id
 x28-20020a634a1c000000b003dbb1a03704sm1986084pga.33.2022.05.19.01.42.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 May 2022 01:42:25 -0700 (PDT)
Date: Thu, 19 May 2022 16:42:22 +0800
From: "Chia-Lin Kao (AceLan)" <acelan.kao@canonical.com>
To: Sasha Neftin <sasha.neftin@intel.com>
Message-ID: <20220519084222.GA1624511@acelan-xps15-9560>
References: <20220508070905.1878172-1-sasha.neftin@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220508070905.1878172-1-sasha.neftin@intel.com>
X-Mailman-Approved-At: Thu, 19 May 2022 13:58:15 +0000
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] e1000e: Enable GPT clock
 before sending message to CSME
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
Cc: Dima Ruinskiy <dima.ruinskiy@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, May 08, 2022 at 10:09:05AM +0300, Sasha Neftin wrote:
> On corporate (CSME) ADL systems, the Ethernet Controller may stop working
> ("HW unit hang") after exiting from the s0ix state. The reason is that
> CSME misses the message sent by the host. Enabling the dynamic GPT clock
> solves this problem. This clock is cleared upon HW initialization.
> 
> Fixes: 3e55d231716e ("e1000e: Add handshake with the CSME to support S0ix")
> Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=214821
> Reviewed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>

This commit fixed the hardware unit hang issue on my machine.

Tested-by: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
> ---
> v2:
> Correct commit message and minor fix in comment.
>  drivers/net/ethernet/intel/e1000e/netdev.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index fa06f68c8c80..c64102b29862 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -6494,6 +6494,10 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
>  
>  	if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID &&
>  	    hw->mac.type >= e1000_pch_adp) {
> +		/* Keep the GPT clock enabled for CSME */
> +		mac_data = er32(FEXTNVM);
> +		mac_data |= BIT(3);
> +		ew32(FEXTNVM, mac_data);
>  		/* Request ME unconfigure the device from S0ix */
>  		mac_data = er32(H2ME);
>  		mac_data &= ~E1000_H2ME_START_DPG;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
