Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 26AA39098C6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Jun 2024 17:16:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC14E82015;
	Sat, 15 Jun 2024 15:16:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZRodB3fYRcRN; Sat, 15 Jun 2024 15:16:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 172EF81349
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718464610;
	bh=k6+SnTKbUusEIF0rwEEMPmfFP7oS1BI7RELTSyI4xuk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=65JtqWYt4BGBH6PXNfaE9J4AmcNrQnvmv1a/6vMKVADRHx30YLo+Zc90cHdSzZTcu
	 /cw6XrQZSj9JEUSxYk5PpbO4a8AzYO81KzUBHD4P4a57caaOLAg8JnT2QfgtABNq21
	 AtmCkDiXNkJaKPeltrBpLLIUPSFR3PC6qlOOrR1NjtU7vKzkLHdQpaM7aWLynC271t
	 F2fLuFkM1N/dT+J7hFCdAX75zWOSkQy18sFPbz94Vr9UFUrCH1AkLPW3p9/GW/9d1m
	 keI92B3QG47Xyrtlcp5LnfVVBjM9TnCpDdhLUo5BUwc6pt26pqmafY8x98ozv1gykK
	 FbWfP3sL4NAzg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 172EF81349;
	Sat, 15 Jun 2024 15:16:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 85A981BF301
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jun 2024 15:16:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7F35360659
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jun 2024 15:16:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZWwI_iGHMTDH for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Jun 2024 15:16:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D913F605CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D913F605CB
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D913F605CB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jun 2024 15:16:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 0BEF860472;
 Sat, 15 Jun 2024 15:16:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D39B0C116B1;
 Sat, 15 Jun 2024 15:16:43 +0000 (UTC)
Date: Sat, 15 Jun 2024 16:16:41 +0100
From: Simon Horman <horms@kernel.org>
To: Petr Oros <poros@redhat.com>
Message-ID: <20240615151641.GG8447@kernel.org>
References: <20240614094338.467052-1-poros@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240614094338.467052-1-poros@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718464606;
 bh=40Wj6XVGNuJpJuinT1FRLIVr94RxlZv+LTy0tHJIxw8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oITqWQkLtoirbzPziEOi8v1w2dJiXHu+NmH1id2OgsJQkJu21MBaSc/z1dJFdFzs2
 x6jiFctC069hir6E/AtWT/rgAA+qP7/M+PmvgUh4zEAkESVjXTPvWECHcTsN3rpkPK
 Dvp3g+rO4u6JhEjvVbffH/bWbylm45AVTHRRuD+a9k2n/XcweJSQJFkrc4DcVXatSA
 w5aaGFOm2SHa2U9qNa/YsqiSMn/x8zkHl9MnFe1r4oERx3YAqub5LgFP3K7m6CjP1b
 4xbguxZnP1O9UTmBMBl2+6fPm63hqJzVedAsBtjt5HZEQhI0nLXo5K+/e3tzH5/IYg
 CDAKXPm2TzyIA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=oITqWQkL
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: use proper macro for
 testing bit
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
Cc: ivecera@redhat.com, netdev@vger.kernel.org,
 Marcin Domagala <marcinx.domagala@intel.com>,
 Konrad Knitter <konrad.knitter@intel.com>, Eric Dumazet <edumazet@google.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, przemyslaw.kitszel@intel.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jun 14, 2024 at 11:43:38AM +0200, Petr Oros wrote:
> Do not use _test_bit() macro for testing bit. The proper macro for this
> is one without underline.

Hi Petr,

it might be nice to include a brief explanation as to
why test_bit() is correct.

> 
> Fixes: 4da71a77fc3b ("ice: read internal temperature sensor")
> Signed-off-by: Petr Oros <poros@redhat.com>
> Acked-by: Ivan Vecera <ivecera@redhat.com>

...
