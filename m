Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A55029D1533
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Nov 2024 17:19:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E67484C6F;
	Mon, 18 Nov 2024 16:19:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bJ31DIwNjASG; Mon, 18 Nov 2024 16:19:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC88A84B32
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731946764;
	bh=tp2Q+8b3zGUBih3afpuzhAn88G4uKrpXKwQ9ivMWqHM=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xEuUAy9IYdc/4KIT/SvhlFgYQLCXDEItiWp3xgxOgoFAultUJ6WPUQ1SQ1ztVZEEG
	 7D/D0vvjdcxPn2bzaSON+qRoi88A1zwdyk1OPKIGGus3zbanonINZpExVzIUav509F
	 9GNKbndir9exhVmGKEhxZSBgwP42HMpTDMy9Y0YNdt19qWWJo1JWjT6RIMvLwvsGY0
	 Y9mXcdw4Qp63MXx8+nEsBj9EBr8jygRkx/GWnWV2c6oWdol7KsuOTOO22qZHWmd3wA
	 1LFItPFtXHpXYKG3yiEctTfyItA1hjwQrhaT3N+i1U8vAsI2wXdEuweFQY+xavA4o0
	 tDKZrVO3YYKUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC88A84B32;
	Mon, 18 Nov 2024 16:19:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 083B0B14
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Nov 2024 12:31:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 040346073B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Nov 2024 12:31:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bJOjL0gZ0YFd for <intel-wired-lan@lists.osuosl.org>;
 Sun, 17 Nov 2024 12:31:50 +0000 (UTC)
X-Greylist: delayed 383 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 17 Nov 2024 12:31:49 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E90D360729
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E90D360729
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2404:9400:2221:ea00::3; helo=mail.ozlabs.org;
 envelope-from=michael@ellerman.id.au; receiver=<UNKNOWN> 
Received: from mail.ozlabs.org (mail.ozlabs.org [IPv6:2404:9400:2221:ea00::3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E90D360729
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Nov 2024 12:31:49 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (Client did not present a certificate)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4Xrqhp5Zp2z4xf5;
 Sun, 17 Nov 2024 23:25:14 +1100 (AEDT)
From: Michael Ellerman <patch-notifications@ellerman.id.au>
To: linux-gpio@vger.kernel.org, Julia Lawall <Julia.Lawall@inria.fr>
Cc: kernel-janitors@vger.kernel.org, audit@vger.kernel.org,
 linux-mtd@lists.infradead.org, Zhihao Cheng <chengzhihao1@huawei.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-usb@vger.kernel.org, linux-mm@kvack.org, maple-tree@lists.infradead.org,
 alsa-devel@alsa-project.org, Sanyog Kale <sanyog.r.kale@intel.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>, dccp@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Jan Kara <jack@suse.cz>,
 drbd-dev@lists.linbit.com, linux-sound@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 nvdimm@lists.linux.dev, linux-leds@vger.kernel.org,
 Nicholas Piggin <npiggin@gmail.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Naveen N Rao <naveen@kernel.org>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 linuxppc-dev@lists.ozlabs.org, tipc-discussion@lists.sourceforge.
 net, Robin Murphy <robin.murphy@arm.com>, iommu@lists.linux.dev,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 linux-trace-kernel@vger.kernel.org, Neil Brown <neilb@suse.de>,
 Olga Kornievskaia <okorniev@redhat.com>, Dai Ngo <Dai.Ngo@oracle.com>,
 Tom Talpey <tom@talpey.com>, linux-nfs@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, linux-wireless@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
In-Reply-To: <20240930112121.95324-1-Julia.Lawall@inria.fr>
References: <20240930112121.95324-1-Julia.Lawall@inria.fr>
Message-Id: <173184539760.890800.14513086226459117952.b4-ty@ellerman.id.au>
Date: Sun, 17 Nov 2024 23:09:57 +1100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 18 Nov 2024 16:19:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ellerman.id.au; s=201909; t=1731846322;
 bh=tp2Q+8b3zGUBih3afpuzhAn88G4uKrpXKwQ9ivMWqHM=;
 h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
 b=mTU1+u6copmZDAjfqnXWv+2ujIPjQ3JtoGu9so550WGMXDTKHgPRUtKWL5WTQKacA
 ukYIXyZnvXaIaM7phYyg2ffevuNcZwkVM+fGzA0yJe4hA6ivVJfsyMN2k5es56Dca2
 xnyEpYxwi2vRkSTSXt4SDnE54vHeCtrhpgtS0p+MhXC1a/iPqUZ6noNUE4xD/tX6x3
 9xyLmagErBzssEeKDZj2zkr4owFCFT2YctuTq6qJ9KGCJplX90TRwhVHol5EujIAFV
 JLHuHIFQhKPYuj26daIFU9Gqj0sP+YYyQFfmqJ5wJevMLVh4tXn5ub20TQGEUboHP9
 4WeeB6bi4EbDw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=ellerman.id.au
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key)
 header.d=ellerman.id.au header.i=@ellerman.id.au header.a=rsa-sha256
 header.s=201909 header.b=mTU1+u6c
Subject: Re: [Intel-wired-lan] (subset) [PATCH 00/35] Reorganize kerneldoc
 parameter names
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

On Mon, 30 Sep 2024 13:20:46 +0200, Julia Lawall wrote:
> Reorganize kerneldoc parameter names to match the parameter
> order in the function header.
> 
> The misordered cases were identified using the following
> Coccinelle semantic patch:
> 
> // <smpl>
> @initialize:ocaml@
> @@
> 
> [...]

Applied to powerpc/next.

[11/35] powerpc/ps3: Reorganize kerneldoc parameter names
        https://git.kernel.org/powerpc/c/276e036e5844116e563fa90f676c625bb742cc57

cheers
