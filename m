Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA842630B4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Sep 2020 17:38:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0CB0885DC1;
	Wed,  9 Sep 2020 15:38:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GG8Ql1cbLXb5; Wed,  9 Sep 2020 15:38:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6020F85F11;
	Wed,  9 Sep 2020 15:38:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4BEE21BF487
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Sep 2020 15:37:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 476DF86C40
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Sep 2020 15:37:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wuQkVgrKohMt for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Sep 2020 15:37:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 01BCD86C3B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Sep 2020 15:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1599665849;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EuXDHvuAdSkUYMH4iVJeihKuXi2neB1nlUOzoXyEoh8=;
 b=fpuUpccl4CRay10/Jp1jhBa6OB7yuOZs3xW2h04Y9osVvtGqbWBADRT+78g6QXhv/zYVmF
 C3Ol7bxf8pvlCy0PoWA183Z+VqhH8N9SafH8n4ci9lM36BhgWIlR41dKc4vyVuIMsU5s8I
 F7qYQqJAVN6Apg1ELe5hOtVz5pq30LY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-18-zNQccg6MPpSbu914gkb6BQ-1; Wed, 09 Sep 2020 11:37:26 -0400
X-MC-Unique: zNQccg6MPpSbu914gkb6BQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7EAA11DDFD;
 Wed,  9 Sep 2020 15:37:24 +0000 (UTC)
Received: from carbon (unknown [10.40.208.42])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 85ECA19C78;
 Wed,  9 Sep 2020 15:37:16 +0000 (UTC)
Date: Wed, 9 Sep 2020 17:37:14 +0200
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Maxim Mikityanskiy <maximmi@nvidia.com>
Message-ID: <20200909173714.25a3ce43@carbon>
In-Reply-To: <11f663ec-5ea7-926c-370d-0b67d3052583@nvidia.com>
References: <20200904135332.60259-1-bjorn.topel@gmail.com>
 <0257f769-0f43-a5b7-176d-7c5ff8eaac3a@intel.com>
 <11f663ec-5ea7-926c-370d-0b67d3052583@nvidia.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mailman-Approved-At: Wed, 09 Sep 2020 15:38:46 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/6] xsk: exit NAPI loop when
 AF_XDP Rx ring is full
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
Cc: Maxim Mikityanskiy <maximmi@mellanox.com>, hawk@kernel.org,
 daniel@iogearbox.net, brouer@redhat.com, ast@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, kuba@kernel.org,
 bpf@vger.kernel.org, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 8 Sep 2020 13:32:01 +0300
Maxim Mikityanskiy <maximmi@nvidia.com> wrote:

>  From the driver API perspective, I would prefer to see a simpler API if 
> possible. The current API exposes things that the driver shouldn't know 
> (BPF map type), and requires XSK-specific handling. It would be better 
> if some specific error code returned from xdp_do_redirect was reserved 
> to mean "exit NAPI early if you support it". This way we wouldn't need 
> two new helpers, two xdp_do_redirect functions, and this approach would 
> be extensible to other non-XSK use cases without further changes in the 
> driver, and also the logic to opt-in the feature could be put inside the 
> kernel.

I agree.

-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
