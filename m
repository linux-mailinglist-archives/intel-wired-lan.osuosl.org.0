Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B141EAB9822
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 10:54:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 671F1608B0;
	Fri, 16 May 2025 08:54:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oVChIAn6MSov; Fri, 16 May 2025 08:54:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B996A6125C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747385665;
	bh=BICZ2pyUP30gDL2iFC7fiLTAv4XsxENiCC2xfZZbfK8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Jcwwy8klVcHLWu/+mNoAIGXmEtSb/1zUN4CzSniP/V2IagxYk7XfFICre5L5uJ7Kc
	 /tLasOz2nK7VYFB+5xVwZ0d2ksXJwUqsxhQL8ypcWhupn4UltE0deGTT/hSlJLdzOV
	 z3KdpnqroQ/wkKqQNtEYTg6AfG7RgoNJDGd2bUYAK70ojhX0Sb4KWx1gGS7/A0C/vx
	 yDfNqFpkU6iHH0i4++p2a2IapO/EtI7sDqk0S516BR4p8LHq9OyjyTjLdU+DsxzBxf
	 GJwAAu/GuConaAy9yRWfPV1158StMQSd3z8g+9+q7UorXUlw/GPtnGAlPw65n0RIsU
	 H4vzmB+z8z4zQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B996A6125C;
	Fri, 16 May 2025 08:54:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8CE7A185
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 08:54:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7186A41777
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 08:54:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ie6Kkn2Ir6JA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 08:54:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org ECF35416F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ECF35416F5
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ECF35416F5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 08:54:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 4621449BF4;
 Fri, 16 May 2025 08:54:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BC13C4CEE4;
 Fri, 16 May 2025 08:54:18 +0000 (UTC)
Date: Fri, 16 May 2025 09:54:16 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 sridhar.samudrala@intel.com, aleksandr.loktionov@intel.com,
 aleksander.lobakin@intel.com, dinesh.kumar@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, almasrymina@google.com,
 willemb@google.com, pmenzel@molgen.mpg.de
Message-ID: <20250516085416.GC1898636@horms.kernel.org>
References: <20250423192705.1648119-1-ahmed.zaki@intel.com>
 <20250423192705.1648119-2-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250423192705.1648119-2-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747385662;
 bh=kqNfuqIpJP2D+shmIHhSZCXWQ2xZC26II6h6gPhLJzk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AwP23tBvlMnD2x31qkzoP8rQmmeqnh1VU1W7Vp3bW5Bh4NyKMwAijzkUiyDn8m6fI
 KedmjSRjrFFZEAWhCVQio3vV4W1t3NGqa26elPKclXuxDDbortFZj38vb1CcJpHl/A
 Sk/4zhgyvUPBqsJ1y6Dm2zDCAMJFwl+NrCO+QTsS13s5AOWbPKT9ny9ICzefliDbA8
 m/k4S2JjODEIVtyKoVy3cKR7cSo3OCROxSMffMKyRNhf16IeyNcEC89sXKamOKKdws
 wTf2/1dm903g4T4aX/xJuf1NGL2wzE5hVmnx8K0mNq3TlAfPl4uDA+Zl7is9q2+1J9
 jXwj9FD7LTPNQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=AwP23tBv
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 1/3] virtchnl2: rename
 enum virtchnl2_cap_rss
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

On Wed, Apr 23, 2025 at 01:27:03PM -0600, Ahmed Zaki wrote:
> The "enum virtchnl2_cap_rss" will be used for negotiating flow
> steering capabilities. Instead of adding a new enum, rename
> virtchnl2_cap_rss to virtchnl2_flow_types. Also rename the enum's
> constants.
> 
> Flow steering will use this enum in the next patches.
> 
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

