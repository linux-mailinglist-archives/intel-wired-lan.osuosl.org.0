Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJ/KJcYWs2mDSAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2026 20:40:54 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5D6278372
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2026 20:40:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33B1280CEB;
	Thu, 12 Mar 2026 19:40:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d-ooXlgdtw_y; Thu, 12 Mar 2026 19:40:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB95F80CDC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773344450;
	bh=VQ4I1//oujMg/wMbvtHZ1fNg62i5rEhIWcPKRohhj4U=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5uRhkQIelFfQ9J+kAwDmuwr1Zh/fHmXRQdykiCTYm9qnSDS7mMZo0JF0N4JNNtXob
	 RsguF928pk8v13aMN17LnBU1TXzqKUIIrdgXSwn6SLQce0o088uBu94/5nGE9hiPUA
	 tdJNZaiBPHgF7rUgMB0PmzlWpFvh9cKWZqRHni1OBYZNMrgks2lGAdJ+O/Mp4OsKM2
	 oY32JcBWyfiiGqvaJguw7bZLD/XnX2MXCnivdlfAgsC42qcO9XxLS7vy8ucJXQVD33
	 puX8iZZ3NIGQlsyx9mzPV+rul+oEMkZutbivdLYd0c1IIODFKkAmlOSi3YVuPjWg/p
	 uCBJXpXA5xPdw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB95F80CDC;
	Thu, 12 Mar 2026 19:40:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 069A3282
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 19:40:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EC52C407BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 19:40:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HsEbmpP2onRZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Mar 2026 19:40:48 +0000 (UTC)
X-Greylist: delayed 419 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 12 Mar 2026 19:40:47 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 82239407B3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82239407B3
Received-SPF: Permerror (mailfrom) identity=mailfrom; client-ip=116.203.167.152;
 helo=lithops.sigma-star.at; envelope-from=richard@nod.at; receiver=<UNKNOWN> 
Received: from lithops.sigma-star.at (mailout.nod.at [116.203.167.152])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 82239407B3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 19:40:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 4DE582C14A8;
 Thu, 12 Mar 2026 20:33:44 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id yCwNT8mwVvHB; Thu, 12 Mar 2026 20:33:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 8A34D2C14AA;
 Thu, 12 Mar 2026 20:33:43 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 3HN7guaAFMsE; Thu, 12 Mar 2026 20:33:43 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id ABF4A2C14A6;
 Thu, 12 Mar 2026 20:33:42 +0100 (CET)
Date: Thu, 12 Mar 2026 20:33:42 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Philipp Hahn <phahn-oss@avm.de>
Cc: amd-gfx <amd-gfx@lists.freedesktop.org>, 
 apparmor <apparmor@lists.ubuntu.com>, bpf <bpf@vger.kernel.org>, 
 ceph-devel <ceph-devel@vger.kernel.org>, cocci <cocci@inria.fr>, 
 dm-devel@lists.linux.dev, 
 DRI mailing list <dri-devel@lists.freedesktop.org>, 
 gfs2 <gfs2@lists.linux.dev>, intel-gfx <intel-gfx@lists.freedesktop.org>, 
 intel-wired-lan@lists.osuosl.org, iommu@lists.linux.dev, 
 kvm@vger.kernel.org, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 linux-block <linux-block@vger.kernel.org>, 
 linux-bluetooth@vger.kernel.org, 
 linux-btrfs <linux-btrfs@vger.kernel.org>, 
 linux-cifs <linux-cifs@vger.kernel.org>, linux-clk@vger.kernel.org, 
 linux-erofs <linux-erofs@lists.ozlabs.org>, 
 linux-ext4 <linux-ext4@vger.kernel.org>, 
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, 
 linux-gpio@vger.kernel.org, linux-hyperv <linux-hyperv@vger.kernel.org>, 
 linux-input@vger.kernel.org, linux-kernel <linux-kernel@vger.kernel.org>, 
 linux-leds@vger.kernel.org, linux-media <linux-media@vger.kernel.org>, 
 linux-mips <linux-mips@vger.kernel.org>, 
 linux-mm <linux-mm@kvack.org>, linux-modules@vger.kernel.org, 
 linux-mtd <linux-mtd@lists.infradead.org>, 
 linux-nfs <linux-nfs@vger.kernel.org>, 
 linux-omap <linux-omap@vger.kernel.org>, 
 linux-phy@lists.infradead.org, linux-pm <linux-pm@vger.kernel.org>, 
 linux-rockchip <linux-rockchip@lists.infradead.org>, 
 linux-s390 <linux-s390@vger.kernel.org>, 
 linux-scsi <linux-scsi@vger.kernel.org>, linux-sctp@vger.kernel.org, 
 LSM <linux-security-module@vger.kernel.org>, 
 linux-sh <linux-sh@vger.kernel.org>, 
 linux-sound <linux-sound@vger.kernel.org>, 
 linux-stm32 <linux-stm32@st-md-mailman.stormreply.com>, 
 linux-trace-kernel <linux-trace-kernel@vger.kernel.org>, 
 linux-usb@vger.kernel.org, 
 linux-wireless <linux-wireless@vger.kernel.org>, 
 netdev <netdev@vger.kernel.org>, ntfs3 <ntfs3@lists.linux.dev>, 
 samba-technical <samba-technical@lists.samba.org>, 
 sched-ext@lists.linux.dev, target-devel@vger.kernel.org, 
 tipc-discussion@lists.sourceforge.net, v9fs <v9fs@lists.linux.dev>, 
 Miquel Raynal <miquel.raynal@bootlin.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <1584421372.26258.1773344022512.JavaMail.zimbra@nod.at>
In-Reply-To: <20260310-b4-is_err_or_null-v1-48-bd63b656022d@avm.de>
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
 <20260310-b4-is_err_or_null-v1-48-bd63b656022d@avm.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF148
 (Linux)/8.8.12_GA_3809)
Thread-Topic: Prefer IS_ERR_OR_NULL over manual NULL check
Thread-Index: 0l8CyewQmrWlgaG6N3QgQFfukutRbA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=nod.at
Subject: Re: [Intel-wired-lan] [PATCH 48/61] mtd: Prefer IS_ERR_OR_NULL over
 manual NULL check
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
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:phahn-oss@avm.de,m:amd-gfx@lists.freedesktop.org,m:apparmor@lists.ubuntu.com,m:bpf@vger.kernel.org,m:ceph-devel@vger.kernel.org,m:cocci@inria.fr,m:dm-devel@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:gfs2@lists.linux.dev,m:intel-gfx@lists.freedesktop.org,m:iommu@lists.linux.dev,m:kvm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-block@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-btrfs@vger.kernel.org,m:linux-cifs@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-erofs@lists.ozlabs.org,m:linux-ext4@vger.kernel.org,m:linux-fsdevel@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:linux-hyperv@vger.kernel.org,m:linux-input@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-leds@vger.kernel.org,m:linux-media@vger.kernel.org,m:linux-mips@vger.kernel.org,m:linux-mm@kvack.org,m:linux-modules@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:linux-nfs@vger.kernel.org,m:linux-omap@vger.kernel.org,m:linux-phy@lists.infradead.o
 rg,m:linux-pm@vger.kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-s390@vger.kernel.org,m:linux-scsi@vger.kernel.org,m:linux-sctp@vger.kernel.org,m:linux-security-module@vger.kernel.org,m:linux-sh@vger.kernel.org,m:linux-sound@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-trace-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:netdev@vger.kernel.org,m:ntfs3@lists.linux.dev,m:samba-technical@lists.samba.org,m:sched-ext@lists.linux.dev,m:target-devel@vger.kernel.org,m:tipc-discussion@lists.sourceforge.net,m:v9fs@lists.linux.dev,m:miquel.raynal@bootlin.com,m:vigneshr@ti.com,s:lists@lfdr.de];
	DMARC_NA(0.00)[nod.at];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[richard@nod.at,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[12];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[richard@nod.at,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[56];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	HAS_XOIP(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[avm.de:email,nod.at:mid,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 8A5D6278372
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

----- Urspr=C3=BCngliche Mail -----
> Von: "Philipp Hahn" <phahn-oss@avm.de>
> -=09if (gpiomtd->nwp && !IS_ERR(gpiomtd->nwp))
> +=09if (!IS_ERR_OR_NULL(gpiomtd->nwp))

No, please don't.

This makes reading the code not easier.

Thanks,
//richard
