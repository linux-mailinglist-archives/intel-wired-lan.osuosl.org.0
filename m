Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4LAqJt8L4mkg1AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 12:30:55 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 958EA41A1F3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 12:30:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 362CB60DA8;
	Fri, 17 Apr 2026 10:30:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lOUcjAH7g8so; Fri, 17 Apr 2026 10:30:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47A0B60DA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776421852;
	bh=+Hls5wp1UWuzMI1mKYe2+ioDcWRk7O3VpaEdD4sGj5g=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ECvCraPAFZHzzCEzt11IQGBA+Syo0Euz1Qa6irKWCLn7n/F8DWeZXdnqO3HDdnbPi
	 PIirc1JikwB9g2OOSFIuoNfJLlYlqwooKF0C8ZxDXAxDOImQ9ggSbuwZfasfBphwqJ
	 iWGDEP7QEyQPRl6Ri7BneHmAyQRDvBH/K7N6ALxUBhcaUaYOfvy2eh9lv9PTNH+sIC
	 WViW53znQMxmFyrKq6nJg4n12WzS9uLu49W8oemKKqGdBySMOVXBf5MI5hJ23fuK0t
	 Oh7uwiVDm26u89NoyL905uIoRJ/vKpbJhzcEU5QbJwV8iDRp3KZMM9cd82fkQLb7d2
	 IzPY0w1ydMryg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47A0B60DA5;
	Fri, 17 Apr 2026 10:30:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id CDC53270
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 10:30:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BF966811E5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 10:30:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IQBkuKN0nuPQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2026 10:30:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=jtornosm@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9E529811E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E529811E4
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9E529811E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 10:30:48 +0000 (UTC)
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-267-qNIUl2R5Pe-oMBRDvXqfkA-1; Fri,
 17 Apr 2026 06:30:43 -0400
X-MC-Unique: qNIUl2R5Pe-oMBRDvXqfkA-1
X-Mimecast-MFC-AGG-ID: qNIUl2R5Pe-oMBRDvXqfkA_1776421842
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 0292418002D1; Fri, 17 Apr 2026 10:30:42 +0000 (UTC)
Received: from fedora.redhat.com (unknown [10.44.32.3])
 by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id E86BE180036E; Fri, 17 Apr 2026 10:30:36 +0000 (UTC)
From: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
To: jacob.e.keller@intel.com
Cc: aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com, jtornosm@redhat.com, kuba@kernel.org,
 netdev@vger.kernel.org, pabeni@redhat.com, przemyslaw.kitszel@intel.com,
 horms@kernel.org
Date: Fri, 17 Apr 2026 12:30:35 +0200
Message-ID: <20260417103035.152583-1-jtornosm@redhat.com>
In-Reply-To: <6539cc33-9294-4312-aa1b-5df311dce79f@intel.com>
References: <6539cc33-9294-4312-aa1b-5df311dce79f@intel.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-MFC-PROC-ID: Vgq6i2O23zI5WCndJj96L7628KdsuzlQpanDHvDaVzs_1776421842
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1776421847;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+Hls5wp1UWuzMI1mKYe2+ioDcWRk7O3VpaEdD4sGj5g=;
 b=XiEPUrw9hBQSznVJq02QevgWQrgdpQ48Cg2d7w48cgMTJNuCbc2k3FVF5rbTdeQj17L3Rh
 LTP3TQ7Q4gmO7V/63aU5RE0BKmH9NU+hNZc3FHilTkb3xffsBnifip2dwaw1BuesoUGtQC
 buvlIdYpHl5zZZJTT4hxsKesJ2QV0jI=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=XiEPUrw9
Subject: Re: [Intel-wired-lan] [PATCH net v3 5/5] iavf: refactor virtchnl
 polling into single function
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[jtornosm@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:jesse.brandeburg@intel.com,m:jtornosm@redhat.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:horms@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jtornosm@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 958EA41A1F3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Jacob,

> The cleanup makes sense as next material, but the other patches fix bugs
> that could (should?) still target net, right?
Yes, I think so and that is my intention.
Unless Przemek has another opinion and/or better idea and since
"iavf: add iavf_poll_virtchnl_response()" has not yet landed in any public
repository, I can include "iavf: add iavf_poll_virtchnl_response()" patch
like it is in my next version (to drop when the commented one is landed)
and in the meantime allow to progress the rest of the patches for net.
I will take into account the interesting comments from Simon and his
AI-generated review too in my next version.
If it is ok, later on I can proceed with this patch for the refactoring.

> I'll drop this version from the Intel Wired LAN patchwork then.
Ok

Thanks

Best regards
Jose Ignacio

