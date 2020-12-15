Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D142DAD6F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Dec 2020 13:48:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8312286B00;
	Tue, 15 Dec 2020 12:48:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nERWNiLj19yb; Tue, 15 Dec 2020 12:48:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3BA4D86AB1;
	Tue, 15 Dec 2020 12:48:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9A2111BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 12:48:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 83C7420554
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 12:48:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1ncLRRP2Fuiz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Dec 2020 12:48:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by silver.osuosl.org (Postfix) with ESMTPS id 7C5EC204CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 12:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1608036525;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=71TJz4jJBxi3FNWgBuXMogBmrKtRgJQf0Py8VByy0QY=;
 b=NRpN7grEuly5ngrdkOUnj2Ix24qfQj/v1rAMmMGQfZEq0VJkT0rlMB/OGsuPXe9J9/WehC
 JT0n7XfEGwhvR81+JR04lLzqS4oo10BygIXRlrnDJhMdZGgqn4s+WbsSxCoVw06eEp3Y7A
 Lr+zcif6sZkgnnfiA4HSkz82aYbz29Q=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-26-HlxcspS7M8SoIM1EH57FPg-1; Tue, 15 Dec 2020 07:48:40 -0500
X-MC-Unique: HlxcspS7M8SoIM1EH57FPg-1
Received: by mail-ej1-f69.google.com with SMTP id k3so5919043ejr.16
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 04:48:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=71TJz4jJBxi3FNWgBuXMogBmrKtRgJQf0Py8VByy0QY=;
 b=BWyulzm+70YR5eQ7Llt6gEFLnwMOdbup6EkqkjhiBmqw//0y/l7kVt3aONgLcqeGqd
 PGraNcTL0uZ9rQucT9bV782vGGZpTvFlpuKlEECJwtDBPNWj3UEI/SsAqzUs51kpN6kS
 K4/Su7vR87YUQagvslwB+zA9q1Fq8NYPliBWCdiyWo9RUcMLnChpIzidbQWCb15/tZsH
 Mg8QSwWFO43F2aGDDP5DZx4yI7RLk/0tp13us8A0ayI/Fm8194X8PQcW2UGQ5B+eqITN
 3O7iHMBSMptIdJ6ynMxfG6TRPsuOSOUs3xwj8UJuKzsG+QBhO8PQ98+aE1hnj4sArueH
 MWUA==
X-Gm-Message-State: AOAM531w8OVtEVVzlhw5zJLS5fIdr5KyTZGAo091EQSOmyd/HghjAbDB
 cXO3BV4zXo/9FrJGkgmTg2kBbATmGJw6M6CuhqdskzgpuXTGUcAC5TQ3G3pqsyKGwjdZ1QAskG1
 R0kBuie9kiRYTR0uiPMxHwWg0OcqtnA==
X-Received: by 2002:aa7:dd17:: with SMTP id i23mr2260450edv.14.1608036519049; 
 Tue, 15 Dec 2020 04:48:39 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyW4i0eBs12UuBv1hAbzp9cwH5eerH26Zv/FHBRnZAh2dyaOq2xvRcezNZM9oglVXwzs9HqyQ==
X-Received: by 2002:aa7:dd17:: with SMTP id i23mr2260432edv.14.1608036518858; 
 Tue, 15 Dec 2020 04:48:38 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id cb14sm1346737ejb.105.2020.12.15.04.48.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Dec 2020 04:48:38 -0800 (PST)
To: Mario Limonciello <mario.limonciello@dell.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20201214192935.895174-1-mario.limonciello@dell.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <44b33670-7692-d6c1-3a65-61544ae4276c@redhat.com>
Date: Tue, 15 Dec 2020 13:48:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201214192935.895174-1-mario.limonciello@dell.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v5 0/4] Improve s0ix flows for systems
 i219LM
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
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>,
 Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

On 12/14/20 8:29 PM, Mario Limonciello wrote:
> commit e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME systems")
> disabled s0ix flows for systems that have various incarnations of the
> i219-LM ethernet controller.  This was done because of some regressions
> caused by an earlier
> commit 632fbd5eb5b0e ("e1000e: fix S0ix flows for cable connected case")
> with i219-LM controller.
> 
> Per discussion with Intel architecture team this direction should be changed and
> allow S0ix flows to be used by default.  This patch series includes directional
> changes for their conclusions in https://lkml.org/lkml/2020/12/13/15.
> 
> Changes from v4 to v5:
>  - If setting S0ix to enabled in ethtool examine the hardware generation.
>    If running on hardware older than Cannon Point return an error.
>  - Increase ULP timeout to 2.5 seconds, but show a warning after 1 second.

Thank you. I've given v5 a test on a Lenovo X1 Carbon 8th gen (AMT capable)
and things work fine there with v5:

Tested-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans




> Changes from v3 to v4:
>  - Drop patch 1 for proper s0i3.2 entry, it was separated and is now merged in kernel
>  - Add patch to only run S0ix flows if shutdown succeeded which was suggested in
>    thread
>  - Adjust series for guidance from https://lkml.org/lkml/2020/12/13/15
>    * Revert i219-LM disallow-list.
>    * Drop all patches for systems tested by Dell in an allow list
>    * Increase ULP timeout to 1000ms
> Changes from v2 to v3:
>  - Correct some grammar and spelling issues caught by Bjorn H.
>    * s/s0ix/S0ix/ in all commit messages
>    * Fix a typo in commit message
>    * Fix capitalization of proper nouns
>  - Add more pre-release systems that pass
>  - Re-order the series to add systems only at the end of the series
>  - Add Fixes tag to a patch in series.
> 
> Changes from v1 to v2:
>  - Directly incorporate Vitaly's dependency patch in the series
>  - Split out s0ix code into it's own file
>  - Adjust from DMI matching to PCI subsystem vendor ID/device matching
>  - Remove module parameter and sysfs, use ethtool flag instead.
>  - Export s0ix flag to ethtool private flags
>  - Include more people and lists directly in this submission chain.
> 
> 
> Mario Limonciello (4):
>   e1000e: Only run S0ix flows if shutdown succeeded
>   e1000e: bump up timeout to wait when ME un-configures ULP mode
>   Revert "e1000e: disable s0ix entry and exit flows for ME systems"
>   e1000e: Export S0ix flags to ethtool
> 
>  drivers/net/ethernet/intel/e1000e/e1000.h   |  1 +
>  drivers/net/ethernet/intel/e1000e/ethtool.c | 46 ++++++++++++++++
>  drivers/net/ethernet/intel/e1000e/ich8lan.c | 16 ++++--
>  drivers/net/ethernet/intel/e1000e/netdev.c  | 59 ++++-----------------
>  4 files changed, 70 insertions(+), 52 deletions(-)
> 
> --
> 2.25.1
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
