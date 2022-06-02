Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 886D453BBFC
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jun 2022 17:57:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B995C40A95;
	Thu,  2 Jun 2022 15:57:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2iQ7Dg5mGrsM; Thu,  2 Jun 2022 15:57:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B0FB2408A6;
	Thu,  2 Jun 2022 15:57:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6C6D01BF401
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jun 2022 15:57:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 68DBE81AC1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jun 2022 15:57:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P0z6CHtNkrYU for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jun 2022 15:57:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com
 [IPv6:2607:f8b0:4864:20::531])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 869E881763
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jun 2022 15:57:44 +0000 (UTC)
Received: by mail-pg1-x531.google.com with SMTP id u4so2133518pgk.11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Jun 2022 08:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=geyGj2h8e5l4UvjaG7yeOltvkAXWrkX3tnYPm/28OpM=;
 b=J7oc9gaOHz7cu1wMvim5v58b0ncAlSkdd+bBZQ652fPzpKuCR8VDXEHy+a3i9H/aJE
 u3CjahDq48eE5TS/3qSTkFrPYG/1VEB25jXMY2Tatgm+CLAB1t+Q4/lOkTkT3RRB3bYl
 pB0tamF8CO4YSYzxaYNVmz3GDSOtIsGMMGJGmBnEMfxCGfVcrVIzM2mh3cVJbVsDHlrN
 zthxjcfxsTHBmJIcBoyGHfk1I7E2hPz6LEpp9ZRdbvhkkMhGAKcjigS+m1M5/PXxuOAc
 ure4OMlDX/BkcLE0wpTCwP4zDYDXL5Z2k3OJMikfhCiwHtDyNy7tvSKFlwi4WtUTH5rf
 EIgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=geyGj2h8e5l4UvjaG7yeOltvkAXWrkX3tnYPm/28OpM=;
 b=3HZZJSHQzCGzvFtJN73GLtVLqzq6u+cijn0tjPu0BMpvfl4pxBZrEmoDbblQFi06ip
 GHUY1JgjjmuLtibc8k9LLPYNbf6Vn7SPyKV8hd3xlRCe9QbI5jVObGqbUZ71HOhShTRF
 CkkzZsNz6dMe3Q3yH+rlbsYRRle3E9J06bVNi0h+seMLL0rU4szaeP5nS77GG/A1QmPR
 BidoPbUofGDeeXumXgEMSeeKe88EMhSnyU9v54Nxt/TZOqYFyLufOW51Vvssme34mxWF
 8jucPLuBKP9lNc+sKONM16PQpnZ0zxezm84hG9ini5L4xuN3ErVx3absD22aZX1wZPkr
 HEpA==
X-Gm-Message-State: AOAM530chV2LBa1okWm3tH1QA+TrzoO0OA8CexDfTrYwqdrYFGWC9cXZ
 9M6+09PZHD6aV1mezUgIeFc=
X-Google-Smtp-Source: ABdhPJyZX0VZHGnsu0fmc0nF/zEyM2xuUFHR/oXBozjNIgICnhchUzL3uIfQcp+/6NcvJopwanUuRA==
X-Received: by 2002:a05:6a00:8cb:b0:510:9ec4:8f85 with SMTP id
 s11-20020a056a0008cb00b005109ec48f85mr5908257pfu.24.1654185463778; 
 Thu, 02 Jun 2022 08:57:43 -0700 (PDT)
Received: from [192.168.0.128] ([98.97.39.9])
 by smtp.googlemail.com with ESMTPSA id
 s11-20020a170902a50b00b001661f9ada6dsm3402479plq.143.2022.06.02.08.57.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jun 2022 08:57:43 -0700 (PDT)
Message-ID: <f16ef33a4b12cebae2e2300a509014cd5de4a0d2.camel@gmail.com>
From: Alexander H Duyck <alexander.duyck@gmail.com>
To: Lixue Liang <lianglixuehao@126.com>, pmenzel@molgen.mpg.de
Date: Thu, 02 Jun 2022 08:57:41 -0700
In-Reply-To: <20220601150428.33945-1-lianglixuehao@126.com>
References: <20220601150428.33945-1-lianglixuehao@126.com>
User-Agent: Evolution 3.40.4 (3.40.4-5.fc34) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v4] igb: Assign random MAC address
 instead of fail in case of invalid one
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
Cc: lianglixue@greatwall.com.cn, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2022-06-01 at 15:04 +0000, Lixue Liang wrote:
> From: Lixue Liang <lianglixue@greatwall.com.cn>
> 
> In some cases, when the user uses igb_set_eeprom to modify the MAC
> address to be invalid, the igb driver will fail to load. If there is no
> network card device, the user must modify it to a valid MAC address by
> other means.
> 
> Since the MAC address can be modified, then add a random valid MAC address
> to replace the invalid MAC address in the driver can be workable, it can
> continue to finish the loading, and output the relevant log reminder.
> 
> Signed-off-by: Lixue Liang <lianglixue@greatwall.com.cn>
> ---
> Changelog:
> * v4:
>   - Change the igb_mian in the title to igb
>   - Fix dev_err message: replace "already assigned random MAC address" 
>     with "Invalid MAC address. Assigned random MAC address" 
>   Suggested-by Tony <anthony.l.nguyen@intel.com>
> 
> * v3:
>   - Add space after comma in commit message 
>   - Correct spelling of MAC address
>   Suggested-by Paul <pmenzel@molgen.mpg.de>
> 
> * v2:
>   - Change memcpy to ether_addr_copy
>   - Change dev_info to dev_err
>   - Fix the description of the commit message
>   - Change eth_random_addr to eth_hw_addr_random
>   Reported-by: kernel test robot <lkp@intel.com>
> 
>  drivers/net/ethernet/intel/igb/igb_main.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 34b33b21e0dc..5e3b162e50ac 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -3359,9 +3359,10 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	eth_hw_addr_set(netdev, hw->mac.addr);
>  
>  	if (!is_valid_ether_addr(netdev->dev_addr)) {
> -		dev_err(&pdev->dev, "Invalid MAC Address\n");
> -		err = -EIO;
> -		goto err_eeprom;
> +		eth_hw_addr_random(netdev);
> +		ether_addr_copy(hw->mac.addr, netdev->dev_addr);
> +		dev_err(&pdev->dev,
> +			"Invalid MAC address. Assigned random MAC address\n");
>  	}
>  
>  	igb_set_default_mac_filter(adapter);

Losing the MAC address is one of the least destructive things you can
do by poking the EEPROM manually. There are settings in there for other
parts of the EEPROM for the NIC that can just as easily prevent the
driver from loading, or worse yet even prevent it from appearing on the
PCIe bus in some cases. So I don't see the user induced EEPROM
corruption as a good justification for this patch as the user shouldn't
be poking the EEPROM if they cannot do so without breaking things.

With that said I would be okay with adding this with the provision that
there is a module parameter to turn on this funcitonality. The
justification would be that the user is expecting to have a corrupted
EEPROM because they are working with some pre-production board or
uninitialized sample. This way if somebody is wanting to update the
EEPROM on a bad board they can use the kernel to do it, but they have
to explicitly enable this mode and not just have the fact that their
EEPROM is corrupted hidden as error messages don't necessarily get
peoples attention unless they are seeing some other issue.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
