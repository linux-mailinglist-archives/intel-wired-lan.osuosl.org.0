Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD314F17CC
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Apr 2022 17:01:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0998A827FB;
	Mon,  4 Apr 2022 15:01:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hAo2gUzClAuS; Mon,  4 Apr 2022 15:01:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 11255827F3;
	Mon,  4 Apr 2022 15:01:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 910911BF387
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Apr 2022 15:01:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8015D827F3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Apr 2022 15:01:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B-3nn3ABtYxt for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Apr 2022 15:01:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BD46B827E0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Apr 2022 15:01:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1649084495;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zWvwmcsl5+f8+r48vPP7cYhAhBsyCC2Mt4f/vFQlCB8=;
 b=gaK5T7KECuSLCosHPnLBnU09TY8pPkCPmZhm6Nbco8zi7bMsOAqhsaEBB9JyjHlK/4IkRq
 ZvVUdIdOTzFvn58psckxc2eLYmK5C6RtjTZiZaEprYCVA2qCY2JVR97OEWfEpfJrnIWVlR
 APfYIAGPKkp3zinhUoqv9mJPLfzz+hk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-298-N1elNDxvOb2xD_1ALqUWIw-1; Mon, 04 Apr 2022 11:01:32 -0400
X-MC-Unique: N1elNDxvOb2xD_1ALqUWIw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7689A811E84;
 Mon,  4 Apr 2022 15:01:31 +0000 (UTC)
Received: from ceranb (unknown [10.40.193.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 78B3B1111C8F;
 Mon,  4 Apr 2022 15:01:29 +0000 (UTC)
Date: Mon, 4 Apr 2022 17:01:28 +0200
From: Ivan Vecera <ivecera@redhat.com>
To: Alexander Lobakin <alexandr.lobakin@intel.com>
Message-ID: <20220404170128.1f8d198a@ceranb>
In-Reply-To: <20220404132832.1936529-1-alexandr.lobakin@intel.com>
References: <20220404132832.1936529-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
Subject: Re: [Intel-wired-lan] [PATCH net] ice: arfs: fix use-after-free
 when freeing @rx_cpu_rmap
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
Cc: intel-wired-lan@lists.osuosl.org, Brett Creeley <brett@pensando.io>,
 linux-kernel@vger.kernel.org, Madhu Chittim <madhu.chittim@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon,  4 Apr 2022 15:28:32 +0200
Alexander Lobakin <alexandr.lobakin@intel.com> wrote:

> The CI testing bots triggered the following splat:
> 
> ...
> This is due to that free_irq_cpu_rmap() is always being called
> *after* (devm_)free_irq() and thus it tries to work with IRQ descs
> already freed. For example, on device reset the driver frees the
> rmap right before allocating a new one (the splat above).
> Make rmap creation and freeing function symmetrical with
> {request,free}_irq() calls i.e. do that on ifup/ifdown instead
> of device probe/remove/resume. These operations can be performed
> independently from the actual device aRFS configuration.
> Also, make sure ice_vsi_free_irq() clears IRQ affinity notifiers
> only when aRFS is disabled -- otherwise, CPU rmap sets and clears
> its own and they must not be touched manually.
> 
> Fixes: 28bf26724fdb0 ("ice: Implement aRFS")
> Co-developed-by: Ivan Vecera <ivecera@redhat.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
> ---
> Netdev folks, some more urgent stuff, would like to have this in
> -net directly.
> 
> Ivan, I probably should've waited for your response regarding
> signatures, hope you'll approve this one :p Feel free to review
> and/or test.

That's ok, Alex. You did it the way I prefer :-P.
Will test.

Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
