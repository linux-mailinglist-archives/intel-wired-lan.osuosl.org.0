Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED634A4EA2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jan 2022 19:40:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15BE640348;
	Mon, 31 Jan 2022 18:40:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iXAbtLIj4EAw; Mon, 31 Jan 2022 18:40:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD37340363;
	Mon, 31 Jan 2022 18:40:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD8831BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 18:40:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 989A783F84
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 18:40:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rPV-RX-xQbV0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jan 2022 18:40:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 002AC83F83
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 18:40:47 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id i30so13603006pfk.8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 10:40:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=vUcVq5xhDtsVnawQOYBHe0I2uMjtSwKHFuB7P9A9ZPE=;
 b=Qks15jLuTdFfJB7Yimcf6CFubiKZSrG+lgYbEXhv5CmcREhbsO9I3sHSkFpZJtXCKr
 92ULlrJ1jbtZTyDNycEEatYwo/lYVGPSpPf1Eb96b6UbfuVheN/P13CAiMWNG2SWTU/7
 3kMaW8gywhhLuK1ffBR6cWAnDfHfkbkT4gdENSpeUmj5WtcK+xKXA3d7Ir+6P1b6ySez
 5aKGnhEZanxzbauIs3sIeQq7luxkHgr8QY9yfq7EiP8YuRrN+QQlfEvf8cqeTrWlxUPM
 eHVw4/o/IfeCDvEz6RYo2vuKGwnbY5xuw8UU3STuPVmvw/DN71+Hg6YDgx6nHJknnlYG
 GImA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=vUcVq5xhDtsVnawQOYBHe0I2uMjtSwKHFuB7P9A9ZPE=;
 b=CqFPIRQqQFgESfehF5cAtehpYu62qnNVY8D4fS8W07KZFtk12/aB70Uu26rCSyKqEm
 16VJXcinnI+PsqlocBvUCETNlL+R6sceXk4xqbqEm4B4E2etWul/qtNaLL8co5aC7kjH
 rwg//YoSd0zfYLEHnTHQd3V1dbHbgx+Ar7NHOb7DRbtAhGKlKBxcgzw2szfmmffgfJaq
 +zvlUUJY2Y4qw7qtT9f3PMYBy1ziu4A0+9UWFcu8//q5hgsmbae47Euy6rzr3fuQj7hi
 PhvZnVBfv4ST6Pir6+AjS6Q2P7mU/1VLw06OBjXmSZbkKFmScB12HJ8Kh6v1WKThqgW3
 TK0A==
X-Gm-Message-State: AOAM530vEYtkXNnUrWDa7RQwKI6P9RwVMRu26lCN82kv7ftUHWQJrgsI
 tQ9wKgVF73PPJIoqvULnH9o=
X-Google-Smtp-Source: ABdhPJwFcPJi/t2hparKLY2t08LTiTgjCaME1xBLmUfnatI03eGBlVkElbTxSt6cAsqmyFb4Kfa8FA==
X-Received: by 2002:a05:6a00:b51:: with SMTP id
 p17mr12524853pfo.35.1643654447151; 
 Mon, 31 Jan 2022 10:40:47 -0800 (PST)
Received: from [192.168.1.3] (ip72-194-116-95.oc.oc.cox.net. [72.194.116.95])
 by smtp.gmail.com with ESMTPSA id
 s14sm18562705pfk.65.2022.01.31.10.40.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 31 Jan 2022 10:40:45 -0800 (PST)
Message-ID: <30ed8220-e24d-4b40-c7a6-4b09c84f9a1f@gmail.com>
Date: Mon, 31 Jan 2022 10:40:38 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Saeed Mahameed <saeedm@nvidia.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>
References: <20220131172450.4905-1-saeed@kernel.org>
 <20220131095905.08722670@hermes.local>
 <CAMuHMdU17cBzivFm9q-VwF9EG5MX75Qct=is=F2h+Kc+VddZ4g@mail.gmail.com>
 <20220131183540.6ekn3z7tudy5ocdl@sx1>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220131183540.6ekn3z7tudy5ocdl@sx1>
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
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-renesas-soc@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Catherine Sullivan <csully@google.com>, linux-hyperv@vger.kernel.org,
 oss-drivers@corigine.com, Noam Dagan <ndagan@amazon.com>,
 Rob Herring <robh@kernel.org>, Steen Hegelund <steen.hegelund@microchip.com>,
 Dexuan Cui <decui@microsoft.com>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Joel Stanley <joel@jms.id.au>,
 Simon Horman <simon.horman@corigine.com>, Asmaa Mnebhi <asmaa@nvidia.com>,
 Arnd Bergmann <arnd@arndb.de>, Haiyang Zhang <haiyangz@microsoft.com>,
 Saeed Mahameed <saeed@kernel.org>, Liming Sun <limings@nvidia.com>,
 Michael Chan <michael.chan@broadcom.com>, Salil Mehta <salil.mehta@huawei.com>,
 Sergey Shtylyov <s.shtylyov@omp.ru>, Oleksij Rempel <linux@rempel-privat.de>,
 Edward Cree <ecree.xilinx@gmail.com>, Saeed Bishara <saeedb@amazon.com>,
 Mark Einon <mark.einon@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 Vignesh Raghavendra <vigneshr@ti.com>,
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
 Stephen Hemminger <stephen@networkplumber.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/31/2022 10:35 AM, Saeed Mahameed wrote:
> On 31 Jan 19:30, Geert Uytterhoeven wrote:
>> On Mon, Jan 31, 2022 at 6:59 PM Stephen Hemminger
>> <stephen@networkplumber.org> wrote:
>>> On Mon, 31 Jan 2022 09:24:50 -0800
>>> Saeed Mahameed <saeed@kernel.org> wrote:
>>>
>>> > From: Saeed Mahameed <saeedm@nvidia.com>
>>> >
>>> > NET_VENDOR_XYZ were defaulted to 'y' for no technical reason.
>>> >
>>> > Since all drivers belonging to a vendor are supposed to default to 
>>> 'n',
>>> > defaulting all vendors to 'n' shouldn't be an issue, and aligns well
>>> > with the 'no new drivers' by default mentality.
>>> >
>>> > Signed-off-by: Saeed Mahameed <saeedm@nvidia.com>
>>>
>>> This was done back when vendors were introduced in the network 
>>> drivers tree.
>>> The default of Y allowed older configurations to just work.
>>
>> And changing the defaults means all defconfigs must be updated first,
>> else the user's configs will end up without drivers needed.
>>
> 
> As I understand correctly, at least for most common net drivers, having 
> NET_VENDOR_XYZ=y doesn't actually build anything, we have flags per
> module for each vendor and those are defaulted to N.

Right, but once you start hiding NET_VENDOR_DRIVER_XYZ under a 
NET_VENDOR_XYZ Kconfig symbol dependency, if NET_VENDOR_XYZ is not set 
to Y, then you have no way to select NET_VENDOR_DRIVER_XYZ and so your 
old defconfig breaks.

> 
>>> So there was a reason, not sure if it matters anymore.
>>> But it seems like useless repainting to change it now.
>>
>> It might make sense to tune some of the defaults (i.e. change to
>> "default y if ARCH_*") for drivers with clear platform dependencies.
>>
> 
> either set hard default to 'n' or just keep it as is, anything else is just
> more confusion.

Maybe the rule should go like this: any new driver vendor defaults to n, 
and existing ones remain set to y, until we deprecate doing that and 
switching them all off to n by 5.18?
-- 
Florian
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
