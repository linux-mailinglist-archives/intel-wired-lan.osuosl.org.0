Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FUREgKCuGltfAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 23:19:46 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE2B2A164F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 23:19:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DBE73612C8;
	Mon, 16 Mar 2026 22:19:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xLtH47wT8-Ha; Mon, 16 Mar 2026 22:19:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 138F1612CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773699581;
	bh=pZj8f0JboyjKt94J8KB7OLIiCOoml43GOZ4w8rDpLPA=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lwy/AozYnRlE0z08PUMFEEbe35SX8PGbzaUjZjIQO+oxPQ0rofoO/n6fu7idI7RnC
	 /Vy1wDyBOAC2SYiL1mqCRc3xW/p8Bd/p6eWMoAaSFQlbZgeFBpmrExGAcQZ+EvqAfL
	 xvP/Hgn3eZ+IjdlBB1nxjMkPIEUm29c9z66xK0CKk3u2zdZdQMbFfzBW+Y47VB3Gyn
	 Nh76Q1hrUx5zVcpqXrlEHAuW/UonHJKr80BFaH/kr9sxLES8InYJy2VzY9TeiZU069
	 NCkuliDf0YY0OlYZsO9NELPvQ2RHvR0Ib+FYCa9JftSNI+iJVjmuwuUUvLiZEijcU6
	 D/a79q0CaZnDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 138F1612CA;
	Mon, 16 Mar 2026 22:19:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5591C3C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 22:16:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 52D0E409B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 22:16:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QbijVchIwfhQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2026 22:16:13 +0000 (UTC)
X-Greylist: delayed 316 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 16 Mar 2026 22:16:13 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3FB7D40087
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3FB7D40087
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.168.172.138;
 helo=flow-a3-smtp.messagingengine.com; envelope-from=alex@shazbot.org;
 receiver=<UNKNOWN> 
Received: from flow-a3-smtp.messagingengine.com
 (flow-a3-smtp.messagingengine.com [103.168.172.138])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3FB7D40087
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 22:16:13 +0000 (UTC)
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
 by mailflow.phl.internal (Postfix) with ESMTP id 96E81138028E;
 Mon, 16 Mar 2026 18:10:56 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-01.internal (MEProxy); Mon, 16 Mar 2026 18:10:56 -0400
X-ME-Sender: <xms:73-4aYdtUUIQC679P0YPl8k6UZ10Tz8-qTD319yDZEtXusdBhZuXRA>
 <xme:73-4aTUav9FvduIIOmc0jldmINr5W_MhUsWQFGzP1fBm1dpf8ggOxSMvCMHniLmCu
 LbRPk360ujIo39hLA6fsP95YlnCLki5WcrUsiuRyEwh6NcxWlxF>
X-ME-Received: <xmr:73-4aSY56rJyFtQwMFw-H9dfM29zbbMWxWkWrpi3kYaZ1kbqDyXdf5bHU5U>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvleelheegucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfgjfhfogggtgfesthejre
 dtredtvdenucfhrhhomheptehlvgigucghihhllhhirghmshhonhcuoegrlhgvgiesshhh
 rgiisghothdrohhrgheqnecuggftrfgrthhtvghrnhepvdekfeejkedvudfhudfhteekud
 fgudeiteetvdeukedvheetvdekgfdugeevueeunecuvehluhhsthgvrhfuihiivgeptden
 ucfrrghrrghmpehmrghilhhfrhhomheprghlvgigsehshhgriigsohhtrdhorhhgpdhnsg
 gprhgtphhtthhopeehhedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepphhhrghh
 nhdqohhsshesrghvmhdruggvpdhrtghpthhtoheprghmugdqghhfgieslhhishhtshdrfh
 hrvggvuggvshhkthhophdrohhrghdprhgtphhtthhopegrphhprghrmhhorheslhhishht
 shdruhgsuhhnthhurdgtohhmpdhrtghpthhtohepsghpfhesvhhgvghrrdhkvghrnhgvlh
 drohhrghdprhgtphhtthhopegtvghphhdquggvvhgvlhesvhhgvghrrdhkvghrnhgvlhdr
 ohhrghdprhgtphhtthhopegtohgttghisehinhhrihgrrdhfrhdprhgtphhtthhopegumh
 dquggvvhgvlheslhhishhtshdrlhhinhhugidruggvvhdprhgtphhtthhopegurhhiqdgu
 vghvvghlsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhgpdhrtghpthhtohepgh
 hfshdvsehlihhsthhsrdhlihhnuhigrdguvghv
X-ME-Proxy: <xmx:73-4aQltNdDVIdEqvCmz7Mlt0qW50NA4CHgJQUMNlacMN4MGiVKHfA>
 <xmx:73-4acHdFw15OLpR73_B1AdIXJMG-pYssiD_C0T2dj2N-8ux7fVHFg>
 <xmx:73-4aU6P6J2BtdvPwSPzfrUNjz9-qYacHOOWBucSAMlha23fXDTcIg>
 <xmx:73-4aaO5YEqAXlnOLRO88GZx1RbxPW8QtXAeqZQNaqmxlgOL7PgFkQ>
 <xmx:8H-4abIvs_QYur641c9BpnDuFQ6ssCC-7-o-rPLEHWyRxStBDxJEr6SL>
Feedback-ID: i03f14258:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 16 Mar 2026 18:10:52 -0400 (EDT)
Date: Mon, 16 Mar 2026 16:10:50 -0600
From: Alex Williamson <alex@shazbot.org>
To: Philipp Hahn <phahn-oss@avm.de>
Cc: amd-gfx@lists.freedesktop.org, apparmor@lists.ubuntu.com,
 bpf@vger.kernel.org, ceph-devel@vger.kernel.org, cocci@inria.fr,
 dm-devel@lists.linux.dev, dri-devel@lists.freedesktop.org,
 gfs2@lists.linux.dev, intel-gfx@lists.freedesktop.org,
 intel-wired-lan@lists.osuosl.org, iommu@lists.linux.dev,
 kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-block@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-cifs@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-erofs@lists.ozlabs.org,
 linux-ext4@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-input@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-leds@vger.kernel.org, linux-media@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mm@kvack.org,
 linux-modules@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-nfs@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org,
 linux-security-module@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-sound@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-trace-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 ntfs3@lists.linux.dev, samba-technical@lists.samba.org,
 sched-ext@lists.linux.dev, target-devel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, v9fs@lists.linux.dev,
 alex@shazbot.org
Message-ID: <20260316161050.01c82973@shazbot.org>
In-Reply-To: <20260310-b4-is_err_or_null-v1-46-bd63b656022d@avm.de>
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
 <20260310-b4-is_err_or_null-v1-46-bd63b656022d@avm.de>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 16 Mar 2026 22:19:40 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shazbot.org; h=
 cc:cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm3; t=1773699056;
 x=1773706256; bh=pZj8f0JboyjKt94J8KB7OLIiCOoml43GOZ4w8rDpLPA=; b=
 eyO5nsRGgscBaSPTlSrjx8D8qsmxFZTD+YBT90C8JLtkSU+JG9otBsGP68/aDjfq
 Ip8/CY7pDqj8uLfl6tk9PaoCLmHFx9BmC+OLDsgQIKz5wruWwvglBIFTzX8Bgo1G
 D7tyDhfcq/yYvbxAZYbPlVlov+W1BUQwVVZx34myYfSzzczy+o0TvO2AJR+dEy1d
 h9Fy4zA0IHy3AyAu2lJw7cTPeRVsoH7Q9DZJUhPGVmEq8IZ5byXvr46eUf3RwYLV
 Pd21rN+O2sxo21UD0KoApMpHYwnhY5vI1CKlHqs6nb1Q0ON5mjBcz18/WvPyI4M2
 g7ed/wORmv3aHNEvlM9NEQ==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1773699056; x=
 1773706256; bh=pZj8f0JboyjKt94J8KB7OLIiCOoml43GOZ4w8rDpLPA=; b=g
 uCypQjfxr+Zi7JxdTC/p3wGQ4VV0q/Wv3rf4QuOSSvRwPZ4hwWoKXSQwRlJppx/A
 eTD/kX8ytMBkqeeAHXi8QojGoDJPwhemKEl1A5BQyy+VTfQ0kjCklEhRU0D9TNU6
 QzoouUhJdY7Fi24kVLMS4vkfF5Xif+sxcGuZ+ZH9bmNOAZhg/6jHFnuxjrIUYo4Y
 sJAjmQ/c58h+MsTVokuL8c2t4xBbVGwnTgXIvKplEwnaY81NNzKXbPGa+zPU58N/
 vwQ/zZfUYT5zYdyXfBWrfC5sZSkqzhpuD1WACxXIM/TD7Jh2N1ZXy8qS+O1DtSBY
 h24uS6YuZ9c79L+rKNYRA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=shazbot.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=shazbot.org
 header.i=@shazbot.org header.a=rsa-sha256 header.s=fm3 header.b=eyO5nsRG; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm1 header.b=guCypQjf
Subject: Re: [Intel-wired-lan] [PATCH 46/61] vfio: Prefer IS_ERR_OR_NULL
 over manual NULL check
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
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[shazbot.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:phahn-oss@avm.de,m:amd-gfx@lists.freedesktop.org,m:apparmor@lists.ubuntu.com,m:bpf@vger.kernel.org,m:ceph-devel@vger.kernel.org,m:cocci@inria.fr,m:dm-devel@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:gfs2@lists.linux.dev,m:intel-gfx@lists.freedesktop.org,m:iommu@lists.linux.dev,m:kvm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-block@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-btrfs@vger.kernel.org,m:linux-cifs@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-erofs@lists.ozlabs.org,m:linux-ext4@vger.kernel.org,m:linux-fsdevel@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:linux-hyperv@vger.kernel.org,m:linux-input@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-leds@vger.kernel.org,m:linux-media@vger.kernel.org,m:linux-mips@vger.kernel.org,m:linux-mm@kvack.org,m:linux-modules@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:linux-nfs@vger.kernel.org,m:linux-omap@vger.kernel.org,m:linux-phy@lists.infradead.o
 rg,m:linux-pm@vger.kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-s390@vger.kernel.org,m:linux-scsi@vger.kernel.org,m:linux-sctp@vger.kernel.org,m:linux-security-module@vger.kernel.org,m:linux-sh@vger.kernel.org,m:linux-sound@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-trace-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:netdev@vger.kernel.org,m:ntfs3@lists.linux.dev,m:samba-technical@lists.samba.org,m:sched-ext@lists.linux.dev,m:target-devel@vger.kernel.org,m:tipc-discussion@lists.sourceforge.net,m:v9fs@lists.linux.dev,m:alex@shazbot.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[alex@shazbot.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_GT_50(0.00)[55];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alex@shazbot.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: ACE2B2A164F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 10 Mar 2026 12:49:12 +0100
Philipp Hahn <phahn-oss@avm.de> wrote:

> Prefer using IS_ERR_OR_NULL() over using IS_ERR() and a manual NULL
> check.
> 
> Change generated with coccinelle.
> 
> To: Alex Williamson <alex@shazbot.org>
> Cc: kvm@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Philipp Hahn <phahn-oss@avm.de>
> ---
>  drivers/vfio/vfio_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/vfio/vfio_main.c b/drivers/vfio/vfio_main.c
> index 742477546b15d4dbaf9ebcfb2e67627db71521e0..d71922dfde5885967398deddec3e9e04b05adfec 100644
> --- a/drivers/vfio/vfio_main.c
> +++ b/drivers/vfio/vfio_main.c
> @@ -923,7 +923,7 @@ vfio_ioctl_device_feature_mig_device_state(struct vfio_device *device,
>  
>  	/* Handle the VFIO_DEVICE_FEATURE_SET */
>  	filp = device->mig_ops->migration_set_state(device, mig.device_state);
> -	if (IS_ERR(filp) || !filp)
> +	if (IS_ERR_OR_NULL(filp))
>  		goto out_copy;
>  
>  	return vfio_ioct_mig_return_fd(filp, arg, &mig);
> 

As others have expressed in general, this doesn't seem to be cleaner
and tends to mask that we consider IS_ERR() and NULL as separate cases
in the goto.  This code looks like it could use some refactoring, and
likely that refactoring should handle the IS_ERR() and NULL cases
separately, but conflating them here is not an improvement.  Thanks,

Alex
