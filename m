Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GqmFKwUtOmpx3QcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2026 08:51:49 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5AE6B4A4A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2026 08:51:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=XemidTFE;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=redhat.com (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD61E607EA;
	Tue, 23 Jun 2026 06:51:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9oJCB8WIok1s; Tue, 23 Jun 2026 06:51:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03D00607F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782197506;
	bh=x8TJwUtC+G+n+qNyQWu0ehmMk+LBRSH9bQBQaUoR0T0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XemidTFEtLNbRGl6MBinndQnuffe2qNvxmFu1J1GvhH2tcwJyqFWplanoyAOg51t2
	 lQ7Q8W+DXo2Dyo+02o6M2UukF311pKm87YIbEwpc2HPBSzbgr4k10cIiP0MoM8T6pP
	 7QpWbKujQxTsinTSe9URGLobna72+gfFUtLq+COZRhl+unVUBL5qdn+/deQR0F1/Or
	 dinUVzXS3VFeeHqGvcL+/2WJroGUifsRIVDHS9x3MsSaY3e7pOnrhxAHxdYRvVZlIu
	 ThQvJQ0cN7joW9MHZq7pPHeTlZJCwNDJoDL2kGVbv8Vp7AigGV98C6hpvdUVZn8pxg
	 17+78rtey6YhA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03D00607F5;
	Tue, 23 Jun 2026 06:51:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 16BE6256
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2026 06:51:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F1444401D6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2026 06:51:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZwUoCMmdBukl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jun 2026 06:51:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=jtornosm@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DF2F64019E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF2F64019E
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DF2F64019E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2026 06:51:42 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-111-zoNZJuxdNRquAp2fEwsbbQ-1; Tue,
 23 Jun 2026 02:51:38 -0400
X-MC-Unique: zoNZJuxdNRquAp2fEwsbbQ-1
X-Mimecast-MFC-AGG-ID: zoNZJuxdNRquAp2fEwsbbQ_1782197496
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 0A1911956041; Tue, 23 Jun 2026 06:51:36 +0000 (UTC)
Received: from fedora.redhat.com (unknown [10.44.48.11])
 by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id C0C551800591; Tue, 23 Jun 2026 06:51:31 +0000 (UTC)
From: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
To: przemyslaw.kitszel@intel.com
Cc: aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com,
 jtornosm@redhat.com, kuba@kernel.org, netdev@vger.kernel.org,
 pabeni@redhat.com, stable@vger.kernel.org
Date: Tue, 23 Jun 2026 08:51:29 +0200
Message-ID: <20260623065130.600628-1-jtornosm@redhat.com>
In-Reply-To: <55f9e2af-54fb-4257-af25-dc9c0fbeb72c@intel.com>
References: <55f9e2af-54fb-4257-af25-dc9c0fbeb72c@intel.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-MFC-PROC-ID: c5HHgzdM1lLUvIBzQcN09NfjdEoWzBfvuZmlVDP3L0Q_1782197496
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1782197501;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=x8TJwUtC+G+n+qNyQWu0ehmMk+LBRSH9bQBQaUoR0T0=;
 b=FWdk4FYslAe1lXIqYulk4tHPgN97ECbFyrqFMQLf5c/ozvMt3p1JiH4Q0C08g2gFjBcUXL
 vKRmJe4lLa0fCeHBG2GK847LGWgksOY83R8+04YFRxxZl09Uvkj3YU/1loek5I+jTcc9jc
 FRFvx4WwyY/yQ/qby/KQEU+8L68w4yU=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=FWdk4FYs
Subject: Re: [Intel-wired-lan] [PATCH net v6 3/4] iavf: send MAC change
 request synchronously
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jtornosm@redhat.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:jtornosm@redhat.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jtornosm@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9D5AE6B4A4A

Hello,

Thank you for catching this.
You're absolutely right - the loop can't work without polling between
iterations since the second call would hit the current_op check and
return -EBUSY. I will remove the multi-batch loop and revert this to
v5's approach.

v7 will be posted shortly with these changes.

Thanks

Best regards
José Ignacio

