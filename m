Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B30627DBCB9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Oct 2023 16:35:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D2FE70A4A;
	Mon, 30 Oct 2023 15:35:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D2FE70A4A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698680142;
	bh=LVIALMbvlJYxQgCig0eabww1tQTa3Bjli+xmMestv1Q=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ervaE33kusRxUjFSnrHGRJ+jD51b4B+yPbXcyehcX6NcYxsCtUUl1S+HQBCSYErPd
	 8y3vKoXx61DBs5aoAVcOLWhFoiRrDhtFd32+J9d71OuXtXftuNw+RCo3RLyZeaXIyl
	 QIQLm6KQzoCVAVqzcU9l1mi+FCZ014BVJln36z8bKjHxpVZO9iU6LQmXSRuTWZnx3x
	 vBsaYt9R8GBrTwk0jnjO+4f2ltHY8Xe7V8VMDu/nEkopM8HzMYoVwazG1GTQixJUBZ
	 hY5VXlxqYavNBmoJtLzDjzbnHbzXMAexqftNeHPngcGzgTLZyqfUvZxqJ9yOy4I0qX
	 apxpp2hCV64+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UNgqzwud-TW8; Mon, 30 Oct 2023 15:35:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E870E7096E;
	Mon, 30 Oct 2023 15:35:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E870E7096E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD0DA1BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 21:56:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 85BAE847C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 21:56:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85BAE847C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bI003jOBkGw1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 21:56:17 +0000 (UTC)
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7EDB3823AB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 21:56:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7EDB3823AB
Received: by mail-yb1-xb4a.google.com with SMTP id
 3f1490d57ef6-d9cb79eb417so1010019276.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 14:56:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698357376; x=1698962176;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=dYFCbbBAM6Yzga/rYjukRYsp/POsV5oivqv/XEKMawY=;
 b=TatVgnsf5DFtBd2d2AA9fjGXCHjWU4G+3OESQLz1ovkhnJRbQZfYLD1A2Mdc/vJi4Y
 /6Jv8wHSj2R3ySmSzKu654tawXvcjG8cjn3yYDqHu04oikv9ZDu7MJqY/Bja3/KvLgXH
 68oKbfWse4F/2pTJ30P3NBDNJMRSLTgbRzygdvvokRsOCWX3v6wwbCSgspeqwg4/af0U
 YmhU+G+K4TTSpP0gfCGHnNkkIDz0puqV5R0bwQOoZwopt1iFuLlKof+Ue6jiGucy6uCb
 zCTZU+l4fl41D1qQd5uxy/IjCw0VmK13jYHVTlhFpWk4+rKGS9jKnTpwDomKQZAh1+nk
 YxBw==
X-Gm-Message-State: AOJu0YylJkUvwoPJHSLQ8Jd89lGvXLncMq4fpijAhFiBSAnIzxxwHnr1
 qIQ5hexhsiVmyJFIeYuisXWgszONZWNCv3Vm0g==
X-Google-Smtp-Source: AGHT+IEfb7oOzPF36nMjYrY6yuwt7u5aPWQywSkNLJU2looIRNzyUO73wvXREAmdoYaSsyaeoRl83oRT8BPm+HpxYA==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a5b:9d2:0:b0:d9a:bce6:acf3 with SMTP
 id y18-20020a5b09d2000000b00d9abce6acf3mr18000ybq.0.1698357376212; Thu, 26
 Oct 2023 14:56:16 -0700 (PDT)
Date: Thu, 26 Oct 2023 21:56:08 +0000
In-Reply-To: <20231026-ethtool_puts_impl-v2-0-0d67cbdd0538@google.com>
Mime-Version: 1.0
References: <20231026-ethtool_puts_impl-v2-0-0d67cbdd0538@google.com>
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698357372; l=1942;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=Tttx+U2qjudejsJUauC/KpxZsIK2OKqCPCc+Ch/fVls=;
 b=elpAQEsU3HOMMos/TnCJkrVo+AFG/1lerU81cOH+T2BgSHRjrFvGR7BmTA25L2uIiNK2WLsQZ
 m5JhXI8wJOxDHnWxVC+YAmf+U1BnkfHv0NAyeBvW/Fv+InbmfMY7Pw4
X-Mailer: b4 0.12.3
Message-ID: <20231026-ethtool_puts_impl-v2-2-0d67cbdd0538@google.com>
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
X-Mailman-Approved-At: Mon, 30 Oct 2023 15:34:59 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1698357376; x=1698962176; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=dYFCbbBAM6Yzga/rYjukRYsp/POsV5oivqv/XEKMawY=;
 b=bpGGGDHLkmIsvOph8RevGemtyusAbm2iuix9s22JIR3MR7OXjrxntt1RDfOVwy08Qj
 5+GbZ+uY+aZGO7g1uE9iu4xfuC2qmzmw/Uq901fmc4IcqovJlkKL2LaJLUTfmwFdgubv
 2xeFWJ660XTELvaHtFc2nb7FTgaQdXevVMyWQ5BiX0gOCaNrMiWum8+bJnL5pjrrhoAe
 hzz64xphpbCKtraDug1vqvI2qLYf6Eorh4Ly1k/tmR3RGQQwIaIe7iDkMiGKrkdas1oq
 xrvoQV6i1guFX3WjV6okz31letPbDDg2NfZxtXo95BhVTC3wizjrfnlyoDi0vhIjTyYw
 LwQA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=bpGGGDHL
Subject: [Intel-wired-lan] [PATCH next v2 2/3] checkpatch: add
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
index 25fdb7fda112..22f007131337 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -7011,6 +7011,25 @@ sub process {
 			     "Prefer strscpy, strscpy_pad, or __nonstring over strncpy - see: https://github.com/KSPP/linux/issues/90\n" . $herecurr);
 		}
 
+# ethtool_sprintf uses that should likely be ethtool_puts
+		if ($line =~ /\bethtool_sprintf\s*\(\s*$FuncArg\s*,\s*$FuncArg\s*\)/) {
+			if(WARN("ETHTOOL_SPRINTF",
+			   "Prefer ethtool_puts over ethtool_sprintf with only two arguments\n" . $herecurr) &&
+         $fix) {
+         $fixed[$fixlinenr] =~ s/ethtool_sprintf\s*\(/ethtool_puts\(/;
+       }
+		}
+
+		# use $rawline because $line loses %s via sanitization and thus we can't match against it.
+		if ($rawline =~ /\bethtool_sprintf\s*\(\s*$FuncArg\s*,\s*\"\%s\"\s*,\s*$FuncArg\s*\)/) {
+			if(WARN("ETHTOOL_SPRINTF",
+			   "Prefer ethtool_puts over ethtool_sprintf with standalone \"%s\" specifier\n" . $herecurr) &&
+         $fix) {
+         $fixed[$fixlinenr] =~ s/ethtool_sprintf\s*\(\s*(.*?),.*?,(.*?)\)/ethtool_puts\($1,$2)/;
+       }
+		}
+
+
 # typecasts on min/max could be min_t/max_t
 		if ($perl_version_ok &&
 		    defined $stat &&

-- 
2.42.0.820.g83a721a137-goog

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
