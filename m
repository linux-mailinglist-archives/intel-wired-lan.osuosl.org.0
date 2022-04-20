Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B4350A13A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Apr 2022 15:52:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C50244181E;
	Thu, 21 Apr 2022 13:52:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FrwjWIJMk0nE; Thu, 21 Apr 2022 13:52:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9320941826;
	Thu, 21 Apr 2022 13:52:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C921A1BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 13:59:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C40E2419D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 13:59:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JtBjUZ8JhyGu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Apr 2022 13:59:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E46B5419AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 13:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650463187;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xewWLGBcG8dHgswyIv2NuZkpaqNP0UWMUaLbL99xqXA=;
 b=cUVgCs4fZRMGIzjJt6DSHO4yXz6FfvYdAF0RYsyawcy00n1TgoUjsrfW8NwwHU3XzxRQJp
 +TYvP0mg5A2cPpMqb7WfhduJzzLp4hlF4gqNC1f1ZUN5OSwv7P3qTcuyQs7hzilgDFk4aN
 uKUgLt0MyBVtq9w2+yIPf4nKP5RizGc=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-403-GzeDN8yDMNaKI7wzV_ZB4Q-1; Wed, 20 Apr 2022 09:59:46 -0400
X-MC-Unique: GzeDN8yDMNaKI7wzV_ZB4Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 402223C025C4;
 Wed, 20 Apr 2022 13:59:45 +0000 (UTC)
Received: from ceranb (unknown [10.40.194.169])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1A35140CFD0A;
 Wed, 20 Apr 2022 13:59:42 +0000 (UTC)
Date: Wed, 20 Apr 2022 15:59:42 +0200
From: Ivan Vecera <ivecera@redhat.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20220420155942.545b7f58@ceranb>
In-Reply-To: <Yl+p+7C7JQDj1jt1@unreal>
References: <20220414163907.1456925-1-ivecera@redhat.com>
 <CADEbmW3eUAnvn4gvNxqjCMmO333-=OdObGhDXkrTbDwn0YkJDw@mail.gmail.com>
 <20220415174932.6c85d5ab@ceranb> <Yl+p+7C7JQDj1jt1@unreal>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-Mailman-Approved-At: Thu, 21 Apr 2022 13:52:15 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix race during aux device
 (un)plugging
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
 open list  <linux-kernel@vger.kernel.org>"@osuosl.org, netdev@vger.kernel.org,
 Michal Schmidt <mschmidt@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Shiraz Saleem <shiraz.saleem@intel.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 20 Apr 2022 09:36:43 +0300
Leon Romanovsky <leon@kernel.org> wrote:

> > ice_send_event_to_aux() takes aux device lock. ice_unplug_aux_dev()
> > calls auxiliary_device_delete() that calls device_del(). device_del()
> > takes device_lock() prior kill_device(). So if ice_send_event_to_aux()
> > is in progress then device_del() waits for its completion.  
> 
> Not really, you nullify pf->adev without any lock protection and
> ice_send_event_to_aux() will simply crash.
> 
>  CPU#1          	|   CPU#2
> 			| ice_send_event_to_aux
>  ice_unplug_aux_dev()   | ...
>  ...                    | 
>  pf->adev = NULL;       | 
>       			| device_lock(&pf->adev->dev); <--- crash here.
> 
> Thanks

You are right, the window is very tiny but it's still there.
Will send v2.

Thanks,
Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
