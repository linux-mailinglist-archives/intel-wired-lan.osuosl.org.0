Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wKUEJzMwsGkShAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 15:52:35 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF542528D0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 15:52:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 741806079F;
	Tue, 10 Mar 2026 14:52:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RfP0nefo7lHJ; Tue, 10 Mar 2026 14:52:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECBFF60B23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773154353;
	bh=UIxw8ifz/vx6UnFqbAoU5fFu1LJG7g45kyv4F9G6+b8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=olzG44GaM1/Lv71YO2GY1IVyXDFfagz9UctXTAZGl7y9JTyNCQf/I9QYG2TO/O6by
	 uFtYjka+sIVQG4XU4M85JCKYxTstAisERivrjZxDIk6tw7neItZrsZ4z3LCd08HU6t
	 Cf1ttwMqRIgX49OeFTbnJPAUSU3ojmvhRu9XrIgIl9W1X+rEQSpZ1/gMVpBLJXyrkU
	 xAo/vyRQT6+dYw+QeZgVBMcyG7wkIBPGEH6kmBrUOS7Djw+0YtOw0ZWneAKmzBb2YH
	 QVoajkwiUKaWULiyEJbTEo23djmsMA4BAzIj7Fa9S21xOE1Hd6/O9XD4WneE8FGi7u
	 TRUx6CUNJxLdg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECBFF60B23;
	Tue, 10 Mar 2026 14:52:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 84C9535C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 14:52:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6E75D40872
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 14:52:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ecuJqkK9z_1Y for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Mar 2026 14:52:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=jramaseu@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 54D5D4086A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54D5D4086A
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 54D5D4086A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 14:52:28 +0000 (UTC)
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-663-aeIt4Q60NxWy3SkSzoovHg-1; Tue,
 10 Mar 2026 10:52:24 -0400
X-MC-Unique: aeIt4Q60NxWy3SkSzoovHg-1
X-Mimecast-MFC-AGG-ID: aeIt4Q60NxWy3SkSzoovHg_1773154343
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id ED2221800610; Tue, 10 Mar 2026 14:52:22 +0000 (UTC)
Received: from jramaseu-thinkpadt14gen5.tpbc.csb (unknown [10.43.3.226])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 1DCBA1956095; Tue, 10 Mar 2026 14:52:20 +0000 (UTC)
From: Jakub Ramaseuski <jramaseu@redhat.com>
To: aleksandr.loktionov@intel.com
Cc: anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 jramaseu@redhat.com, netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 przemyslaw.korba@intel.com
Date: Tue, 10 Mar 2026 15:52:15 +0100
Message-ID: <20260310145215.1128416-1-jramaseu@redhat.com>
In-Reply-To: <IA3PR11MB8986B891354A9AEBB0289BEEE546A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <IA3PR11MB8986B891354A9AEBB0289BEEE546A@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-MFC-PROC-ID: 2HRdvoIPftg7qPVw4uoMVIxVZ9fgJ7FnBJauiW1HTj4_1773154343
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1773154347;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UIxw8ifz/vx6UnFqbAoU5fFu1LJG7g45kyv4F9G6+b8=;
 b=K5GY5H6GWJ/lVuPf5DZ5N3AWvWU5Gq/xFYYbyJRdLMEL6ZBZiYId0qqSK9IhjspiWTKVLP
 4zYXQdOEcc8FF2qto71DoEOYQ2JgmGaEwHkrMJDtUx8myBSEo7eiPL+lSig+amiRSw7avf
 86QGb22G8QOsMnAIyRDV+r8B4kKCiPI=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=K5GY5H6G
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: enable NETIF_F_HW_CSUM
 for GSO packets
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
X-Rspamd-Queue-Id: DEF542528D0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	FORGED_SENDER(0.00)[jramaseu@redhat.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:jramaseu@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:przemyslaw.korba@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jramaseu@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

Dear Aleksandr,

> Please update commit message with exact commands for reproduction if possible.
that is sure to be done in v2, for now try

for the side acting as iperf3 server:
```
#!/bin/bash
# tunnel creation
# IPv4 addr         192.168.42.11/24
# IPv6 addr         2011::11/64
# IPv4oIP6GRE addr  192.168.44.11/24
# IPv6oIP6GRE addr  2023::11/64

ip l a gre1 type ip6gre remote 2011::12 local 2011::11 dev enp65s0f0np0
ip l s ip6tnl0 up
ip l s ip6gre0 up
ip l s gre1 up


# gre tunnel addresses
ip a a 2001:db8:1::1/64 dev gre1
ip a a 2023::11/64 dev gre1
ip a a 192.168.44.11/24 dev gre1

# device addresses
ip a a 2011::11/64 dev enp65s0f0np0
ip a a 192.168.42.11/24 dev enp65s0f0np0

iperf3 -s
```

for the side acting as iperf3 client:
```
#!/bin/bash
# tunnel creation
# IPv4 addr         192.168.42.12/24
# IPv6 addr         2011::12/64
# IPv4oIP6GRE addr  192.168.44.12/24
# IPv6oIP6GRE addr  2023::12/64

ip l a gre1 type ip6gre remote 2011::11 local 2011::12 dev enp65s0f0np0
ip l s ip6tnl0 up
ip l s ip6gre0 up
ip l s gre1 up

# gre tunnel addresses
ip a a 2001:db8:1::2/64 dev gre1
ip a a 2023::12/64 dev gre1
ip a a 192.168.44.12/24 dev gre1

# device addresses
ip a a 2011::12/64 dev enp65s0f0np0
ip a a 192.168.42.12/24 dev enp65s0f0np0

# tests with single stream
# test gre throughput
iperf3 -c 192.168.44.11 -t 20 -P 1
iperf3 -c 2023::11 -t 20 -P 1
# test normal throughput
iperf3 -c 192.168.42.11 -t 20 -P 1
iperf3 -c 2011::11 -t 20 -P 1
```
I hope this is expected answer.

Best regards,
Jakub Ramaseuski

