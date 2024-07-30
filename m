Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E529414DF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 16:55:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4CDD360A45;
	Tue, 30 Jul 2024 14:55:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ldjI0n4uFMqE; Tue, 30 Jul 2024 14:55:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB3DB60A3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722351314;
	bh=yTFuW1zZ0h5VOsw/16TAkTrWhwKTT7NDMXQBE9DcRrA=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=apFQeSSCIa5Z80yBF1TO4E9qmLeoX7IVlXAcMun0PNbeNIRnYC1B3WtT8AEso+DNV
	 1lTVwbadEnPETlqOMr0oY1ilCY79K/uAycHNL0/uHU0y+dFm1q2x89gpmUVoyn3/u8
	 bxFLvKbSE2HNvOkGCZ+q5iuxPu7k2k7juLqar6yknGYvXo3LOjO7eGlRatZcw3IYDX
	 c4vJ4l4cRfuSsz3CljWVgmkbgDc2h2MdV5JC8Fe+apf4ZAiGUf1POuCw7LLTil7szb
	 H9oI6x4ZL1GMh07Gt7c0255RACNqDsPwlFaYrfXN2v5pxT9AvXSmutHopj65DoVHbo
	 DJgPMq9fu9Eww==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB3DB60A3D;
	Tue, 30 Jul 2024 14:55:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 258F71BF95F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 14:55:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 121664026E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 14:55:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HRibG8eTmc3m for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 14:55:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B8C2D400E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B8C2D400E2
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B8C2D400E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 14:55:10 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id D9E9561F32;
 Tue, 30 Jul 2024 14:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2983C4AF0C;
 Tue, 30 Jul 2024 14:55:08 +0000 (UTC)
Date: Tue, 30 Jul 2024 07:55:07 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Song Yoong Siang <yoong.siang.song@intel.com>
Message-ID: <20240730075507.7cf8741f@kernel.org>
In-Reply-To: <20240730012212.775814-1-yoong.siang.song@intel.com>
References: <20240730012212.775814-1-yoong.siang.song@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1722351309;
 bh=yTFuW1zZ0h5VOsw/16TAkTrWhwKTT7NDMXQBE9DcRrA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=WWbP96v33470og1PQG5/a/iPCkO4o1YDteo3goQhYpVhVnbi6Uixvw+2Q/4Z4Eg+T
 l2hYwqzkSxfUH53kNtL6dApvsIlv66ATHQOMGh+s95E6V/LUugE+Ic7J4gDELIhszz
 GqFPUjKq9Jw2U2ihSwiutwviqXB2WAYu4fAtKzhOAgnKBWlpekj+wdAcTttpmIwsh3
 veSeyYAcjKG0rb1QC80/MXtO+ikY1b2NZ4WNV90buWKyfSPrnKVFO8DNfjeF2zE/au
 mQrnFtQJGezT7pL7RVQbXgXYm5xo556KhTu3jOio4wUJGSlxxxzagoT9QSe3aRh6Br
 ks5nce1/xL8Ng==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=WWbP96v3
Subject: Re: [Intel-wired-lan] [PATCH iwl-next,
 v1 0/3] Add Default Rx Queue Setting for igc driver
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
Cc: Sasha Neftin <sasha.neftin@intel.com>,
 Brett Creeley <brett.creeley@amd.com>, linux-doc@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Blanco Alcaine Hector <hector.blanco.alcaine@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Jonathan Corbet <corbet@lwn.net>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Shinas Rasheed <srasheed@marvell.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, Kevin Tian <kevin.tian@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>, netdev@vger.kernel.org,
 Joshua Hay <joshua.a.hay@intel.com>, linux-kernel@vger.kernel.org,
 bpf@vger.kernel.org, "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 30 Jul 2024 09:22:12 +0800 Song Yoong Siang wrote:
> This patch set introduces the support to configure default Rx queue during runtime.
> A new sysfs attribute "default_rx_queue" has been added, allowing users to check
> and modify the default Rx queue.

Why the extra uAPI.. a wildcard rule directing traffic to the "default"
queue should do.
