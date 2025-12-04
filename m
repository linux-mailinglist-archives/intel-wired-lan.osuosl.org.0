Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B19CA3C65
	for <lists+intel-wired-lan@lfdr.de>; Thu, 04 Dec 2025 14:21:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 11DC061B77;
	Thu,  4 Dec 2025 13:21:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wSHuukdLTvuO; Thu,  4 Dec 2025 13:21:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56DA561B7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764854500;
	bh=NrakLbCrgpg98DYnBbhFkl6JMY3AepZXuCauyN9dKVQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=McyjBNtKWLiRGyziKje8qC7qIcyb4kbWkZPrSnaVxw9JK4CKNy7Uefnsw1IxU8yK+
	 kiZ/9GRrcF5lxAjeRvWKQ7dXpKB7mQehmjx2BdazshGXPp90g6nyVSOGSe8aCSCPXI
	 WePdoRr79kWf9rpBTj23T1plo2QiRQuP+xPGow3DZYGBdCvk3alhyGTaWY7AOdEEID
	 aYxnw+8lpIqy2lZKbz0GWvr8yZGi0Q0IZs2Cr8RDU03z2OrvX7h2fXP1Sk5BBVe0in
	 Bgzs+198oqAfjobbq22HuJjVOfzYRIuA15xbbv+RQXlNqQNm1b2FiuAhdjfBrjMxQU
	 VIJXUneqOlong==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56DA561B7A;
	Thu,  4 Dec 2025 13:21:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B9304D3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 13:21:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A06DD40317
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 13:21:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LN3jrrR5ozrP for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Dec 2025 13:21:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CA56B4030C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA56B4030C
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CA56B4030C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 13:21:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 37736601EA;
 Thu,  4 Dec 2025 13:21:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8D14C4CEFB;
 Thu,  4 Dec 2025 13:21:33 +0000 (UTC)
Date: Thu, 4 Dec 2025 13:21:31 +0000
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Jakub Kicinski <kuba@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 adrian.pielech@intel.com,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Krzysztof Galazka <krzysztof.galazka@intel.com>
Message-ID: <aTGK25rhhwUinDqn@horms.kernel.org>
References: <a0561c1f-f64e-4d76-b08b-877897d45eae@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a0561c1f-f64e-4d76-b08b-877897d45eae@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764854495;
 bh=yyAVpr/quTaykg6lct63tKx4MzxALcP3Jwqqt9dI1LI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BMwJrJ9TTJpnfLy51RfYcxD5ejaiDNpRgege+pEpkL4te4AyzKrs42oFwU0uybNsu
 f0yNgcxw4uppzmdHNnmW/EQZIgYpSxY2nBDHecOw0QsIu1eF/1jEOjHOG6tUFU1jUU
 DC2L/ovuRXnCQfSedlOYe7Sj4XK3zp1FLNyUvgD+QDQPrasKnpVpVHDlgAm6sDm/7q
 EW3fJbUvMDW8GtcoWQdrATNKsqXDxgi4xq+KrTdALD+r6oVVyL5/2vVTu4ifAMQ5jY
 V/6rREwx3AYyP4UIge4fqhnLWWcizXHsR8Uf9ivAKywbs+g3fPfazZT/PeiBzXJ+Wu
 ykXVUjfFxp59w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=BMwJrJ9T
Subject: Re: [Intel-wired-lan] [ANN] intel's netdev-ci
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

On Thu, Dec 04, 2025 at 01:59:34PM +0100, Przemek Kitszel wrote:
> Hi all!
> 
> I'm pleased to announce that we have set up infrastructure for testing
> netdev on our e810 NICs, with more to come.
> 
> Big thanks to Adrian Pielech who made substantial effort to make this
> possible and to Krzysztof Gałązka for the initial PoC work.
> 
> This work plugs into netdev-ci initiative by netdev maintainers,
> to run kselftests (mostly functional tests in python) against current
> proposed net-next branch, on real hardware.
> 
> Our results are here:
> https://netdev-ci-results.intel.com/ice-results/results.json
> 
> with a viewer for humans:
> https://netdev-ci-results.intel.com/

Thanks, this is very nice to see.
