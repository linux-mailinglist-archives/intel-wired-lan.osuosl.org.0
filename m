Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cCiyDzsuvGlcuQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 18:11:23 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D162CF963
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 18:11:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 904ED615FF;
	Thu, 19 Mar 2026 17:11:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sAuEBOiJQ8m6; Thu, 19 Mar 2026 17:11:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F0FA61602
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773940280;
	bh=cCn1Sz8oW0iog849dmWasIMUe66CDTbGbzU+Hs0J3cI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Zk8zs+YofzuxsvGRrPbVCtq5cGISl5hwgm63QEQXIyb2mWq3PmuXhooOdyuB0c7c5
	 YWyJtx2iI+qh9tUoeGV5NYQw9LysR7E8LARBJs342JYs7/C79yjpj4ckfGqWowDAyD
	 5GyxAHyqF6OBpFS46Fx8qOiklPE8+PJQ+JGJrdY92gBkhilDb1CEHWl9flxcmF0zEY
	 ElrBniC4iZo5AFpymG6nZpXfB+B1Cnq/UzjRNyFvqaNr6JAE2JRB0Zv9Vp3F1SOZcM
	 DJ7h7MJj1o+jvVIB/P50Iwf4eheJr8KKG+WWcAlyYy47E+z8UxfIIEfZo0+tCYTbYl
	 p21HH+CO+rJ1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F0FA61602;
	Thu, 19 Mar 2026 17:11:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 277AF1BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 17:11:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0D59484380
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 17:11:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OuspPwcfwowi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 17:11:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5D0D18437D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D0D18437D
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5D0D18437D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 17:11:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id B586760053;
 Thu, 19 Mar 2026 17:11:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72529C19424;
 Thu, 19 Mar 2026 17:11:14 +0000 (UTC)
Date: Thu, 19 Mar 2026 17:11:11 +0000
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Message-ID: <20260319171111.GM1753385@horms.kernel.org>
References: <20260318080737.3012293-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260318080737.3012293-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1773940275;
 bh=7hd7Smy1Awo4W5zP2cf4X5Wovdj0UQ0f6uCrztlwxTw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ux6oIogkSXx+NoeaRHRTUvJNFMGpYejAEIHivBemoM0xnjPho8FyLoMxNr8l5FpgV
 AcCxtzyOIW8DDC2nkNnp1shuJIc9AI1QtGExhbFIgjtexT3I/la3ngx/PYNvL8tQ7w
 pcof3z/qD8hbBbA327AellQ5WbslXITm0IoV/K8VaWi1rOU2LPcK3BVVsIbewYOpf2
 sgW5zmgILLYgM+CZjPYRxdMRgiGmZKFK2ULGTXjm7Ot9blUq5Qu82JaKBlFVYDX/ov
 +9N2ZH3LUleZxsIkkxQ1APREvVyeZKDI0kgvzsSbEFuQqp1oFpBrfVtgpiC4nkaVFS
 7GUQ24RLyyaJA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Ux6oIogk
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 0/2] virtchnl/ice: add
 IEEE 802.1ah (0x88E7) VLAN ethertype support
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
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim,horms.kernel.org:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 37D162CF963
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 09:07:34AM +0100, Aleksandr Loktionov wrote:
> IEEE 802.1ah (Provider Backbone Bridging) defines the Backbone Service
> Tag (B-TAG) with ethertype 0x88E7. In environments that combine Provider
> Backbone Bridging with virtualisation, VFs may receive or transmit frames
> carrying a B-TAG and need to install matching VLAN filters on the PF.
> 
> The existing virtchnl VLAN v2 capability handshake (via
> VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS) has dedicated bitmask entries for
> each supported ethertype (0x8100, 0x88A8, 0x9100) but lacked one for
> 0x88E7, making it impossible for a VF driver to advertise or negotiate
> B-TAG support.
> 
> This series adds the missing capability flag and wires up the three
> software-path checks in the ice PF driver that guard VLAN filter
> installation:
> 
>   Patch 1 adds VIRTCHNL_VLAN_ETHERTYPE_88E7 = BIT(3) to the shared
>   virtchnl_vlan_support enum in include/linux/avf/virtchnl.h.
> 
>   Patch 2 updates ice's TC TPID validation, VSI VLAN filter validation,
>   and the bidirectional virtchnl VLAN v2 translation functions to
>   accept/translate ETH_P_8021AH (0x88E7).
> 
> No hardware offload changes, no datapath modifications.
> 
> Tested on E810 with an iavf VF requesting 0x88E7-tagged VLAN filters:
>   Verified that a TC flower rule matching on VLAN TPID 0x88E7 is now
>   accepted and offloaded by the driver without returning -EINVAL:
> 
>     tc qdisc add dev $VF clsact
>     tc filter add dev $VF ingress protocol 802.1Q flower \
>         vlan_ethtype 0x88e7 action pass
>     # (previously: Error: Failed to offload TC filter - vlan_type was 0)
> 
>   Also verified VF transparent passthrough of triple-tagged frames with
>   0x88E7 as middle and innermost tag using scapy on a back-to-back E810
>   pair (kernel 6.19.0-rc8+, FW 4.91, ICE Triple VLAN Comms DDP 1.3.88.88).
> 
> Aleksandr Loktionov (2):
>   virtchnl: add VIRTCHNL_VLAN_ETHERTYPE_88E7 support
>   ice: add 0x88E7 handling to SW validation paths

For the series:

Reviewed-by: Simon Horman <horms@kernel.org>

