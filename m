Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F6A6244C1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Nov 2022 15:52:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72C8A81E14;
	Thu, 10 Nov 2022 14:52:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72C8A81E14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668091922;
	bh=810kRd6JpObv5wr2spBt7vhba/NBEnK/C0LQwcDJxtU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K6cKhzvucm5kS1qUsCpiL1qaPHbAQw1YgwLGvBJoTsFyaU82+Uxjer7163/3cipea
	 pZtpu9C3lEiwb0EpL3eIHzbPvDHPEqI2kgQL2pC2GUI/Kq2Hho2qjewLEMoZYo4bkd
	 a3spVWaBXJ3ajXndPU40CYv9oaXtVBN07zc9SnIxwMVSxpUTYM/R9UgCRukS9Fuqqy
	 Sca2/pc0RVZ7G8d/9znn741O2SW8qSTPNiIQn3Ll8qelfmg5QTiIfslfTRpuyYySP6
	 gKxcOM8MiR/9CbCfX3ayIakXlkire4PhN9YEN447RRLW8BoiHSuONMGHboTR/u7Qwa
	 oiDM4bLiB4CcA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 10DBOrUjdJXQ; Thu, 10 Nov 2022 14:52:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68BC781D5F;
	Thu, 10 Nov 2022 14:52:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68BC781D5F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E13161BF39F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 14:51:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C512B402F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 14:51:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C512B402F6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mHAZWL_0MmKo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Nov 2022 14:51:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2704040289
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2704040289
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 14:51:56 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-648-fovA9puiPdCfkCA7I0Rovg-1; Thu, 10 Nov 2022 09:51:51 -0500
X-MC-Unique: fovA9puiPdCfkCA7I0Rovg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2ACFC381078F;
 Thu, 10 Nov 2022 14:51:51 +0000 (UTC)
Received: from p1.luc.cera.cz (ovpn-193-136.brq.redhat.com [10.40.193.136])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 15BAE2166B29;
 Thu, 10 Nov 2022 14:51:47 +0000 (UTC)
Date: Thu, 10 Nov 2022 15:51:47 +0100
From: Ivan Vecera <ivecera@redhat.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
Message-ID: <20221110155147.1a2c57f6@p1.luc.cera.cz>
In-Reply-To: <CO1PR11MB508996B0D00B5FE6187AF085D63E9@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20221108102502.2147389-1-ivecera@redhat.com>
 <Y2vvbwkvAIOdtZaA@unreal>
 <CO1PR11MB508996B0D00B5FE6187AF085D63E9@CO1PR11MB5089.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1668091915;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=omYoFDdizbothqM1y6x7ltgbHGFmerjPUiCe70Zk9cs=;
 b=PdRMNZ8fPY0ZfdlG1v8LYb2cDmRxKNwNQpe+ei0X68Hmtme5vNWN1j+ugI+rjm2bu1VRUe
 9YoZsG6aYcrzO1nHi1uDDB3Ed6HXP9ebQmEaE95guGcC2wbTxiBre1QgQVINvT4kF9Qzuh
 FK81Vn9eBokrgim2gX0MzjPhwqWEk7k=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=PdRMNZ8f
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: Do not restart Tx queues
 after reset task failure
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
Cc: SlawomirX Laba <slawomirx.laba@intel.com>,
 Leon Romanovsky <leon@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, "Piotrowski,
 Patryk" <patryk.piotrowski@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 "sassmann@redhat.com" <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 9 Nov 2022 20:11:55 +0000
"Keller, Jacob E" <jacob.e.keller@intel.com> wrote:

> > Sorry for my naive question, I see this pattern a lot (including RDMA),
> > so curious. Everyone checks netif_running() outside of rtnl_lock, while
> > dev_close() changes state bit __LINK_STATE_START. Shouldn't rtnl_lock()
> > placed before netif_running()?  
> 
> Yes I think you're right. A ton of people check it without the lock but I think thats not strictly safe. Is dev_close safe to call when netif_running is false? Why not just remove the check and always call dev_close then.
> 
> Thanks,
> Jake

Check for a bit value (like netif_runnning()) is much cheaper than unconditionally
taking global lock like RTNL.

Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
