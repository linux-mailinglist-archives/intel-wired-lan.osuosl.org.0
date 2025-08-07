Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 915C3B1D91E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Aug 2025 15:32:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CEEC560847;
	Thu,  7 Aug 2025 13:32:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j_aLe-w6QPDr; Thu,  7 Aug 2025 13:32:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46BDF60867
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754573550;
	bh=aCaemnoSS/jNrlk3SlOvB0JuQV55y0pH3cm0ELuGHw0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8o0tR9L/wtAFvsXYwxt8yBjeyBxgWD/Zk6lsensro5fVNJ7PUwv4EH8hliVvHyEsP
	 ukx7jsw5pE5No3ejf1+2hA64gC7ScIjfCNde8pjRRxGzrO4xXOb7NORfk9WmnmZrc5
	 KUsODYjq9VqdnO+PyFuNjXxm+RdyDt3LTQ7ejUBzcFi3P1zXpBgjj/h6P3BtsNEmpy
	 vrKI5mQDm48wGdVHDnSkNcMm3rLNxxyXWgqhjuY4y2MLaArrMj0/IgbuEbHHHLOr0E
	 +XAXECZ1wT42a8q80uA17PAQdclBxAhmnxJaKBfjhPIGvm+vDOnVbWZG76i1S3sGt3
	 dIkKCLFsJ/eFg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46BDF60867;
	Thu,  7 Aug 2025 13:32:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2446B233
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 13:32:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 21D8760834
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 13:32:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0EQgxFiwnzfc for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Aug 2025 13:32:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 92DEC6083B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92DEC6083B
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 92DEC6083B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 13:32:28 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 1BB9D453B0;
 Thu,  7 Aug 2025 13:32:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D494C4CEEB;
 Thu,  7 Aug 2025 13:32:25 +0000 (UTC)
Date: Thu, 7 Aug 2025 14:32:22 +0100
From: Simon Horman <horms@kernel.org>
To: Emil Tantilov <emil.s.tantilov@intel.com>
Message-ID: <20250807133222.GK61519@horms.kernel.org>
References: <20250806192130.3197-1-emil.s.tantilov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250806192130.3197-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1754573548;
 bh=bDExwaOS4BDx+6CjfwKchHO+x9Hz/Th5eoPJruT3t98=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p3jqsIFKWyAUgtVXV8KdCMCx5dIEWiG346oJsqh3H65u3KDrS5Lwie8ItV8kIOSDv
 VYl2CNZFtM/uSDtIK8unFe8NyT5GbXWetxkWLHfExqO96xVK2XaXaVDz6wKJiAy2EK
 KLEzciQVNBc3BIVONlSI9JKE9jmU+Z9efGEjfMd8h2gS+3qPNKW1KD8ejqbJYxexc0
 pttTgfJ6++15R82TqClr6EHamxJ3JoeErjOJlPoxks9fxlhE9IzYGmi4FOI0WjZtXN
 cUS40TS+DwtFuv1wJHFRXv1H2+a0KfwVBGlOTtFIe6AgOQuGqqNcw00hNKBSbyHgx1
 GHCAgDRj6mn4A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=p3jqsIFK
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: set mac type when
 adding and removing MAC filters
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
Cc: willemb@google.com, decot@google.com, netdev@vger.kernel.org,
 Aleksandr.Loktionov@intel.com, andrew+netdev@lunn.ch, edumazet@google.com,
 jianliu@redhat.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 przemyslaw.kitszel@intel.com, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 06, 2025 at 12:21:30PM -0700, Emil Tantilov wrote:
> On control planes that allow changing the MAC address of the interface,
> the driver must provide a MAC type to avoid errors such as:
> 
> idpf 0000:0a:00.0: Transaction failed (op 535)
> idpf 0000:0a:00.0: Received invalid MAC filter payload (op 535) (len 0)
> 
> These errors occur during driver load or when changing the MAC via:
> ip link set <iface> address <mac>
> 
> Add logic to set the MAC type before performing ADD/DEL operations.
> Since only one primary MAC is supported per vport, the driver only needs
> to perform ADD in idpf_set_mac().
> 
> Fixes: ce1b75d0635c ("idpf: add ptypes and MAC filter support")
> Reported-by: Jian Liu <jianliu@redhat.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

