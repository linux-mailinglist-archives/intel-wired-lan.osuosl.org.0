Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3736C15C902
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2020 17:59:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DCEC687F9C;
	Thu, 13 Feb 2020 16:59:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 95fZ8mXnplYr; Thu, 13 Feb 2020 16:59:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 569B187FCF;
	Thu, 13 Feb 2020 16:59:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7695E1BF20D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 16:59:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7122F2152F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 16:59:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SR7-5XROfUNZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2020 16:59:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 9C5551FD43
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 16:59:28 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id z16so7242448iod.11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 08:59:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gFHEa5QXgXrMSGUxWD57Hvbj3L268E9bB91zqpZbyrk=;
 b=ad3canef0YmG61P06BWe+DUrBvISGwRh+4bBG2GFXpD9l90e72RLTgOVjhSs8OyKQX
 txvaolTA4srS6RtnpwkNjccooLMuXQOObVYYMRQwVlSVIpVwDu0g6cycTPajHrAcO/dR
 OSRwj18BQplTx/fYYt58qW1+zA48CFPG2q+LFZw4NacVEjtYAo9y5BsfWldBnt6RN1tp
 oGkMxOnLDb4ysM3QUY538RKNMf1UZkI+whzb/DhSR4pcHN2GQd2OqAkmAefi78W4P8us
 JrEpdhTadCk5knpfjIfbh4WxoumvNx/NH9AZDUwNN0RNk9m2KZRIKoU9lJeCl+bllLql
 HYeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gFHEa5QXgXrMSGUxWD57Hvbj3L268E9bB91zqpZbyrk=;
 b=ic+tx7vklEVORofclTsG6H+L0PWFXEYaH35Zn4wQ8GFFCdHNDk9gXTDlfzhXQzeDRY
 Y1jF3PhbZm61WV6JQqcCdMBDaXWgE5TpWlKgxpXFJ4pe0lX6Gg7tVNIl0SpjVQRZXpYE
 AUZeU9aD1cGulmelJOLJW7ikhJDx6W59wFSBfRqq+eoGHZ17JghAEQSO6QVdDfIfEzcD
 A+7pd2BpRZUqd6En9N+bmJlJDr4qtB/iS+Qf4xMCKQYhDIr/vYN8hDdgihJ5jiBTbNDP
 XQFpwXLO2LKme6j/6wNGF/uZ+PlHw7j7S9WOeutI8QOnaTEHqNGkLkHnjgwE8aMVSUf0
 lY/Q==
X-Gm-Message-State: APjAAAUtsoChJfYebm6FScFvDuJcgSD6Sd1dolfxP9QgWVlUZYlMPE9U
 eMYpADT9NDyqtyEURZMW+maNb+XApwCx18Zrlac=
X-Google-Smtp-Source: APXvYqynFAPBE7hqR/ioFIzklnMAR/jNGGgWJddws1fSlSAAGKwO4wxRhcJrkdK6iC/T18oe1HTnJpGLf/SqkTcn9rY=
X-Received: by 2002:a5e:860f:: with SMTP id z15mr21677306ioj.64.1581613167763; 
 Thu, 13 Feb 2020 08:59:27 -0800 (PST)
MIME-Version: 1.0
References: <20200205123115.44103-1-sasha.neftin@intel.com>
 <309B89C4C689E141A5FF6A0C5FB2118B971F357D@ORSMSX103.amr.corp.intel.com>
 <CAKgT0UfvFZBPEYf1-b+WU48RKk1_sp8xzJtKe6rAXAk8_bCZ9Q@mail.gmail.com>
 <c6c9c3e0-5c56-5f4f-8975-a46f8c5a08af@intel.com>
In-Reply-To: <c6c9c3e0-5c56-5f4f-8975-a46f8c5a08af@intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 13 Feb 2020 08:59:16 -0800
Message-ID: <CAKgT0UejnOv1p4TQJ+CcMkJ-d4nGpBxVaOZJRfN6q7muvrp+XQ@mail.gmail.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Complete to commit Add
 support for TSO
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 13, 2020 at 12:02 AM Neftin, Sasha <sasha.neftin@intel.com> wrote:
>
> On 2/13/2020 00:47, Alexander Duyck wrote:
> > On Wed, Feb 12, 2020 at 2:39 PM Brown, Aaron F <aaron.f.brown@intel.com> wrote:
> >>
> >>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> >>> Sasha Neftin
> >>> Sent: Wednesday, February 5, 2020 4:31 AM
> >>> To: intel-wired-lan@lists.osuosl.org
> >>> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Complete to commit Add
> >>> support for TSO
> >>>
> >>> commit f38b782dccab ("igc: Add support for TSO")
> >>> Add option to setting transmit command (TUCMD) of the context
> >>> descriptor based on skb_shinfo gso_type and SKB_GSO_UDP_L4 flag.
> >>>
> >>> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> >>> ---
> >>>   drivers/net/ethernet/intel/igc/igc_defines.h | 1 +
> >>>   drivers/net/ethernet/intel/igc/igc_main.c    | 3 ++-
> >>>   2 files changed, 3 insertions(+), 1 deletion(-)
> >>>
> >> Aside from possibly including the responses to Jesse's questions on this...
> >> Tested-by: Aaron Brown <aaron.f.brown@intel.com>
> >
> > I'm not sure the patch makes any sense. Does the driver support UDP
> > GSO? I don't see the feature flag (NETIF_F_GSO_UDP_L4) anywhere that
> > enables it.
> >
> Yes, it is supported. The MAC is similar to igb from segmentation
> perspectives. I missed add it. Please, let me finish some testing and I
> will add NETIF_F_GSO_UDP_L4 flag to _features_check and _probe methods.

Thats fine. I just wouldn't submit this patch as it is. It should be
adding the NETIF_F_GSO_UDP_L4 flag so you can actually test the code
and verify the hardware is handling it correctly.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
