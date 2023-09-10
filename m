Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5351F799EA5
	for <lists+intel-wired-lan@lfdr.de>; Sun, 10 Sep 2023 16:24:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0C0381400;
	Sun, 10 Sep 2023 14:24:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0C0381400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694355873;
	bh=aGRTSqkqMnHZnag3EmFwsIKo2K+90ZsUsZD3BUwvLWA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aObWaPDDMP4NFwAHyvlF8o8W7TO8cj4S34F89bW4baF7cYS4jhnCgrN81xlpfI6po
	 lFcAjiSWccbJJLBwAqLEQ8A2W4YdpIEgFtEXyiGC5bUWmktm924svk+BZ+ggQKCKs/
	 pFNzylWj953M3OG39pUp+jYIGZuHKqs7ajCyg0sJFsdscXgFqRjS4cvpt+0F7LanfW
	 xUPpPNiItY9J8AGmVNFf8EeZ2tgWqIMXMbVMfc/wXwuyR3xcMrEKuIWNKWOIrleHmT
	 9+CiJkIKe6ceZAa6gseqpLvYaXiAH/XnBY2+Y/JLmlVc6oRzu9FYxkKYkZ18qWWwXR
	 XBSgbNhrrJZdg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id onA6ougKv3CN; Sun, 10 Sep 2023 14:24:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C72AB81351;
	Sun, 10 Sep 2023 14:24:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C72AB81351
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E29D1BF255
 for <intel-wired-lan@osuosl.org>; Sun, 10 Sep 2023 14:24:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7ADA760AD2
 for <intel-wired-lan@osuosl.org>; Sun, 10 Sep 2023 14:24:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7ADA760AD2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wDjxGM-KH4Dm for <intel-wired-lan@osuosl.org>;
 Sun, 10 Sep 2023 14:24:25 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B104260B32
 for <intel-wired-lan@osuosl.org>; Sun, 10 Sep 2023 14:24:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B104260B32
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id B1410B80A4C;
 Sun, 10 Sep 2023 14:24:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2363AC433C8;
 Sun, 10 Sep 2023 14:24:18 +0000 (UTC)
Date: Sun, 10 Sep 2023 16:24:16 +0200
From: Simon Horman <horms@kernel.org>
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Message-ID: <20230910142416.GD775887@kernel.org>
References: <20230908081734.28205-1-muhammad.husaini.zulkifli@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230908081734.28205-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1694355861;
 bh=TBS4jjVKj31VWrF/oBXKhtvtrtiG5o+BNyPunPTFvmY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TpojpTMqg9l1uHIi9VfwG6NZqwPS9z1jin5cN0syCzbdo2FZoV6crGKBQOnkL23Ki
 QTZ3uAclB4kD/aI46/VJXtkZN5njGFcvwV7WADdO68ulJyBBDVe0neNrW/+++wvg5R
 LRNPOrKWxXmr1Y12bAqyNRldo53DFlJXRW+R88Y9VvQY1WMcYz0mN9EEppodIWqeEq
 yqcb7zCZ53/BTprrtSP8LnZDwLIlcyA3wjXwwGjaGRk8LMGGN4ZQqM6JkzVUWqpMPI
 FJzZ+thgB7TyB9h7Ez8alJs3IiKJNKhNq0GC9nMIdnMLw+q7qaMjFMip+ZVZahIslF
 3LQdJusQ+zURw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=TpojpTMq
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] igc: Expose tx-usecs
 coalesce setting to user
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
Cc: bcreeley@amd.com, intel-wired-lan@osuosl.org, edumazet@google.com,
 husainizulkifli@gmail.com, anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 08, 2023 at 04:17:34PM +0800, Muhammad Husaini Zulkifli wrote:
> When users attempt to obtain the coalesce setting using the
> ethtool command, current code always returns 0 for tx-usecs.
> This is because I225/6 always uses a queue pair setting, hence
> tx_coalesce_usecs does not return a value during the
> igc_ethtool_get_coalesce() callback process. The pair queue
> condition checking in igc_ethtool_get_coalesce() is removed by
> this patch so that the user gets information of the value of tx-usecs.
> 
> Even if i225/6 is using queue pair setting, there is no harm in
> notifying the user of the tx-usecs. The implementation of the current
> code may have previously been a copy of the legacy code i210.
> Since I225 has the queue pair setting enabled, tx-usecs will always adhere
> to the user-set rx-usecs value. An error message will appear when the user
> attempts to set the tx-usecs value for the input parameters because,
> by default, they should only set the rx-usecs value.

Hi Muhammad,

Most likely I'm misunderstanding things. And even if that is not the
case perhaps this is as good as it gets. But my reading is that
an error will not be raised if a user provides an input value for
tx-usecs that matches the current value of tx-usecs, even if a different
value is provided for rx-usecs (which will also be applied to tx-usecs).

e.g. (untested!)

  # ethool -c <interface>
  ...
  rx-usecs: 3
  ...
  tx-usecs: 3
  ...

  # ethool -C <interface> tx-usecs 3 rx-usecs 4

  # ethool -c <interface>
  ...
  rx-usecs: 4
  ...
  tx-usecs: 4
  ...

...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
