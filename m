Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C9CCA4729
	for <lists+intel-wired-lan@lfdr.de>; Thu, 04 Dec 2025 17:20:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D5B240847;
	Thu,  4 Dec 2025 16:20:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JQn5EpsLCl5U; Thu,  4 Dec 2025 16:20:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B3FB340858
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764865254;
	bh=1AelSlKofywk9+qV521bJt8QJoFYFT4fuiDSvKptMWE=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fsAjZcbiS32ke6L1ylqVompCkcaTQaDfHicbdjSgbPWklnZgZm5BKisxaACghM6hP
	 ckacdUU72V6JXY7/6Kusmj1bG+OEaiwjT5C3kG1hMUMSnCx9yYFdkBpE9YWTJ36gnA
	 Mtj7xRzF/P0VzZOs6sSTjvOVaGM3FHCfb39AR0HR97yguTh2lj/0bfDM+2cHfJAs/2
	 gLWsbwyiqTkWcnFb2pleC8rQMRIyskFLF0JSsofirOvvCEUPbrVXjXNb8CmQD/1svb
	 zNpBxvDUlny5IxVCDObQIoNZszk76NBhTTvEyLamk2RtewKS13TfGsQ3iOGLE9doP7
	 +PAwJkw2bP7PQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B3FB340858;
	Thu,  4 Dec 2025 16:20:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8229AD3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 16:20:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 739FB6149E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 16:20:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wx3DX_Aklpa7 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Dec 2025 16:20:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B36E760733
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B36E760733
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B36E760733
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 16:20:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 64B85405C5;
 Thu,  4 Dec 2025 16:20:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C95CBC4CEFB;
 Thu,  4 Dec 2025 16:20:50 +0000 (UTC)
Date: Thu, 4 Dec 2025 08:20:49 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 <adrian.pielech@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Simon
 Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, Krzysztof
 Galazka <krzysztof.galazka@intel.com>
Message-ID: <20251204082049.1ecfd15f@kernel.org>
In-Reply-To: <20251204082001.561a5f3b@kernel.org>
References: <a0561c1f-f64e-4d76-b08b-877897d45eae@intel.com>
 <20251204082001.561a5f3b@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764865251;
 bh=1AelSlKofywk9+qV521bJt8QJoFYFT4fuiDSvKptMWE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=nWU4cr3KZfVYpxqiEKqFfb8xzDByoTK8oge4ffLuVkQ/a2iK4WlEUsZOLrhN0w9o2
 gyw5lZ+uV8JVsYkPIVrUYPcZRYBD6bSR35qNfMRXrKnAmjcdFX1rOE9XEx++aTO6By
 jLLgRp0MYoN67D0SPdytllMT9xGhzJ7gwXj0xNfdoDfLxE3fz+unD4khEhpGD5SCXB
 avjKswYcOVKtkTPcGcIgisLUnL+5yLdDll6ihJPHWoWJd/j6mVK+/WaNSCLLLuXCc/
 GbyP4lEfUU/IoNaQLrLSdPlGYcDkQ3tA3OOClKOnCUSYfUYpsW+Z+3sHJoVkogenZE
 1HpkctnARht9w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=nWU4cr3K
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

On Thu, 4 Dec 2025 08:20:01 -0800 Jakub Kicinski wrote:
> On Thu, 4 Dec 2025 13:59:34 +0100 Przemek Kitszel wrote:
> > Hi all!
> >=20
> > I'm pleased to announce that we have set up infrastructure for testing
> > netdev on our e810 NICs, with more to come.
> >=20
> > Big thanks to Adrian Pielech who made substantial effort to make this
> > possible and to Krzysztof Ga=C5=82=C4=85zka for the initial PoC work.
> >=20
> > This work plugs into netdev-ci initiative by netdev maintainers,
> > to run kselftests (mostly functional tests in python) against current
> > proposed net-next branch, on real hardware. =20
>=20
> Thank you for doing this work! I really appreciate participation=20
> in the community testing efforts.
>=20
> > Our results are here:
> > https://netdev-ci-results.intel.com/ice-results/results.json
> >=20
> > with a viewer for humans:
> > https://netdev-ci-results.intel.com/ =20
>=20
> Very neat UI :)
>=20
> Are you planning to stay on the SW branch stream? I was anticipating
> that HW testing will need a lower frequency of branches hence the
> existence of the:

https://netdev.bots.linux.dev/static/nipa/branches-hw.json

HW branch stream.
