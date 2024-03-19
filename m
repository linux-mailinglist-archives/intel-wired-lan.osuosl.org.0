Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B2987FD73
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Mar 2024 13:20:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2C45406D4;
	Tue, 19 Mar 2024 12:20:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iqoEqZ50XDBk; Tue, 19 Mar 2024 12:20:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD52E406D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710850836;
	bh=/JUzSNwMGiexr9JmNWOvy45OaME6cGyDhUFtqcrgpGg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7JG8AojwysW8aA9Yik0jKt4bl3O1rX1VJeD7gFypQ6PR/1JKiwrbgQXC5kOnlvUJl
	 5tam+ERuhBSjdHg48YczJLHIBrofzyI9UtlhhYlmVzIg/jsVBFre6f6c/PRmdAvZU+
	 A/40JmBekcF+1xXCezD8kA4RSaysDT7Y0So9bP6vjmFADn1+jjb4Zro3tHggIWG66k
	 PkVzBwalJMad7bt7yIuXW4gXtC2vG1zBMM2oFDRVoK034Y1Q6YR91xX9B17wnH9QuC
	 qaq2ldS7q4GQO+XAPIPuL4jf/iiHj1CjQmOkJCOSMWZvMnAehWS5SqPl8CUqk7FyGW
	 RGKwhJyk2YGJw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD52E406D1;
	Tue, 19 Mar 2024 12:20:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 173131BF406
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 12:20:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0FAC840BAC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 12:20:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O5eU8-rqfC0F for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Mar 2024 12:20:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1CC7640B9B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1CC7640B9B
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1CC7640B9B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 12:20:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 8D465CE09CF;
 Tue, 19 Mar 2024 12:20:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83730C433F1;
 Tue, 19 Mar 2024 12:20:26 +0000 (UTC)
Date: Tue, 19 Mar 2024 12:20:24 +0000
From: Simon Horman <horms@kernel.org>
To: Erwan Velu <e.velu@criteo.com>
Message-ID: <20240319122024.GJ185808@kernel.org>
References: <20240313090719.33627-2-e.velu@criteo.com>
 <20240318174503.GE1623@kernel.org>
 <d33b98de-dfc0-445e-bdd7-0ae76d050ed4@criteo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d33b98de-dfc0-445e-bdd7-0ae76d050ed4@criteo.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1710850828;
 bh=tNjc7nnylbSais8DsBZzrd94/93ipPvqn/Y1zZVH5cY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SbHqefuwZCTg0JhEXhmcav1tqE1RvW1qxgfFL3NcJMxJPjvFqXymUJMuM5zHZPQyH
 RpqEg6luMeCCical3TSfiYCfH13sfAD8yFcNsk51GavJpxfWumLcUBMKrf6sq6Eldf
 /9bX5L3dLu0QFgZ2565+JYS1Xjeo1f7GHysCEYqFj32ovCjs0jMxBVXrvJDPJVLvB8
 kP+xLED7mQkRw9KWRzyRfiu50/5WMhqSLooGP2y9osfNbxjUg/zA6/4X6uaKfQ+6cB
 skse6WaHo5ZIvL8Q5I3wNfbuaOpBOLOiV2SJuvn69xr90FmtJ15sohFbmZQPc/D9SP
 L+GFTTTCp1SwA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=SbHqefuw
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-net] i40e: Prevent setting MTU
 if greater than MFS
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
Cc: Erwan Velu <erwanaliasr1@gmail.com>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 19, 2024 at 12:38:03PM +0100, Erwan Velu wrote:
> 
> Le 18/03/2024 à 18:45, Simon Horman a écrit :
> > [...]
> > Hi Erwan, all,
> > 
> > As a fix, I think this patch warrants a fixes tag.
> > Perhaps this one is appropriate?
> > 
> > Fixes: 41c445ff0f48 ("i40e: main driver core")
> 
> Simon
> 
> Isn't that a bit too generic ?

Yes, maybe it is.
What we would be after is the first commit where the
user can hit the problem the patch addresses.

> [..]
> 
> > I am fine with this patch, so please take what follows as a suggestion
> > for improvement, possibly as a follow-up. Not as a hard requirement from
> > my side.
> > 
> > The part of this function between the two hunks of this patch is:
> > 
> >                  netdev_err(netdev, "Error changing mtu to %d, Max is %d\n",
> >                             new_mtu, frame_size - I40E_PACKET_HDR_PAD);
> > 
> > My reading is that with this patch two different limits are
> > checked wrt maximum MTU size:
> > 
> > 1. A VSI level limit, which relates to RX buffer size
> > 2. A PHY level limit that relates to the MFS
> > 
> > That seems fine to me. But the log message for 1 (above) does
> > not seem particularly informative wrt which limit has been exceeded.
> 
> I got some comments around this.
> 
> I wanted to keep my patch being focused on the mfs issue, but I can offer a
> patch to get a similar output for this. What WRT stands for ?
> 
> 
> I wanted also to make another patch for this :
> 
> dev_warn(&pdev->dev, "MFS for port %x has been set below the default:
> %x\n",pf->hw.port, val);
> 
> The MFS reported as hex without a "0x" prefix is very misleading, I can
> offer a patch for this too.

FWIIW, I think handling these questions in follow-up patches is fine.

