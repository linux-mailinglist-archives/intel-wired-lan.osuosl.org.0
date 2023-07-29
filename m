Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDA2769A96
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jul 2023 17:16:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8708F610B8;
	Mon, 31 Jul 2023 15:16:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8708F610B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690816573;
	bh=nw5YkBbIENrkU5L7mGKf+taFOr8AeAcc+JSLHJUjh4Y=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CIDKOdwI08nZyHAzy1ah73D3nNghkWKEiD8cOORw/EvnY921x4eURLg5VOEMJS/V7
	 peU9xtrOr/o7zMr3dirTxgGW3B86OuETfNP/624fZie0eYP+SJkCNX1yEfwSdL6YdB
	 8fpDulTlawlENXyGDccr92pHxckqOL+nk3eu5qCBNQJo+s4S9t0qRYTBk7Ii1pTW7h
	 vgNqiHV1f6n5baDGltkEhvD30oPmiaQYByaXe2fT8JLrKd6egx6k8mAJfHdaBVC5aP
	 +AC7kNNG+i/dW2PB493MelYxUzaBimx3QQtFAeSsgmpjCquqB/7N6vEJF8THE2hUm6
	 Nt4HSyZ4VK7ag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ws2oSH0v97iV; Mon, 31 Jul 2023 15:16:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8694A60792;
	Mon, 31 Jul 2023 15:16:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8694A60792
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 09E851BF82C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 11:11:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D60F34044D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 11:11:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D60F34044D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XwRSlkN9PLrM for <intel-wired-lan@lists.osuosl.org>;
 Sat, 29 Jul 2023 11:11:24 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 50A744044A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 11:11:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 50A744044A
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 298F060B81;
 Sat, 29 Jul 2023 11:11:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9053AC433C8;
 Sat, 29 Jul 2023 11:11:21 +0000 (UTC)
Date: Sat, 29 Jul 2023 13:11:19 +0200
From: Simon Horman <horms@kernel.org>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <ZMTz11K9nbOyr6/I@kernel.org>
References: <20230728083042.13326-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230728083042.13326-1-wojciech.drewek@intel.com>
X-Mailman-Approved-At: Mon, 31 Jul 2023 15:16:02 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1690629082;
 bh=nMJ+kE4TRdqTyV1GxAU9xGfFPVzM9pjTVlHLPwJSpiQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=b6hpMogIP8l/S6KNOtfuv1t6ZZDWoDxZf/74COXKq9lXRW1Lx2lZ4Nf5WbwPKwdCs
 S4E7Ip/dSmt6cPBg9m8q7YNMSO15HXjzw8EVhaeNJz6ff/n8xbGf3pZk+SGpTTpGyu
 s1orJEKpGzp7rJCJvjbzkEOGgOkmgXmxHcCvuyiY4KDUJxR9Jw7wuFmHJt+lcYcxW0
 xsSx4++WfWPmoaYDQmk7aebjsYvwvKxZ843NGYx/cEuiG96mrpnMwdL4JRm08Ni9go
 i6I9lo8JPknPOfbSm3j+nWGgnxeu6gK1RlspPnlSmXVpjNuTnASLa0E+znPUmkXZFb
 gUIZw7LP2k0HQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=b6hpMogI
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Support untagged
 VLAN traffic in br offload
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
 pmenzel@molgen.mpg.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jul 28, 2023 at 10:30:42AM +0200, Wojciech Drewek wrote:
> When driver receives SWITCHDEV_FDB_ADD_TO_DEVICE notification
> with vid = 1, it means that we have to offload untagged traffic.
> This is achieved by adding vlan metadata lookup.
> 
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
