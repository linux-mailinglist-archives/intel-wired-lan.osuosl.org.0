Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B79B7AE074C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jun 2025 15:32:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A16360BE6;
	Thu, 19 Jun 2025 13:32:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VZks_GLwsxsx; Thu, 19 Jun 2025 13:32:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D49D060B4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750339949;
	bh=9/UZ6tiEopPcNsY4ef+w0u5tOLnmJhAGZN16/Iup9GQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xamio/brjmtMv4SdcTZkhTHchRYR/icJsTdH4iznVrgWtUX4ZZys4aDm2s0JRIl5l
	 9/HrYzb1cMzxC64tDmcFCfKgMz385mzhp+TWWyElAOirtaSBti3G0GKMG3JehD5Atl
	 BKc15nWUha3DDoPADEq6RR9rpr68y4raviLDrNuUxNaKUfn2QWVHZpxXnV9E7LgnZ/
	 r4HgCEt9uONrN4z0awV5z8+76WDu9GiDi85xPE+16RPYvuV8WFjrmi9a3E17y5SZdN
	 L+QsA9qcZWyF72MXt6rLQ2royvJgQLvPprdIuxuqiQ890p4DFTgQDxKomqf1QgV2n8
	 pnV2jWVHIGX7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D49D060B4B;
	Thu, 19 Jun 2025 13:32:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 01E09E2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 13:32:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DBF094070A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 13:32:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HehbSoX5mr2P for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jun 2025 13:32:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 63C50406E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63C50406E6
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 63C50406E6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 13:32:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id F322B61148;
 Thu, 19 Jun 2025 13:32:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9043C4CEEA;
 Thu, 19 Jun 2025 13:32:22 +0000 (UTC)
Date: Thu, 19 Jun 2025 14:32:20 +0100
From: Simon Horman <horms@kernel.org>
To: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>, Tariq Toukan <tariqt@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250619133220.GQ1699@horms.kernel.org>
References: <20250618-restricted-pointers-net-v3-0-3b7a531e58bb@linutronix.de>
 <20250618-restricted-pointers-net-v3-2-3b7a531e58bb@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250618-restricted-pointers-net-v3-2-3b7a531e58bb@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750339945;
 bh=j9iLegeQo2jV0KzEvzzpbe0VOrBkC6hck/nmSKy8Ptg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QyB0p6+JDQrIeeyW5uhvwbTNfV8xk0T5Z5xxG656wpiBrhYrURuUPWozxQvOwD/2F
 vptJlUVN69OtsxVi65oGdoKQ2NxSfr26VCKqYZ6eDozfnXId2/IlFEdjP+VU2VnUPB
 XDAVSXbVexRbPTirEM9lkYzI9a+miSrXCnPJvlB0Kpprm5ua1SxcaSYz+5HSiNfosH
 FgYFdnGuZU0au5yDBd3t4VBp9biNAtbN/Rbtl8MOEGIUhKZrqzcIoDD57mXLXEmWt6
 M6nnROu2OgqYhWk+pAwi3olOB19/IZ4w1YQgiDiksXu06drMOUltakK3LqswnTq+SG
 9uPgrbCgUzqVw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=QyB0p6+J
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/2] net/mlx5: Don't use
 %pK through printk or tracepoints
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

On Wed, Jun 18, 2025 at 09:08:07AM +0200, Thomas Weißschuh wrote:
> In the past %pK was preferable to %p as it would not leak raw pointer
> values into the kernel log.
> Since commit ad67b74d2469 ("printk: hash addresses printed with %p")
> the regular %p has been improved to avoid this issue.
> Furthermore, restricted pointers ("%pK") were never meant to be used
> through tracepoints. They can still unintentionally leak raw pointers or
> acquire sleeping locks in atomic contexts.
> 
> Switch to the regular pointer formatting which is safer and
> easier to reason about.
> There are still a few users of %pK left, but these use it through seq_file,
> for which its usage is safe.
> 
> Signed-off-by: Thomas Weißschuh <thomas.weissschuh@linutronix.de>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Tariq Toukan <tariqt@nvidia.com>

Reviewed-by: Simon Horman <horms@kernel.org>

