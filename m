Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Gd1H26U1GknvgcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Apr 2026 07:21:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0073A9E2B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Apr 2026 07:21:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6691640A5C;
	Tue,  7 Apr 2026 05:21:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v6axUWKwUJgn; Tue,  7 Apr 2026 05:21:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E15DF40854
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775539306;
	bh=J0khTmXx+mH8KMAAu7/0Jhz0WYYqPaYIpbG+MFI9hGs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TcsJLeyYngOENksfsunrFCoPG2SklV5qoeXTLaVk55gyhtdtk6qAeiDhJOOOfbsZ8
	 5mSRWqeS7qNpT+BbgPUAJmuFhKKQgVqUCSOuGC5uuu5udQqxcwa2WeoxFCh6NFaG0f
	 Ywp7JG7cSufvKoFY2aeKObKgSyyxisDaVMoDKLH6g2DAqZwS/ldRHgJCq32aG/iyrx
	 51I6MynyN8sd+t/jjrkvlOGUuP4jJS4EbcKJojr5reRlvYtsNrZ2c+WTierqg0F9tu
	 THpVk7jiw9FOP+WlxK6FFQBTLnJ5Y98thvUfjedJI4p0jhmZvrD6EL4KKEGyiTd4YS
	 EPTD8bZKWAA3w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E15DF40854;
	Tue,  7 Apr 2026 05:21:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 085651F6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2026 05:21:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EDEC380C67
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2026 05:21:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DMmuVjVpUrv0 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Apr 2026 05:21:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=jtornosm@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C9FD680C23
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9FD680C23
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C9FD680C23
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2026 05:21:42 +0000 (UTC)
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-205-8nzXMfqUMq6feDKfT0MdUQ-1; Tue,
 07 Apr 2026 01:21:36 -0400
X-MC-Unique: 8nzXMfqUMq6feDKfT0MdUQ-1
X-Mimecast-MFC-AGG-ID: 8nzXMfqUMq6feDKfT0MdUQ_1775539294
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 3729218002CB; Tue,  7 Apr 2026 05:21:34 +0000 (UTC)
Received: from fedora.redhat.com (unknown [10.44.48.48])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id E8500300019F; Tue,  7 Apr 2026 05:21:29 +0000 (UTC)
From: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
To: kohei@enjuk.jp
Cc: anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 jtornosm@redhat.com, kuba@kernel.org, netdev@vger.kernel.org,
 pabeni@redhat.com, stable@vger.kernel.org
Date: Tue,  7 Apr 2026 07:21:28 +0200
Message-ID: <20260407052128.207856-1-jtornosm@redhat.com>
In-Reply-To: <adOjGCms-5PBuNte@x1>
References: <adOjGCms-5PBuNte@x1>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-MFC-PROC-ID: C6fk3_TA8gN5HET2gbWQW7kaFcdyNrDeHmg4fmfSIe0_1775539294
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1775539301;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=J0khTmXx+mH8KMAAu7/0Jhz0WYYqPaYIpbG+MFI9hGs=;
 b=Rj9VR1Li8CxSth1DK8dezDfoNJiVSlgl4JhX7VlKZZqm3m4AZc3zYs+G7aCLDzVouP2bbV
 oJfr4Kc1oWwbQJUGd19b/SdK7v6Fe/iuiQgrMw9tOvR4F18RCQTFOs30vuz9QYS6OYvYIU
 pADp51Ixf6xzMjrFt2g0rEOlQNKS6Y8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Rj9VR1Li
Subject: Re: [Intel-wired-lan] [PATCH net 3/3] iavf: drop netdev lock while
 waiting for MAC change completion
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
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jtornosm@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:jesse.brandeburg@intel.com,m:jtornosm@redhat.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jtornosm@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 6F0073A9E2B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Kohei,

Thank you for your help and reference.
I will try to do it synchronously with the netdev lock held as you say.

Best regards
Jose Ignacio

