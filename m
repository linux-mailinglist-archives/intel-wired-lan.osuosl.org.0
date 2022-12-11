Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4783764926B
	for <lists+intel-wired-lan@lfdr.de>; Sun, 11 Dec 2022 06:14:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EE66D4109B;
	Sun, 11 Dec 2022 05:13:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE66D4109B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670735638;
	bh=QC82YO3eyDMTezEiT5VrIvre2c5VY8eWT15ffJGbXEs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1/TCD9VP1yK97HS83fIxgi1kXtU5PEFSd0O9S2mb9lmUrkUPUZD/wWwvNxVE2XiiZ
	 Q5LJPIiSKBifdfEHPxWnknpczjmgkRFkSvOIs35aQWqI77f5wephsBUKVHPlcjFAMW
	 5s23QjP1fLltI8kuMcuCeiCmx0xFDBPoNreUSMvWx07EHzy/4UQYRkZN/sDZmpZRfv
	 r5QifEobBYmstRppW4RneeIaqmk9RQtZ7NCJ0+N2bgcnwDN1zjsdkSue6KeDUl5SUW
	 cTtJVVTaDFG7Jxu09b3s98FHkBkIW4XdD2hgg94LqU6v0Qal0HWgK6zOUGL9uh6Vwp
	 yK31Bj8hBzCNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WyoAsdLfsRjg; Sun, 11 Dec 2022 05:13:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 769D240AB9;
	Sun, 11 Dec 2022 05:13:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 769D240AB9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6243E1BF410
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Dec 2022 05:13:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3C37D81916
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Dec 2022 05:13:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C37D81916
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 64z8PB2In9p7 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Dec 2022 05:13:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 477BB80DB3
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 477BB80DB3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Dec 2022 05:13:48 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 w4-20020a17090ac98400b002186f5d7a4cso12314970pjt.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Dec 2022 21:13:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=qrm7Wn3n9bSSX0cI8P5fGqBYc3VZDsLai0m/rO+s15c=;
 b=R3SEJES7Asxim6zItsAfB3y8hBPGh0U69bfx1RpGkrN7tsMxzmwfjuICb8qIsdO8Jg
 R1wQn8nAk31NFUeCrIBhqsmYIVE3dEOibGFGz5i+yfLCicbmIfChrbujOVRvUQjEQ0D+
 M8GJDQ8o5n1LHiqZIiwKjTIEKxpmLeH3KLsszIUa9dMAYeTPjnjAVulAVjx0FsJP+nvO
 TvsbRpZlSSb+mYrzpn5rdXCKqsSy66WmSjsN6SWejELHvV6Fp0pqKHpfthW+PFjRgY7k
 7DMYM1abkX0rUNLvjzhmBLhzVi4IXViqL1YrsfpSoaJ/wpKb3o4oxTo+K3Z3GZd/dzEP
 KqnQ==
X-Gm-Message-State: ANoB5pkr06b5hCqIbHAjoAyvQjAfaADvP9X0DByvqti/bE9zAg3Ts5/y
 agTwmkS6D/N/ZdV9uGXUwE7iqw==
X-Google-Smtp-Source: AA0mqf5umapYdQPgfv5n4Uccqr/DjhFtCup0SCdI99aEg8Ebg1HNKIxfucGbEC+Hue1mLYiiF/cOdw==
X-Received: by 2002:a05:6a20:3ca7:b0:a5:df86:eea0 with SMTP id
 b39-20020a056a203ca700b000a5df86eea0mr19352719pzj.34.1670735627654; 
 Sat, 10 Dec 2022 21:13:47 -0800 (PST)
Received: from ?IPV6:2400:4050:c360:8200:8ae8:3c4:c0da:7419?
 ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 o1-20020a63fb01000000b00477bfac06b7sm3030014pgh.34.2022.12.10.21.13.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 10 Dec 2022 21:13:47 -0800 (PST)
Message-ID: <06e2f754-957b-d28a-547a-09626f7048e3@daynix.com>
Date: Sun, 11 Dec 2022 14:13:44 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20221208211028.824-1-anthony.l.nguyen@intel.com>
Content-Language: en-US
From: Akihiko Odaki <akihiko.odaki@daynix.com>
In-Reply-To: <20221208211028.824-1-anthony.l.nguyen@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id:from
 :to:cc:subject:date:message-id:reply-to;
 bh=qrm7Wn3n9bSSX0cI8P5fGqBYc3VZDsLai0m/rO+s15c=;
 b=NsbYT6hauNpQsDkpM2w6T7pWHrppa0mUgWlTf5BL23jp2P/f6vTsGNhkb8rPBvGOCv
 81jNvXw+bVUolnalHiNlLAh3zjJiQ+7Q+8ONYOUJe/k4CaSylzx24Eb8e4BtTSmDrLBl
 8DBai+400NppnGOQblfyRgTwIJzKqmDii7lHAU/sxfBmHDhTF7u8vFkDvSG92/WevO/H
 UmZ0A2/4yOs7hC5E391jUWWiBcMl3Na8x4Uwkrv9T4vZmMBUTNP7JByWad0wqhUNS9xB
 ZpI1ofNsF+JMWlKOqVXsrospIATqDXfyMhFWMdIlbHfk4X/R2jA9/W+Ofg4WlbHaAs49
 NMiA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=daynix-com.20210112.gappssmtp.com
 header.i=@daynix-com.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=NsbYT6ha
Subject: Re: [Intel-wired-lan] [PATCH net] igb: Initialize mailbox message
 for VF reset
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

Reviewed-by: Akihiko Odaki <akihiko.odaki@daynix.com>

On 2022/12/09 6:10, Tony Nguyen wrote:
> When a MAC address is not assigned to the VF, that portion of the message
> sent to the VF is not set. The memory, however, is allocated from the
> stack meaning that information may be leaked to the VM. Initialize the
> message buffer to 0 so that no information is passed to the VM in this
> case.
> 
> Fixes: 6ddbc4cf1f4d ("igb: Indicate failure on vf reset for empty mac address")
> Reported-by: Akihiko Odaki <akihiko.odaki@daynix.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>   drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 97290fc0fddd..3c0c35ecea10 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -7525,7 +7525,7 @@ static void igb_vf_reset_msg(struct igb_adapter *adapter, u32 vf)
>   {
>   	struct e1000_hw *hw = &adapter->hw;
>   	unsigned char *vf_mac = adapter->vf_data[vf].vf_mac_addresses;
> -	u32 reg, msgbuf[3];
> +	u32 reg, msgbuf[3] = {};
>   	u8 *addr = (u8 *)(&msgbuf[1]);
>   
>   	/* process all the same items cleared in a function level reset */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
