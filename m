Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1B294C0CF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 17:17:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E66960AC5;
	Thu,  8 Aug 2024 15:17:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IHoKjs2Yyc-L; Thu,  8 Aug 2024 15:17:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E00260ABD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723130236;
	bh=wdq6trebGNt7E0YMFXGWf2a0ZxVyJ2hGnRvJSAqzzTE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bgxcytXIO5iEcS1zkk5LHIIxdf6R+xQ6+r7degItBuhuTaqKDHHypu8F4PVwRaIka
	 SjSL7eqJEAZ450Jy9n2nB1uT4nTMbQ6zM53Pbr/kjzFlbdz92kqMivTIo8PrGch/KF
	 2mR4h8JmLT2h/6bowTnaDol+Kh/T6gxv6BlPuwArjUAQXX9oi54bMnJXzNX8WzU8We
	 pAJtqyrh2/vmY5U9UeeQsHAG5adxhxKyygpu5efMz2lbF8oJMH9vxMqFdvXOkS/34V
	 ECV/RiAow8E1uzeT0Fv8uFZkwJqJkAQVARPRk5omiHNlTwiUFWHSyqJQGNVpq442J8
	 +VzoTzsWvaBtw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E00260ABD;
	Thu,  8 Aug 2024 15:17:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 593C41BF291
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 15:17:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 51F97409E4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 15:17:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cr7BtBligKyf for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 15:17:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=vinschen@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6371B40553
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6371B40553
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6371B40553
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 15:17:12 +0000 (UTC)
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-120-lsdEXsXPNUihbfJf9ZPKoQ-1; Thu,
 08 Aug 2024 11:17:07 -0400
X-MC-Unique: lsdEXsXPNUihbfJf9ZPKoQ-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id E8B59195421D; Thu,  8 Aug 2024 15:17:05 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.39.192.194])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 84D6F300018D; Thu,  8 Aug 2024 15:17:05 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 12D6DA80E94; Thu,  8 Aug 2024 17:17:03 +0200 (CEST)
Date: Thu, 8 Aug 2024 17:17:03 +0200
From: Corinna Vinschen <vinschen@redhat.com>
To: christopher.s.hall@intel.com
Message-ID: <ZrThb-Agj9IW-xZi@calimero.vinschen.de>
Mail-Followup-To: christopher.s.hall@intel.com,
 intel-wired-lan@lists.osuosl.org, david.zage@intel.com,
 vinicius.gomes@intel.com, netdev@vger.kernel.org,
 rodrigo.cadore@l-acoustics.com
References: <20240807003032.10300-1-christopher.s.hall@intel.com>
 <20240807003032.10300-6-christopher.s.hall@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240807003032.10300-6-christopher.s.hall@intel.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1723130231;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=wdq6trebGNt7E0YMFXGWf2a0ZxVyJ2hGnRvJSAqzzTE=;
 b=DPzRuh+yOAdU0H0EIu96967ClvHBEPE7VMh5GdLM5eZ0qBLhwm5gM4YJ2pDaLsqmDEVrAM
 ivsNNTUKrVFrCS6qxjqSjwUxm1+to5RxZL80JRDMnYvTbNL0/12m8XDDjYH7+08oAWpTQx
 orkH+Mtq3Psz+MJ2XwxSa+XbHGHFrb0=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=DPzRuh+y
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 5/5] igc: Add lock
 preventing multiple simultaneous PTM transactions
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
Cc: vinicius.gomes@intel.com, netdev@vger.kernel.org, david.zage@intel.com,
 rodrigo.cadore@l-acoustics.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Christopher,

On Aug  6 17:30, christopher.s.hall@intel.com wrote:
> From: Christopher S M Hall <christopher.s.hall@intel.com>
> 
> Add a mutex around the PTM transaction to prevent multiple transactors
> 
> Multiple processes try to initiate a PTM transaction, one or all may
> fail. This can be reproduced by running two instances of the
> following:

I saw a former version of the patch which additionally added a mutex
lock/unlock in igc_ptp_reset() just before calling igc_ptm_trigger().
Is it safe to skip that?  igc_ptp_reset() is called from igc_reset()
which in turn is called from quite a few places.


Thanks,
Corinna

