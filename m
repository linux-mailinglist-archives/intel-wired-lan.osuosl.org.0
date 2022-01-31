Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1FA4A4DA8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jan 2022 18:59:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A95B8266C;
	Mon, 31 Jan 2022 17:59:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pV9ULPNDVFUA; Mon, 31 Jan 2022 17:59:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0163E82438;
	Mon, 31 Jan 2022 17:59:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7C3011BF20B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 17:59:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6E1944092F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 17:59:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=networkplumber-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rnWxlBCSlIle for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jan 2022 17:59:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 92760408F0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 17:59:10 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id h12so14714910pjq.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 09:59:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GTfk5dtnofD+DwQSBTggrf944TpHjURpGaUt6sHxP1Q=;
 b=zo7PV8Zd2Z7HIVMtmOiMcabS1N6sxBbjo3wwW81zQa4IENFd+3e1qlBJHlUZq9ntz+
 XqfG3FiwQvk7BkMKzEkrTK8KhKl8bZCQp61R1xdJf1S9wF/56YoXbTILPq45QQEx1fSh
 qDbMCmpmLx42v5eiBQi+snTnumsDFMmyNi7p2J7qmEpf/Q0W+tWRSYxd7R6rXO23yKNp
 eMGd4RXtD6PUL8AwbxNTR7tmpDMAYcRkYwTmmCgt3rFO3CXoS8g4hf8QkYIQwr1yPT2W
 YKmY+awyasNFLlw+dtDGpSReBp1a0X8b4c5W4Zbb1H5Li7iemUtlEkg083LPRVdpWVvw
 ce3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GTfk5dtnofD+DwQSBTggrf944TpHjURpGaUt6sHxP1Q=;
 b=TCwoi8TaYDzTlEUOjQErSam3Xj7pGCsyYac/T6fzvc2VIUckNlS1w9EH9ba6lGEy7u
 nxbAyId5J62MhFcsu+xyoJQ6vbE28kM9t+tRDPUQe8MJPPbUZnNLad8Y820BEhiW8WrM
 R8xCroRqGT80ewi7/D3qNXmrLkhCfBtg3dO7n6sHl2GBFuEEV9i5B0uFzgeZLXpGIsaO
 3qmf0dSJsc3yZwtzTZkDTYHOF1bGIVmx2sLMnJrgdeMhXat2oj8SGX2AeTyo3FJn27V4
 CwSv/jvzKGFL4lttuFJrq2qtvnGMRBnU9VMmU6Z/RK2hpv6SILpeGXdi1DmtEwKqKhYN
 zCIQ==
X-Gm-Message-State: AOAM532pY2akc+LgtE5xbJrwILyY6PmN1VFqFjWOQF01X24xVo6kF1N2
 EYYpyBHuy8vJmt+J+Pjlyj5Ssg==
X-Google-Smtp-Source: ABdhPJwUpbKpp1BF/RE/P7pFaFs95WxKDdCWSlLhnXYDb8ikckCTeUYHjKtVxjHYzKFZsy5bOe8h5g==
X-Received: by 2002:a17:90b:1d8d:: with SMTP id
 pf13mr35398210pjb.232.1643651949935; 
 Mon, 31 Jan 2022 09:59:09 -0800 (PST)
Received: from hermes.local (204-195-112-199.wavecable.com. [204.195.112.199])
 by smtp.gmail.com with ESMTPSA id
 o1sm20431282pfu.88.2022.01.31.09.59.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Jan 2022 09:59:09 -0800 (PST)
Date: Mon, 31 Jan 2022 09:59:05 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: Saeed Mahameed <saeed@kernel.org>
Message-ID: <20220131095905.08722670@hermes.local>
In-Reply-To: <20220131172450.4905-1-saeed@kernel.org>
References: <20220131172450.4905-1-saeed@kernel.org>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: kbuild: Don't default
 net vendor configs to y
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 David Awogbemila <awogbemila@google.com>,
 Linus Walleij <linus.walleij@linaro.org>, rafal@milecki.pl,
 Horatiu Vultur <horatiu.vultur@microchip.com>,
 Andy Gospodarek <andy@greyhouse.net>, Edwin Peer <edwin.peer@broadcom.com>,
 Wei Liu <wei.liu@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>, linux-sunxi@lists.linux.dev,
 Jiri Pirko <jiri@resnulli.us>, l.stelmach@samsung.com,
 Shay Agroskin <shayagr@amazon.com>, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, Jon Mason <jdmason@kudzu.us>,
 Shannon Nelson <snelson@pensando.io>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Chris Snook <chris.snook@gmail.com>, Zhu Yanjun <zyjzyj2000@gmail.com>,
 Arthur Kiyanovski <akiyano@amazon.com>, Stefan Wahren <stefan.wahren@i2se.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 linux-stm32@st-md-mailman.stormreply.com, Gabriel Somlo <gsomlo@gmail.com>,
 Rain River <rain.1986.08.12@gmail.com>,
 Martin Habets <habetsm.xilinx@gmail.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Shai Malin <smalin@marvell.com>, Maxime Ripard <mripard@kernel.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, drivers@pensando.io,
 Omkar Kulkarni <okulkarni@marvell.com>, linux-arm-kernel@lists.infradead.org,
 Vegard Nossum <vegard.nossum@oracle.com>, David Arinzon <darinzon@amazon.com>,
 UNGLinuxDriver@microchip.com, linux-renesas-soc@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Catherine Sullivan <csully@google.com>, linux-hyperv@vger.kernel.org,
 oss-drivers@corigine.com, Noam Dagan <ndagan@amazon.com>,
 Rob Herring <robh@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Steen Hegelund <steen.hegelund@microchip.com>,
 Dexuan Cui <decui@microsoft.com>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Joel Stanley <joel@jms.id.au>,
 Simon Horman <simon.horman@corigine.com>, Asmaa Mnebhi <asmaa@nvidia.com>,
 Arnd Bergmann <arnd@arndb.de>, Haiyang Zhang <haiyangz@microsoft.com>,
 Liming Sun <limings@nvidia.com>, Michael Chan <michael.chan@broadcom.com>,
 Salil Mehta <salil.mehta@huawei.com>, Sergey Shtylyov <s.shtylyov@omp.ru>,
 Oleksij Rempel <linux@rempel-privat.de>, Edward Cree <ecree.xilinx@gmail.com>,
 Saeed Bishara <saeedb@amazon.com>, Mark Einon <mark.einon@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Vignesh Raghavendra <vigneshr@ti.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Slark Xiao <slark_xiao@163.com>, Gary Guo <gary@garyguo.net>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 Jeroen de Borst <jeroendb@google.com>, Lino Sanfilippo <LinoSanfilippo@gmx.de>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Richard Cochran <richardcochran@gmail.com>, Marcin Wojtas <mw@semihalf.com>,
 David Thompson <davthompson@nvidia.com>,
 Lars Povlsen <lars.povlsen@microchip.com>, netdev@vger.kernel.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Saeed Mahameed <saeedm@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 31 Jan 2022 09:24:50 -0800
Saeed Mahameed <saeed@kernel.org> wrote:

> From: Saeed Mahameed <saeedm@nvidia.com>
> 
> NET_VENDOR_XYZ were defaulted to 'y' for no technical reason.
> 
> Since all drivers belonging to a vendor are supposed to default to 'n',
> defaulting all vendors to 'n' shouldn't be an issue, and aligns well
> with the 'no new drivers' by default mentality.
> 
> Signed-off-by: Saeed Mahameed <saeedm@nvidia.com>

This was done back when vendors were introduced in the network drivers tree.
The default of Y allowed older configurations to just work.

So there was a reason, not sure if it matters anymore.
But it seems like useless repainting to change it now.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
