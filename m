Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C61484D512F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Mar 2022 19:07:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 52A1A410CA;
	Thu, 10 Mar 2022 18:07:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F67m1nwj4CMV; Thu, 10 Mar 2022 18:07:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46C3941295;
	Thu, 10 Mar 2022 18:07:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9ED641BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 18:06:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8CFC1410AB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 18:06:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BQxA_sBWa2bc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Mar 2022 18:06:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E6858409E8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 18:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646935613;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jab5LSIUZ7G6VHa6LCFmv7ykuxc8TivMnh1SToYBvqY=;
 b=d7eSqXaI/egD9IcXmbcGZLRGEXNNKnzzA3NyQvidow3B/KMVzSu5hmTMihfWXbTjWaYD12
 1RA69km7bqt/FOUbHbm7RVXVUxY5NL2v/osSj8JGZWibw+vlEChyTLuN3dyeWQpHFTSrB3
 CTrNMHmWszj3Y7E/x8qZNHBuAVlSpbU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-299-MSECgwT9PpqZ6CbGIMjPXg-1; Thu, 10 Mar 2022 13:06:50 -0500
X-MC-Unique: MSECgwT9PpqZ6CbGIMjPXg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DB61651DC;
 Thu, 10 Mar 2022 18:06:48 +0000 (UTC)
Received: from ceranb (unknown [10.39.192.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 258B51F058;
 Thu, 10 Mar 2022 18:06:42 +0000 (UTC)
Date: Thu, 10 Mar 2022 19:06:42 +0100
From: Ivan Vecera <ivecera@redhat.com>
To: "Ertman, David M" <david.m.ertman@intel.com>
Message-ID: <20220310190642.556063ae@ceranb>
In-Reply-To: <MW5PR11MB58114999381C7B98598BB568DD0B9@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20220310171641.3863659-1-ivecera@redhat.com>
 <MW5PR11MB58114999381C7B98598BB568DD0B9@MW5PR11MB5811.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mailman-Approved-At: Thu, 10 Mar 2022 18:07:49 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix race condition during
 interface enslave
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
Cc: "moderated list:INTEL ETHERNET DRIVERS\"
 <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>"@osuosl.org,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Petr Oros <poros@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 10 Mar 2022 17:48:16 +0000
"Ertman, David M" <david.m.ertman@intel.com> wrote:

> This only addresses one case of unplugging the auxiliary bus.  Rather than controlling one instance of
> calling ice_unplig_aux_dev(), it seems like it would be better to modify ice_unplug_aux_dev so that it
> will pause until any plugging is done by the service task (check for the pf->flag bit and wait until it clears
> before progressing).

You cannot wait in ice_unplug_aux_dev() for ICE_FLAG_PLUG_AUX_DEV to be cleared because
ice_clear_rdma_cap() is called under RTNL.
This patch is a counter part for commit 5dbbbd01cbba83 ("ice: Avoid RTNL lock when
re-creating auxiliary device") that eliminates ice_plug_aux() and fixed first part
of deadlock and this patch fixes a second part and eliminates also ice_unplug_aux_dev()
to be called under RTNL.

Thanks,
Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
