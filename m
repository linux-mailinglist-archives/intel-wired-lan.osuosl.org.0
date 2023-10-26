Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B6F7D8B7C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Oct 2023 00:12:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 489B54B23E;
	Thu, 26 Oct 2023 22:12:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 489B54B23E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698358341;
	bh=oxjvBWaCgojkfLSavDNQN2lCHORufMMS6xXb6rf2TUE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fyfuurd0A3nYI9Zs21Im7N+7Kd3MS3qaOaE82Pkd+CkL16qjesq7dx95N3cz33Tt3
	 qlaMrzScr66XOpvpRKPGFHp5ArH3v1V6I5rPm481/l/zaMfR5nEQFoTrDYq0KShoOJ
	 WWGp8C8CSO77Ooub9/863Zg15pW6dbgmKyBBdiAsbKEWY7JCno4oDgPEOxbDbCxjrX
	 3JXr/nGBhJtYu+d4Q9p+EjipWwQg5HfvamxI+yG793tQbRJOqLgOZIMjzegWEE6xpE
	 OCqK16WgCh4V8ANDuXExAX8n8evvbkDjnR7WW2aWQqT4vNpZHQ6cONCBWfq9qSJ8GL
	 5jlZg37mMTphw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PHuFgZxcAnLX; Thu, 26 Oct 2023 22:12:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA25E4B158;
	Thu, 26 Oct 2023 22:12:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA25E4B158
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C6751BF378
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:12:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 65F10847F9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:12:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65F10847F9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kLP_3IXQnHRG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 22:12:13 +0000 (UTC)
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 05FB7847F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:12:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05FB7847F3
Received: by mail-wr1-x42c.google.com with SMTP id
 ffacd0b85a97d-32dcd3e5f3fso953289f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 15:12:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698358331; x=1698963131;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9dxV0z/KJX2jAtAYojUd4aHcjxi+u31o0EAgu6F7IwM=;
 b=okODW9dIINwYqo9OeaWuJyeWOXeivLSm+qx8T+JW6kTaMhiuShgpvJcIzqCD5dFdLu
 +uEG7331cPFIWKjsxkYkOjlfRbt/a+5HUsw5Z/59Xo5u378eo+qdMHTw7LVK89v5v3qP
 DvfVzTKaVrK2tvAW9J1P/6Lx7/MzOXLO6d8OHtw5gLQbUtqSPkF52gmmACd3sPner1Nm
 5Z3CABywuXIPKu757U4FSbvegrRXyReTFHUCKrtfOlzngj679l9Gdmp03L+n9r5wNvip
 8xQPNBtAvv1Z6LcK4EZXy8qbjIwXhCA1HhCL78JKlKCADL8Ddww7a8FGNW7tJihRm+4p
 /yVg==
X-Gm-Message-State: AOJu0YyNTE3rv69i54VapEli4P42vjejBWqNOWgF4pJNbuReBvORhV7Q
 xNEIrbnBUDHdPB1a/27d26Y=
X-Google-Smtp-Source: AGHT+IEFBkpZiWpPOgBWSz7VhB+L8HEH65ute3OKtRNDPYBqco6PY6IhRvs9olvc+3J8je+BIT3EsA==
X-Received: by 2002:a5d:5a06:0:b0:32d:a101:689d with SMTP id
 bq6-20020a5d5a06000000b0032da101689dmr886013wrb.56.1698358330949; 
 Thu, 26 Oct 2023 15:12:10 -0700 (PDT)
Received: from skbuf ([188.26.57.160]) by smtp.gmail.com with ESMTPSA id
 d16-20020adfef90000000b0032326908972sm358008wro.17.2023.10.26.15.12.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Oct 2023 15:12:10 -0700 (PDT)
Date: Fri, 27 Oct 2023 01:12:06 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Justin Stitt <justinstitt@google.com>
Message-ID: <20231026221206.52oge3a5w4uxkkd5@skbuf>
References: <20231026-ethtool_puts_impl-v2-0-0d67cbdd0538@google.com>
 <20231026-ethtool_puts_impl-v2-0-0d67cbdd0538@google.com>
 <20231026-ethtool_puts_impl-v2-2-0d67cbdd0538@google.com>
 <20231026-ethtool_puts_impl-v2-2-0d67cbdd0538@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231026-ethtool_puts_impl-v2-2-0d67cbdd0538@google.com>
 <20231026-ethtool_puts_impl-v2-2-0d67cbdd0538@google.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1698358331; x=1698963131; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=9dxV0z/KJX2jAtAYojUd4aHcjxi+u31o0EAgu6F7IwM=;
 b=G3BW1P9deRbRw2xwZe9hXCuZ6cecA3ilgJn8h1jQloexsrWD2gGT63J20DiwMTiho1
 PD6ocASU6MGC9g1s5wHYTAgQPP4OkeCx6NCdREA5A9cH5GPRyh2YWoJrhak8W+YP5pwn
 2r6tuoSSTNII5OqBnQPY9HZLZdDF0tO9Y/LcUr+SeFF75rXLIVXmyfmteWz1gVfjzK6T
 E7V2vbfaYZoj1XgkKgHFRwgK/HSt27crXdt9q5dVeeEjGe3tQG1VARVhnUShG5KZ6KFG
 WehceiyiYiGYuzwTpzx2H5E/P4qSXqPceF5pENex909i12J9phwsJCXgNk/X/nMYtgS+
 93SA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=G3BW1P9d
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-hyperv@vger.kernel.org,
 Brett Creeley <brett.creeley@amd.com>, Ronak Doshi <doshir@vmware.com>,
 VMware PV-Drivers Reviewers <pv-drivers@vmware.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Alexei Starovoitov <ast@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Matthias Brugger <matthias.bgg@gmail.com>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Mengyuan Lou <mengyuanlou@net-swift.com>,
 Arthur Kiyanovski <akiyano@amazon.com>, linux-kernel@vger.kernel.org,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Louis Peens <louis.peens@corigine.com>, Wei Liu <wei.liu@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 Dexuan Cui <decui@microsoft.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, Noam Dagan <ndagan@amazon.com>,
 Heiner Kallweit <hkallweit1@gmail.com>, Shenwei Wang <shenwei.wang@nxp.com>,
 Clark Wang <xiaoning.wang@nxp.com>, NXP Linux Team <linux-imx@nxp.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Landen Chao <Landen.Chao@mediatek.com>,
 Shay Agroskin <shayagr@amazon.com>,
 Daniel Machon <daniel.machon@microchip.com>,
 Alvin =?utf-8?Q?=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
 Hauke Mehrtens <hauke@hauke-m.de>, Haiyang Zhang <haiyangz@microsoft.com>,
 Sean Wang <sean.wang@mediatek.com>, Nathan Chancellor <nathan@kernel.org>,
 Joe Perches <joe@perches.com>, Jiawen Wu <jiawenwu@trustnetic.com>,
 Wei Fang <wei.fang@nxp.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Andy Whitcroft <apw@canonical.com>, drivers@pensando.io,
 intel-wired-lan@lists.osuosl.org, Lars Povlsen <lars.povlsen@microchip.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-arm-kernel@lists.infradead.org, Salil Mehta <salil.mehta@huawei.com>,
 GR-Linux-NIC-Dev@marvell.com, DENG Qingfang <dqfext@gmail.com>,
 Kees Cook <keescook@chromium.org>,
 =?utf-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
 Rasesh Mody <rmody@marvell.com>, David Arinzon <darinzon@amazon.com>,
 oss-drivers@corigine.com, Nick Desaulniers <ndesaulniers@google.com>,
 Daniel Golle <daniel@makrotopia.org>, "David S. Miller" <davem@davemloft.net>,
 Dwaipayan Ray <dwaipayanray1@gmail.com>, Saeed Bishara <saeedb@amazon.com>,
 linux-mediatek@lists.infradead.org, bpf@vger.kernel.org,
 Dimitris Michailidis <dmichail@fungible.com>,
 Sudarsana Kalluru <skalluru@marvell.com>, UNGLinuxDriver@microchip.com,
 Shannon Nelson <shannon.nelson@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 26, 2023 at 09:56:08PM +0000, Justin Stitt wrote:
> Add some warnings for using ethtool_sprintf() where a simple
> ethtool_puts() would suffice.
> 
> The two cases are:
> 
> 1) Use ethtool_sprintf() with just two arguments:
> |       ethtool_sprintf(&data, driver[i].name);
> or
> 2) Use ethtool_sprintf() with a standalone "%s" fmt string:
> |       ethtool_sprintf(&data, "%s", driver[i].name);
> 
> The former may cause -Wformat-security warnings while the latter is just
> not preferred. Both are safely in the category of warnings, not errors.
> 
> Signed-off-by: Justin Stitt <justinstitt@google.com>
> ---
>  scripts/checkpatch.pl | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> index 25fdb7fda112..22f007131337 100755
> --- a/scripts/checkpatch.pl
> +++ b/scripts/checkpatch.pl
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
> +       }
> +		}
> +
> +
>  # typecasts on min/max could be min_t/max_t
>  		if ($perl_version_ok &&
>  		    defined $stat &&
> 
> -- 
> 2.42.0.820.g83a721a137-goog
> 

I don't really know Perl, but does the indentation and coding style here
conform to any rules, or is it just free-form? The rest of the script
looks almost as you'd expect from C. This is unreadable to me.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
