Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBC0B1BCC7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Aug 2025 00:46:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B54B061B3F;
	Tue,  5 Aug 2025 22:46:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WkBcZ9DcDApw; Tue,  5 Aug 2025 22:46:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 35666615AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754433973;
	bh=qhmMrEv9f0NogqRKfRBgOkWV/8gqDCrqStAzYt/W6wg=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SrzxgJ/OgSflqMxLvyesry2QCuEJ1L3F6fc0dCmRMK2VLmwG5TrlyNM6pdVleiUW6
	 albbz7do2XiwSur4byqHbBeq0G4WhChNnw1aCIBcMLTxl7U7inyCovEhoIHzukY/f0
	 y4aoFqeoh5zfTlwQJ459U85Vv7I3FTcQXHM5E4Yh4Zt2hdyLFA3ZN/Mj3QqiGAnNcM
	 s1ukcYq9R2KitdN/Kg8ijwrQcCEgzQHPIk5/MAgN5R5L6Fj971BXzMhvXV9WpjvY51
	 JGSC0ggHTA6mQqigb1KlDUP1C8F1bc3uhVgbJMrFr+7Buy/XY+dw3Fro8AfAaK3+Qx
	 CxGt6KFw4BrQw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 35666615AA;
	Tue,  5 Aug 2025 22:46:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id F0928D79
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Aug 2025 22:46:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E203E61B21
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Aug 2025 22:46:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LtoBoXTuhm6u for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Aug 2025 22:46:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 139EB61B2E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 139EB61B2E
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 139EB61B2E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Aug 2025 22:46:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 8F490601D1;
 Tue,  5 Aug 2025 22:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4400C4CEF0;
 Tue,  5 Aug 2025 22:46:05 +0000 (UTC)
Date: Tue, 5 Aug 2025 15:46:04 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: <intel-wired-lan@lists.osuosl.org>, Michal Kubiak
 <michal.kubiak@intel.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, "Paolo Abeni" <pabeni@redhat.com>, Alexei
 Starovoitov <ast@kernel.org>, "Daniel Borkmann" <daniel@iogearbox.net>,
 Simon Horman <horms@kernel.org>,
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, <bpf@vger.kernel.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Message-ID: <20250805154604.680bde07@kernel.org>
In-Reply-To: <a151336a-eda4-4f44-9ab5-da79e7712838@intel.com>
References: <20250730160717.28976-1-aleksander.lobakin@intel.com>
 <20250730160717.28976-17-aleksander.lobakin@intel.com>
 <20250801153343.74e0884b@kernel.org>
 <a151336a-eda4-4f44-9ab5-da79e7712838@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1754433966;
 bh=NqAn7xkr0Rfx37RWYqFvxyrYUe9MsAbnMN8SOZ0XZ8A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=f3ciXNWTApQibSjgZTVBIQ1cfxquSZMI/00XCX77N9oGij/RpxiPKAUV4q3Brivk3
 VahaglYpe02/YuF/x1S9+U9CKzsJKDnd0e099GnXRys/MKRtq5QwNcGJrQ+OGkqS3Q
 nwSxEwzT4mkMC9oahFyy8cmWtOY+QeZQtuaOohxHzwLjMFMHMbMR4fNKthJ+UAyC8F
 70uPWfb/uaah7OOzIMUSOP8Fgyzzb0QM06zlJppwgB7IZco4rh5pX/lsJxWCVO32F0
 5TvqJ+3oajZpY1dPkAJNfduWnl4Z/Qp0S9S2WYuZPzoQE5IcujFxxhf1FBoGN+syrX
 4N/DDJOwAvRbQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=f3ciXNWT
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 16/18] idpf: add support
 for XDP on Rx
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

On Tue, 5 Aug 2025 18:09:40 +0200 Alexander Lobakin wrote:
> From: Jakub Kicinski <kuba@kernel.org>
> Date: Fri, 1 Aug 2025 15:33:43 -0700
> 
> > On Wed, 30 Jul 2025 18:07:15 +0200 Alexander Lobakin wrote:  
> >> Use __LIBETH_WORD_ACCESS to parse descriptors more efficiently when
> >> applicable. It really gives some good boosts and code size reduction
> >> on x86_64.  
> > 
> > Could you perhaps quantify the goodness of the boost with a number? :)  
> 
> Sure, only a matter of switching this definition and running the tests
> (and bloat-o-meter).
> Intel doesn't allow us to publish raw numbers (Gbps/Mpps), I hope the
> diff in percents (+ bloat-o-meter output) would be enough?

Yes, delta is perfect. Absolute numbers aren't very meaningful if you
don't specify all HW components and FW versions, and direction of wind
on the day, anyway :$
