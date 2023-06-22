Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5142873A1FA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jun 2023 15:38:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 99E2C83C78;
	Thu, 22 Jun 2023 13:38:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99E2C83C78
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687441083;
	bh=GoEjTfej/UqdESTACO3yYTrrKMuZ7NP+MCIDzQISiKo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P2PoVlFeqvcuAg+7ySecNA/1k7e/lu1j5vTJKq8Nkjv+Q4oJn+P1VAjt4BYJ+mdKo
	 9uvzmxwt5Y3cufpigfNRHdKcLqkYPV5FjdvoUgpgexrgB9/I2E6pYDVqKucgfIl3GH
	 CweLOWw2TdzpoOHUL7LlP78KKxHpvAJjSlMzBMeA6JA+sHCC8QWbdErKBRzMeqS9IR
	 Md9OvaIJkKa+iFjAtpFKM3HOrijZTHt4dECqvEaizua9MCupSY98NQcKY/Za/e6vYe
	 aWNZIAtp+zr7FEgyxNjXYtefbSwFeO3lTOGjW8Lfp9fg/3KG6MfDCT9XiT6sfx4V/s
	 00NOFiFPfhOjg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nw2LCizXj5oB; Thu, 22 Jun 2023 13:38:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7AA0D83C7C;
	Thu, 22 Jun 2023 13:38:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AA0D83C7C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D96071BF356
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 13:37:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B0F8483C78
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 13:37:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0F8483C78
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BEKorLGQ5sMJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jun 2023 13:37:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D379183C7B
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D379183C7B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 13:37:54 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id
 a640c23a62f3a-98934f000a5so379187366b.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 06:37:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687441073; x=1690033073;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fRg50miuqVjqdD4FkG2Hv1AXDgRWbP1CoJvjVBr+cDM=;
 b=R30MR5i2jDaoAtW5XmGXZ1981JQGEW8sIEhaMUTukv7Bf4JlhwaVkMD2zdh/huW9CP
 nTFfzFAZ0fGK+CYeedyjLwwHPxWzVsiQbXUq0iCu5p2qowe59eYefadyaYQdVpu6qUpM
 CtyYJASbnWdGKKABA0re5S5iI4z2NsFubpB20dNYvCbmLM/UDTLD/PYh9ENQCvO+F6M8
 lM7tHGWV3v9RbUi4YzPI5vekNFc3u9d66lyw47nBBtGTMrXd1wOUWt19282pQ4C5tkMJ
 x4b9BnGThjzy+0b8UAx4iYEPQiDdBusJ1Q/6J7gQv/OWRj/JJ7p9QSOTsxyNyYcPL/4X
 FYsQ==
X-Gm-Message-State: AC+VfDyclcMQ0VuOXLe7nK8MYAaQOXSnF3zD1ZCl8wMs+4RGmoLl6ZZM
 8cV9gXkV2zoqO1aKb/UTSycL8g==
X-Google-Smtp-Source: ACHHUZ5KDB5bJM/SVgDEl6LcPqOSWN5RVVQyzWixdBKUCHQHXYkFtqN5jCFzh3LjkP9Aby8SWO1mAw==
X-Received: by 2002:a17:907:86ac:b0:98c:ed39:3617 with SMTP id
 qa44-20020a17090786ac00b0098ced393617mr2822177ejc.46.1687441072790; 
 Thu, 22 Jun 2023 06:37:52 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 cb14-20020a170906a44e00b0098d295d5908sm946156ejb.46.2023.06.22.06.37.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jun 2023 06:37:52 -0700 (PDT)
Date: Thu, 22 Jun 2023 15:37:50 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Piotr Gardocki <piotrx.gardocki@intel.com>
Message-ID: <ZJROrq1c4eO7cLUB@nanopsycho>
References: <20230621132106.991342-1-piotrx.gardocki@intel.com>
 <ZJQE4ieud5Mf8iGi@nanopsycho>
 <a5ab1ef6-1bc1-3e98-7f8b-5c5a3678ca8b@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a5ab1ef6-1bc1-3e98-7f8b-5c5a3678ca8b@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1687441073; x=1690033073; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=fRg50miuqVjqdD4FkG2Hv1AXDgRWbP1CoJvjVBr+cDM=;
 b=2FUUfDJpabB+LcdeeugWcASPhmrC4HKr4zPHmmUG9Vf2c39jQsvCddzRTWGZ/G6IQo
 FHOk38NW9G4lFfODgeV8JhKlbWzxlCDha5XOTFK9GUe3v5kzGKQOj9BnHVpDJsnk34nm
 C4ZNV3Ubq0qAudjnzw5KOshBuZPg+b3BY7aTLHvDLIjxpbFRLjZk2kg6cxjQ2V/QSPzT
 /kSxGuFkiaGd19k+gLQ219a6NNZ78WP3BMpbwUH5g7iXZtAAl3CkVKGKmfvtn32bSUIX
 U4EUWGWdtmcDaMpFeq7nQHJZ+SBAdxCMPekbiQxhslh8MjIqMrpq1LQXONjPPYHqKhJT
 AGQA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=2FUUfDJp
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: fix net device address
 assign type
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, gal@nvidia.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 simon.horman@corigine.com, przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thu, Jun 22, 2023 at 02:42:53PM CEST, piotrx.gardocki@intel.com wrote:
>On 22.06.2023 10:22, Jiri Pirko wrote:
>> Wed, Jun 21, 2023 at 03:21:06PM CEST, piotrx.gardocki@intel.com wrote:
>>> Commit ad72c4a06acc introduced optimization to return from function
>> 
>> Out of curiosity, what impact does this optimization have? Is it worth
>> it to have such optimization at all? Wouldn't simple revert of the fixes
>> commit do the trick? If not, see below.
>
>Thanks for review. My main goal originally was to skip call to ndo_set_mac_address.
>The benefit of this depends on how given driver handles such request. Some drivers
>notify their hardware about the "change", iavf for example sends a request to PF
>driver (and awaits for response). i40e and ice already had this check (I removed
>them in previous patch set) and we wanted to also introduce it in iavf. But it
>was suggested to move this check to core to have benefit for all drivers.

Okay. Makes sense.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
