Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A46C8807C24
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 00:16:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E1D942136;
	Wed,  6 Dec 2023 23:16:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E1D942136
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701904592;
	bh=QV4pz41dlVwz45bIao8R7zbQ+lhOzi0NhGRi9TCdRfQ=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hHZlCV/mPvkJvBE0+gHE6TQ8EHik1hOqxn25ZNtFtil67Croe9cvmPCeUCtPLI1fs
	 PGWl8rvoPn+RyjBhyanSZ4zeXusqsijpkqGFQMjlm7KtZQcnmBd1FYkoGBZc9+zh+K
	 TDMWRgcQ4K1eGFLBEAqSd0foAjqgTdAb5zSFdWYWVk1I74CgmoAN5iTo6ODMle01T7
	 ulxWPrctZRsNIW9n8K0OlF+Cs8xO0E1lRCT4XJgdKz1atwAJcEsOge0lC54MdmpQpk
	 hHiJ5xDmqt2e9wFtLnp6qF+Cyj92jdNfpkewdNCEcHrPkgT/NlIn8uSDLyZURhK0sv
	 azFSt7r9FtC2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ABWUyTz4h71w; Wed,  6 Dec 2023 23:16:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD67042111;
	Wed,  6 Dec 2023 23:16:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD67042111
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 70BCD1BF275
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 23:16:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4925282656
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 23:16:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4925282656
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DZzoaO_FCqSu for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 23:16:18 +0000 (UTC)
Received: from mail-yw1-x114a.google.com (mail-yw1-x114a.google.com
 [IPv6:2607:f8b0:4864:20::114a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 54BEF825DF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 23:16:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54BEF825DF
Received: by mail-yw1-x114a.google.com with SMTP id
 00721157ae682-5caf61210e3so758997b3.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 06 Dec 2023 15:16:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701904577; x=1702509377;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=l2kWA06Tv172IMegEBtFHRUM7NNFaAXM0DXA+ADIdjk=;
 b=CMzUZZ79hWTX5F2Pu7vhgfk2U3L+t4PH6lo0YW+omQN68OEcyKj1LAP+0h6Zc+MASb
 eWI/XhIBNMWZ/gokTcfjGQH88VQ2PrU8Y6ygFfwtvl4Pu1+sL3M2mmaZchtiQi0ystiy
 GOmotZLPU4KipuwIIOaIv5czVTJCfuTZE8opeOUVnNKIuDdQnEKiLkt98ktSALuQLUWA
 FCDQr9hmq5pZ/0m414JLLwcXEP/zLfxLDR1Gmxyk7WOoVN2/Ve7oiw71THOGXx2FiK4q
 TiBW60OvG6gATGQG9aBqj12GjpAG3c1faoKeSMjNsAk1ttI2JNyrpRl1xBnT8bEKj+Kj
 1U4g==
X-Gm-Message-State: AOJu0Yzx+D+jnI2zMY3cys/9hda6zrnbyWiqy8vGb0Csu7lPaYtSKFlK
 D4uXUT+ekdIUzXta79zZQFGNTpx9qpWhD1Eg6A==
X-Google-Smtp-Source: AGHT+IEMd/xS2syY8YcxUE+jFNtUErStoqR6wMHC+Hu8IQ3Kowhzp4mcbmDmCUP7K5L1nughcxOsG1xLC/GwjEheoQ==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a25:d84e:0:b0:db3:5b0a:f274 with SMTP
 id p75-20020a25d84e000000b00db35b0af274mr25995ybg.0.1701904577009; Wed, 06
 Dec 2023 15:16:17 -0800 (PST)
Date: Wed, 06 Dec 2023 23:16:11 +0000
In-Reply-To: <20231206-ethtool_puts_impl-v5-0-5a2528e17bf8@google.com>
Mime-Version: 1.0
References: <20231206-ethtool_puts_impl-v5-0-5a2528e17bf8@google.com>
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701904573; l=1994;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=JqgyVZ/lMWBcIL4WYVyOFjI42i4J6KNM5TZC8fVlDHw=;
 b=5wv2E+fU7luADvsAMYtCjNbTJcSsyC0RjHSAuunlQsU1ZDIXqaBaMVwfXSYg3av2hcyZ4RP6s
 XfEcT5fza/xCUvpPtigE+b//xXA7T8IwbrdOIZp8LHuMTe8gG7Y6xG8
X-Mailer: b4 0.12.3
Message-ID: <20231206-ethtool_puts_impl-v5-2-5a2528e17bf8@google.com>
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
 d=google.com; s=20230601; t=1701904577; x=1702509377; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=l2kWA06Tv172IMegEBtFHRUM7NNFaAXM0DXA+ADIdjk=;
 b=pWiekJYSWX6dvad1qVHp+9N8jUKwnI0uEFgPHeU48uTBerXyTYxpm+mg8BVrAVx2wg
 +AWi+mlrT+J0h0pI4N+RMC66FRyU4HXWsTUEuZSlAvDwuAERokhGyCSmrvKjM3DXYbcO
 6neUro65jd+bnqlBRZ8LG5iUcZfZn5ILx6T4kARgbJepA8L+NMVqbFwMXzF936fUcWV3
 TOKp3C0KvN/aaFsY++q/lCuQXEg/orImemVVS7vQAOy+DQaOIHv9ivcbnfS5gSnQ7LFn
 X3qdJh+VTMaeyq9dvJ40/Olb8TOL+y4fWGqudFdFCUWEDPtYKtO9MqcV8Itob0e/LmBs
 pcmw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=pWiekJYS
Subject: [Intel-wired-lan] [PATCH net-next v5 2/3] checkpatch: add
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
index 25fdb7fda112..6924731110d8 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -7011,6 +7011,25 @@ sub process {
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
2.43.0.rc2.451.g8631bc7472-goog

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
