Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A6CCF474F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 05 Jan 2026 16:41:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8109840390;
	Mon,  5 Jan 2026 15:41:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ziG_4nc09Syc; Mon,  5 Jan 2026 15:41:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D17824035F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767627702;
	bh=RcHdMaw8AhptdGcp4utbVvvwhK7VRqXu2uDwmQI2V0c=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zaDig/LnJHOUPFKwcIHje+8h9KLKeYARKLSen2rSWWJMP0Uha1PqEEMddk62orCE7
	 m13iIYE+8WlBYRSuV/cIhstTgNUsbuLdkJDAI4OZCFmNL0qFk9aK+r5ss0V8p3TcgC
	 1T//Tb75fMZMD7tfWH1nv3tV7MuynrqFIs5/lZwQbZ7n59Mc/zUni530cA7rgFhxFD
	 Q0t1eIT3UyCz8Lm7DqA4kuMpNZMwfs6CQWauX+bLQtNWugFIZYHi2JhruyWc7ncxL0
	 0/ImHk+SvOBIJnCGMmcQ1iWUKNIoI2B00IwwW1QzzCYXPczw6YShu/zsq16i85q3+0
	 kwcpHpWrS535w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D17824035F;
	Mon,  5 Jan 2026 15:41:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9AD9A2DF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 15:41:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 817D0402E0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 15:41:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6_fgpFossUwa for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jan 2026 15:41:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A7CF340116
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A7CF340116
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A7CF340116
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 15:41:40 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id DDAEC6013B;
 Mon,  5 Jan 2026 15:41:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F806C116D0;
 Mon,  5 Jan 2026 15:41:36 +0000 (UTC)
Date: Mon, 5 Jan 2026 15:41:33 +0000
From: Simon Horman <horms@kernel.org>
To: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Message-ID: <aVvbrXplVVKWQL3F@horms.kernel.org>
References: <20251218015758.682498-1-yury.norov@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251218015758.682498-1-yury.norov@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1767627698;
 bh=1Ijh46HRsW1cKwv45Sx0QnTqscqwwIKQh4+5jy8NEkk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uzZiw38UuwmMhLxZZ53n8lbsIco8flDvmO4L5OqtSGq70TPDPSxntzwOMoDp5m0vS
 uXDuIcGPep9BGyG35OK83IWn94qrnjcPkNTHi4BhoRxkDUEoebQ0Ch9aP/n/pf0rNl
 H1DN1JD/b60T91cwwptfaRYXUNOgajdaG9ceokmwKzKby7c22x7d9UOXCvdkNCpuId
 2/Y9FN2JOPU2oDNwIU0vIIKxsrswodcq6nKQeeXzKv07RTjzFFffCCWUWvKnCcvJYj
 flI6iW+RryGiqaPdIcLkKjvModZDmJC4NkaFgOzcEU7VJQfWyisilu7dbQHqcCWOZ5
 XY9jCQ6kxicfQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=uzZiw38U
Subject: Re: [Intel-wired-lan] [PATCH v2] i40e: drop useless bitmap_weight()
 call in i40e_set_rxfh_fields()
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

On Wed, Dec 17, 2025 at 08:57:57PM -0500, Yury Norov (NVIDIA) wrote:
> bitmap_weight() is O(N) and useless here, because the following
> for_each_set_bit() returns immediately in case of empty flow_pctypes.
> 
> Signed-off-by: Yury Norov (NVIDIA) <yury.norov@gmail.com>
> ---
> v1: https://lore.kernel.org/all/20251216002852.334561-1-yury.norov@gmail.com/
> v2: don't drop flow_id (Aleksandr).

Reviewed-by: Simon Horman <horms@kernel.org>

