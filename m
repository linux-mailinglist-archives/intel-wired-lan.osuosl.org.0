Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB9BBB126C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Oct 2025 17:44:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0FC2D613C6;
	Wed,  1 Oct 2025 15:44:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5BCAQL8CDk_l; Wed,  1 Oct 2025 15:44:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 730D5613C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759333455;
	bh=hBCdhavRgEK7DlHtRbB6icw0MY0qZ4s+5mJpLNnBe4g=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zpVyZn/aKZWUgIxkVnTWMKNJmdcRCpLvhaN+t1Lfhl4bcgXYGjrs9icx0E6Fx8p9U
	 fdafY+JWL/mizxAUl/QuSCyhdPRwI23OtrH1y75Kr120MTwd98lTT/FdtLciwA1gfC
	 vS4WTE62iVlbQK4mRJb7YJ4G86s9Jgf9kVuZrXFiWi2Iut6cf+JkL/I0Aj+P9Rve3r
	 ho9rPg9/W3DNXy8O25Yr0c/XokV8YEQHwmpTnBI98MonehNHoMMXvN85y9td1jUw+V
	 kjVwTNEos1dzESOkbdzfTMH93PJaiNpgT+HYdGAZ4htR6Qgd4zbVmOfxO8tO8NQLTB
	 olN9Og11h5V1w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 730D5613C7;
	Wed,  1 Oct 2025 15:44:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6613B2A6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Oct 2025 15:44:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 585BA613C4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Oct 2025 15:44:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hm-5kQTT5GsR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Oct 2025 15:44:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A224D613C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A224D613C0
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A224D613C0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Oct 2025 15:44:13 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id E2AD560392;
 Wed,  1 Oct 2025 15:44:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F13DC4CEF1;
 Wed,  1 Oct 2025 15:44:10 +0000 (UTC)
Date: Wed, 1 Oct 2025 16:44:08 +0100
From: Simon Horman <horms@kernel.org>
To: Sreedevi Joshi <sreedevi.joshi@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Erik Gabriel Carrillo <erik.g.carrillo@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <aN1MSIO27C24q-gL@horms.kernel.org>
References: <20250930212352.2263907-1-sreedevi.joshi@intel.com>
 <20250930212352.2263907-3-sreedevi.joshi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250930212352.2263907-3-sreedevi.joshi@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1759333451;
 bh=4uGLSlfl7grkABSuCWMiHF3qY7ZyGsOvz+I6a9PdYWQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JR12RdODcxsZVdbjCmhrl/803IIftzd/ojXb7N4QSQu0qagxnLnuBi1uN/sijpANp
 u/EdPXjGe7tMfKJh3LsUtlPcpjPZ7Wj6I9565mZ+YQJkHolXjptK5MQD+BLoG2xjMd
 CgWyAwwZqYgOiNjH8MY5PpoBB56w2ITWEmPkTJhst06YZwmDsaB70QY8YZX92pEIRO
 dz6Jwk9DUPAamai0pYjp1BOF5XnworWkfheQ6hN9jtGHSGmPxWdE9pB/2HvChw55gQ
 gIaAYT4eTtsNeWCtqP2N/q2ePualTb6ciRFKniGNd4RunYlF1G/IVG7LObMKXCy9b3
 AZflh673d8Obg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=JR12RdOD
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 2/2] idpf: fix issue with
 ethtool -n command display
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

On Tue, Sep 30, 2025 at 04:23:52PM -0500, Sreedevi Joshi wrote:
> From: Erik Gabriel Carrillo <erik.g.carrillo@intel.com>
> 
> When ethtool -n is executed on an interface to display the flow steering
> rules, "rxclass: Unknown flow type" error is generated.
> 
> The flow steering list maintained in the driver currently stores only the
> location and q_index but other fields of the ethtool_rx_flow_spec are not
> stored. This may be enough for the virtchnl command to delete the entry.
> However, when the ethtool -n command is used to query the flow steering
> rules, the ethtool_rx_flow_spec returned is not complete causing the
> error below.
> 
> Resolve this by storing the flow spec (fsp) when rules are added and
> returning the complete flow spec when rules are queried.
> 
> Also, change the return value from EINVAL to ENOENT when flow steering
> entry is not found during query by location or when deleting an entry.
> 
> Add logic to detect and reject duplicate filter entries at the same
> location and change logic to perform upfront validation of all error
> conditions before adding flow rules through virtchnl. This avoids the
> need for additional virtchnl delete messages when subsequent operations
> fail, which was missing in the original upstream code.
> 
> Example:
> Before the fix:
> ethtool -n eth1
> 2 RX rings available
> Total 2 rules
> 
> rxclass: Unknown flow type
> rxclass: Unknown flow type
> 
> After the fix:
> ethtool -n eth1
> 2 RX rings available
> Total 2 rules
> 
> Filter: 0
>         Rule Type: TCP over IPv4
>         Src IP addr: 10.0.0.1 mask: 0.0.0.0
>         Dest IP addr: 0.0.0.0 mask: 255.255.255.255
>         TOS: 0x0 mask: 0xff
>         Src port: 0 mask: 0xffff
>         Dest port: 0 mask: 0xffff
>         Action: Direct to queue 0
> 
> Filter: 1
>         Rule Type: UDP over IPv4
>         Src IP addr: 10.0.0.1 mask: 0.0.0.0
>         Dest IP addr: 0.0.0.0 mask: 255.255.255.255
>         TOS: 0x0 mask: 0xff
>         Src port: 0 mask: 0xffff
>         Dest port: 0 mask: 0xffff
>         Action: Direct to queue 0
> 
> Fixes: ada3e24b84a0 ("idpf: add flow steering support")
> Signed-off-by: Erik Gabriel Carrillo <erik.g.carrillo@intel.com>
> Co-developed-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
> Signed-off-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

