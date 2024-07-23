Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F7E93A506
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 19:36:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 587D040B2B;
	Tue, 23 Jul 2024 17:36:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UtxsWaJRUkjN; Tue, 23 Jul 2024 17:36:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B2B140B2E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721756214;
	bh=2Op65OOp3bX0XZAWe3KIsDe3Vn4bsyRYtiwQwdMY0aw=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hu1tt0glKCgXhQchCAGTsystIRrI5kRigqRi5slnKiZM6od2UGTbyDWTaCBmDsPj0
	 TYA5b1g+HaT12FPRKgYosxvYgMtl+wrnjpyanboPTX3GQiGSHZo7H5mpE7t1lmmwja
	 EJojkSo1UFpbEwHyFSKDwAK00/KdQigx4cMB1gZFO0+sTkl6LoDgCpb/SPeQOigXve
	 eO0fAv17b8/ZT5iyOKVAyPcDZGk7ICIazmEI2px6pZGkQBk21a6u45T+u34mEG+3Dn
	 Rs3V8J3QIKaS2pE16DAYeeyUFpT5NTktlZkQ7U4JK+CPMHKlAZ1NWupAFZqPXjCxKB
	 G5KuRlvdW7Z3w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9B2B140B2E;
	Tue, 23 Jul 2024 17:36:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A64581BF83E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 17:36:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A06C380CB2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 17:36:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 75UmXADfKhkX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 17:36:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EDF6E80C9A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EDF6E80C9A
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EDF6E80C9A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 17:36:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 833BECE0BB0;
 Tue, 23 Jul 2024 17:36:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 515BEC4AF09;
 Tue, 23 Jul 2024 17:36:45 +0000 (UTC)
Date: Tue, 23 Jul 2024 10:36:44 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Kamal Heib <kheib@redhat.com>
Message-ID: <20240723103644.1fea5124@kernel.org>
In-Reply-To: <20240718181319.145884-1-kheib@redhat.com>
References: <20240718181319.145884-1-kheib@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1721756205;
 bh=H+pMoN+Pge9UnPXjUoiqgNe05Mi16Mr4ZYtXey/7ksg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GeuiCvQsKETuh0LR7u9/gwhC2nDqMrQUOtGXhIqFy20w6RhNtYnTAz0cHvTYFoyGs
 fhm5Vl2FkdEr2DxG7V27GuY/jzRd6HKHOeY20ylqxa4SlKuUCqevca3FoRhUi9KZBF
 WHqZ6LNvqRzCnskJQUy9LqvSEMvDH3xixHng7i3jeisw+WS/dC4gb+gj7+nuDVA0mB
 o6sbSK2X5icgSIDN/8YWjzGaBqAG1V7j62P/QI7h949v6llP4vHrBnw7lVYiv7j6uU
 dCGohY4Nx1n6KUCqwlNOJplCEABKEZRNiDhY9gSa88nc2FWUqfx99xjdCNc5hoC1+w
 n3YDGUHp7aDmg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=GeuiCvQs
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] i40e: Add support for fw
 health report
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
Cc: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>, "David S
 . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 18 Jul 2024 14:13:19 -0400 Kamal Heib wrote:
> Add support for reporting fw status via the devlink health report.
> 
> Example:
>  # devlink health show pci/0000:02:00.0 reporter fw
>  pci/0000:02:00.0:
>    reporter fw
>      state healthy error 0 recover 0
>  # devlink health diagnose pci/0000:02:00.0 reporter fw
>  Mode: normal

I'm not sure if health reporter is the right fit, depends on what 
the recovery mode is / does. We need documentation.
