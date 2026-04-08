Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4P3qMZg/1mkFCwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 13:44:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEAB3BB6A1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 13:44:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B019940E1C;
	Wed,  8 Apr 2026 11:44:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MRSppLoxK3Ra; Wed,  8 Apr 2026 11:44:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CAF040E98
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775648661;
	bh=apvxNvFh6zczRf/Be5XiSSGrUuihP4EaQpIATgjjTDg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=y6sGF6qumSa+LrvofO35vKnHIp9xb3oTOWb5bKLWpxXzqA5IjB/lXTv2+4U29a0oL
	 k9I3G5ZKpud8M5oxN5yD+MWH1YYHAlE4/DtHcyhNdoGNxM15Xl3ufoa4eKWobzIn9+
	 +yE+FyOUorLcNMNPG0iP2S+SWaR/iRNPrVniHKnoRD9rWd8bbBaGAzUzdiXhlqj4BS
	 qsDcSLkRIa+t2Hgl+yF/Nmi4SNBUAMmj0qgSZFAK2fY5ji+Jyo4JYUjqTZgSo1b/YE
	 xYNClLTjyJwUaVqBR+zXElSvjDjxeIXMagiX/ReKuTB95MJomT5xi48WmlC3FRji+n
	 la7bRJGHIeqpg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2CAF040E98;
	Wed,  8 Apr 2026 11:44:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 949391F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 11:44:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8641982299
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 11:44:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NCZrrFdBNS7r for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 11:44:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7DDFF82178
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7DDFF82178
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7DDFF82178
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 11:44:17 +0000 (UTC)
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-446-IOHacHi5N5KJHQgR41Yfdg-1; Wed,
 08 Apr 2026 07:44:13 -0400
X-MC-Unique: IOHacHi5N5KJHQgR41Yfdg-1
X-Mimecast-MFC-AGG-ID: IOHacHi5N5KJHQgR41Yfdg_1775648651
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id D3F5D18005B3; Wed,  8 Apr 2026 11:44:10 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.44.32.173])
 by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 4AD8C1800361; Wed,  8 Apr 2026 11:44:06 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, netdev@vger.kernel.org
Date: Wed,  8 Apr 2026 13:43:44 +0200
Message-ID: <cover.1775648513.git.pabeni@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-MFC-PROC-ID: HRzmk7oKQUkkZHAGXNx2y_BCWXu4IhPTaI5_XQOS8xM_1775648651
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1775648656;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=apvxNvFh6zczRf/Be5XiSSGrUuihP4EaQpIATgjjTDg=;
 b=Xmn4ySaXKCqgMSlPpwmnaEJMES23EqE+stL4oux8QPEJ5oSZPXP+ZkSxRU+/RzGvInM9AS
 Kzrs8Yb2CBB0CAxCyMSwMwXfdyJGNK0CBJr5gyRyQSNben45zj40g+nKBpoG+Ruc48Uhxo
 ly+fvDIY4tQ9wQo1ZbfaaVvRuXAYX+Y=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Xmn4ySaX
Subject: [Intel-wired-lan] [PATCH iwl-next 0/2] i40e: implement per-queue
 stats
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
X-Spamd-Result: default: False [3.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pabeni@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.998];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 3FEAB3BB6A1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The i40e driver already collects some per queue statistics, but does
not expose them to the user-space using the standard interface.

Implement the stat_ops callbacks and extends the already collected info
with basic GSO counters. Overall this allows passing the kernel NIC
drivers TSO test cases.

Paolo Abeni (2):
  i40e: implement basic per-queue stats
  i40e: keep track of per queue gso counters.

 drivers/net/ethernet/intel/i40e/i40e.h        |   9 ++
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 144 ++++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   |   8 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.h   |   2 +
 .../ethernet/intel/i40e/i40e_txrx_common.h    |   6 +-
 drivers/net/ethernet/intel/i40e/i40e_xsk.c    |   2 +-
 6 files changed, 168 insertions(+), 3 deletions(-)

-- 
2.53.0

