Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 830D97D8BC5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Oct 2023 00:39:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E21A4D4F1;
	Thu, 26 Oct 2023 22:39:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E21A4D4F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698359962;
	bh=plLpmoQjvLGicpZTQmoLXx2szdt5fMbcu35SBKEspkQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MxzXG3s3v39VuA1+SatvzZH2H9XGLB9rILPf3GUiGUL+dkmOhJ3y6+1W6CYoB2S8S
	 ZphC4DYVSeWdgdUwFkAozXVRXvlewRsCVAW4ZjQywBCILxNnZZFymvxJfhl9T/3TGt
	 DFRZLGRXwFywD69NefuyhZPwGvnmJolbhQSvV7UiuL+MMTh3HshpsLT3JULfVrTlZd
	 +ULvNJNGP2dw/RbjSJNoLcEq2h9oS9CxlKFg2TkIAeVgaQ4+KsJZ8oWrYmak7yXtZm
	 /2zOJ0wxO9yFiTOB+rtQEp0QyxDDVpwHhSBLljkHPQtfivKORsIg7DiSOrDdZOH4NH
	 HLgjmMGWEMSkQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BsVlUvyvHCrR; Thu, 26 Oct 2023 22:39:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5D484D27C;
	Thu, 26 Oct 2023 22:39:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5D484D27C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 91E201BF33F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:39:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 658228484F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:39:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 658228484F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VV5QCafc5EBU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 22:39:14 +0000 (UTC)
Received: from relay.hostedemail.com (smtprelay0014.hostedemail.com
 [216.40.44.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6896B8484D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:39:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6896B8484D
Received: from omf03.hostedemail.com (a10.router.float.18 [10.200.18.1])
 by unirelay03.hostedemail.com (Postfix) with ESMTP id E0508A06DD;
 Thu, 26 Oct 2023 22:39:08 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by
 omf03.hostedemail.com (Postfix) with ESMTPA id 229B46000C; 
 Thu, 26 Oct 2023 22:38:40 +0000 (UTC)
Message-ID: <8521c712250bcffce5c71e8d2b2574de786d4572.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Justin Stitt <justinstitt@google.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Shay Agroskin
 <shayagr@amazon.com>, Arthur Kiyanovski <akiyano@amazon.com>, David Arinzon
 <darinzon@amazon.com>, Noam Dagan <ndagan@amazon.com>, Saeed Bishara
 <saeedb@amazon.com>, Rasesh Mody <rmody@marvell.com>, Sudarsana Kalluru
 <skalluru@marvell.com>, GR-Linux-NIC-Dev@marvell.com, Dimitris Michailidis
 <dmichail@fungible.com>, Yisen Zhuang <yisen.zhuang@huawei.com>, Salil
 Mehta <salil.mehta@huawei.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>,  Tony Nguyen <anthony.l.nguyen@intel.com>,
 Louis Peens <louis.peens@corigine.com>, Shannon Nelson
 <shannon.nelson@amd.com>, Brett Creeley <brett.creeley@amd.com>, 
 drivers@pensando.io, "K. Y. Srinivasan" <kys@microsoft.com>, Haiyang Zhang
 <haiyangz@microsoft.com>, Wei Liu <wei.liu@kernel.org>, Dexuan Cui
 <decui@microsoft.com>, Ronak Doshi <doshir@vmware.com>, VMware PV-Drivers
 Reviewers <pv-drivers@vmware.com>, Andy Whitcroft <apw@canonical.com>,
 Dwaipayan Ray <dwaipayanray1@gmail.com>, Lukas Bulwahn
 <lukas.bulwahn@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>, Andrew Lunn
 <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,  Vladimir Oltean
 <olteanv@gmail.com>, =?UTF-8?Q?Ar=C4=B1n=C3=A7_=C3=9CNAL?=
 <arinc.unal@arinc9.com>, Daniel Golle <daniel@makrotopia.org>, Landen Chao
 <Landen.Chao@mediatek.com>, DENG Qingfang <dqfext@gmail.com>, Sean Wang
 <sean.wang@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Linus
 Walleij <linus.walleij@linaro.org>, Alvin =?UTF-8?Q?=C5=A0ipraga?=
 <alsi@bang-olufsen.dk>, Wei Fang <wei.fang@nxp.com>, Shenwei Wang
 <shenwei.wang@nxp.com>, Clark Wang <xiaoning.wang@nxp.com>, NXP Linux Team
 <linux-imx@nxp.com>, Lars Povlsen <lars.povlsen@microchip.com>, Steen
 Hegelund <Steen.Hegelund@microchip.com>, Daniel Machon
 <daniel.machon@microchip.com>,  UNGLinuxDriver@microchip.com, Jiawen Wu
 <jiawenwu@trustnetic.com>, Mengyuan Lou <mengyuanlou@net-swift.com>, Heiner
 Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John
 Fastabend <john.fastabend@gmail.com>
Date: Thu, 26 Oct 2023 15:38:39 -0700
In-Reply-To: <20231026-ethtool_puts_impl-v2-2-0d67cbdd0538@google.com>
References: <20231026-ethtool_puts_impl-v2-0-0d67cbdd0538@google.com>
 <20231026-ethtool_puts_impl-v2-2-0d67cbdd0538@google.com>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: 229B46000C
X-Stat-Signature: mtojnbfkhmj945izba58at9t64m9az5b
X-Rspamd-Server: rspamout08
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1/UB5xXHbX1I6Iwr1/WX9S8fJXYcv2DOVQ=
X-HE-Tag: 1698359919-976100
X-HE-Meta: U2FsdGVkX1/Amx6RsPXMmp/lJzH0XSfOupRJb1kmsjddDIYEwUvtXmlXvcoG0HQxgfJeu/bgjCSmBW9XNko/mFTeWhpzlQGj+sHcroC4+SQucDoul9/mW561AqHS3bN32ZhIbH4y4PO56Z7gmbgk+jEv1lNmijdnNQn2GDoTkX/tD06ZkKPHkXJTWWOiblBjoSzVelzS2tuc0jq7rbU2KN7wKu2c9SCdLcBX7eDcPHw0DYjtwdWRO7eI8BixY9+TH41p+q5lsfSnzBidMm8GWcRCTJkLQdvf6jjmqEDt8BcNB67WbPmIoEo21hk8mGqMRn8qjdO5KQuIvo+QRzi9TNWL/Qwj5lvUYAvGAivJpjz++odpOBd6Ml2HgJTXQ35CUCCg8zvynD3R6R7WDpQwYoliPG09jddatznky2vFjJO9MiTzTC/t5iwPcMcldvPAUeGRgklQ6A1GlziHr19N0w==
Subject: Re: [Intel-wired-lan] [PATCH next v2 2/3] checkpatch: add
 ethtool_sprintf rules
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
 linux-mediatek@lists.infradead.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2023-10-26 at 21:56 +0000, Justin Stitt wrote:
> Add some warnings for using ethtool_sprintf() where a simple
> ethtool_puts() would suffice.
[]
> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
[]
> @@ -7011,6 +7011,25 @@ sub process {
>  			     "Prefer strscpy, strscpy_pad, or __nonstring over strncpy - see: https://github.com/KSPP/linux/issues/90\n" . $herecurr);
>  		}
>  
> +# ethtool_sprintf uses that should likely be ethtool_puts
> +		if ($line =~ /\bethtool_sprintf\s*\(\s*$FuncArg\s*,\s*$FuncArg\s*\)/) {
> +			if(WARN("ETHTOOL_SPRINTF",
> +			   "Prefer ethtool_puts over ethtool_sprintf with only two arguments\n" . $herecurr) &&
> +         $fix) {
> +         $fixed[$fixlinenr] =~ s/ethtool_sprintf\s*\(/ethtool_puts\(/;
> +       }
> +		}
> +
> +		# use $rawline because $line loses %s via sanitization and thus we can't match against it.
> +		if ($rawline =~ /\bethtool_sprintf\s*\(\s*$FuncArg\s*,\s*\"\%s\"\s*,\s*$FuncArg\s*\)/) {
> +			if(WARN("ETHTOOL_SPRINTF",
> +			   "Prefer ethtool_puts over ethtool_sprintf with standalone \"%s\" specifier\n" . $herecurr) &&
> +         $fix) {
> +         $fixed[$fixlinenr] =~ s/ethtool_sprintf\s*\(\s*(.*?),.*?,(.*?)\)/ethtool_puts\($1,$2)/;

Thanks, but:

This fix wouldn't work if the first argument was itself a function
with multiple arguments.

And this is whitespace formatted incorrectly.

It:

o needs a space after if
o needs a space after the comma in the fix
o needs to use the appropriate amount and tabs for indentation
o needs alignment to open parentheses
o the backslashes are not required in the fix block

Do you want me to push what I wrote in the link below?
https://lore.kernel.org/lkml/7eec92d9e72d28e7b5202f41b02a383eb28ddd26.camel@perches.com/

> +       }
> +		}
> +
> +
>  # typecasts on min/max could be min_t/max_t
>  		if ($perl_version_ok &&
>  		    defined $stat &&
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
