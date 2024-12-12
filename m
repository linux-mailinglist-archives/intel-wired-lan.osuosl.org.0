Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8099EDD6C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2024 03:11:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E3AF841375;
	Thu, 12 Dec 2024 02:11:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id StwIwzTzWyZy; Thu, 12 Dec 2024 02:11:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3270641363
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733969514;
	bh=OT2iUpXAQuUE6jCoRR/QMcoySZBZOdZ5bRCY/yC6nq4=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=V0XvwaMiyGnsVGb9jCvM7bZOJNG9GGMXydicULDCBEM8kGfEhyOMKSg+n1e8qrmn8
	 3tCTya0QGozjqinIVqNBLcIvZG4Yu/LcQoNtrSJZAKdHs3YcRduvngHi8HUks4YZNj
	 j8/Oy3A0SDTeAG2uXL4fr7dC9MDAuMIcAPdAsrBNn8depZyzC44VDjX9MfUCXWRO6g
	 eHS2W7LexBg82zceeQ9Q827klVai4jHY0FmmVVren4z7sFNkPZJQioRU3zeVJht9Ga
	 je/XoUOJoD9UJx3yE22nyfiTx2jodsbeeuwt2BLf3dAzEoCHzb+FxCFXRetO0I/Tj6
	 ortsm64nrX9Gg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3270641363;
	Thu, 12 Dec 2024 02:11:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D0A3C1146
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 02:11:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B219341352
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 02:11:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vbSzD9-eo5Wk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2024 02:11:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D904E4132B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D904E4132B
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D904E4132B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 02:11:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4D36B5C6867;
 Thu, 12 Dec 2024 02:11:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17CFEC4CEDD;
 Thu, 12 Dec 2024 02:11:49 +0000 (UTC)
Date: Wed, 11 Dec 2024 18:11:47 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@linux.intel.com>
Cc: netdev@vger.kernel.org, andrew+netdev@lunn.ch, horms@kernel.org,
 jiri@resnulli.us, stephen@networkplumber.org, anthony.l.nguyen@intel.com,
 jacob.e.keller@intel.com, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org
Message-ID: <20241211181147.09b4f8f3@kernel.org>
In-Reply-To: <b3b23f47-96d0-4cdc-a6fd-f7dd58a5d3c6@linux.intel.com>
References: <20241209131450.137317-2-martyna.szapar-mudlaw@linux.intel.com>
 <20241209153600.27bd07e1@kernel.org>
 <b3b23f47-96d0-4cdc-a6fd-f7dd58a5d3c6@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1733969509;
 bh=u4Ab/RrhNENWre9NH1ASUMwA1i2WxPNZzyYljqFy7zU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Gq7lkd7jPGIBym0vqjBJiH0mvdOTP7DSLDCUrdIql9yYLAk32kzuz18q6xCIkJda5
 fdcDyi8Se8xk84BktYyvSYt6/8Xqf/Ai965mzhwUEOeb1oyj1N41cc14UbFCq0eGLx
 LRbL9YSnJMzHSjpHKh4g2TpUtM6U8qdF8M1RCPYMMOiKFQUYmkd0QQIhlSYGh6Hct5
 6BpAzIcltwqDlauibhGFOWgqtgeoNeciSroGCWIIaMJ1YYFW4FWGsVCNZ9Kv112bCx
 7KDeMmwcZEkLfYGNeQyPszWk5TDsGUz1+S2pnRsgGG1QZ0lKcCx0yyYsbrwXhNoHB+
 yVGF0+CSZpjtg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Gq7lkd7j
Subject: Re: [Intel-wired-lan] [RFC 0/1] Proposal for new devlink command to
 enforce firmware security
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

On Wed, 11 Dec 2024 13:15:06 +0100 Szapar-Mudlaw, Martyna wrote:
> This patch does not aim to introduce a new security mechanism, rather, 

What I was referring to when I said "devlink doesn't have a suitable
security model" is that we have no definition of what security guarantees
we provide. Nothing in devlink is authenticated at all. 

Anti-rollback is fundamentally about preventing FW compromise.
How do you know that the FW is not compromised with devlink?

> it enables users to utilize the controller's existing functionality. 
> This feature is to provide users with a devlink interface to inform the 
> device that the currently loaded firmware can become the new minimal 
> version for the card. Users have specifically requested the ability to 
> make this step an independent part of their firmware update process.

I know, I've heard it for my internal users too. Vendors put some
"device is secure" checkbox and some SREs without security training
think that this is enough and should be supported by devlink.

> Leaving in-tree users without this capability exposes them to the risk 
> of downgrades to older, released by Intel, but potentially compromised 
> fw versions, and prevents the intended security protections of the 
> device from being utilized.
> On the other hand always enforcing this mechanism during firmware 
> update, could lead to poor customer experiences due to unintended 
> firmware behavior in specific workflows and is not accepted by Intel 
> customers.

Please point me to relevant standard that supports locking in security
revision as an action separate from FW update, and over an insecure
channel.

If you can't find one, please let's not revisit this conversation.
