Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD119B04580
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Jul 2025 18:32:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 867C640DFE;
	Mon, 14 Jul 2025 16:32:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7MquSIYkMe7X; Mon, 14 Jul 2025 16:32:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10BD440D6D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752510721;
	bh=4MjQopq/zSv5H8hcytjks7rnsqFf2PDj4vOGWHyFbbA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FS4tcD6TwKlxVNfUVTrkNW1BeDkBzsbuPrjJhimOLvEK8+PS+IPJCbdMVNOUz22Lg
	 k+HQNUXA9oz13FjypA5jZK0EhlgsqAuNlot5SzSXwxqjGpfOEBGsuZNKnKwPr/Gofg
	 qMwqm8f0U5DJlZPok/JmE7aULqDcc5JA1UvX/MsInYOnkvFmdIDAunQijQY+s/Sh0A
	 b9jaQyC/MCQYseNkwX+kTNT5CyaxRfSbURZ2RGOVdWmhvkVOl8FmCxxmfqtdXtp+UA
	 fb3v2PytXMc6J80UHtPQxU6BRxIVpE3vrjRaPcxQxl14rrtjforSsySpS8XwR/p7Hj
	 l07u4l2q2+9RA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10BD440D6D;
	Mon, 14 Jul 2025 16:32:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id F38A55E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 16:31:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E53CA60A5D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 16:31:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Usny0AS8UikT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jul 2025 16:31:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 743AA60A87
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 743AA60A87
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 743AA60A87
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 16:31:58 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 2C17E5C63AF;
 Mon, 14 Jul 2025 16:31:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DBE9C4CEED;
 Mon, 14 Jul 2025 16:31:55 +0000 (UTC)
Date: Mon, 14 Jul 2025 17:31:53 +0100
From: Simon Horman <horms@kernel.org>
To: Rui Salvaterra <rsalvaterra@gmail.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 edumazet@google.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20250714163153.GQ721198@horms.kernel.org>
References: <20250707092531.365663-1-rsalvaterra@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250707092531.365663-1-rsalvaterra@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1752510716;
 bh=vejXSpkDXi2CRJw5A12Vz3zkbc+lLT/K0N+b130MARE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QSEcZaJTa8+jkJIVrtp29GCnecVXC0zKAoGiBdW5ubGRpnO9qt5DggmlEmM61R+X0
 UDubWS2K/MKFK9POf8bhZjqt4uf4jShfszeDv34HERl0XVX8piWi0HsHyRj9D71/Pi
 Qg5uB8/i70n45GySJrHPODPvAQcmJRYa8KaehiNwMFFXHRGlKamcRDcCpbeVmgDU7/
 2gV6KPqeZk+vOaKyB1C5WbLvqVcBImDPpw7NCLGdy7LAtuRzsu+xMrz80AKmco7meO
 3P/7QW684VzSMEHvTSggG/IGHIvD1qZr4DE5OCS4X202yr8miEGYg0FyKB0l9ER7z/
 pGY4nrGJmEqzA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=QSEcZaJT
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igc: demote register and
 ring dumps to debug
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

On Mon, Jul 07, 2025 at 10:17:10AM +0100, Rui Salvaterra wrote:
> This is debug information, upon which the user is not expected to act. Output as
> such. This avoids polluting the dmesg with full register dumps at every link
> down.
> 
> Signed-off-by: Rui Salvaterra <rsalvaterra@gmail.com>
> ---
> 
> This file hasn't been touched in over four years, it's probably from a time when
> the driver was under heavy development (started in 2018). Nevertheless, the
> status quo is positively annoying. :)

Reviewed-by: Simon Horman <horms@kernel.org>

