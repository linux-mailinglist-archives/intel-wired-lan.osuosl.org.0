Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KOhdLVjO02lpmQcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Apr 2026 17:16:40 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4F83A4A33
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Apr 2026 17:16:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F9D580B1E;
	Mon,  6 Apr 2026 15:16:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gQIrysmPNdr4; Mon,  6 Apr 2026 15:16:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FF4680B32
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775488597;
	bh=OHB5rvbHOIfZdqV/Ia+WSfXX4qz29mspQuLK0d1ndu0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=K8hIBai0QrqgaHk34+aRFFPo3UlgGEo3Dhjffzkg8io5pMDtFNG0L/ZB1xuIOvq7P
	 T5tLpd1fhBBPGSLj2MXKgiZDKfDLBkV7LjpfHwS1QrLAx3rGQky5hiyEw4d+ZN1pUQ
	 +ls3kfr/EoDvcQzT1dAux1xmSWE+aFo6+yCtiGE1qEyNedXOjOB/MG15J106PO8aSv
	 PF9jfQeNm8EpAaFND5bu/G3CoqMYu3Kpt+aS9F8fI2qBuBF/rKbAohVozmkLVQaUyC
	 //CTRyQ7Z8IpnVMvHHve2yrvFru/r2k3ctMWWO07Ncs/uscUlJPAEpQah2t1xzAOAu
	 ESPk6KQL7ITfg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0FF4680B32;
	Mon,  6 Apr 2026 15:16:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2F59A219
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2026 11:21:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 73D8540818
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2026 11:21:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YqA9cG4dNuoY for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Apr 2026 11:21:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=jtornosm@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DDC324081D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDC324081D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DDC324081D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2026 11:21:12 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-645-SUbSvAxUOHO4dA-ObDbbDA-1; Mon,
 06 Apr 2026 07:21:08 -0400
X-MC-Unique: SUbSvAxUOHO4dA-ObDbbDA-1
X-Mimecast-MFC-AGG-ID: SUbSvAxUOHO4dA-ObDbbDA_1775474467
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id B449819560A7; Mon,  6 Apr 2026 11:21:06 +0000 (UTC)
Received: from fedora.redhat.com (unknown [10.44.48.51])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id D7510300019F; Mon,  6 Apr 2026 11:21:02 +0000 (UTC)
From: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
Date: Mon,  6 Apr 2026 13:20:54 +0200
Message-ID: <20260406112057.906685-1-jtornosm@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-MFC-PROC-ID: jnDYR0FvI3-sHCLX1TsmXLpdbLGt4O2AkfjUlWNTbw4_1775474467
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Approved-At: Mon, 06 Apr 2026 15:16:35 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1775474471;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=OHB5rvbHOIfZdqV/Ia+WSfXX4qz29mspQuLK0d1ndu0=;
 b=fMqPdyiSE02lpD7QnGCDK5MgaQ4sq1JBAOrxTKOxKIcVsCjfSJccnkIhohUWHfdfD64X3Y
 V9mZxt8+UuPv+fRWxPTOSfUHiUepsgYHnBa2AaBAWXvnB7z18ew7xzOTn7n4KH4xrz7T7+
 9eOaaIWMDb6wVD5Mu+i9f4ShTFMrjcg=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=fMqPdyiS
Subject: [Intel-wired-lan] [PATCH net 0/3] Fix i40e/iavf VF bonding after
 netdev lock changes
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
X-Spamd-Result: default: False [9.79 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:dkim];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:jesse.brandeburg@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jtornosm@redhat.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	FORGED_SENDER(0.00)[jtornosm@redhat.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jtornosm@redhat.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	R_SPF_ALLOW(0.00)[+mx];
	NEURAL_SPAM(0.00)[0.526];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: AE4F83A4A33
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

This series fixes VF bonding failures introduced by commit ad7c7b2172c3
("net: hold netdev instance lock during sysfs operations").

The core issue is lock contention: iavf_set_mac() is now called with the
netdev lock held and waits for MAC change completion while holding it.
However, the watchdog task that processes the request also needs this lock,
creating a deadlock scenario where the watchdog cannot run, causing
timeouts.

Additionally, setting VF trust triggers an unnecessary ~10 second VF reset
that delays bonding setup, even though filter synchronization happens
naturally during normal VF operation.

This series:
1. Adds safety guard to avoid waiting with locks during reset
2. Eliminates unnecessary VF reset when setting trust (major performance
   win)
3. Fixes the lock contention by dropping the lock while waiting

Testing shows VF bonding now works reliably in ~5 seconds vs 15+ seconds
before, without timeouts or errors.

Tested on Intel 700-series dual-port NIC (i40e) with iavf driver.

Thanks to Jan Tluka <jtluka@redhat.com> for reporting the issue.

Jose Ignacio Tornos Martinez (3):
  iavf: return EBUSY if reset in progress during MAC change
  i40e: skip unnecessary VF reset when setting trust
  iavf: drop netdev lock while waiting for MAC change completion

 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 12 +++++++-----
 drivers/net/ethernet/intel/iavf/iavf_main.c        | 14 ++++++++++++++
 2 files changed, 21 insertions(+), 5 deletions(-)

--
2.43.0

