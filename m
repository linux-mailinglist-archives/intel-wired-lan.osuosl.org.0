Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E0D799EBA
	for <lists+intel-wired-lan@lfdr.de>; Sun, 10 Sep 2023 16:57:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D580E409E0;
	Sun, 10 Sep 2023 14:57:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D580E409E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694357850;
	bh=nhW10A2XB2bF4vZ3947qXN4IROQtqGCQ8YzPdc5xFcQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TNQ/P4w+z4rA3og+JxDiW0GTGzqBKa+4EBdAoGGl6G0XmrnRjSCA8rCQPqM+obM9M
	 M/rWdYvSMdHmZTZ9viuxj1LU+i5DPmoyJX6uRkzNMAtsqVxcYgNqoohQDd+SRoVb5j
	 +mCZQ6yFLV5Ccj5Z5KpxAse4AKdVxW/fgRDD57gGH5y3WLY7BSI4RNeq+sfNHwq/vU
	 TtnpZZ+G8fbKVW2MFuQ3GU4J+XGKadSigl2iVwXMSLztMlJY0czV0+3VXEHacwEktN
	 Gofi35wDT1a33PquVahlHbYoCEISLLGbKBUvwArLPWfi3FYpxqVNm7KDhFJD8MsSYo
	 EFrddeOGOJlnw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jPX0FCQyXqbE; Sun, 10 Sep 2023 14:57:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 75418409A2;
	Sun, 10 Sep 2023 14:57:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 75418409A2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 50E6A1BF255
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Sep 2023 14:57:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 348A9409A2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Sep 2023 14:57:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 348A9409A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id az63p7mODtif for <intel-wired-lan@lists.osuosl.org>;
 Sun, 10 Sep 2023 14:57:23 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 472D2408A7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Sep 2023 14:57:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 472D2408A7
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 56020B80A4C;
 Sun, 10 Sep 2023 14:57:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E267C433C8;
 Sun, 10 Sep 2023 14:57:18 +0000 (UTC)
Date: Sun, 10 Sep 2023 16:57:16 +0200
From: Simon Horman <horms@kernel.org>
To: Andrii Staikov <andrii.staikov@intel.com>
Message-ID: <20230910145716.GG775887@kernel.org>
References: <20230908124201.1836101-1-andrii.staikov@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230908124201.1836101-1-andrii.staikov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1694357840;
 bh=B6xci8mz2Oq6u/KskiGLXgJ/4fXTBxSYPFZDVhTcXB4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ElP2EUjEnKxAlXIjojqpQ2WhzzDSDf73/8fawcCcSCdfM8TC3OjnAfHnagu/QL6f3
 4lOntSn3d6hWC/e1PV251M0frRqYNRv2mRHJZwDjrWvVQZIHRrAxg/0kUJ2WuFrsiM
 MIZeviYkQu4Y+bjIbrlc0Mr9BsavSRqgVAX60kp357CsJmgRbiNyiWdo48nQl62jER
 w94SqidpA8KvLgqLejFz1aoKj7n+/r5P61pAjIQMegnWILy8XUkt1vVDwTpCFP211G
 6/MNdVGxgUlCf75FseF1ydt4D0dZI2Yq39TVDXNF4z6BgjGw1dsGp2PYksUwAHaPc+
 x2nnp2vFdKTAQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ElP2EUjE
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] i40e: fix potential memory
 leaks in i40e_remove()
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 08, 2023 at 02:42:01PM +0200, Andrii Staikov wrote:
> Instead of freeing memory of a single VSI, make sure
> the memory for all VSIs is cleared before releasing VSIs.
> Add releasing of their resources in a loop with the iteration
> number equal to the number of allocated VSIs.
> 
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
