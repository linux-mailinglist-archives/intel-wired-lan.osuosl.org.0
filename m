Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AMNbGZegH2r/oAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Jun 2026 05:33:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A090633FAD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Jun 2026 05:33:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="Wt/hmDIf";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=seu.edu.cn (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D8211615E5;
	Wed,  3 Jun 2026 03:33:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vYUv2bqdzekc; Wed,  3 Jun 2026 03:33:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5802E615E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780457618;
	bh=Tjmzo/Rh4lCuGvDyzI+1fPtCJ334F/mbAqZS1dUmmUM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Wt/hmDIfvxaYHcnDMxbqPYeAvVn9vQiQxXo4ksZBmA5UJlIBg46nZWGQ/VB55FUyK
	 JJwwiyj0YEhmqZE5HrlvIF5wxXxNWgLatK/eU6wkRQ2SfUPuFAuy2xLBZAV3SZhHLW
	 uO53V4MtenNWPtnIdSr1/6AmBLkpvED0x+k8H7S0ksHrnLeXkRnTK+wCjcFeTZmuhQ
	 E/taMj0vDNePUOPbL3Jyqif8qr1g1/G2eccrLC8Q4fkNzlL5wn35uivgtPW1Z4r2eG
	 qGvFLGPR6ujXRD/s1soaOLrN5BBYeNtB4JKuA679nJRgsjauV1e+C2wMDN92WRj67v
	 hTa6y7N0HFRmQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5802E615E1;
	Wed,  3 Jun 2026 03:33:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5F2B8D3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 03:33:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5164740704
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 03:33:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RZBAHl07c3Gz for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jun 2026 03:33:35 +0000 (UTC)
X-Greylist: delayed 305 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 03 Jun 2026 03:33:34 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 64F19403E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 64F19403E6
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.126.93.48;
 helo=mail-m9348.xmail.ntesmail.com; envelope-from=dawei.feng@seu.edu.cn;
 receiver=<UNKNOWN> 
Received: from mail-m9348.xmail.ntesmail.com (mail-m9348.xmail.ntesmail.com
 [103.126.93.48])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 64F19403E6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 03:33:33 +0000 (UTC)
Received: from DESKTOP-SUEFNF9.taila7e912.ts.net (unknown [221.228.238.82])
 by smtp.qiye.163.com (Hmail) with ESMTP id 40da5bf7e;
 Wed, 3 Jun 2026 11:28:23 +0800 (GMT+08:00)
From: Dawei Feng <dawei.feng@seu.edu.cn>
To: sln@onemain.com
Cc: aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, jianhao.xu@seu.edu.cn, zilin@seu.edu.cn,
 dawei.feng@seu.edu.cn
Date: Wed,  3 Jun 2026 11:28:22 +0800
Message-Id: <20260603032822.763195-1-dawei.feng@seu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <eb74ae1c-3027-42f5-ad5b-a6f2c2cd6a98@onemain.com>
References: <eb74ae1c-3027-42f5-ad5b-a6f2c2cd6a98@onemain.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9e8b866c3c03a2kunm3ab0b4b71d9396
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDQkgfVk1NSkNLGUIZTB9ISlYeHw
 5VEwETFhoSFyQUDg9ZV1kYEgtZQVlJSUpVSUlDVUlIQ1VDSVlXWRYaDxIVHRRZQVlPS0hVSktJSE
 5DQ1VKS0tVS1kG
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 b=CVqqJ3qggwqt7spIFygPCJqsy5Mobw6JPPgnGpJa4dpzyVX4J0T1kwFR1uTmzH9rddA3AJJVCWJzOFIAceb/T2y/Wd1sVCuBN58MlXIZAXadfBQQ8OX90T4hdX+Qqgeoy/RAMQPm03M9Z7GCGSSPYko5yTpk+tSot1omh1VC7Ew=;
 c=relaxed/relaxed; s=default; d=seu.edu.cn; v=1; 
 bh=Tjmzo/Rh4lCuGvDyzI+1fPtCJ334F/mbAqZS1dUmmUM=;
 h=date:mime-version:subject:message-id:from;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=seu.edu.cn
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=seu.edu.cn header.i=@seu.edu.cn header.a=rsa-sha256
 header.s=default header.b=CVqqJ3qg
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: fix netdev leak in
 i40e_vsi_setup() error paths
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[seu.edu.cn : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sln@onemain.com,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jianhao.xu@seu.edu.cn,m:zilin@seu.edu.cn,m:dawei.feng@seu.edu.cn,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[dawei.feng@seu.edu.cn,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dawei.feng@seu.edu.cn,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:dkim,seu.edu.cn:from_mime,seu.edu.cn:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5A090633FAD

Hi Shannon,

Thanks for the suggestion. I took a closer look at the cleanup paths, and
I think the localized v1 fix is safer here.

In particular, i40e_vsi_reinit_setup() has early failure paths that can
reach i40e_vsi_clear() before unregister_netdev() is called. Moving
free_netdev() into i40e_vsi_clear() could therefore free a
still-registered netdev.

So I plan to keep the current v1 approach for this fix, rather than moving
free_netdev() into the common VSI teardown path.

Best regards,
Dawei
