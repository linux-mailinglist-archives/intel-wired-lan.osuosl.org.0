Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2D4502DCC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Apr 2022 18:39:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47E2460D61;
	Fri, 15 Apr 2022 16:39:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GzAaoNkvrfx9; Fri, 15 Apr 2022 16:39:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5CE0C60D4C;
	Fri, 15 Apr 2022 16:39:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A31041BF33A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 16:38:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9DDF360D4C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 16:38:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3BRbnPqZm9zb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Apr 2022 16:38:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7FE65607A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 16:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650040732;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yY1XpQLOJF8SRfLRiRImiId98yLUwf4ACq4UfHXrlTM=;
 b=Ep+eRWJyXssOITUA3LT57x5CP/a77KNcLAJHgr0Q6fwjN1geFQAw9Em4rJ/ZSGSro/zEyX
 ODtkLjqPkhsSTnOCkdZ/jaeBQ9UAGfpHQ29xDDSzJ6TzlxkMyBwM8wRdUjyDNOUnUMlzDX
 BD/agJb5N1ri8C/7UhbKa4792xmrGcw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-448-nA3M0pSZOp6RRNd-FabZnw-1; Fri, 15 Apr 2022 12:38:48 -0400
X-MC-Unique: nA3M0pSZOp6RRNd-FabZnw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3CA6C811E7A;
 Fri, 15 Apr 2022 16:38:48 +0000 (UTC)
Received: from ceranb (unknown [10.40.194.169])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9D74A2167D68;
 Fri, 15 Apr 2022 16:38:46 +0000 (UTC)
Date: Fri, 15 Apr 2022 18:38:45 +0200
From: Ivan Vecera <ivecera@redhat.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <20220415183845.51a326fe@ceranb>
In-Reply-To: <YlldFriBVkKEgbBs@boxer>
References: <20220413072259.3189386-1-ivecera@redhat.com>
 <YlldFriBVkKEgbBs@boxer>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Protect vf_state check by
 cfg_lock in ice_vc_process_vf_msg()
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
Cc: Fei Liu <feliu@redhat.com>, netdev@vger.kernel.org, mschmidt@redhat.com,
 Brett Creeley <brett.creeley@intel.com>,
 open list <linux-kernel@vger.kernel.org>, "moderated
 list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 15 Apr 2022 13:55:02 +0200
Maciej Fijalkowski <maciej.fijalkowski@intel.com> wrote:

> On Wed, Apr 13, 2022 at 09:22:59AM +0200, Ivan Vecera wrote:
> > Previous patch labelled "ice: Fix incorrect locking in
> > ice_vc_process_vf_msg()"  fixed an issue with ignored messages  
> 
> tiny tiny nit: double space after "
> Also, has mentioned patch landed onto some tree so that we could provide
> SHA-1 of it? If not, then maybe squashing this one with the mentioned one
> would make sense?

Well, that commit were already tested and now it is present in Tony's queue
but not in upstream yet. It is not problem to squash together but the first
was about ignored VF messages and this one is about race and I didn't want
to make single patch with huge description that cover both issues.
But as I said, no problem to squash if needed.

Thx,
Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
