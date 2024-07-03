Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA35926700
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2024 19:22:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 54619846BA;
	Wed,  3 Jul 2024 17:22:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4Omrm1CXPWTd; Wed,  3 Jul 2024 17:22:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61C9C846BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720027371;
	bh=9LIVBBsr5/syUDeG1rKzbMaUKGsoQeFn5LWnPFsI/ng=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2PWVibgpVhw5DuKtLJdjJkVl89LRV+N/N3zHW5v508IlOSI8sK8VPWGW5Ikuc4rqR
	 +KLCCCASN+uMy09TeqUQik8BQypw8mhCF/TVaGj0imJaACympDIXHGtFaQOeRRdeuv
	 OBb3IoRmmbC2mRazKpIgCFi74sSI/lXc1EBzcCC3hvs5LklCN3xiuVhM8MHhEfRx3L
	 Y0Bg+dEhSV4+OYH9EspboTa1KKKa6EgKul14dPwG/woFmQSBTqhbf9p8ocZk5HYO83
	 EPkAkSSznvEPQCPDs7xCReeS/FIpWYXc/uSW6uLGafIXQ8DfGez0nhAXoqnrfX00iz
	 pVFeSefSqtvig==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61C9C846BD;
	Wed,  3 Jul 2024 17:22:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A48141BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 17:22:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 901834179E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 17:22:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2nbEyRHeO4Un for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2024 17:22:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9ACEF41793
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9ACEF41793
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9ACEF41793
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 17:22:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6127E623B9;
 Wed,  3 Jul 2024 17:22:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E360AC2BD10;
 Wed,  3 Jul 2024 17:22:45 +0000 (UTC)
Date: Wed, 3 Jul 2024 18:22:43 +0100
From: Simon Horman <horms@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20240703172243.GI598357@kernel.org>
References: <20240702213847.2607508-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240702213847.2607508-1-anthony.l.nguyen@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720027367;
 bh=baXKJdkCT9UM2CmgsOZQp1G4WvQyPOBd/uM2F+q0fbc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=evkFV+I7NYa3wWnOAcV2oHDTkTTtLIVbce8LJkob+jkv0votp2d+sqz6H6x8j6ZvA
 nZmImLXnxX3jsQBwf/4riu9urh5slpKk5XqbGYcWxcVQgkI5cZPJZ86rnTOqe9SVgr
 aKEpWxDEeZKAc5AcMx5pHp2OqogFWAUBZO5XGQWVQcjRH1Jj1dFGCOepsiuNCrKHf3
 MawPj/UiEBcU8I8Vk2Ytd+o00H87tGLnJeuGsc4R60skj02mx3cGxVF9sRuz8RumDq
 4QdY7pHSQ5To4dvdDAqVwU3WCoBg5SiDa8RF49F8xL2MfFX0VLKkNUp9Zy7vomIbLt
 8oxzktUr1ntSg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=evkFV+I7
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] net: intel: Remove
 MODULE_AUTHORs
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 02, 2024 at 02:38:46PM -0700, Tony Nguyen wrote:
> We are moving away from the Sourceforge email address. Rather than
> removing or updating the email for the affected entries, remove the
> MODULE_AUTHOR altogether as its usage is incorrect [1].
> 
> Link: https://lore.kernel.org/netdev/20200626115236.7f36d379@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com/ [1]
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Acked-by: Alexander Lobakin <aleksander.lobakin@intel.com> # libeth, libie
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

