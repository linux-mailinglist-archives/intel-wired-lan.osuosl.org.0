Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F5690B0B8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jun 2024 16:01:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0FB4040817;
	Mon, 17 Jun 2024 14:01:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vl900nePoewl; Mon, 17 Jun 2024 14:01:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2332C405AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718632901;
	bh=PWQxEhdeQpwfbsPA5/qehe8dXBUhH0oo55ETqmZXy7U=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kW2bfrIKUhUxcOYM6WzzUlDCZXt4ieWJY8boOyj+CwBhh3fZtPv8qA4m1aMtFIxzk
	 1jbOSnKk14iB7dy0TctiPl+RXMsWw60AaKgxfh1HGrvb7P9u6CkivdcTzv4yFS0SrX
	 Oh80Jol9BHnWpWPQdyL2isAcV7UFQPR9NW7iDy8Kx7/wqlDeQPysUVLSLIz11dHTMV
	 yiLK+X6dthCvRFYMfSWc7wedaWhfdx3RPveXTDcOyFUrXq0cnssr+q42lES0+mdwyA
	 e3oPKu0XE10ww3xxn0+V8YbHmQ0/8JYUrrOkAuX7rBQ8u+qmOQq2jASEgbOu2hseSb
	 YM02hXROuOlPA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2332C405AD;
	Mon, 17 Jun 2024 14:01:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D96A21BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 14:01:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D0B1A408C4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 14:01:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EHcbyp5ud_K4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jun 2024 14:01:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 042C94061F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 042C94061F
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 042C94061F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 14:01:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A47B660C74;
 Mon, 17 Jun 2024 14:01:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21EBDC2BD10;
 Mon, 17 Jun 2024 14:01:34 +0000 (UTC)
Date: Mon, 17 Jun 2024 15:01:33 +0100
From: Simon Horman <horms@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20240617140133.GT8447@kernel.org>
References: <20240614103811.1178779-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240614103811.1178779-1-marcin.szycik@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718632896;
 bh=ZSTtpCZOHnxjZs6PTQF1g7rTOoGh1x9yJulQj1I5kaI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ClXaVSFwFP7ZVVO8UtNNj7LEODi+6OKSidaaCQRIubS3jSz8JIMZP46ZVITX3O8ik
 KwGfFy5geGZ1YMj+hU5xL//UTdI7TCDepgIfKyCo5ydbokYMvnqpF3i7cI3tuOk/6B
 b39DzeuyIDyt7Is0YqngA4U8y6DQi/uZlFfGQC/RRblnP/ul236XWu6TXpWZJ/R4bl
 inFyd52cmhN+3kT8aAGFua7HcCcZmu2a8vJCpHhCtpweYlJoUu2ipEMEd3VOLpl96X
 ZT80t8pbCT2FAbhCrPv2lJklQUON+v4dDilY7rBj8iW9P14N/XsWXA+DnF8l7egLjP
 1XRCz8hjXCoKw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ClXaVSFw
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Distinguish driver
 reset and removal for AQ shutdown
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
Cc: Piotr Gardocki <piotrx.gardocki@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Ahmed Zaki <ahmed.zaki@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jun 14, 2024 at 12:38:11PM +0200, Marcin Szycik wrote:
> From: Piotr Gardocki <piotrx.gardocki@intel.com>
> 
> Admin queue command for shutdown AQ contains a flag to indicate driver
> unload. However, the flag is always set in the driver, even for resets. It
> can cause the firmware to consider driver as unloaded once the PF reset is
> triggered on all ports of device, which could lead to unexpected results.
> 
> Add an additional function parameter to functions that shutdown AQ,
> indicating whether the driver is actually unloading.
> 
> Reviewed-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

