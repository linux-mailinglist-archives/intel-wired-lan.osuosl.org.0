Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B4E807C1D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 00:16:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E7294212A;
	Wed,  6 Dec 2023 23:16:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E7294212A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701904583;
	bh=jTRQye4VcyNYphRusMlTFeKZudtqUAlpxxBF1xGfQU4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=7G/EP+x9kvRDNd3gGLe4rlnSOy7FtqAvq3T8osGNcSGwsnhs2FLkAWKuCWmloASLZ
	 Hq2lQHD1YafQdG5qLFeRbo7g+L8tsrNNpv/LjkT4TSA1GR7o1DQERwm9vcTl7yiy3o
	 JUcXqez2JbBnkhHzlhkMmqmLtK7mC1Zezd1X59IspOEkvjfV+06RpYqE+Hp4YWXy7L
	 OOliuvawDYw5r6gz8m6ORhekdtczGwq3NZ4Y9R68bhQYUpgturdz96/Ph7o15AskyX
	 9KCcRX4hBEqr5IcM8rjLFw9VrOal9pt2HpZxm7ZSygO6GwKloS+xqDU6+Cc00fftOz
	 iErzRjnNFb8qg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8dCMoLOsRWEY; Wed,  6 Dec 2023 23:16:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27A2C42111;
	Wed,  6 Dec 2023 23:16:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27A2C42111
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0073F1BF275
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 23:16:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D8AAE82656
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 23:16:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D8AAE82656
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O5EuNzUxWj-P for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 23:16:15 +0000 (UTC)
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 98FDC825DF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 23:16:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 98FDC825DF
Received: by mail-yb1-xb4a.google.com with SMTP id
 3f1490d57ef6-db5416d0fccso403283276.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 06 Dec 2023 15:16:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701904574; x=1702509374;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=2PrTW3nyo92scL20Ekap9nlWMoYhz1YGjtYVc4UbsDk=;
 b=VwEtGaEHc0XTwz0jWJL87lRxaitwk9or9VfuSB41vkZUerQ4qdshlUEo0UafVt6NnT
 VpMDJ2URsiIZaB+ZANbfMGeMXrKpL0qwCkKVmOBkGfqQHHYX1y4HX11eFQNXrwx2Zpxy
 16cuKpIxQs5BGvt1YiO4EmsYgJC2OBVyIch8WSZfx5GLx0e+Rqe/LHHYRXj+I8UGovOB
 j4glAqvUax/wLeXHJ3YBt1JAmr83ciETlkgHicYAJaDP8iRtqttL60aFBl05xhsHdu1B
 kWRPaIz0EfvKtiKkH2vM4PJjCWpowe7UE+qZyZXKT7dORCqMxkjaSPxLx+EIxCw1MQOB
 sCAw==
X-Gm-Message-State: AOJu0YwKdr5F8G8jqMiPTW2WehdQSk2uQJYaJPqJZ/j9dGJDk7hWAbZu
 ij89sH59TNRGSFqOXAaBF5nRvq4w3L7Qmxy/Tg==
X-Google-Smtp-Source: AGHT+IF8Oo3DT9loeb9aEty1FTzi+++EbnOCGNjlZWHZ7P/6knrHCLDtwnFQ4WffwShG/pP4xjX6s5KGOGOlpxebFA==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a25:8707:0:b0:dbc:1c42:f29a with SMTP
 id a7-20020a258707000000b00dbc1c42f29amr22315ybl.9.1701904574326; Wed, 06 Dec
 2023 15:16:14 -0800 (PST)
Date: Wed, 06 Dec 2023 23:16:09 +0000
Mime-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALkAcWUC/33NwYrDIBgE4FcpntdF/Y3WPe17LKUY/ZMIaQzRD
 S0h717JpVka9jgM881CEk4BE/k6LWTCOaQQhxKqjxNxnR1apMGXTAQTwJmoKOYux9hfx9+cruE
 29tRyqU3T1E4jI2U3TtiE+2b+kAEzHfCeyaU0XUg5To/tbOZb/487c8qoshVYAx5qLb7bGNseP
 128bdws9oQ6IkQhmFfa1d6zCs5vBOwJfURAIUAqZZ3SBph8I+SLKMYRIQvBJXI0Qp+lUX+IdV2
 fMJRVs4YBAAA=
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701904573; l=4962;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=hX2m37gMZ5rAPKE+4kIVNycVYHBLG9ddRIJkMzUA6RI=;
 b=RvWHJ4xB9uVWwwcYYhFFHSc6UhVUTEXYdWVlyy9npIwevwaSWmJxWI3522jpPRhH+RhKEPd8/
 mDoZWqOJHC1DGpRyOIT3ZrhP/AxPdcb5WKstGVNQh+tjqNS2vR9a4uF
X-Mailer: b4 0.12.3
Message-ID: <20231206-ethtool_puts_impl-v5-0-5a2528e17bf8@google.com>
From: justinstitt@google.com
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Shay Agroskin <shayagr@amazon.com>, 
 Arthur Kiyanovski <akiyano@amazon.com>, David Arinzon <darinzon@amazon.com>,
 Noam Dagan <ndagan@amazon.com>, 
 Saeed Bishara <saeedb@amazon.com>, Rasesh Mody <rmody@marvell.com>, 
 Sudarsana Kalluru <skalluru@marvell.com>, GR-Linux-NIC-Dev@marvell.com, 
 Dimitris Michailidis <dmichail@fungible.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, 
 Salil Mehta <salil.mehta@huawei.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Louis Peens <louis.peens@corigine.com>, 
 Shannon Nelson <shannon.nelson@amd.com>, Brett Creeley <brett.creeley@amd.com>,
 drivers@pensando.io, 
 "K. Y. Srinivasan" <kys@microsoft.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Wei Liu <wei.liu@kernel.org>, 
 Dexuan Cui <decui@microsoft.com>, Ronak Doshi <doshir@vmware.com>, 
 VMware PV-Drivers Reviewers <pv-drivers@vmware.com>,
 Andy Whitcroft <apw@canonical.com>, Joe Perches <joe@perches.com>, 
 Dwaipayan Ray <dwaipayanray1@gmail.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
 Hauke Mehrtens <hauke@hauke-m.de>, Andrew Lunn <andrew@lunn.ch>, 
 Florian Fainelli <f.fainelli@gmail.com>, Vladimir Oltean <olteanv@gmail.com>, 
 "=?utf-8?q?Ar=C4=B1n=C3=A7_=C3=9CNAL?=" <arinc.unal@arinc9.com>,
 Daniel Golle <daniel@makrotopia.org>, 
 Landen Chao <Landen.Chao@mediatek.com>, DENG Qingfang <dqfext@gmail.com>, 
 Sean Wang <sean.wang@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 "=?utf-8?q?Alvin_=C5=A0ipraga?=" <alsi@bang-olufsen.dk>,
 Wei Fang <wei.fang@nxp.com>, 
 Shenwei Wang <shenwei.wang@nxp.com>, Clark Wang <xiaoning.wang@nxp.com>, 
 NXP Linux Team <linux-imx@nxp.com>, Lars Povlsen <lars.povlsen@microchip.com>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 Daniel Machon <daniel.machon@microchip.com>, 
 UNGLinuxDriver@microchip.com, Jiawen Wu <jiawenwu@trustnetic.com>, 
 Mengyuan Lou <mengyuanlou@net-swift.com>,
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1701904574; x=1702509374; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=2PrTW3nyo92scL20Ekap9nlWMoYhz1YGjtYVc4UbsDk=;
 b=CzJS8PCwFJ5BCzm1/rYWb8EBcRLI5X2o1EQoG+xEda4jWddZkKTx8JXjI/VZOQZe3Y
 PqjQ4IBMiujFT5KRYJxjmEbijKSPlTlNtUcABbZz5snGwwMqWKMaIgISSV52oCpRf+aA
 wScIyugEtsAu/p3DGTVswh6e3z6f8wxktzmn2KEklPtMGOuw4BtwSVRBKm8cyacVphBI
 J1WapYRS7QdxRSyjStk/T9Fn1juaKqeI6vVRMYcHrliVf+boHLH4gRCFW+PtOjBzsmrJ
 PdFKgyTlkf38CaSYRZ75OFu3FvcqmT8rP1I8ve4tJYl0uUjVl2coSdevBfnMWJRJwtvl
 QzXA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=CzJS8PCw
Subject: [Intel-wired-lan] [PATCH net-next v5 0/3] ethtool: Add
 ethtool_puts()
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
Cc: linux-hyperv@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 netdev@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
 oss-drivers@corigine.com, intel-wired-lan@lists.osuosl.org,
 Justin Stitt <justinstitt@google.com>, linux-mediatek@lists.infradead.org,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

This series aims to implement ethtool_puts() and send out a wave 1 of
conversions from ethtool_sprintf(). There's also a checkpatch patch
included to check for the cases listed below.

This was sparked from recent discussion here [1]

The conversions are used in cases where ethtool_sprintf() was being used
with just two arguments:
|       ethtool_sprintf(&data, buffer[i].name);
or when it's used with format string: "%s"
|       ethtool_sprintf(&data, "%s", buffer[i].name);
which both now become:
|       ethtool_puts(&data, buffer[i].name);

The first case commonly triggers a -Wformat-security warning with Clang
due to potential problems with format flags present in the strings [3].

The second is just a bit weird with a plain-ol' "%s".

Changes found with Cocci [4] and grep [5].

[1]: https://lore.kernel.org/all/202310141935.B326C9E@keescook/
[2]: https://lore.kernel.org/all/?q=dfb%3Aethtool_sprintf+AND+f%3Ajustinstitt
[3]: https://lore.kernel.org/all/202310101528.9496539BE@keescook/
[4]: (script authored by Kees w/ modifications from Joe)
@replace_2_args@
expression BUF;
expression VAR;
@@

-       ethtool_sprintf(BUF, VAR)
+       ethtool_puts(BUF, VAR)

@replace_3_args@
expression BUF;
expression VAR;
@@

-       ethtool_sprintf(BUF, "%s", VAR)
+       ethtool_puts(BUF, VAR)

-       ethtool_sprintf(&BUF, "%s", VAR)
+       ethtool_puts(&BUF, VAR)

[5]: $ rg "ethtool_sprintf\(\s*[^,)]+\s*,\s*[^,)]+\s*\)"

Signed-off-by: Justin Stitt <justinstitt@google.com>
---
Changes in v5:
- updated documentation to include info about the lack of a trailing newline
  (Thanks Russell)
- rebased onto mainline
- Link to v4: https://lore.kernel.org/r/20231102-ethtool_puts_impl-v4-0-14e1e9278496@google.com

Changes in v4:
- update documentation to match:
  https://lore.kernel.org/all/20231028192511.100001-1-andrew@lunn.ch/

- Link to v3: https://lore.kernel.org/r/20231027-ethtool_puts_impl-v3-0-3466ac679304@google.com

Changes in v3:
- fix force_speed_maps merge conflict + formatting (thanks Vladimir)
- rebase onto net-next (thanks Andrew, Vladimir)
- change subject (thanks Vladimir)
- fix checkpatch formatting + implementation (thanks Joe)
- Link to v2: https://lore.kernel.org/r/20231026-ethtool_puts_impl-v2-0-0d67cbdd0538@google.com

Changes in v2:
- wrap lines better in replacement (thanks Joe, Kees)
- add --fix to checkpatch (thanks Joe)
- clean up checkpatch formatting (thanks Joe, et al.)
- rebase against next
- Link to v1: https://lore.kernel.org/r/20231025-ethtool_puts_impl-v1-0-6a53a93d3b72@google.com

---
Justin Stitt (3):
      ethtool: Implement ethtool_puts()
      checkpatch: add ethtool_sprintf rules
      net: Convert some ethtool_sprintf() to ethtool_puts()

 drivers/net/dsa/lantiq_gswip.c                     |  2 +-
 drivers/net/dsa/mt7530.c                           |  2 +-
 drivers/net/dsa/qca/qca8k-common.c                 |  2 +-
 drivers/net/dsa/realtek/rtl8365mb.c                |  2 +-
 drivers/net/dsa/realtek/rtl8366-core.c             |  2 +-
 drivers/net/dsa/vitesse-vsc73xx-core.c             |  8 +--
 drivers/net/ethernet/amazon/ena/ena_ethtool.c      |  4 +-
 drivers/net/ethernet/brocade/bna/bnad_ethtool.c    |  2 +-
 drivers/net/ethernet/freescale/fec_main.c          |  4 +-
 .../net/ethernet/fungible/funeth/funeth_ethtool.c  |  8 +--
 drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c |  2 +-
 .../net/ethernet/hisilicon/hns/hns_dsaf_xgmac.c    |  2 +-
 drivers/net/ethernet/hisilicon/hns/hns_ethtool.c   | 65 +++++++++++-----------
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c     |  6 +-
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c     |  3 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c       |  9 +--
 drivers/net/ethernet/intel/idpf/idpf_ethtool.c     |  2 +-
 drivers/net/ethernet/intel/igb/igb_ethtool.c       |  6 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c       |  6 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c   |  5 +-
 .../net/ethernet/microchip/sparx5/sparx5_ethtool.c |  2 +-
 .../net/ethernet/netronome/nfp/nfp_net_ethtool.c   | 44 +++++++--------
 drivers/net/ethernet/pensando/ionic/ionic_stats.c  |  4 +-
 drivers/net/ethernet/wangxun/libwx/wx_ethtool.c    |  2 +-
 drivers/net/hyperv/netvsc_drv.c                    |  4 +-
 drivers/net/phy/nxp-tja11xx.c                      |  2 +-
 drivers/net/phy/smsc.c                             |  2 +-
 drivers/net/vmxnet3/vmxnet3_ethtool.c              | 10 ++--
 include/linux/ethtool.h                            | 13 +++++
 net/ethtool/ioctl.c                                |  7 +++
 scripts/checkpatch.pl                              | 19 +++++++
 31 files changed, 139 insertions(+), 112 deletions(-)
---
base-commit: bee0e7762ad2c6025b9f5245c040fcc36ef2bde8
change-id: 20231025-ethtool_puts_impl-a1479ffbc7e0

Best regards,
-- 
Justin Stitt <justinstitt@google.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
