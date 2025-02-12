Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B99FA32C30
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 17:45:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10FDE8122B;
	Wed, 12 Feb 2025 16:45:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zuWY11UJfr4z; Wed, 12 Feb 2025 16:45:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E1D1811C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739378750;
	bh=Juabd9sWoccAD79FxorXEO1TTNWKk74BW70FBIr8F/Y=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jO2ZOQ959qYGLQ3OcXXQ52btKciwbDCEeHYIlkG1Pw+58yTEE2Vkk58oxazz9n9za
	 b8wmcdxTI+UOHYDEFxU6ybdd2QfLlPrNWcQKnprUozFRb4MyiymQfAAoHaCwH/P8yS
	 BLddB4Ir6q3PSed/3Jhf3XtK+HEUj3HnRfzTE1TUlI+6T1vXPnUhLm8mXRpk+YHqOm
	 XIdwTLJjLHdkAy6yP5++u1BNMFSJdx8heex+l05Vt/cB/0nq6Obwa3+y8R0k0ophoG
	 I3EbxgnEWyM053kXO4mTNSqKlOa73x89qmf5VxnEpNGpxU9jqwu3uuKpG+GeM8ux3G
	 v+XIwEmBjzi0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E1D1811C4;
	Wed, 12 Feb 2025 16:45:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F8631C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 16:45:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EF9664000B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 16:45:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nufai5ROe-Km for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 16:45:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 32B84403F3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 32B84403F3
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 32B84403F3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 16:45:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 5A58AA40CB5;
 Wed, 12 Feb 2025 16:44:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24F88C4CEDF;
 Wed, 12 Feb 2025 16:45:44 +0000 (UTC)
Date: Wed, 12 Feb 2025 16:45:43 +0000
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20250212164543.GD1615191@kernel.org>
References: <20250210141112.3445723-1-grzegorz.nitka@intel.com>
 <20250210141112.3445723-2-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250210141112.3445723-2-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739378746;
 bh=z8T5CxVdq/ea4gXk5vPKbl+AIX5mvg5mtkpJrF1Us9g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ha9pEgrk8A4x7k2sp+T3bkmSLKGYnnuj06DAr7ampq233CdvfauacJ6soCMNC5nhW
 QiWblOlxucPkVzX+++by93AuwAeBuTXNC9BJYxH801HKDatvRojkHXxy39N4P2V0jo
 8/NK28zG8VlOaGGJ5VHJoqnMrj21ojnJeTOhrLXlKBW+HiODbATdeVKfnwDekrrn52
 Xv3G5JToNZNg4oF64cGXwiZW3LaSUoCMj0H/P3LAbmc6/+LmPm2WS/54i7E7rl7vig
 nWO5OjnULh4xV8JHgUQjthnqloT2TIJUUtmSDlKY0eW/SgRTg6ONiHlWjPPP1RvCT4
 GaHOYa/FR+MZA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ha9pEgrk
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/3] ice: rename
 ice_ptp_init_phc_eth56g function
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

On Mon, Feb 10, 2025 at 03:11:10PM +0100, Grzegorz Nitka wrote:
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> Refactor the code by changing ice_ptp_init_phc_eth56g function
> name to ice_ptp_init_phc_e825, to be consistent with the naming pattern
> for other devices.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

