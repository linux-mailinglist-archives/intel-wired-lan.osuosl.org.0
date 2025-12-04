Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAAF0CA470E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 04 Dec 2025 17:20:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72352616E8;
	Thu,  4 Dec 2025 16:20:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PO3aGrYJ--HQ; Thu,  4 Dec 2025 16:20:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC9EB61549
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764865206;
	bh=u57tejH3ziyE8514FYcFiPLeeh+C6htGPe3gajhMtxY=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3ki56G+dAuD7p0V7v0S941Kh5aELNzG4U0wO/FHqWZYaHVm1bgEcueac7W4/XjRhz
	 WSh2IcW80BTs0Vv30ysPJIeDY2TypShwykbAyhpbOjjtqbfZ5pTWAWq7OneVnHulnL
	 Bl6l+GRZ4L1pQS2+l9mJEWL+Aj3BGmxjWwTI39eU7pOQbZ3YYWzPuDgKFCJArujuUx
	 LoGIV8nzorcsqIpmEWikEcF6mFy+vl0EQD4YmEO2AQtvlHTg5UOOXFo2bSBpPjc7ZI
	 5z8NdvM/MvbBkDMvbzhdYFPISBHSVEVZrsIGgSgcLz2+eJDoGluLP8EGXn+JrqrDYA
	 k0I+V6iY1+Zmg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC9EB61549;
	Thu,  4 Dec 2025 16:20:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 71F3B1A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 16:20:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5155C4082E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 16:20:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FAhIV8G1EFiN for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Dec 2025 16:20:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6735A40722
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6735A40722
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6735A40722
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 16:20:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id E542242A32;
 Thu,  4 Dec 2025 16:20:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F1BCC4CEFB;
 Thu,  4 Dec 2025 16:20:02 +0000 (UTC)
Date: Thu, 4 Dec 2025 08:20:01 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 <adrian.pielech@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Simon
 Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, Krzysztof
 Galazka <krzysztof.galazka@intel.com>
Message-ID: <20251204082001.561a5f3b@kernel.org>
In-Reply-To: <a0561c1f-f64e-4d76-b08b-877897d45eae@intel.com>
References: <a0561c1f-f64e-4d76-b08b-877897d45eae@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764865202;
 bh=u57tejH3ziyE8514FYcFiPLeeh+C6htGPe3gajhMtxY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=nS4h5NKxZvuSMz0vL4EUSHgrMMa93APGW1Sn7U4/9XdshedNV/m4RYfcYJNNdyDJ5
 nlsQ2RyL8wiOfE2RCwKN8kpOsUzOmH0CDeRbBehsGvMSIrdIYAjWD1z1+cEHLC3Gyf
 U1MWGJKffKxTuEu91RNLl/KxPYSExql59sG2hifLiDr3NdYqByYMpue+AHeTtA34A3
 f7/iXH/QpMB+egw+5Vhn7JjAGtiP4dz5EVKIXvYks8EWIQdKledxUJ3ghl0G4I2Az6
 +FesnEuHBDZjSWmD0oIn9LG+dNgu3uPhb1AHCqPVaODaXouoA/ZMs4dUKms0TSD1tI
 3xUN7uooCD9cw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=nS4h5NKx
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

On Thu, 4 Dec 2025 13:59:34 +0100 Przemek Kitszel wrote:
> Hi all!
>=20
> I'm pleased to announce that we have set up infrastructure for testing
> netdev on our e810 NICs, with more to come.
>=20
> Big thanks to Adrian Pielech who made substantial effort to make this
> possible and to Krzysztof Ga=C5=82=C4=85zka for the initial PoC work.
>=20
> This work plugs into netdev-ci initiative by netdev maintainers,
> to run kselftests (mostly functional tests in python) against current
> proposed net-next branch, on real hardware.

Thank you for doing this work! I really appreciate participation=20
in the community testing efforts.

> Our results are here:
> https://netdev-ci-results.intel.com/ice-results/results.json
>=20
> with a viewer for humans:
> https://netdev-ci-results.intel.com/

Very neat UI :)

Are you planning to stay on the SW branch stream? I was anticipating
that HW testing will need a lower frequency of branches hence the
existence of the:
