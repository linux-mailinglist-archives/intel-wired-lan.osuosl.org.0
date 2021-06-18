Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A313AC766
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Jun 2021 11:28:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B089833A7;
	Fri, 18 Jun 2021 09:28:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sae_bQG94td0; Fri, 18 Jun 2021 09:28:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 96D2383211;
	Fri, 18 Jun 2021 09:28:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AC9731BF293
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 09:27:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 99F96605E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 09:27:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rso3AXsZvJPd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Jun 2021 09:27:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B7DC9605B7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 09:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1624008474;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=cb+FRLCGXzdPwRmKS5oQ+lSGeVm/SSJIrsWW1mWuHDU=;
 b=L0VAjfkY/bxVyr3ZfK3Jd2AAbj84psj4OjX9f49EoUlwNyGalB7DVOFc5xMhE6S+IUgFYf
 FteiZkGTk2j0Xc6xlvoTen7BSqX04pkQkOSy2a8t3j6dZVHxtpUkhnulwL4WBXaQdMyVdR
 CJPLytlec+eGqAoY3hr2oI8Hodv5d1k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-467-TsdF5ZTpMomaC3zT6pKEgw-1; Fri, 18 Jun 2021 05:27:50 -0400
X-MC-Unique: TsdF5ZTpMomaC3zT6pKEgw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 963B0193F564;
 Fri, 18 Jun 2021 09:27:49 +0000 (UTC)
Received: from p50 (ovpn-112-23.ams2.redhat.com [10.36.112.23])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E01526A05B;
 Fri, 18 Jun 2021 09:27:47 +0000 (UTC)
Date: Fri, 18 Jun 2021 11:27:46 +0200
From: Stefan Assmann <sassmann@redhat.com>
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
Message-ID: <20210618092746.vhj334aaoiqinok4@p50>
References: <20210618090346.12405-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
In-Reply-To: <20210618090346.12405-1-mateusz.palczewski@intel.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sassmann@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Subject: Re: [Intel-wired-lan] [PATCH net v3 0/3] iavf: Fix init and
 watchdog state machines
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2021-06-18 11:03, Mateusz Palczewski wrote:
> Use single state machine for driver initialization
> and for service initialized driver. The init state
> machine implemented in init_task() is merged
> into the watchdog_task(). The init_task() function
> is removed.

Since this is code refactoring I think this should be applied via
net-next.

> ---
> v3: Added new file to patch series

Thanks for splitting the patches up!

  Stefan

> v2: Splitted the patch into 2 to make them smaller
> ---
> 
> Jan Sokolowski (3):
>   iavf: Refactor iavf state machine tracking
>   iavf: Add __IAVF_INIT_FAILED state
>   iavf: Fix init and watchdog state machines
> 
>  drivers/net/ethernet/intel/iavf/iavf.h        |  12 +-
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 188 +++++++++---------
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   2 +-
>  3 files changed, 103 insertions(+), 99 deletions(-)
> 
> -- 
> 2.27.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
