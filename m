Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cCplAFx/8mnarwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 23:59:56 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E676349AC12
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 23:59:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 70BCC426E8;
	Wed, 29 Apr 2026 21:59:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Eg9ohZ9dA5Lu; Wed, 29 Apr 2026 21:59:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95404426EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777499992;
	bh=ckU6BlywLCQn1zkVJ+Ykqm5HURqPnfgSidoz4ywj2cE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0vdEcBfTwcE+r/WEb4pPIby3gWhjbsf6fm0Domn8VSnxn13J8Y9C9Zj56tLYlZJDZ
	 X9/wkD9Q6En+4BnD+cS5mMrRn6aGW8hQEtb/TiXl7tYbB5lrJ9xmGtL4SzqnMOIIB5
	 x1+sDvB5sorN7T3jOKGmIXFbKg2Gy2J4kJouLkkxmngKyuws3bRgvKGjBVZzMvyYbR
	 YZIBn0ra5LpvzhJq5eUVHmj+31k1EsRXVUH96KAv1dzIwWISQS2o5n+JqK2PkSczFo
	 nTuh92A5Bzy/AHhK41pUMyU5JTWOlDVEpZBuSg4YX5Cx02oZofxrPVByow46+FadjR
	 jOoiJnaRwhQpg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95404426EC;
	Wed, 29 Apr 2026 21:59:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 890F618F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 21:59:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6AB4561738
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 21:59:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QE7xePYTuhyV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 21:59:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5177E61736
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5177E61736
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5177E61736
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 21:59:49 +0000 (UTC)
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com
 [209.85.210.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-490--UCqZnXtMv2g7YVK3ZkRWw-1; Wed, 29 Apr 2026 17:59:47 -0400
X-MC-Unique: -UCqZnXtMv2g7YVK3ZkRWw-1
X-Mimecast-MFC-AGG-ID: -UCqZnXtMv2g7YVK3ZkRWw_1777499986
Received: by mail-ot1-f71.google.com with SMTP id
 46e09a7af769-7dccb22cd54so85729a34.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 14:59:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777499986; x=1778104786;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=ckU6BlywLCQn1zkVJ+Ykqm5HURqPnfgSidoz4ywj2cE=;
 b=hXS+OLk647i7ZAORUzoMR3daYDtaTk42VS4MZLflquRMqxGXFRmBWB2+p7qKPqX6J+
 xvnUXFb16gSyfIYMAmIcRi+/ZTRAjEqzY5iCEqvS53AhPr98HfkKSlpcIAfUpAheX+9V
 DYH4JvssyAoFuKgt+sv1JIf3VZef+OOeQs8xHB0E5a60aGHooipDozIUCQVS6Mhp94bH
 U9hyXx5zN76G4vLzz9E5lOxF4AB5UvUQokdovMApkEP03lLaNHwXxKG/P1zcv2/o3/vA
 QUKpuhxi32+I/Dg8sP2NUvtWq0Nj3sPPdbOI9ypxyrtakG2PhSIbzt0rNNnhlvk0dhjF
 B9cg==
X-Forwarded-Encrypted: i=1;
 AFNElJ/0N43wG2FwaBr37F0F11modbEPubEQ3+4XCJKXv6g5XP0TyPFwj3sUdYd5QF6BHZZODUOLf1LHZcdBwJZiuQI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YySYy41nOKFC/RVpZaZR3h14Y3cBGs0HCq9EksgiYQZzryXeip/
 lyUc6ehgwyRYAfuWJmSp3UNVpvEWGcEhvhKYFkj3NUgW3Y2woj6zrbvq5Jv6R4y5G5ytetpO6fE
 PO9G9IN0gKPKQJsem6Pz3h3ZCALdyJJSFhWcnu/8x5VUEj6lOXFZZqmN6HK++d0Sa07MSn/Tg/e
 oTaK39+6/4/VYFQjKcDX/9PNs4ZvED/KDQP6wItnkpaZqpPQ==
X-Gm-Gg: AeBDiesiDtye3ImUYj4vQThbhLGIcQKJsbfQywjQEXVgy7EDIcm2Pr7xlmf+q4uSRcw
 FpeWlNcMWHOHZB8VEasq0DpdcQAYnEjlTZSyzVGBMhEucN7xguu9boIySnlLcyiwieJpD6N3NvA
 ocn0Njem9FcAzg+L6PvWyXGFt1n/fN9RKUrkYP7kpqPNk7c+m5iYF+2FY9z8s6timArYEa7Uf9G
 uut8ubeDkPwrCUr
X-Received: by 2002:a05:6870:312a:b0:41c:9f58:baa4 with SMTP id
 586e51a60fabf-43433778db8mr193027fac.1.1777499986266; 
 Wed, 29 Apr 2026 14:59:46 -0700 (PDT)
X-Received: by 2002:a05:6870:312a:b0:41c:9f58:baa4 with SMTP id
 586e51a60fabf-43433778db8mr193014fac.1.1777499985793; Wed, 29 Apr 2026
 14:59:45 -0700 (PDT)
MIME-Version: 1.0
References: <20260427151827.43342-1-mschmidt@redhat.com>
 <2106884f-6914-437f-84eb-262581b9fef7@intel.com>
In-Reply-To: <2106884f-6914-437f-84eb-262581b9fef7@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Wed, 29 Apr 2026 23:59:33 +0200
X-Gm-Features: AVHnY4K7QDn2acJZ0UOfycvXxeY_tNPK4c07I89nHPRJ7kapJLnnMkA3FK5a2Bs
Message-ID: <CADEbmW0BsQsu1pPX=kk58tTz_5EArjCKgmp_MKxRFcuvb3TDGg@mail.gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: L_pj_N0kM9Kzlh4hX6OBoE7EJvoI27P5ZHJIaFHZVHo_1777499986
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1777499988;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ckU6BlywLCQn1zkVJ+Ykqm5HURqPnfgSidoz4ywj2cE=;
 b=D50oExMlXNjD8PfiiUiER9KwcqFoEs88kmbvwTgAGSLN95kk1uwwOEQmoW6O4kHPTW7dhi
 HFIYfSYFvnwec7V8uUmrVXeyacwbfWytuMT1CNASgLJ0WV9VaZp3SEJwE17kk71EYPl6DS
 H1g2txp5+2DSZfHqRxQaGNqE8lnjc1g=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=D50oExMl
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix stats array overflow
 when VF requests more queues
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: E676349AC12
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid];
	FORGED_SENDER(0.00)[mschmidt@redhat.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[mschmidt@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	RCPT_COUNT_SEVEN(0.00)[11];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]

On Tue, Apr 28, 2026 at 4:00=E2=80=AFPM Przemek Kitszel
<przemyslaw.kitszel@intel.com> wrote:
> On 4/27/26 17:18, Michal Schmidt wrote:
> > When a VF increases its queue count via VIRTCHNL_OP_REQUEST_QUEUES,
> > ice_vc_request_qs_msg() sets vf->num_req_qs and triggers a VF reset.
> > The reset calls ice_vf_reconfig_vsi(), which does ice_vsi_decfg()
> > followed by ice_vsi_cfg(). ice_vsi_decfg() does not free the per-ring
> > stats arrays. Inside ice_vsi_cfg_def(), ice_vsi_set_num_qs() updates
> > alloc_txq/alloc_rxq to the new larger value, but
> > ice_vsi_alloc_stat_arrays() returns early because the stats already
> > exist. ice_vsi_alloc_ring_stats() then iterates using the new larger
> > alloc_txq and writes beyond the bounds of the old, smaller
> > tx_ring_stats/rx_ring_stats pointer arrays, corrupting adjacent SLUB
> > metadata.
> >
>
> thank you for reproducing the bug, it is exactly the situation that
> I was facing
> have you tried with my proposed (unfortunately not public yet) fix
> to just combine ice_vsi_alloc_stat_arrays() and
> ice_vsi_realloc_stat_arrays() into one function?

I tried that now and the result is: yes, your patch fixes the bug too.
Michal

