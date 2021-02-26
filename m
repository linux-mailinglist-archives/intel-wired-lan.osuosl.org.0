Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6D3326A29
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Feb 2021 23:45:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 658BD6F9CC;
	Fri, 26 Feb 2021 22:45:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qo6ot6DJ9Ad5; Fri, 26 Feb 2021 22:45:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 539696F9C9;
	Fri, 26 Feb 2021 22:45:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 352781BF82C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 22:45:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 22E0A43433
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 22:45:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2c9kN38FpbfC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Feb 2021 22:45:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4F61143421
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 22:45:20 +0000 (UTC)
IronPort-SDR: ECmzte08zLGczs/nAsnhpIijguX+DpR/Lw3fopXqZNlVlGenuH0OZ1mTt/MDyWzv45ye1Ya0Gy
 FdUtULxwopaQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9907"; a="185326696"
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="185326696"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2021 14:45:19 -0800
IronPort-SDR: SQ/KRkqKXOQlh1dl5WkLLrgmLsTjr7SM8pr+PkDnZ4R3/hMhM6UlXzFlGcH7j6eMdOeFFiT7Ox
 il4TpiUTP1uA==
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="516666444"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.213.184.154])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2021 14:45:18 -0800
Date: Fri, 26 Feb 2021 14:45:17 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Jan =?ISO-8859-1?Q?Kundr=E1t?= <jan.kundrat@cesnet.cz>
Message-ID: <20210226144517.00004a51@intel.com>
In-Reply-To: <5a9f1aed25a6df32337b9ac1140339d783abb6d8.1614279918.git.jan.kundrat@cesnet.cz>
References: <5a9f1aed25a6df32337b9ac1140339d783abb6d8.1614279918.git.jan.kundrat@cesnet.cz>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] igb: unbreak I2C bit-banging on i350
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
Cc: netdev@vger.kernel.org, linux-i2c@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>,
 =?ISO-8859-1?Q?Franti?= =?ISO-8859-1?Q?=C5=A1ek_Ry=C5=A1=C3=A1nek?=
 <rysanek@fccps.cz>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jan Kundr=E1t wrote:

> The driver tried to use Linux' native software I2C bus master
> (i2c-algo-bits) for exporting the I2C interface that talks to the SFP
> cage(s) towards userspace. As-is, however, the physical SCL/SDA pins
> were not moving at all, staying at logical 1 all the time.
> =

> The main culprit was the I2CPARAMS register where igb was not setting
> the I2CBB_EN bit. That meant that all the careful signal bit-banging was
> actually not being propagated to the chip pads (I verified this with a
> scope).
> =

> The bit-banging was not correct either, because I2C is supposed to be an
> open-collector bus, and the code was driving both lines via a totem
> pole. The code was also trying to do operations which did not make any
> sense with the i2c-algo-bits, namely manipulating both SDA and SCL from
> igb_set_i2c_data (which is only supposed to set SDA). I'm not sure if
> that was meant as an optimization, or was just flat out wrong, but given
> that the i2c-algo-bits is set up to work with a totally dumb GPIO-ish
> implementation underneath, there's no need for this code to be smart.
> =

> The open-drain vs. totem-pole is fixed by the usual trick where the
> logical zero is implemented via regular output mode and outputting a
> logical 0, and the logical high is implemented via the IO pad configured
> as an input (thus floating), and letting the mandatory pull-up resistors
> do the rest. Anything else is actually wrong on I2C where all devices
> are supposed to have open-drain connection to the bus.
> =

> The missing I2CBB_EN is set (along with a safe initial value of the
> GPIOs) just before registering this software I2C bus.
> =

> The chip datasheet mentions HW-implemented I2C transactions (SFP EEPROM
> reads and writes) as well, but I'm not touching these for simplicity.
> =

> Tested on a LR-Link LRES2203PF-2SFP (which is an almost-miniPCIe form
> factor card, a cable, and a module with two SFP cages). There was one
> casualty, an old broken SFP we had laying around, which was used to
> solder some thin wires as a DIY I2C breakout. Thanks for your service.
> With this patch in place, I can `i2cdump -y 3 0x51 c` and read back data
> which make sense. Yay.
> =

> Signed-off-by: Jan Kundr=E1t <jan.kundrat@cesnet.cz>
> See-also: https://www.spinics.net/lists/netdev/msg490554.html

Thanks for the patch! I'd like someone on our team to double check
things are working still on some of the stock Intel boards, but the code
changes look fine.

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
