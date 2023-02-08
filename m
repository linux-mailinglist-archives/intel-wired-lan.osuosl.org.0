Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FA068E779
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Feb 2023 06:26:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD5B0610A6;
	Wed,  8 Feb 2023 05:26:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD5B0610A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675833970;
	bh=6kd73rVX1P8n9VCOBon0NE7NVctTUAUXPu25eoOV8fc=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=idIcD7fgL1Il5MSUHfaVz9bctd7z46LXbgv0dm0o26IWFHr/ITv8LWDVSPfl9pNUh
	 FxTS23DOmhPkBmIhAzlOzk6VMYL6yXmGzgrQrsFQ7C7BWuUEU8MsNurLCtB3NC73Xi
	 5KQP6AosZSnIyEeAMDuVEXelbBqfPK6YJRq4q2u52uBErn/Wbqg7l7xMeO6FIV27V6
	 AlZA1LyXGzCH4dZsdoBHwc98SwtFcOEcvaKIteCJ+TNu3l5uqtNXQ8c7Iqp5uxsxUc
	 6h57nFXvmOd4EEcDEY0Bb2KRk08GQvW1YFkIZPCcojn0OI/nZZpcGqR+0+Ivw2gcdI
	 ru5RNIAYsnNdg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pFl-xx7sjP2u; Wed,  8 Feb 2023 05:26:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC7FB6108C;
	Wed,  8 Feb 2023 05:26:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC7FB6108C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 22C421BF853
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 05:26:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EE97681E3E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 05:26:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE97681E3E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5PzGYn0Mb0qm for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Feb 2023 05:26:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6E1481E3C
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E6E1481E3C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 05:26:00 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id E8355B81B3B;
 Wed,  8 Feb 2023 05:25:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0454AC433EF;
 Wed,  8 Feb 2023 05:25:55 +0000 (UTC)
Date: Tue, 7 Feb 2023 21:25:55 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20230207212555.79ffbc26@kernel.org>
In-Reply-To: <20230206135050.3237952-1-o.rempel@pengutronix.de>
References: <20230206135050.3237952-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1675833956;
 bh=dVPtYgDR8H752PdO0OfEoeUEtay31tVR8DSjLTPBMZE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CJNPlivDL0az7Jq96Hkv/RLiazKmkb9GdnFLKN7UzCBeB8I+WU+XusTI4cLDWPLjj
 CB1p+wRPEBTqqh3HjyIe5aqo7WuDR9oSn4JVs2enFChzhjLUyXKbhxr4jCcLaIy5+E
 P1IsjgIi8CWpMaDH3MxsApj+5GDCkyVzdwlQaxhatRkHJX3irh3aOuF9Pu6L3X/zj0
 Kl8Lmlj2swiZAQ4B/ArnO95ZxcJUZ/FGI2yaEwWbQCm0DkyE23Kp8dzqoeQnPfxt7j
 BxmBAJcoaM/y+uN+fBulquXZ20SltnMYPOmH6EFb5N1j0mTIQipNwxbKYvjUobiVUm
 zpCFHbxkHhNPw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=CJNPlivD
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 00/23] net: add EEE
 support for KSZ9477 and AR8035 with i.MX6
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
Cc: Woojung Huh <woojung.huh@microchip.com>, Andrew Lunn <andrew@lunn.ch>,
 Arun.Ramadoss@microchip.com, Florian Fainelli <f.fainelli@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Eric Dumazet <edumazet@google.com>, Wei Fang <wei.fang@nxp.com>,
 kernel@pengutronix.de, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <olteanv@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon,  6 Feb 2023 14:50:27 +0100 Oleksij Rempel wrote:
> With this patch series we provide EEE control for KSZ9477 family of switches and
> AR8035 with i.MX6 configuration.
> According to my tests, on a system with KSZ8563 switch and 100Mbit idle link,
> we consume 0,192W less power per port if EEE is enabled.

Can we carve this series up a little bit to avoid large reposts?
Perhaps you can hold off on reposting the cleanup patches starting
at patch 17 - repost those separately after the first 16 go in?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
