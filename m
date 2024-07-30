Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D3D940F48
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 12:29:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36A858122F;
	Tue, 30 Jul 2024 10:29:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wN6gUwPZ9hGK; Tue, 30 Jul 2024 10:29:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 419218121E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722335354;
	bh=++NKuFnzoMxrYTiX7fY7j9+D7TdH4xEN+SPh7oadb0g=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=N24rlsa4AfWJFXHr3L/PuLm+ghlHshEzVGYMN1BRou4W91JDXovz2bdMMt1M2Y9Rv
	 pChwUGC60IUsnn4zqi5gTg96rwbtx8ZjwlOJ1Lw7qCftYZE+jcoOfN98PuxKdnD5Nk
	 5gi5Xzgmv51ALhtskY5PonM0WZiVivZ3HYk/ybdq6vGAbbbBvtY5H/gHEQbvxk08H1
	 OXjDNiB6EjAj2/yxtb/x1Zvulk9vJ/KTBfDmyFL0eIZyYZqABWChDuJTk5yhpkspJe
	 f9yD1ugetBf8rIT8NMsNECc9CE1YRbiYiddoE8bDzP0nk0zW7oayzwxFdWo1xogUg4
	 s1BHYn/COarjw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 419218121E;
	Tue, 30 Jul 2024 10:29:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 08A241BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 10:29:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 01F1381155
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 10:29:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tIzhp-Ob2AgZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 10:29:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 440AE81140
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 440AE81140
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 440AE81140
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 10:29:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 8C51E61E27;
 Tue, 30 Jul 2024 10:29:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78A3EC32782;
 Tue, 30 Jul 2024 10:29:09 +0000 (UTC)
Date: Tue, 30 Jul 2024 11:29:07 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20240730102907.GZ97837@kernel.org>
References: <20240725220810.12748-1-ahmed.zaki@intel.com>
 <20240725220810.12748-14-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240725220810.12748-14-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1722335351;
 bh=+EXiI6Hi4bCwpc12uz2sKT7AB87QLqFQRMBMmdEGR+I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LsQfo002tyk4otb6TmwUkFBd/hQaIYNdPZ73pCpa//ZnAKeQf5TpZGDUBIfwcNtke
 txt5rjnGoiDm0m+YWJoCXeTgu6d0MnyjQgCI4Wz3Pq2EHSuWOLC84DAtqBb72W2pMy
 Pv6f5uafRXRxBkQ1mc1x8yv3xT5mcSa+j1CZ6pNy7bkWmqwqIHbutSaNybD3aTybNv
 aHo7P6X0OcOKTiuNp8MIWs5ipznnVXaxbElubXDsHONRsWsdVqkXH6eNMy85dR8qy4
 dJrDjwU3GDGI5R2+xACIK8WOspG6QP7jmEI6rFBEG1spx4CfSbsYTgmKnjdokqNBlE
 OFZtAwB6ljg9g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=LsQfo002
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 13/13] iavf: add support
 for offloading tc U32 cls filters
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, Rafal Romanowski <rafal.romanowski@intel.com>,
 hkelam@marvell.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 anthony.l.nguyen@intel.com, Sridhar Samudrala <sridhar.samudrala@intel.com>,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jul 25, 2024 at 04:08:09PM -0600, Ahmed Zaki wrote:
> Add support for offloading cls U32 filters. Only "skbedit queue_mapping"
> and "drop" actions are supported. Also, only "ip" and "802_3" tc
> protocols are allowed. The PF must advertise the VIRTCHNL_VF_OFFLOAD_TC_U32
> capability flag.
> 
> Since the filters will be enabled via the FD stage at the PF, a new type
> of FDIR filters is added and the existing list and state machine are used.
> 
> The new filters can be used to configure flow directors based on raw
> (binary) pattern in the rx packet.
> 
> Examples:
> 
> 0. # tc qdisc add dev enp175s0v0  ingress
> 
> 1. Redirect UDP from src IP 192.168.2.1 to queue 12:
> 
>     # tc filter add dev <dev> protocol ip ingress u32 \
> 	match u32 0x45000000 0xff000000 at 0  \
> 	match u32 0x00110000 0x00ff0000 at 8  \
> 	match u32 0xC0A80201 0xffffffff at 12 \
> 	match u32 0x00000000 0x00000000 at 24 \
> 	action skbedit queue_mapping 12 skip_sw
> 
> 2. Drop all ICMP:
> 
>     # tc filter add dev <dev> protocol ip ingress u32 \
> 	match u32 0x45000000 0xff000000 at 0  \
> 	match u32 0x00010000 0x00ff0000 at 8  \
> 	match u32 0x00000000 0x00000000 at 24 \
> 	action drop skip_sw
> 
> 3. Redirect ICMP traffic from MAC 3c:fd:fe:a5:47:e0 to queue 7
>    (note proto: 802_3):
> 
>    # tc filter add dev <dev> protocol 802_3 ingress u32 \
> 	match u32 0x00003CFD 0x0000ffff at 4   \
> 	match u32 0xFEA547E0 0xffffffff at 8   \
> 	match u32 0x08004500 0xffffff00 at 12  \
> 	match u32 0x00000001 0x000000ff at 20  \
> 	match u32 0x0000 0x0000 at 40          \
> 	action skbedit queue_mapping 7 skip_sw
> 
> Notes on matches:
> 1 - All intermediate fields that are needed to parse the correct PTYPE
>     must be provided (in e.g. 3: Ethernet Type 0x0800 in MAC, IP version
>     and IP length: 0x45 and protocol: 0x01 (ICMP)).
> 2 - The last match must provide an offset that guarantees all required
>     headers are accounted for, even if the last header is not matched.
>     For example, in #2, the last match is 4 bytes at offset 24 starting
>     from IP header, so the total is 14 (MAC) + 24 + 4 = 42, which is the
>     sum of MAC+IP+ICMP headers.
> 
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

