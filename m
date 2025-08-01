Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA945B187F7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Aug 2025 22:06:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F256E61BB2;
	Fri,  1 Aug 2025 20:06:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wzvOZz622lJJ; Fri,  1 Aug 2025 20:06:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6DF7560BE9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754078814;
	bh=jTLUXu9xxyUUEuBluM7H9l3cUy0DV8HNdkr81r4AC3Q=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=M3N7L4OEF2sr9/Zg0FO9uKWbWiz2Dl8M5VYhejik/Yj9fQCPS9N/ixY+6vJXt+m5I
	 G4M8ju6GBzBsmwB6gLzg1qvOu3CzyyReQN+xqn6/OpQlbg5BuAHXvg5ehs43Pl8qpC
	 OnTyuKHa/Qlk77CmyZmqjzTAsRP4We1+i3eH3amhGPbzYT1QNKT7Zkv8uqjSy9eKDY
	 QD4OlLxdYqklKm3Jq2Tn76AuloyIz2GFXMihWWTE3CahGDroXYrXaVuFLMFN20yvDV
	 tnIRtfswXRLEugLxCjd0Y58ChBrSCZaNPFIV+ETSPAhjZtMQZ+VQYvbXdMFRDxkSqj
	 5t85nj6ooSiGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6DF7560BE9;
	Fri,  1 Aug 2025 20:06:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4B63413D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 20:06:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3D424605B7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 20:06:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tkmW7sBfpbLk for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Aug 2025 20:06:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1AC80605C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1AC80605C3
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1AC80605C3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 20:06:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id A7856A5591D;
 Fri,  1 Aug 2025 20:06:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2108C4CEE7;
 Fri,  1 Aug 2025 20:06:48 +0000 (UTC)
Date: Fri, 1 Aug 2025 13:06:48 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadfed@meta.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, <intel-wired-lan@lists.osuosl.org>, Donald
 Hunter <donald.hunter@gmail.com>, Carolina Jubran <cjubran@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 <netdev@vger.kernel.org>, Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <20250801130648.341995ba@kernel.org>
In-Reply-To: <20250731231019.1809172-1-vadfed@meta.com>
References: <20250731231019.1809172-1-vadfed@meta.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1754078809;
 bh=T7/74GDSNVPhlAsnSqKd+bYVq/4pK/GDutVg+bbGPyc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=sAnBlyG8blUfyGmDkkkwg6RrtOjkJ+MD0g/Rfz6HsmeAglcOkldBzgC6RiS/ybKkl
 qMphAhXuXCaiJtIKB600PIHTugUeAZ4bRARSQzanOtERuNEeI29idNcWrcs/4/N2P2
 UmhFVw7yq656lo7FRV2gIvAkXZTuN29WvRLIDEnEOAndOWu7DGGeVErR9Vovju7u0G
 KESESRcrHeeUhXSaSgkFB2TrjuaKBxurDLwqO8OkOkepui6hvCNyk7cf9u420ynijl
 Uigg33eMBnyhz34T7CNJXOFypx9wmY1m0MZLG+gjQ55ClXAjuClQdG6laQvQGpFWcj
 rFqignGYiKelw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=sAnBlyG8
Subject: Re: [Intel-wired-lan] [RFC PATCH v2] ethtool: add FEC bins
 histogramm report
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

On Thu, 31 Jul 2025 16:10:19 -0700 Vadim Fedorenko wrote:
> - remove sentinel (-1, -1) and use (0, 0) as common array break.
>   bin (0, 0) is still possible but only as a first element of
>   ranges array

I don't see this change in the diff? It's still -1,-1

Also, not seeing per-lane support here.

> diff --git a/Documentation/netlink/specs/ethtool.yaml b/Documentation/netlink/specs/ethtool.yaml
> index 1063d5d32fea2..69779b51f1dfd 100644
> --- a/Documentation/netlink/specs/ethtool.yaml
> +++ b/Documentation/netlink/specs/ethtool.yaml
> @@ -1239,6 +1239,30 @@ attribute-sets:
>          name: corr-bits
>          type: binary
>          sub-type: u64
> +      -
> +        name: hist
> +        type: nest
> +        multi-attr: True
> +        nested-attributes: fec-hist
> +      -
> +        name: fec-hist-bin-low
> +        type: uint
> +      -
> +        name: fec-hist-bin-high
> +        type: uint

The bounds can be u32, TBH. The value really is a u16 but we don't want
to waste space on padding in Netlink. Still, no need to go all the way
to uint.

> +        name: fec-hist-bin-val
> +        type: uint
