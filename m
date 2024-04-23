Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DBD8AE8B1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 15:53:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF27160AE4;
	Tue, 23 Apr 2024 13:53:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kHhqL1WNeUy5; Tue, 23 Apr 2024 13:53:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4EC5160895
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713880382;
	bh=D3haXJIv6HOJCEt5+nTVbMLWUYWPW0T1HtN04B0mUTg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GjYuv0WqGenCtBcRmvRB8uVOe/dfpTvKnuGyhVh6Mr/VVJAhoOTOJ9sepjzGK6lg8
	 F0hLGNHFIEiWyRWT2aQGRxMEH2QljHusL7xHtAqhFUbXPdPG5wMLSxQF5kG6cqDUm7
	 TwZYcwYMg8QU1tCEPHCZr/gXaZee593UceaJicaR2rx/w0oZg+PiWhbdflFKD1Ax09
	 cnGk4t9g6VNzeEegpDHSL/02OW6mE63uCatU+bwPwhC0JI6qwVjF97kEbEGkd9/79k
	 +SEkV07E0gkY2PXJm8eCirQxq+BJBflWEzuR8tYxLRxbHB9FxYTiAI9gx4/EvNSwHl
	 91/AelM9YIrDw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4EC5160895;
	Tue, 23 Apr 2024 13:53:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E2C7F1BF390
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 13:52:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CDBA740656
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 13:52:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r4iGXCnxSlFf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 13:52:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=vinschen@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E76E640655
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E76E640655
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E76E640655
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 13:52:58 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-421-FxKHN_3ZOiCKdnFzMlkEhw-1; Tue, 23 Apr 2024 09:52:56 -0400
X-MC-Unique: FxKHN_3ZOiCKdnFzMlkEhw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B79DE812C39;
 Tue, 23 Apr 2024 13:52:55 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.39.194.197])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7733A1121313;
 Tue, 23 Apr 2024 13:52:55 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 50474A80BA0; Tue, 23 Apr 2024 15:52:54 +0200 (CEST)
Date: Tue, 23 Apr 2024 15:52:54 +0200
From: Corinna Vinschen <vinschen@redhat.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <Zie9NggvhNuZeUYe@calimero.vinschen.de>
Mail-Followup-To: Paul Menzel <pmenzel@molgen.mpg.de>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
References: <20240423102446.901450-1-vinschen@redhat.com>
 <5d30a9df-224e-4285-94d1-53f6995d648a@molgen.mpg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5d30a9df-224e-4285-94d1-53f6995d648a@molgen.mpg.de>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1713880377;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=D3haXJIv6HOJCEt5+nTVbMLWUYWPW0T1HtN04B0mUTg=;
 b=Yzksb4MlzyEv0Kuqdsx2Ptx7bqFsMKSDMqHfsz2R2Q1miT5hsNgEY29zVvy6oc395HVnrv
 oX7nbHCh42Dr4EfMisDuzKMYoncgJB55ohF6ene1EAZRECimhf1YUrBdVAdmwiuWE3r5NZ
 CbbHUB91j3xqawxYC1NgXf1KpOU7nFc=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Yzksb4Ml
Subject: Re: [Intel-wired-lan] [PATCH] igb: cope with large MAX_SKB_FRAGS.
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Paul,

On Apr 23 13:52, Paul Menzel wrote:
> Dear Corinna,
> 
> 
> Thank you for the patch.
> 
> 
> Am 23.04.24 um 12:24 schrieb Corinna Vinschen:
> > From: Paolo Abeni <pabeni@redhat.com>
> 
> It’d be great if you removed the trailing dot/period in the commit message
> summary.
> 
> > Sabrina reports that the igb driver does not cope well with large
> > MAX_SKB_FRAG values: setting MAX_SKB_FRAG to 45 causes payload
> > corruption on TX.
> > 
> > The root cause of the issue is that the driver does not take into
> > account properly the (possibly large) shared info size when selecting
> > the ring layout, and will try to fit two packets inside the same 4K
> > page even when the 1st fraglist will trump over the 2nd head.
> > 
> > Address the issue forcing the driver to fit a single packet per page,
> > leaving there enough room to store the (currently) largest possible
> > skb_shared_info.
> 
> If you have a reproducer for this, it’d be great if you could document it in
> the commit message.

I fixed the trailing dot and added a reproducer.

Thanks,
Corinna

