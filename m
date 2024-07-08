Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B455392A312
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2024 14:42:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A24480EA5;
	Mon,  8 Jul 2024 12:42:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p4ijdaZz2m3q; Mon,  8 Jul 2024 12:42:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC24580D75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720442556;
	bh=SQ25DH3FAQ690I+hFpCETtsPY0NleA8C2qdDxpJrVFE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E6+9h1OuDR2kzu3lGxcgtrGbggDLiflV6MRSK05WduyUq+un8U0Xtt0wx1aiWZFu0
	 QNOBJ3ka3cdXLXEkytnCVuxW8XyntLLZAy54h2acO9rg0i5NjndGs0XRx9CScTToje
	 gw1tMD69wZ59QB7YwWSbPOAmjVf61UyTn/aP4/vGUku85MhgKQ6QyR0FH4mtr7eALI
	 XqidZ13vvCdsDcjL5xMqasTN3DM6Y7JdHFPRaJhXr26Q2lepfvGJDnWAzNqKMXiO5L
	 bWaR93CRoGAPDtFVdN1Et2g+OAbGaVnoOL7hI9OLWZIcmF0+kpM2t0dS4n1OfTOyHG
	 PorbnKk+W/+Gw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC24580D75;
	Mon,  8 Jul 2024 12:42:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 278E01BF390
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 12:42:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1F6A640582
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 12:42:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WZ-K5l6QjRJr for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2024 12:42:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 490424012D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 490424012D
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 490424012D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 12:42:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 91B8C60ABB;
 Mon,  8 Jul 2024 12:42:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5219C116B1;
 Mon,  8 Jul 2024 12:42:30 +0000 (UTC)
Date: Mon, 8 Jul 2024 13:42:28 +0100
From: Simon Horman <horms@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20240708124228.GS1481495@kernel.org>
References: <20240703125922.5625-1-mateusz.polchlopek@intel.com>
 <20240703125922.5625-7-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240703125922.5625-7-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720442553;
 bh=fKVbR/FP1XbnZ96DUlSQR8n5Q2rNwrc61LpUImOtSho=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SnNZEtumS7GE5Px0dl+3NAB+RGTzHl29tMBpqYz5C6Htkku4F+SD7EgR3/38X981g
 OwNQIYVU9Pc/8+Xipk+k/WpoeP/d6ckv2nOXQQO2yTwtCCQMHi+ZOsjM8chs5O6e+Q
 FTic87tgopObdlFRgyjrV0DCwmbQit6URpiac6gE+vI2a+CQ6/BFt7flbTRqmKvKDW
 6dtNMUfmRCnnRfKJk5Bph9nE8mmDzPUFPte+uFOfo9kOFuYIPVCpykd9JS4ucLBQx6
 uJnovnz1DVHYEtkWk+5ptoJSoN29nTdEeHXKg8p68YnwOwYIy64AwET9kkApgHLbOE
 plNfkwWW3kUdQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=SnNZEtum
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 6/6] ice: devlink health:
 dump also skb on Tx hang
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
Cc: willemb@google.com, Wojciech Drewek <wojciech.drewek@intel.com>,
 dwaipayanray1@gmail.com, linux-kernel@vger.kernel.org, joe@perches.com,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 apw@canonical.com, lukas.bulwahn@gmail.com, akpm@linux-foundation.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 03, 2024 at 08:59:22AM -0400, Mateusz Polchlopek wrote:
> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> Extend Tx hang devlink health reporter dump by skb content.
> 
> This commit includes much code copy-pasted from:
> - net/core/skbuff.c (function skb_dump() - modified to dump into buffer)
> - lib/hexdump.c (function print_hex_dump())
> 
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

