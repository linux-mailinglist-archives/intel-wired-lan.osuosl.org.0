Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D118B4BE5
	for <lists+intel-wired-lan@lfdr.de>; Sun, 28 Apr 2024 15:07:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E7B340563;
	Sun, 28 Apr 2024 13:07:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mVa1Ipr-ga3W; Sun, 28 Apr 2024 13:07:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99F1440527
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714309650;
	bh=kC9nvysfg+MnEZelPTpf4i0NA9qXrLb5T1xFL2WZcco=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xWcFJ00rrajGrIM9IBB9Bq2UDSSlgcsYnPZRSwwZUVvkQSHyOFgHG/shQsPYbEMTb
	 G1XI6a8niPPat3ASSqSUY/E2nd5wyoH+ZJ7TldDUNeHg6cdHyUp2RRqzFZ1gEU3tmx
	 UWvq7jWIbD5fEcdvKexHf5REGAEb9dJQQJx3t4KMhW44mC/3omFv0muQzeVbDUaqUD
	 KcCp/uXDIAaOqzZQ4W/fOvS2cT90vIYuj8KjbD4Nenj/CAcyG2NL7hMaj7m+Bp19XE
	 6dSlipFJ9nZcC4aUS0j+QUAKyO6fcR26wzrmqxvj13EThI2trg+Uq7vGjEGbJBHqMf
	 2+gicHmNmc8SA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99F1440527;
	Sun, 28 Apr 2024 13:07:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B42361BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Apr 2024 13:07:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9EDDB400FE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Apr 2024 13:07:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YPg20UlAtrrX for <intel-wired-lan@lists.osuosl.org>;
 Sun, 28 Apr 2024 13:07:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0C063400D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C063400D9
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0C063400D9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Apr 2024 13:07:26 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 87152CE021B;
 Sun, 28 Apr 2024 13:07:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E3CCC113CC;
 Sun, 28 Apr 2024 13:07:19 +0000 (UTC)
Date: Sun, 28 Apr 2024 14:05:47 +0100
From: Simon Horman <horms@kernel.org>
To: Corinna Vinschen <vinschen@redhat.com>
Message-ID: <20240428130547.GV516117@kernel.org>
References: <20240423134731.918157-1-vinschen@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240423134731.918157-1-vinschen@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1714309642;
 bh=9yyE8eKKUc/4RgJtB91ozG6CzRgB3As3mCsWRI33/p8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r/guf0pdPIsuUe0cpmgz5Sa/Tenb1I0LoY3zNdoDXGIfG6OEQiZ80sJwWn/8B2wx/
 4vM4xurlTQWZYLbMQ6906XXRVQqPAPx2SCGLYWo5ptROnX9dASaf9+szPiymGckRj3
 YJ9rvucBXr9Q3BiaW69uVmgT3YtzZxQC8fX1LnBqPFSjRAUVf0Uktl9gmwOkR+F57J
 aRkpk72IcQEzyujKFfxh86eHPDU4/vwJdD7CQmBTRQypYQvDuqKDO7DGpvCHZRFRbt
 zS2D45/U/6Yn8W9OpZkRE0AlR5LfDCHxoUyMmAoMqr04nVcLnyAx+Cb2LgtTwDV50w
 kWwUWzzd7HqSQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=r/guf0pd
Subject: Re: [Intel-wired-lan] [PATCH net v2] igb: cope with large
 MAX_SKB_FRAGS
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
Cc: Jason Xing <kerneljasonxing@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Apr 23, 2024 at 03:47:31PM +0200, Corinna Vinschen wrote:
> From: Paolo Abeni <pabeni@redhat.com>
> 
> Sabrina reports that the igb driver does not cope well with large
> MAX_SKB_FRAG values: setting MAX_SKB_FRAG to 45 causes payload
> corruption on TX.
> 
> An easy reproducer is to run ssh to connect to the machine.  With
> MAX_SKB_FRAGS=17 it works, with MAX_SKB_FRAGS=45 it fails.
> 
> The root cause of the issue is that the driver does not take into
> account properly the (possibly large) shared info size when selecting
> the ring layout, and will try to fit two packets inside the same 4K
> page even when the 1st fraglist will trump over the 2nd head.
> 
> Address the issue forcing the driver to fit a single packet per page,
> leaving there enough room to store the (currently) largest possible
> skb_shared_info.
> 
> Fixes: 3948b05950fd ("net: introduce a config option to tweak MAX_SKB_FRAG")

nit: The trailing "S" in the subject for the fixes tag seems to have been lost.

Fixes: 3948b05950fd ("net: introduce a config option to tweak MAX_SKB_FRAGS")

> Reported-by: Jan Tluka <jtluka@redhat.com>
> Reported-by: Jirka Hladky <jhladky@redhat.com>
> Reported-by: Sabrina Dubroca <sd@queasysnail.net>
> Tested-by: Sabrina Dubroca <sd@queasysnail.net>
> Tested-by: Corinna Vinschen <vinschen@redhat.com>
> Signed-off-by: Paolo Abeni <pabeni@redhat.com>

...
