Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B16417DFB6F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Nov 2023 21:21:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3CA4370790;
	Thu,  2 Nov 2023 20:21:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3CA4370790
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698956496;
	bh=PfIhft6u6fKUc+25+yCzYMIg6zDkVbR0gjfmX5TzYHw=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d/BVRtxv4GoM/PEsjlGvUhu8Vx7agEqvZR2j95YpHN62cP4iCdu7JQPzJ6HokaA//
	 iMKYJmtd1UN6WUgN+AoivYvRbrBLOWD5zWcm0PTWpU/UrNFBPMFdhyq2Z2Vfb/rB9N
	 X2c0kAgVxTApWoaNHvpG8+cVi03quDwBk68prZxv+GBNt8r3O7SFbIPWvq7YYOABvz
	 uzXiOgZC5WVJuwNZQ6nJSQcb1QOBIiiOmVFt4DqNcLEUQLM0p2m7exBZM2ldPKX01q
	 YaEqbeymXP5yKFcQjVN0em+oVbI0xTr0NkUB0w+aHAUXLtP6XDnYuZyKRlaZrj1ZxL
	 WW0A7gPrQmYAg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eaPZAcFsMsH3; Thu,  2 Nov 2023 20:21:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E3B4270772;
	Thu,  2 Nov 2023 20:21:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E3B4270772
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2458D1BF287
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Nov 2023 18:55:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EF13B43549
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Nov 2023 18:55:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF13B43549
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r3pfk7H_FOIe for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Nov 2023 18:55:52 +0000 (UTC)
Received: from mail-oo1-xc49.google.com (mail-oo1-xc49.google.com
 [IPv6:2607:f8b0:4864:20::c49])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 88C6443541
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Nov 2023 18:55:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 88C6443541
Received: by mail-oo1-xc49.google.com with SMTP id
 006d021491bc7-581ff5ab8d3so2639229eaf.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Nov 2023 11:55:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698951351; x=1699556151;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=32K79yUePS03VyWxcYP10LK3dnc9q0LtbXtqJtsNvV4=;
 b=jNkaI02zrOESGJU+ma9Wjuqw2iaDZkOYyH/MoUMvi/M9qjwVtBB3YSUJanSomh7PA+
 1L2mYVJ70kkqXuxG4DguW6e6TrAqiPCEfFyge25wELjoqxmq38X3FOK/J2IMPQ0heZAK
 bxPbxgOWLgP1n/WT5OMxjRlZF1UzMreGD8A64gxyDJf8cIDMMO8OeFkk9A/y8/8Dfysy
 s6efwNwdGaHkAe0rPWGe/A70TniLYitBklF4tJC3CQnSFFnFpuZzMBWBrqQ7SPTcAdgw
 HKULLQxt5GP2Ix3kQK98uc3DPWfYxrsoN1AeXWf9uIYJla48Jxfbp4LYsjZptFmIx/FD
 on8g==
X-Gm-Message-State: AOJu0Yy006HkyNYfcRTbhAxbypAFcXsYTtuBkTRPB5jdi0M+7hS0CpPD
 hDwDYFGRBpZc7bJbnmoYlnKMW3GQTtM8ifELxw==
X-Google-Smtp-Source: AGHT+IEDkF7Oi1IvBAECUO1D2BZ/WfZR7U3roLxCuXWWPqD/1I8emyNHZYAH7mCiA7sr/QX8V5tqqhhnpUgVQ3gPTg==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a05:6870:b629:b0:1e9:a86f:ec44 with
 SMTP id cm41-20020a056870b62900b001e9a86fec44mr375267oab.2.1698951351424;
 Thu, 02 Nov 2023 11:55:51 -0700 (PDT)
Date: Thu, 02 Nov 2023 18:55:43 +0000
In-Reply-To: <20231102-ethtool_puts_impl-v4-0-14e1e9278496@google.com>
Mime-Version: 1.0
References: <20231102-ethtool_puts_impl-v4-0-14e1e9278496@google.com>
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698951347; l=1990;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=5WZCSRmn5I240grrVCw4x/4n7/d4Ou3ZeMgHOu6QRHU=;
 b=1nZEvR6w+gOAIckxQFx/hzREhfGTALc08T+ct+mnZ2DmKk8uycd6z6khwq8TbMAwCu9Ezqp/H
 Dfu4ZT5igmOB2KC0bZOz7azBMQm7Hj6sTI87CdS0CAZqv2537ilCpzL
X-Mailer: b4 0.12.3
Message-ID: <20231102-ethtool_puts_impl-v4-2-14e1e9278496@google.com>
From: Justin Stitt <justinstitt@google.com>
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
X-Mailman-Approved-At: Thu, 02 Nov 2023 20:21:17 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1698951351; x=1699556151; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=32K79yUePS03VyWxcYP10LK3dnc9q0LtbXtqJtsNvV4=;
 b=YdshN/4XkUJaA3sxCirCnFSOtjHI4ZsuxjTjRMB8+yIxqwJO74nzVdpsca+B+a73D9
 3x7CtaaF5EC7s+xlzAzaxuzEK1xzSM098620hNQ7ULO1JHEZF7+4qkpOA/Np3iXZz156
 //4wiu63JBeP6xJei49jye7eDCa2B3jnXYEBuTNBZplXNevDeKlcueWn0qFjj9ZMsfrv
 G2aAW0lfWeWEHKVT4sB2WtwNvrPWPR2hxsWYAwe3EFh+qw1n9v7U2r80DPI4fJFYJea+
 l8VRl359RISLkQp8eAG+hLSuF5vEmXNyPoIk9A7ILjErA3IWm6Q1FjLCdhPJLyAU9eqm
 FaBw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=YdshN/4X
Subject: [Intel-wired-lan] [PATCH net-next v4 2/3] checkpatch: add
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
 Justin Stitt <justinstitt@google.com>, linux-mediatek@lists.infradead.org,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add some warnings for using ethtool_sprintf() where a simple
ethtool_puts() would suffice.

The two cases are:

1) Use ethtool_sprintf() with just two arguments:
|       ethtool_sprintf(&data, driver[i].name);
or
2) Use ethtool_sprintf() with a standalone "%s" fmt string:
|       ethtool_sprintf(&data, "%s", driver[i].name);

The former may cause -Wformat-security warnings while the latter is just
not preferred. Both are safely in the category of warnings, not errors.

Signed-off-by: Justin Stitt <justinstitt@google.com>
---
 scripts/checkpatch.pl | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 7d16f863edf1..9369ce1d15c5 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -7020,6 +7020,25 @@ sub process {
 			     "Prefer strscpy, strscpy_pad, or __nonstring over strncpy - see: https://github.com/KSPP/linux/issues/90\n" . $herecurr);
 		}
 
+# ethtool_sprintf uses that should likely be ethtool_puts
+		if ($line =~ /\bethtool_sprintf\s*\(\s*$FuncArg\s*,\s*$FuncArg\s*\)/) {
+			if (WARN("PREFER_ETHTOOL_PUTS",
+				 "Prefer ethtool_puts over ethtool_sprintf with only two arguments\n" . $herecurr) &&
+			    $fix) {
+				$fixed[$fixlinenr] =~ s/\bethtool_sprintf\s*\(\s*($FuncArg)\s*,\s*($FuncArg)/ethtool_puts($1, $7)/;
+			}
+		}
+
+		# use $rawline because $line loses %s via sanitization and thus we can't match against it.
+		if ($rawline =~ /\bethtool_sprintf\s*\(\s*$FuncArg\s*,\s*\"\%s\"\s*,\s*$FuncArg\s*\)/) {
+			if (WARN("PREFER_ETHTOOL_PUTS",
+				 "Prefer ethtool_puts over ethtool_sprintf with standalone \"%s\" specifier\n" . $herecurr) &&
+			    $fix) {
+				$fixed[$fixlinenr] =~ s/\bethtool_sprintf\s*\(\s*($FuncArg)\s*,\s*"\%s"\s*,\s*($FuncArg)/ethtool_puts($1, $7)/;
+			}
+		}
+
+
 # typecasts on min/max could be min_t/max_t
 		if ($perl_version_ok &&
 		    defined $stat &&

-- 
2.42.0.869.gea05f2083d-goog

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
