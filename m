Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC85C4EB2FC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Mar 2022 19:55:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46324416C3;
	Tue, 29 Mar 2022 17:55:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vBublE3sF1v7; Tue, 29 Mar 2022 17:55:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B6D2415BE;
	Tue, 29 Mar 2022 17:55:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B47651BF34A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Mar 2022 17:55:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A2C4361004
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Mar 2022 17:55:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JIoK6AJrrqJ2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Mar 2022 17:55:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BD95960BD8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Mar 2022 17:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1648576531;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kGMPBJ//O6psjBzV1vVr4GcYMJAivjV7NQg3N1Zfl8Y=;
 b=Cd82R2C0YPzyHM+8S+NAzSLJCUlCav66xWoQmY0b82enRwEqiHmj6rVvBFPfCm1pH0yzH2
 /g5iSi5pEC3iAdt91JrzmGulGgYMcOETkh8L9IwDtOUnu3qIXeU+FieRn4FedrV8C5+Xw5
 VFGbhZp2PpmQvIKT+AAmDNv+CFYJA3g=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-592--kr4w_ZuMVKcTYXJskxZ_Q-1; Tue, 29 Mar 2022 13:55:28 -0400
X-MC-Unique: -kr4w_ZuMVKcTYXJskxZ_Q-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 26A4D899ED4;
 Tue, 29 Mar 2022 17:55:27 +0000 (UTC)
Received: from ceranb (unknown [10.40.192.65])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B2258401E2A;
 Tue, 29 Mar 2022 17:55:23 +0000 (UTC)
Date: Tue, 29 Mar 2022 19:55:22 +0200
From: Ivan Vecera <ivecera@redhat.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <20220329195522.63d332fb@ceranb>
In-Reply-To: <YkL0wfgyCq5s8vdu@boxer>
References: <20220329102752.1481125-1-ivecera@redhat.com>
 <YkL0wfgyCq5s8vdu@boxer>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix logic of getting XSK
 pool associated with Tx queue
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
Cc: Song Liu <songliubraving@fb.com>,
 Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Yonghong Song <yhs@fb.com>,
 Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 mschmidt@redhat.com, KP Singh <kpsingh@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, poros@redhat.com,
 "open list:XDP \(eXpress Data Path\)" <bpf@vger.kernel.org>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 29 Mar 2022 14:00:01 +0200
Maciej Fijalkowski <maciej.fijalkowski@intel.com> wrote:

> Thanks for this fix! I did exactly the same patch yesterday and it's
> already applied to bpf tree:
> 
> https://lore.kernel.org/bpf/20220328142123.170157-5-maciej.fijalkowski@intel.com/T/#u
> 
> Maciej

Thanks for info... Nice human race condition ;-)

I.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
