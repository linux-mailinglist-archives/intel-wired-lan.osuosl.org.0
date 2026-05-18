Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cInIGtdgC2pgGQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 May 2026 20:56:23 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D16775727B0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 May 2026 20:56:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77FFA6071D;
	Mon, 18 May 2026 18:56:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wIq_37UZwA74; Mon, 18 May 2026 18:56:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B880860722
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779130580;
	bh=T8/9D8CVG3ffJO9tvFqEo2HmibwVZ1m8cvpQN5Dl0kA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=58aZdvLTE4osDFYreLi3SxRpcgzdtUQh69O8neYN+us2rk7Iz7W3zqzKyC2PixKyd
	 x0hleU94z0jw4Ios/MkU62pFoWTQ6KAaStBXPOCkehoSnPDOSqSXNQJWcYg6gpVzpw
	 +Q2d5ruEK/GIIl4HOnAEhvleWpoW/POfwbKJFU7zknqozNdNmGV+c/LV1lrj/WApfv
	 gOlFuCSCUn42zfdxwfsI+V3KnIRm22/7Hg/Ie5Tf/DE/pnj1JbedOQA8ArusmWBNRs
	 nSub26zYF4vv4kuf4DDk7tr5bUo07zx2Ww1Gc8ha6FikgqLhmou0DlkhvfxbmpD7rY
	 0WoIW7gTUDsLw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B880860722;
	Mon, 18 May 2026 18:56:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1EB821B2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 18:56:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0467D80F65
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 18:56:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0BlrvE14Zuqv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 May 2026 18:56:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2E11980F63
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E11980F63
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E11980F63
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 18:56:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 00A66600CB;
 Mon, 18 May 2026 18:56:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC0BEC2BCB7;
 Mon, 18 May 2026 18:56:13 +0000 (UTC)
Date: Mon, 18 May 2026 19:56:11 +0100
From: Simon Horman <horms@kernel.org>
To: Junrui Luo <moonafterrain@outlook.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Mitch Williams <mitch.a.williams@intel.com>,
 Greg Rose <gregory.v.rose@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Yuhao Jiang <danisjiang@gmail.com>,
 stable@vger.kernel.org
Message-ID: <20260518185611.GF98116@horms.kernel.org>
References: <SYBPR01MB7881AF11C45AEDC0D4CA89C1AF062@SYBPR01MB7881.ausprd01.prod.outlook.com>
 <SYBPR01MB788139F8F31129E4B64E66D4AF072@SYBPR01MB7881.ausprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SYBPR01MB788139F8F31129E4B64E66D4AF072@SYBPR01MB7881.ausprd01.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1779130576;
 bh=9xSWq3/p42ZAOBsEQMtxfJEQE/1Guk1SM/niBcloTd4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kAtO3ksrzt7DJjrHpNTpug1TB9x9vec33F++NIpJ2TO9rfd7gv4EDSobrmmcE0fIy
 O3gxjbOPlVdjfHdnTioK5F9u48ds8Biz1rsxVKg1LSSOC52e+85qCTtj+S2dcNRdeW
 6FKKfd1o/GNCHwA0x2ugS7FfI6MCcnIcmRv2ZEIMMRuBT9YsUt4j3o/fuv8Cdyizaw
 1S0Ta1gT/NykobMjlRWWKR/MR9ujwgwuAGFvbZUeEm+uIhV1uQ0DyzZj65qaYf8Xtq
 Ow3X5F+5suIqWaMVYP23JeWSFykQkqeCczX8v6rhxZA9JrfZMQza+ak7eI+DHyFRRu
 VVQhYETjNxlvw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=kAtO3ksr
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: validate num_vsis in
 VIRTCHNL_OP_GET_VF_RESOURCES response
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
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:moonafterrain@outlook.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:mitch.a.williams@intel.com,m:gregory.v.rose@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:danisjiang@gmail.com,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[outlook.com];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,lists.osuosl.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[outlook.com:email,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,sashiko.dev:url,osuosl.org:dkim,horms.kernel.org:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D16775727B0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, May 14, 2026 at 02:55:04PM +0800, Junrui Luo wrote:
> The VF allocates a fixed-size buffer for IAVF_MAX_VF_VSI (3) VSI
> entries when processing a VIRTCHNL_OP_GET_VF_RESOURCES response from
> the PF. However, num_vsis from the PF response is used unchecked as
> the loop bound when iterating over vsi_res[] in multiple functions.
> 
> A PF sending num_vsis greater than IAVF_MAX_VF_VSI, or the received
> message is shorter than num_vsis claims leads to out-of-bounds accesses
> on the vsi_res[] array.
> 
> Clamp num_vsis based on the actual bytes copied from the PF response.
> 
> Fixes: 5eae00c57f5e ("i40evf: main driver core")
> Reported-by: Yuhao Jiang <danisjiang@gmail.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Junrui Luo <moonafterrain@outlook.com>
> ---
> Changes in v2:
> - Clamp num_vsis based on actual received message length instead of
> IAVF_MAX_VF_VSI suggested by Przemek
> - Link to v1: https://lore.kernel.org/r/SYBPR01MB7881AF11C45AEDC0D4CA89C1AF062@SYBPR01MB7881.ausprd01.prod.outlook.com

Reviewed-by: Simon Horman <horms@kernel.org>

There is an AI-generated review of this patchset available on sashiko.dev.
However, I believe that the issues raised there can be considered in
the context of possible follow-up. I do not believe they should block
progress of this patch.
