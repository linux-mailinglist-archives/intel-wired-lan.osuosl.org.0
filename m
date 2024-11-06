Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 922809BDBC6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2024 03:05:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D8DE580BD8;
	Wed,  6 Nov 2024 02:05:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XJc1oJUWpOMx; Wed,  6 Nov 2024 02:05:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E5BB80BC9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730858703;
	bh=v8YBnt7lfpsHBDl7u6rs0C5WIIEZoJP0mYRatqm1+BY=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ng94xt92qGO3USVGm8aN5FBMf3uAl5Ksm/ax3nm7a5vU8qQYIdTXgiO05qGr2W7Jw
	 Nol5/2jMxa8Q933TZ0JsRd7UIbs4qefwuDPddeMz4o4z3BooRj+39xRR0j89iEMa5J
	 4Uud/2LYn3pyWRdeGUSUyUv+TmKhDMSIXXcturp7f0S0ITEBIOPkvdy9oP0b7UAPM6
	 r988fiu8oio5sxln0BGgMXWKN8bTWQDxntWHo8YoFspT8F+uWJJFzRQYUCyBEqQ83l
	 txCP2Qo7Bt3LfkfthTgKaaDrzLpjEkppeihEH3dBoKANLBBrbylmdL4xkYcDiEb0r/
	 kj1u0295ASYyg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E5BB80BC9;
	Wed,  6 Nov 2024 02:05:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 43CD3B8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 02:05:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 27BCE80AD0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 02:05:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ImYw8PmCIMrm for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 02:05:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 86EF780B02
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86EF780B02
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 86EF780B02
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 02:05:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 058815C10AE;
 Wed,  6 Nov 2024 02:04:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFDD0C4CECF;
 Wed,  6 Nov 2024 02:04:58 +0000 (UTC)
Date: Tue, 5 Nov 2024 18:04:57 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, richardcochran@gmail.com, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
Message-ID: <20241105180457.01c54f15@kernel.org>
In-Reply-To: <20241106010756.1588973-2-arkadiusz.kubalewski@intel.com>
References: <20241106010756.1588973-1-arkadiusz.kubalewski@intel.com>
 <20241106010756.1588973-2-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1730858699;
 bh=FzSRliyBhUYrj6Xp5rBHLlRQ8OTE+NIc4/G8yoAocPQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PkgvcUzU/joUyXRQhQLOzEbKQTtWFsqPH9F4Dit9tMYhQNULXAYYtjz1Vc4yqTqKt
 Kt+POgKZp2V5K/leBqsvY7Qp1Ez4T6d6352Tdsi0aJjIZPwAYDEuYKgOJUJzyB4c5k
 L/ReicyiQlUSSfQ5wZIPJA5GErw4lHIo1Y2rcnjirpQ5EU72iI0O1LNXA5V3tBtKt8
 kBwdFJfLa7PnundZhoVqTJWRflS4SNqzLAboQBEMqeNyPAdBUHdoXxTZDKVqfERImU
 iG4/q8C1SExmZ3Xj7aBSYy/P/Jzl55juAjl8Ld8wXQUCOsyMgCCdsh9GxhQywftrfk
 o0nO27KrMmkLA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=PkgvcUzU
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/2] ptp: add control over
 HW timestamp latch point
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

On Wed,  6 Nov 2024 02:07:55 +0100 Arkadiusz Kubalewski wrote:
> +What:		/sys/class/ptp/ptp<N>/ts_point
> +Date:		October 2024
> +Contact:	Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> +Description:
> +		This file provides control over the point in time in
> +		which the HW timestamp is latched. As specified in IEEE
> +		802.3cx, the latch point can be either at the beginning
> +		or after the end of Start of Frame Delimiter (SFD).
> +		Value "1" means the timestamp is latched at the
> +		beginning of the SFD. Value "2" means that timestamp is
> +		latched after the end of SFD.

Richard has the final say but IMO packet timestamping config does not
belong to the PHC, rather ndo_hwtstamp_set.
