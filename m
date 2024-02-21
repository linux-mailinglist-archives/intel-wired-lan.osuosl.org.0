Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E969F85ED19
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 00:38:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7ABF741906;
	Wed, 21 Feb 2024 23:38:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J3151NTRxMrl; Wed, 21 Feb 2024 23:38:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8D27418E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708558691;
	bh=r0ixIQ7SfhnjHSNmtPy37Dxhc1HmdomsLnr+HFTACKU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hOT8YTlq0EsdzNfp3Fjxucc1PL3HDwRxTTD1rYzV4lng7/5vuBQ/7cxOzi5hNsriN
	 Ri/jF2xWtpesuhXeX3g4QM/dnaYFv21xsvr7OtivYGweXzbdZAZt8NYpTUrZh6UoyT
	 z+GqWQQ77iKtaOA4mEjSsdwfrhK+rShavgx2WwYoqK/LjjjTZ5L7Cn3L5Ayc6n5Etc
	 uHzAYscrWpjfL1yw6UTbMcp4GQk05H1oYmfk8hzcZQOkyMnILdANdZJZM2ZizSRJ84
	 UEZ3FULUpxQXRrepT9ckt7U0TJFtrZEW1ostiMywv8k8OsI2H0C9xf0jWY14EJr0Qf
	 paivy6mSBWkLg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8D27418E6;
	Wed, 21 Feb 2024 23:38:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A6BE11BF429
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 23:38:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9F024417D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 23:38:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id koQucRHTeAra for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Feb 2024 23:38:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BFFF9415AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BFFF9415AD
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BFFF9415AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 23:38:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 43160616AB;
 Wed, 21 Feb 2024 23:38:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3D42C433F1;
 Wed, 21 Feb 2024 23:38:06 +0000 (UTC)
Date: Wed, 21 Feb 2024 15:38:05 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <20240221153805.20fbaf47@kernel.org>
In-Reply-To: <ZdNLkJm2qr1kZCis@nanopsycho>
References: <20240219100555.7220-1-mateusz.polchlopek@intel.com>
 <20240219100555.7220-5-mateusz.polchlopek@intel.com>
 <ZdNLkJm2qr1kZCis@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1708558687;
 bh=2QrUFdv9xHtNdIxwF2NAF1ID/1pi4TfXta05K36OQos=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=BWJviSidnR8R0G4NLdwmejlYiJ998b7XbMOBADJz8ac/lXte32lHpVylJ26wrKgbZ
 r+xH/ocxJ+S2B1CgzEWhGlJvAjJTBQlD4eXvjLDyL84y6IrEdHl7zJhoVqFRZyn6y0
 SVleTCFFDDBlT7VyatPkhFCMoQ06MU2w9oRclrjnBqOrmXudWNGtOMqHMiXhy6zUZy
 UxeiKbhxMKmI9olSsf3xXzp1cVr0vlCzw2mDZp305g7exKdojPnOk9/18ETiCdMUYg
 BVD9QSHV0+5Lvc5AG9JbyuPeflqoX9MBmdMWqlpjF4wyJc7oAU0YMuFWyienWLxlEe
 bCZ2FKoeoTedQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=BWJviSid
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 4/5] ice: Add
 tx_scheduling_layers devlink param
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
Cc: Mateusz Polchlopek <mateusz.polchlopek@intel.com>, netdev@vger.kernel.org,
 Lukasz Czapnik <lukasz.czapnik@intel.com>, intel-wired-lan@lists.osuosl.org,
 horms@kernel.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 19 Feb 2024 13:37:36 +0100 Jiri Pirko wrote:
> >devlink dev param show pci/0000:4b:00.0 name tx_scheduling_layers
> >pci/0000:4b:00.0:
> >  name tx_scheduling_layers type driver-specific
> >    values:
> >      cmode permanent value 9
> >
> >Set:
> >devlink dev param set pci/0000:4b:00.0 name tx_scheduling_layers value 5
> >cmode permanent  

It's been almost a year since v1 was posted, could you iterate quicker? :( 

> This is kind of proprietary param similar to number of which were shot
> down for mlx5 in past. Jakub?

I remain somewhat confused about what this does.
Specifically IIUC the problem is that the radix of each node is
limited, so we need to start creating multi-layer hierarchies 
if we want a higher radix. Or in the "5-layer mode" the radix 
is automatically higher?
