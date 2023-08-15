Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 95ACA77C619
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Aug 2023 04:52:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E2AF60F10;
	Tue, 15 Aug 2023 02:52:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E2AF60F10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692067938;
	bh=r0iXzDW2DduGsNBPRDivh+GaxdWcUB1bfiJ+ElxpumY=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3iCjJDz/94gkaoGOq2ddFnasL9VyzFly5ksObdWLBkBtFyjZsizGWQx77yueTxXKP
	 KnF2MOJj2peMAXD+VCjcXMQMw27FQ80BSnX0nWFFUW8sscytN3RSNbkeB9PHrqcMbg
	 Z8pEgSea+ktqzmDHZr4VCnXlN98lKuyFmU73hIa23bLSd+DiJuAOpFqJjPP6Hfxgaz
	 QKr791qVZwleNUwo925xFHuIOH+tbCIBX6N2Cku6S44xtGEBdPUpSkaUzIIMa8UZdm
	 B6FCGJN207H5tlClRq3x86YmlaekGxl4ko0wKLnXU1UThFtXuQUUBldrvg0U8QZ1g1
	 HqjqhLgOPl4ew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BjQmIL-67zMH; Tue, 15 Aug 2023 02:52:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 015A560EF7;
	Tue, 15 Aug 2023 02:52:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 015A560EF7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9A99E1BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 02:52:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6D48440869
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 02:52:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D48440869
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AWNUk0LYi4fW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Aug 2023 02:52:09 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7F4B04085E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 02:52:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F4B04085E
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C404B61013;
 Tue, 15 Aug 2023 02:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B6ACC433C7;
 Tue, 15 Aug 2023 02:52:07 +0000 (UTC)
Date: Mon, 14 Aug 2023 19:52:06 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <20230814195206.1d3ac1e0@kernel.org>
In-Reply-To: <20230811200340.577359-2-vadim.fedorenko@linux.dev>
References: <20230811200340.577359-1-vadim.fedorenko@linux.dev>
 <20230811200340.577359-2-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692067928;
 bh=fBlx8M6J3Snxii8KHE1eW/jzAOIKz2CzUVfAHu/9/ts=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=t9iFMyLeDP4MDfepY6USEo/x0FM5GK6yxCkWbKdBAvf4yGPHnUdXuty3oeoBY6nCO
 gaqRJKCsFELr+kJXMxHSpTsiTtkn56mBUQRNJj9LlqTi+HxmZH/in0ov3TEKvLjhTw
 GDst/Gkh6SjKTYywrDBpWmhGkV6tEzt81VLSp9oP6NrThOdE1Ridb6joIbqhh8DZIw
 zrgO4k7Zf3V2H7dra8xvR5GHi9NTqdoAzMLvd95YDNxSfxMdgo8FKI3XiYQzR5tsPl
 jGx72s2nHXW65snF5+WR0YruT4iHxzgHPRiCprjz/qOdi8ftKLqaBPm7D1FKEGN9LG
 gPuLAJ8/QCCCA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=t9iFMyLe
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/9] dpll: documentation
 on DPLL subsystem interface
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
Cc: Jiri Pirko <jiri@resnulli.us>, Bart Van Assche <bvanassche@acm.org>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-arm-kernel@lists.infradead.org, Bagas Sanjaya <bagasdotme@gmail.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 linux-clk@vger.kernel.org, Milena Olech <milena.olech@intel.com>,
 Jiri Pirko <jiri@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 11 Aug 2023 21:03:32 +0100 Vadim Fedorenko wrote:
> +the callback operation. Neverthelessi, there are few required to be

Neverthelessi
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
