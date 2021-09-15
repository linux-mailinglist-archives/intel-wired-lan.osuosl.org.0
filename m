Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D38C440BFBB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Sep 2021 08:41:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5B47F4052D;
	Wed, 15 Sep 2021 06:41:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kTp1___sNB_b; Wed, 15 Sep 2021 06:41:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 407E540170;
	Wed, 15 Sep 2021 06:41:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C6A291BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 06:41:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B657D825CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 06:41:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 32foWMwAT8Xz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Sep 2021 06:41:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E9CC28258D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 06:41:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631688092;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nXoAex5h5K9hGtyrBd5LTSnixWgehD/sSo1nO1W/QHY=;
 b=f4uTmqmAGpY5qXSyNdXU0VoiPjrft3AfnA+CEUSg5U4oFrhctx9uOQ51CiMyf3ibmL6gtQ
 qSPBbobJicYi61/vh3mTmAoJiwb+Y0E7Qt7SsSvOm3wuXu5pvtxgrIxF1V71b8sYROzgGo
 oNRwV92qu5+bBzA0rTwft9UgjhcHHvk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-560-9vKSrezqN2WGm3b7DLq0ag-1; Wed, 15 Sep 2021 02:41:30 -0400
X-MC-Unique: 9vKSrezqN2WGm3b7DLq0ag-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AE416800FF4;
 Wed, 15 Sep 2021 06:41:29 +0000 (UTC)
Received: from localhost (unknown [10.40.193.162])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7036E1001281;
 Wed, 15 Sep 2021 06:41:28 +0000 (UTC)
Date: Wed, 15 Sep 2021 08:40:22 +0200
From: Jiri Benc <jbenc@redhat.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20210915084009.4260d7ae@redhat.com>
In-Reply-To: <b94eb5b1-04b7-a1ba-3040-a8f35d40f426@intel.com>
References: <4d94f7fbd9dd6476c5adc8967f3db84bc9204f47.1630319620.git.jbenc@redhat.com>
 <b94eb5b1-04b7-a1ba-3040-a8f35d40f426@intel.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: fix endless loop under rtnl
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
Cc: netdev@vger.kernel.org,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 14 Sep 2021 16:37:55 -0700, Jesse Brandeburg wrote:
> The fix seems fine to me on initial review.
> you can add my
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Thanks!

> but...
> Missing Fixes: tag?

I should have added that, yes. I sent a v2 yesterday with the tag
included,

https://patchwork.kernel.org/project/netdevbpf/patch/452ff4ddfef7fc8f558a8c8eb7a8050688760e11.1631609537.git.jbenc@redhat.com/

Could you reply with your Reviewed-by to that one? Alternatively, I can
send a v3.

Thanks,

 Jiri

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
