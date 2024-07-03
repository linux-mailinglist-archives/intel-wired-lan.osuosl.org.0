Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FA9926800
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2024 20:21:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 08ED741B59;
	Wed,  3 Jul 2024 18:21:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uQCncrAYO1H8; Wed,  3 Jul 2024 18:21:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39CE341B4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720030869;
	bh=V/fgZI+YYsndhXcpAFrmuXuOnjQpcZFjrCLRE4jQ+Bk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IoOD1BqgciqgPgIJp60EcYgzF1aK47xZbXbLEbT6mJmMiBF+K057tt3zA0vu5e4Da
	 2IsH1xjGqjvRiUE9skdoIk8PodRTkTGuVv5IXiI5NWOe3U7PaMOgA0ErE+sniV7PtN
	 mEJ7/LlRG9LOYAK9Oqr6GqbwTx177AWxh8eaCpVs9ZXi5BRKEvnYGpnVA+Oli8vDFg
	 +oREAdaqumTBnHhon9Gui1+HuYA6QWHivRejg5RquIZy3Lw2GXbokS+wHoZ2yWncDJ
	 U+FXdSmJtmERIeA17b6O4XaWjEpuYvK+TCMXWfi/pdk8+kuUqKxD2BKpw4j+Kjbr8o
	 +x2xC5jZ7WJpg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 39CE341B4D;
	Wed,  3 Jul 2024 18:21:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 116B81BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 18:21:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F3F3460FA9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 18:21:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5RXCnlMjvpC4 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2024 18:21:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 46E4160F12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46E4160F12
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 46E4160F12
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 18:21:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 78D6460C25;
 Wed,  3 Jul 2024 18:21:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5D89C2BD10;
 Wed,  3 Jul 2024 18:21:03 +0000 (UTC)
Date: Wed, 3 Jul 2024 19:21:01 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240703182101.GO598357@kernel.org>
References: <20240702134448.132374-9-karol.kolacinski@intel.com>
 <20240702134448.132374-15-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240702134448.132374-15-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720030865;
 bh=3GiRg29ujFKE1CNfe0zyxkAbK+5xSflcOI0SqIJVCjw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fof1Voigq/oBCaxud6rX+sCivRgt0gkoKbE306aJJNGNnbzdZap1HMLLAnCX8Qe2s
 9eqSb6nIBHYiHSGJAcVYzA7L8Fk+//GPtRvkHL4XFK9Ze1iqf/cjditL4ARjx3JgSa
 lUQu5FKhDc3VSJx2usfZ0sbCxJdVLJiPZKaPZ/yFC6FlW7MGrKw1Y5yT+c7xD2hLCa
 koS7npGgMSclgGA7sdjjPf6y7rOhohEWjf56SPfxDowZB7KVImpHLoQWHFhBnti+wM
 TN1brjMW7OJu1Wmu7KdsMpyho0xpNw3BLEADBADxpo3rpCw9eT/82Eku1Gnjy8lDvd
 lIX112NI0CThQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=fof1Voig
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 6/7] ice: Read SDP section
 from NVM for pin definitions
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, Yochai Hagvi <yochai.hagvi@intel.com>,
 przemyslaw.kitszel@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 02, 2024 at 03:41:35PM +0200, Karol Kolacinski wrote:
> From: Yochai Hagvi <yochai.hagvi@intel.com>
> 
> PTP pins assignment and their related SDPs (Software Definable Pins) are
> currently hardcoded.
> Fix that by reading NVM section instead on products supporting this,
> which are E810 products.
> If SDP section is not defined in NVM, the driver continues to use the
> hardcoded table.
> 
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Yochai Hagvi <yochai.hagvi@intel.com>
> Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

