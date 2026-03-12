Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEB1KS+KsmneNQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2026 10:41:03 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 313E026FBFA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2026 10:41:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2680415DB;
	Thu, 12 Mar 2026 09:41:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V5ZpkZOtmbwK; Thu, 12 Mar 2026 09:41:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 572414167A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773308460;
	bh=iLDD1ykdoRWruNygOA/Gi52min0abqQeBslR7+2fT2A=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=S1TtgkBMLVw+AddLDqHzaKXxbb0vWpCYyER2VcovSCWHFeVwj5H4aQ2jLAgE/99lc
	 sC5HrOMPcLcVHHqqOIBguMnYEScjBraIs0aVifv91wh8L/CFR1nCucwP/4+0856pC3
	 qxrQBIuSJgm2QXKT93Y6+yTo3MicT2+s8ebIb1OUk3BNcNp7mLLwk+DsmF8R63VVKA
	 ft/7NbyrbJWWEEVbLM1UIG0/ECSNxi6/raiXo4PBLEjtS5Dqp9+BLMllMspzPtV20n
	 XTPAPfxlUIt6x3hpRXXhZH7GFSQHQgHaMl/CH+CMKEVh0Lpl3BUKFvy2S86WK4bDLD
	 V5mCEWgbSZ0Jw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 572414167A;
	Thu, 12 Mar 2026 09:41:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5869D228
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 09:40:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3EA2184AAA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 09:40:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d4NyDgKZSr9n for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Mar 2026 09:40:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=jramaseu@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3B22684AA3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B22684AA3
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3B22684AA3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 09:40:56 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-621-s1jAbPTQMMi_diXEFQCqSA-1; Thu,
 12 Mar 2026 05:40:51 -0400
X-MC-Unique: s1jAbPTQMMi_diXEFQCqSA-1
X-Mimecast-MFC-AGG-ID: s1jAbPTQMMi_diXEFQCqSA_1773308450
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 1E00A1977698; Thu, 12 Mar 2026 09:40:50 +0000 (UTC)
Received: from jramaseu-thinkpadt14gen5.tpbc.csb (unknown [10.43.3.226])
 by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 43740180058B; Thu, 12 Mar 2026 09:40:47 +0000 (UTC)
From: Jakub Ramaseuski <jramaseu@redhat.com>
To: jramaseu@redhat.com
Cc: anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 przemyslaw.korba@intel.com
Date: Thu, 12 Mar 2026 10:40:28 +0100
Message-ID: <20260312094028.1394467-1-jramaseu@redhat.com>
In-Reply-To: <20260310150557.1138437-1-jramaseu@redhat.com>
References: <20260310150557.1138437-1-jramaseu@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-MFC-PROC-ID: wiITekwRHPjO4NiyWqZOKRpX_RwYEt1yE8_5RWRXfQc_1773308450
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1773308455;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iLDD1ykdoRWruNygOA/Gi52min0abqQeBslR7+2fT2A=;
 b=HWwYmVcfASLfV8NIVUDdkloAAX2UgtIYoD/ojCTiUT7L8pAfh/pBMDc+g6AsVIYuG7ipe+
 DarfTLRi9iTV+j2nqaFhF//VhMWGb/ku2ceL9hkNgwyQJlgH17bc8uCJOf08C5VFbxV2uj
 mQAxDXVkntDBwNUslWJunZRKoExIefE=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=HWwYmVcf
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: enable
 NETIF_F_HW_CSUM for GSO packets
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jramaseu@redhat.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:przemyslaw.korba@intel.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jramaseu@redhat.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jramaseu@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 313E026FBFA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

For whom it may concern

I forgot to include Reviewed-by section that was to be copied from v1 of the patch 
(to be found here: https://lore.kernel.org/intel-wired-lan/20260310115556.1004263-1-jramaseu@redhat.com/T/#u),
sorry for the inconvenience.

Regards,
Jakub Ramaseuski

