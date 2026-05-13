Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aIAeHCf0A2rKBAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 May 2026 05:46:47 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4231852CF1A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 May 2026 05:46:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE6E76102C;
	Wed, 13 May 2026 03:46:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9ddoFb3ssUno; Wed, 13 May 2026 03:46:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 479A86102E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778644003;
	bh=uk6XQhDv3bJt0LUJBFe6l7zNEk2Q4pO9+AA8MMsj/2M=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1p9tZ08IC8NJbsPXMEzmsdnYJMfsPfSoRLXeUvvdCqsHM59vvFg/955dIXo6rfzeC
	 MRfXXKipSYhVGRlIaveFWMtzFoQ4+X4MkaRDUUyvvHgr1/2W1FJ7DScoznnCeqvwml
	 h0ZysSi9gINcjjC1iYOyLmQtImBztbCVCzkFkEF09gLM9+YgLi4kfXcqvcPi7Nf79C
	 plEC6pd0NkUROS0fZhZpD8iVOUzxzWP++Mlj/ckWBKIw7xutGoPD5jM8DnHOQ9HjHG
	 0anlTzpis0+5Y6Je3chrUUTfdjDdGXhpDd24WgyzUFU0P4B33jJ+tHjADSJJyGQ5BB
	 at8fHhLllNnHA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 479A86102E;
	Wed, 13 May 2026 03:46:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 82B32223
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 03:46:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 70E5340160
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 03:46:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AqNxlAwPoSaf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 May 2026 03:46:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AC47A40094
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC47A40094
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AC47A40094
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 03:46:40 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id EF2D944463;
 Wed, 13 May 2026 03:46:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9C71C2BCC7;
 Wed, 13 May 2026 03:46:39 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 B9F363822D60; Wed, 13 May 2026 03:45:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <177864394529.3173643.6436794072017399758.git-patchwork-notify@kernel.org>
Date: Wed, 13 May 2026 03:45:45 +0000
References: <20260511090023.1634387-4-u.kleine-koenig@baylibre.com>
In-Reply-To: <20260511090023.1634387-4-u.kleine-koenig@baylibre.com>
To: =?utf-8?q?Uwe_Kleine-K=C3=B6nig_=28The_Capable_Hub=29_=3Cu=2Ekleine-koenig?=@aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org,
 =?utf-8?q?=40baylibre=2Ecom=3E?=@aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1778643999;
 bh=gyb8pfCwFcLBe2rptRiE3sjarGUMInC36meBQ9ZTM4w=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=KNzv9alJGXZ6074TaCv2GYS4ngVHJYVPI/dUxnPvzStHLbJcuabjlUFQwP+tzgm8G
 ZtzCXaJY3VEiR4FI/cux8ct2DnyBo4xgtYUtwtQcfNznThE1vIqPSfiVrvgZlvu/lF
 t9DNyJVcgYV9JAZr+oPCeTVpkZ9oxEm8piGVBQrgKaVzK1knG75N3GfojN1tzGtGYx
 e1ZCDggEkcV2wc8nxqqNMwx/PO4W09sGPNEK7eTtjYApF65gQyVfylvCQw5BoOP+wD
 awa11v0/GBU6+oA7XeqHZFLGUDuYZFtN7/2ADm0bvjMN0xY5JKV8eRoHU0330d2NXf
 c2snDgAszC5BQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=KNzv9alJ
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 0/2] Rework pci_device_id
 initialisation
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: richardcochran@gmail.com, marco.crivellari@suse.com, rdunlap@infradead.org,
 liuyonglong@huawei.com, kees@kernel.org, linux-wireless@vger.kernel.org,
 ian.lin@infineon.com, brcm80211@lists.linux.dev, venza@brownhat.org,
 edumazet@google.com, netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 danishanwar@ti.com, chessman@tux.org, gongfan1@huawei.com,
 mengyuanlou@net-swift.com, kevin.curtis@farsite.co.uk, mingo@kernel.org,
 mgr@kernel.org, ionut@badula.org, yyyynoom@gmail.com, manishc@marvell.com,
 colin.i.king@gmail.com, przemyslaw.kitszel@intel.com, fourier.thomas@gmail.com,
 aleksandr.loktionov@intel.com, kirjanov@gmail.com,
 intel-wired-lan@lists.osuosl.org, linux-parisc@vger.kernel.org,
 jacob.e.keller@intel.com, kuba@kernel.org, pabeni@redhat.com,
 klassert@kernel.org, stas.yakovlev@gmail.com, linux-rdma@vger.kernel.org,
 arend.vanspriel@broadcom.com, nic_swsd@realtek.com, jiri@resnulli.us,
 larysa.zaremba@intel.com, idosch@nvidia.com, bharat@chelsio.com,
 double.lo@cypress.com, msp@baylibre.com, nathan@kernel.org,
 jiawenwu@trustnetic.com, cai.huoqing@linux.dev, mark.einon@gmail.com,
 bhelgaas@google.com, zilin@seu.edu.cn, linux-can@vger.kernel.org,
 dong100@mucse.com, andriy.shevchenko@intel.com, petrm@nvidia.com,
 kory.maincent@bootlin.com, brcm80211-dev-list.pdl@broadcom.com,
 GR-Linux-NIC-Dev@marvell.com, vadim.fedorenko@linux.dev, leon@kernel.org,
 benato.denis96@gmail.com, rmody@marvell.com, darinzon@amazon.com,
 oss-drivers@corigine.com, mailhol@kernel.org, mbloch@nvidia.com,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, shenjian15@huawei.com,
 shaojijie@huawei.com, andrew+netdev@lunn.ch, tglx@kernel.org, horms@kernel.org,
 yiconghui@gmail.com, mkl@pengutronix.de, johannes@sipsolutions.net,
 enelsonmoore@gmail.com, saeedm@nvidia.com, davem@davemloft.net,
 hkallweit1@gmail.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 4231852CF1A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[netdevbpf];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FREEMAIL_CC(0.00)[gmail.com,suse.com,infradead.org,huawei.com,kernel.org,vger.kernel.org,infineon.com,lists.linux.dev,brownhat.org,google.com,intel.com,ti.com,tux.org,net-swift.com,farsite.co.uk,badula.org,marvell.com,lists.osuosl.org,redhat.com,broadcom.com,realtek.com,resnulli.us,nvidia.com,chelsio.com,cypress.com,baylibre.com,trustnetic.com,linux.dev,seu.edu.cn,mucse.com,bootlin.com,amazon.com,corigine.com,lunn.ch,pengutronix.de,sipsolutions.net,davemloft.net];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FORGED_RECIPIENTS(0.00)[m:=?utf-8?q?Uwe_Kleine-K=C3=B6nig_=28The_Capable_Hub=29_=3Cu=2Ekleine-koenig?=@aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org,m:=?utf-8?q?=40baylibre=2Ecom=3E?=@aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org,m:richardcochran@gmail.com,m:marco.crivellari@suse.com,m:rdunlap@infradead.org,m:liuyonglong@huawei.com,m:kees@kernel.org,m:linux-wireless@vger.kernel.org,m:ian.lin@infineon.com,m:brcm80211@lists.linux.dev,m:venza@brownhat.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:danishanwar@ti.com,m:chessman@tux.org,m:gongfan1@huawei.com,m:mengyuanlou@net-swift.com,m:kevin.curtis@farsite.co.uk,m:mingo@kernel.org,m:mgr@kernel.org,m:ionut@badula.org,m:yyyynoom@gmail.com,m:manishc@marvell.com,m:colin.i.king@gmail.com,m:przemyslaw.kitszel@intel.com,m:fourier.thomas@gmail.com,m:aleksandr.loktionov@intel.com,m:kirjanov@gmail.com,m:linux-parisc@vger.kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:klasser
 t@kernel.org,m:stas.yakovlev@gmail.com,m:linux-rdma@vger.kernel.org,m:arend.vanspriel@broadcom.com,m:nic_swsd@realtek.com,m:jiri@resnulli.us,m:larysa.zaremba@intel.com,m:idosch@nvidia.com,m:bharat@chelsio.com,m:double.lo@cypress.com,m:msp@baylibre.com,m:nathan@kernel.org,m:jiawenwu@trustnetic.com,m:cai.huoqing@linux.dev,m:mark.einon@gmail.com,m:bhelgaas@google.com,m:zilin@seu.edu.cn,m:linux-can@vger.kernel.org,m:dong100@mucse.com,m:andriy.shevchenko@intel.com,m:petrm@nvidia.com,m:kory.maincent@bootlin.com,m:brcm80211-dev-list.pdl@broadcom.com,m:GR-Linux-NIC-Dev@marvell.com,m:vadim.fedorenko@linux.dev,m:leon@kernel.org,m:benato.denis96@gmail.com,m:rmody@marvell.com,m:darinzon@amazon.com,m:oss-drivers@corigine.com,m:mailhol@kernel.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:shenjian15@huawei.com,m:shaojijie@huawei.com,m:andrew+netdev@lunn.ch,m:tglx@kernel.org,m:horms@kernel.org,m:yiconghui@gmail.com,m:mkl@pengutronix.de,m:johannes@sipsolutions.net,m:en
 elsonmoore@gmail.com,m:saeedm@nvidia.com,m:davem@davemloft.net,m:hkallweit1@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[patchwork-bot@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_GT_50(0.00)[80];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[patchwork-bot@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

Hello:

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Mon, 11 May 2026 11:00:22 +0200 you wrote:
> Hello,
> 
> the previous iteration of this series (v2) is available at
> https://lore.kernel.org/netdev/cover.1778149923.git.u.kleine-koenig@baylibre.com
> 
> Changes since v2:
> 
> [...]

Here is the summary with links:
  - [net-next,v3,1/2] net: nfp: Drop PCI class entries with .class_mask = 0
    https://git.kernel.org/netdev/net-next/c/0f5b8332b0b2
  - [net-next,v3,2/2] net: Consistently define pci_device_ids using named initializers
    https://git.kernel.org/netdev/net-next/c/733334d6bdaf

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


