Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKVvJkOK82md4wEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 18:58:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1929D4A621B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 18:58:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A806084EBE;
	Thu, 30 Apr 2026 16:58:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iSXt03M-EG2A; Thu, 30 Apr 2026 16:58:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0126C84EBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777568320;
	bh=vHNk/DO3McKq+d10DsKRU2fzDmeFGYWNzn/M1ngYQ2c=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IMSTEb510MUx4c6RSkdnEeGohL+gaiXQ7zfXydZtnKRK60xcRs0hOjYtPyMWC4doG
	 tqRZUDOikDW8Av8gyhDuhQNTdYId0B7vdFzFG3Tm1Bstw8klqSaiLP22ivhmhp9qbe
	 o2UmSo7zEc+S27evAeVvmBBr9waJYB35liAXOV8dg4YvvYpmxS2ghV5/XpbcAy1jSX
	 KLvty2J1NVTE77X+KMAtnsbG8Wvd3FGFNBhfQ51TMIp/oHednXTSzSHMDkVxnHsolP
	 OoR4vgrIPQOutiS9ktw6GNlQ32okf3DEdhcMsAfdNrlxCw45MDjSFos3D4MvxOmDTt
	 74hmcyLSWMIWQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0126C84EBF;
	Thu, 30 Apr 2026 16:58:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A446B18F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 16:58:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 891666E3B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 16:58:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xnmP2Dky8RoB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 16:58:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CFE4C6E2A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CFE4C6E2A9
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CFE4C6E2A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 16:58:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 6AC9B417B9;
 Thu, 30 Apr 2026 16:58:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54969C2BCB3;
 Thu, 30 Apr 2026 16:58:34 +0000 (UTC)
Date: Thu, 30 Apr 2026 17:58:31 +0100
From: Simon Horman <horms@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Joshua Hay <joshua.a.hay@intel.com>, Willem de Bruijn <willemb@google.com>,
 Alice Michael <alice.michael@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20260430165831.GD900403@horms.kernel.org>
References: <20260429074232.180528-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260429074232.180528-1-larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1777568317;
 bh=oNHjGy1r4xF2BdPh7vABQlnmsczhl5WvYkdeW6mbptU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YxbSnqUVc7GhmciR0Mv21C2vykFgEax/IgQBMTl2neLs+v01uqHDCF4Y1xTAV100Z
 d5/LUx6zBcMOc7gPV/3Ykt/7mKV9S9YFf00aMfTyHt0OQy41/7ktk+Fam7xrCoPNun
 /ZtPkc4fCUHrTFoq0tOw9IMO5v/5bSJSuYXk0ZmgkNdbiF+Ax42ektWHkyyi3PnGFD
 ClYjoce+BUtZ6JhDoogz1cCLCiuTyakB2LGhFIaIoTs9lAlP9URI+MRzT5HbPUUY5N
 B96RHeDAFhHyvRizPG9CAFmiUUZGPmmYgsmL4bqdUVZ7+s/EVp2G8jodOxyTc5LZ/C
 mkshd0Pn4rGsQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=YxbSnqUV
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix RSS LUT memcpy size
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
X-Rspamd-Queue-Id: 1929D4A621B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:email];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:jacob.e.keller@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:joshua.a.hay@intel.com,m:willemb@google.com,m:alice.michael@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

On Wed, Apr 29, 2026 at 09:42:30AM +0200, Larysa Zaremba wrote:
> Based on the following feedback from Sashiko (received for iXD phase 1
> patchset, but valid for the net tree):
> 
>  "Is the bounds check xn_params.recv_mem.iov_len < lut_buf_size sufficient?
>   Since lut_buf_size only represents the size of the array elements, should
>   this check instead verify that the payload is at least
>   sizeof(struct virtchnl2_rss_lut) + lut_buf_size?
> 
>   [...]
> 
>   Does memcpy copy the correct amount of data here? rss_lut_size stores the
>   number of 32-bit entries, not the size in bytes. Should it use
>   lut_buf_size or rss_data->rss_lut_size * sizeof(u32) instead?"
> 
> After inspecting the code, it was concluded that RSS memcpy size is in fact
> 4 times smaller than it has to be, since a single array entry in a u32, and
> rss_data->rss_lut_size is clearly used as an array size. Required Rx buffer
> size is also too small, but this is a common issue in the idpf code.
> 
> Use a full buffer size (lut_buf_size) instead of the array length
> (rss_data->rss_lut_size) when doing memcpy of RSS lookup table.
> While at it, increase required Rx buffer size to a whole flex-array
> containing structure instead of just the array.
> 
> Link: https://sashiko.dev/#/patchset/20260323174052.5355-1-larysa.zaremba%40intel.com?part=8
> Fixes: 95af467d9a4e ("idpf: configure resources for RX queues")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

There is an AI generated review of this patch available on sashiko.dev.
It seems to me that the issues raised there do warrant further investigation.
But that they are pre-existing problems that and don't need to
block progress of this patch.

