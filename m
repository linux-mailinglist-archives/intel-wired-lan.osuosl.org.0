Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA459791D6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Sep 2024 17:35:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6731D4240A;
	Sat, 14 Sep 2024 15:35:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fJT697iXpX55; Sat, 14 Sep 2024 15:35:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98471419DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726328125;
	bh=JXn2LpZXRG6nLr3KjbuY2yVdP0LNwvKgRJLRwY+mcxc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=N3C5daCNrm5ftVrCFAGAbXdS+uEKRe+/SvQ+pohq07OHEZNYEqlKyrU2VHt2cN+Ar
	 PFJgFk/AVX+FGmK5+5P356f4lgfTt7im6GNlnfoOGgjBYlLztVTT6vJSbL8M6ABvE6
	 dE452uup+fyw6ai12Fuuu7UhbMtVx/U9UPd+pMG8HnCampxs84AC/pSaubBNlC0FPG
	 Ulr6ZA0UrY3uRtFM/JeUi2vG0w6HvVtERRh9hV5rtJHp0Za5EtOPwJofE66OmCT/1M
	 m7ukbFyY+FRRUBqvlN3xTzDeEIDd4atbx/iRE4hJiir+UlAJJWS32NO7ZR3qB6cJIT
	 LDj/fhq5CNWag==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98471419DC;
	Sat, 14 Sep 2024 15:35:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CCE231BF844
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2024 15:35:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BB21E6076D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2024 15:35:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4MPPxPa5RerY for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Sep 2024 15:35:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 11D486067D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 11D486067D
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 11D486067D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2024 15:35:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A0B9A5C5A53;
 Sat, 14 Sep 2024 15:35:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32DB9C4CEC6;
 Sat, 14 Sep 2024 15:35:19 +0000 (UTC)
Date: Sat, 14 Sep 2024 16:35:16 +0100
From: Simon Horman <horms@kernel.org>
To: Dan Carpenter <dan.carpenter@linaro.org>
Message-ID: <20240914153516.GE11774@kernel.org>
References: <6951d217-ac06-4482-a35d-15d757fd90a3@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6951d217-ac06-4482-a35d-15d757fd90a3@stanley.mountain>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1726328122;
 bh=YUiVVIN1byk9IEgbqpoRtEXRLK+aMNbubM3NnX0qqwI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YZESC0Kzh0zT3CnDnrRxh9HrjnbshfqyiNbqaQX2qc/Uzjg+7ilJYcMoPhHguCYEe
 Tn0Q8T6T/2SJsSm+XB5WdmE1YV4gPEend8P0qBlYTkh8cJRnh5wXc3IriFVBmuP/Zu
 NC30MFtn/AQXTGdWGJJJa1wIBch2s0oWPpHaExAEzKqJ0amJUcWN4OI005gaVbkfZ8
 JoDoFzmBKz/pcqR484aTps86XyqoO9Tjvd/8Nzf3KlJim56y6wbI/jQ36xqJgp4A0m
 L0avmgSC0TdKDd1PX7MJi4jqyh9fvbBnJKcjNwl/lr0aAbj+ktI6Ug+eJ5CC+nTSa1
 Q08byLBzZtgCQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=YZESC0Kz
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix a NULL vs IS_ERR()
 check in probe()
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Piotr Raczynski <piotr.raczynski@intel.com>,
 "David S. Miller" <davem@davemloft.net>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Sep 14, 2024 at 12:57:56PM +0300, Dan Carpenter wrote:
> The ice_allocate_sf() function returns error pointers on error.  It
> doesn't return NULL.  Update the check to match.
> 
> Fixes: 177ef7f1e2a0 ("ice: base subfunction aux driver")
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>

Reviewed-by: Simon Horman <horms@kernel.org>
