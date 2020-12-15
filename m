Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CF52DAD70
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Dec 2020 13:49:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AAD3486D76;
	Tue, 15 Dec 2020 12:49:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0tasCY9m5Bhx; Tue, 15 Dec 2020 12:49:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 962CF86D7B;
	Tue, 15 Dec 2020 12:49:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4EBC31BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 12:49:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4AC9B869A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 12:49:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id boqooB+olQ7o for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Dec 2020 12:49:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E93708696D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 12:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1608036538;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HfnEmXVCvWEtNGidGU85iErTRrcxXd3EOjRoy0dunP0=;
 b=IIfPbl5ebgBuR/OIAa3K9TFSZvX9rtxosgGRTXjHcJXZTG0csMYegPMLw4chCQ7BKqKCwK
 ygiqtq2GuPbx4MxhzjqROE/1ZJeI9C8gC4yRTZ21pojeqIF2/1pXK7gh6zOZXOTs8lx6HL
 51+aFM+4tuZ4LrQebbwYsyfzD/ZdREA=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-187-fXlMhTbBMmiGnTUgHUf7EA-1; Tue, 15 Dec 2020 07:48:55 -0500
X-MC-Unique: fXlMhTbBMmiGnTUgHUf7EA-1
Received: by mail-ej1-f71.google.com with SMTP id k15so5985834ejg.8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 04:48:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HfnEmXVCvWEtNGidGU85iErTRrcxXd3EOjRoy0dunP0=;
 b=g7/MHTtDcp7kfEViDPL8H2rsokKu72+XrTQkaNfDecJur+fOXX/kvPxkp5ytAXyecK
 vYD5BJCO1VQqbdDBY9Xe0E5aSBw7PlvAIX0HKQ2itGp8R01dyr0zPgkw9hoRVgyzc4Y+
 qLewnUvvEt2f+1krTi9OQuGHKdwafVDEffx1PFOWTszWIF/O99aXJTol4vyoilvu0+Jr
 XFcSCqLn4xncsLFT7xQJztKeYlACAfLXaOiNBk9S+BJ7a4KeNcJ+9Yglay/i/OeIJtGc
 aLyrHi6QetLsanXN2MjW/xy5ttFlPHwWIuib0DEi/AQF32G6Gpf5b3gDeWVmxt7vrdXg
 OAbw==
X-Gm-Message-State: AOAM533f1aPTwkDqRZMQSsEYQkF76UazV6x6lYprL65OMsrH69YbVGdL
 5xDvPQQgSk36+oCJvvaTiSr2uO3CU2kYaGdvkfnY2+QCaBiJ5JEC1raeL3Ck7jSudEmppammDw8
 XSk8wFa+THqV3Yupqn54/nMd9pX9Jbw==
X-Received: by 2002:a50:8b61:: with SMTP id l88mr29871059edl.250.1608036533763; 
 Tue, 15 Dec 2020 04:48:53 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxNkkewQL6MyNw6bD9dkbMNy4qt9EM3bJFOkpnJdelAtOE8uSiyRs8eJKAZQoMwet3SB4vPpg==
X-Received: by 2002:a50:8b61:: with SMTP id l88mr29871042edl.250.1608036533499; 
 Tue, 15 Dec 2020 04:48:53 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id q25sm18272780eds.85.2020.12.15.04.48.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Dec 2020 04:48:52 -0800 (PST)
To: Mario Limonciello <mario.limonciello@dell.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20201214192935.895174-1-mario.limonciello@dell.com>
 <20201214192935.895174-3-mario.limonciello@dell.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <0a037084-d2ec-a92c-7ba4-c270072a9ad7@redhat.com>
Date: Tue, 15 Dec 2020 13:48:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201214192935.895174-3-mario.limonciello@dell.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v5 2/4] e1000e: bump up timeout to
 wait when ME un-configures ULP mode
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
Cc: Netdev <netdev@vger.kernel.org>, Perry.Yuan@dell.com,
 linux-kernel@vger.kernel.org, anthony.wong@canonical.com, Yijun.Shen@dell.com,
 Mark Pearson <markpearson@lenovo.com>, Jakub Kicinski <kuba@kernel.org>,
 David Miller <davem@davemloft.net>, Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

On 12/14/20 8:29 PM, Mario Limonciello wrote:
> Per guidance from Intel ethernet architecture team, it may take
> up to 1 second for unconfiguring ULP mode.
> 
> However in practice this seems to be taking up to 2 seconds on
> some Lenovo machines.  Detect scenarios that take more than 1 second
> but less than 2.5 seconds and emit a warning on resume for those
> scenarios.
> 
> Suggested-by: Aaron Ma <aaron.ma@canonical.com>
> Suggested-by: Sasha Netfin <sasha.neftin@intel.com>
> Suggested-by: Hans de Goede <hdegoede@redhat.com>
> CC: Mark Pearson <markpearson@lenovo.com>
> Fixes: f15bb6dde738cc8fa0 ("e1000e: Add support for S0ix")
> BugLink: https://bugs.launchpad.net/bugs/1865570
> Link: https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20200323191639.48826-1-aaron.ma@canonical.com/
> Link: https://lkml.org/lkml/2020/12/13/15
> Link: https://lkml.org/lkml/2020/12/14/708
> Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans

> ---
>  drivers/net/ethernet/intel/e1000e/ich8lan.c | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index 9aa6fad8ed47..fdf23d20c954 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -1240,6 +1240,9 @@ static s32 e1000_disable_ulp_lpt_lp(struct e1000_hw *hw, bool force)
>  		return 0;
>  
>  	if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID) {
> +		struct e1000_adapter *adapter = hw->adapter;
> +		bool firmware_bug = false;
> +
>  		if (force) {
>  			/* Request ME un-configure ULP mode in the PHY */
>  			mac_reg = er32(H2ME);
> @@ -1248,16 +1251,23 @@ static s32 e1000_disable_ulp_lpt_lp(struct e1000_hw *hw, bool force)
>  			ew32(H2ME, mac_reg);
>  		}
>  
> -		/* Poll up to 300msec for ME to clear ULP_CFG_DONE. */
> +		/* Poll up to 2.5 seconds for ME to clear ULP_CFG_DONE.
> +		 * If this takes more than 1 second, show a warning indicating a firmware
> +		 * bug */
>  		while (er32(FWSM) & E1000_FWSM_ULP_CFG_DONE) {
> -			if (i++ == 30) {
> +			if (i++ == 250) {
>  				ret_val = -E1000_ERR_PHY;
>  				goto out;
>  			}
> +			if (i > 100 && !firmware_bug)
> +				firmware_bug = true;
>  
>  			usleep_range(10000, 11000);
>  		}
> -		e_dbg("ULP_CONFIG_DONE cleared after %dmsec\n", i * 10);
> +		if (firmware_bug)
> +			e_warn("ULP_CONFIG_DONE took %dmsec.  This is a firmware bug\n", i * 10);
> +		else
> +			e_dbg("ULP_CONFIG_DONE cleared after %dmsec\n", i * 10);
>  
>  		if (force) {
>  			mac_reg = er32(H2ME);
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
