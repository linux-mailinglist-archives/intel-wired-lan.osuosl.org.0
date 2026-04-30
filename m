Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBDiLaBz82nQ2wEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 17:22:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A342A4A4A21
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 17:22:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F4574299D;
	Thu, 30 Apr 2026 15:21:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vPsKXRTAO7Ce; Thu, 30 Apr 2026 15:21:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE2DC42997
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777562517;
	bh=j6W7N3TF0u0m9VhuQZcYonFJHVZpaP1eZOWODDM2/uM=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=mBD9nvc4DzXi8O0Ri8Fp7S889AcNwlsAtxRqi/5fpPt684apuVITXedGUEsbqnd0r
	 VKbwAEjTg/25jk5h/e+/+PwerZ2z1Y8VaLKd9ozgmVWqUlI1u8haeutM8O1rRf03nW
	 RCdlJIjk2lXuI7ghw5qxC8aE2Vg8LsuT41RWGVrsY4q1/HceX3c+tbrHg8AMaDDjLg
	 P+QJO4I66Fnfpz6SyB2htIvG31yrL8BHz89byNEu3LRiyb4E13kIXlWEWaIDiTTpm5
	 J8bX056mUndtLEJDaPLkKgD4pNP3f4AAN1prA38tbAML7LPC9lwrwvDq/MVZC8vWx6
	 JtfOGVzumEFsw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE2DC42997;
	Thu, 30 Apr 2026 15:21:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5FEEF18F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 15:21:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5197042489
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 15:21:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MVBf7SuzI0lv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 15:21:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1161; helo=mail-yw1-x1161.google.com;
 envelope-from=arend.vanspriel@broadcom.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1DDA3424A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1DDA3424A4
Received: from mail-yw1-x1161.google.com (mail-yw1-x1161.google.com
 [IPv6:2607:f8b0:4864:20::1161])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1DDA3424A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 15:21:53 +0000 (UTC)
Received: by mail-yw1-x1161.google.com with SMTP id
 00721157ae682-7bd5c582c47so4655797b3.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 08:21:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777562512; x=1778167312;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :dkim-signature:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=j6W7N3TF0u0m9VhuQZcYonFJHVZpaP1eZOWODDM2/uM=;
 b=oNRa3rJAubZMzfxxkZ3cwxVkSEDzZgQ7x0AZo0X1onGoRxYiwXrepY7XTURDh6E/tu
 dDbltTMgiN5DgxlXBG+26YzhOOq2YST950qTwYOO8BDUFsrRtg/7N09OR3QM7+Gspt5B
 u2HSfLGJ3WxZ+w5Sg/kai2KjJ4qXUAm4a78q/OxLS0OY2at5ovxenEHKQm5KWi9E2YBl
 gW8W6ZrR0IdA/rSdi6ZQQhrMZXG682iM2OpBfgHaNFdZ78cNYlyaHJhO2hUNWWsK+cEL
 dVrk6gaAILcmnVxvFS2Mpm67YKJGmOT+ZVc/XSrr9OAL+u3+mJSNH75a0lBA76YWCfaN
 aMdg==
X-Forwarded-Encrypted: i=1;
 AFNElJ9sxjmKItf/YAzUiEm6iuwvNtqfCiiaClNCH8K6dXhnAEpQvkeTjs5ExI0LkA+QxLrLeaEWbxzt5OQFvqyr0Y4=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw4MYOiaHtKF4JkOhCdOM43TdJkjF7KUcilnW/LHbXqHop14ZtP
 wi76+ZCqPyckoertwUul+fe77k6o+xwzc5EGywa1sQ6CBbgSKrm5WOLoAPW8WTPeC0GZ4HSPzAK
 tpcdFy6eedCHDjESoKue8Hb4e8bLAVshSUJZ71WENqXBjg18TPdKvyhK8Ua7YgnIrz+04TSh/YP
 ouBIgUcMSHge7aF4JtQqii+UmlDrtJGmN2kACB54e1ZkeZ4bRM9mLFvAKSZfG9NJ8kpACv9x1OX
 1XWGDPdXPs4YcDH6lKtmYEEC2/KDSw=
X-Gm-Gg: AeBDieuKpbh1VzKKmOItr2qPPOETjN2sZAZVVWdBpbxOxXnaS/z2p6EWG1kwCiDshyd
 wyuSCx6DnkKJVtLxTIOPaSCmToM+YyiEbtpg5rw4PAAFG5EZdCxq0GmAcRUdfq1hQqgimr/pHfI
 wmAG1WecdOXaQmAXuJXvPnU7r7jN6Psh1F0RJOdc4725glmaECeTEWj8p/OAKAsRRvgSmgo09ga
 xy4j48Uj6u3DyqC/gWudzWf65GUEb1HQ/Mg5r5MwO7NlkqtNi8pcNIInfUpBjEOKWJFvBs2qrHJ
 9jP/5kE9TxTOuX3c3we8nI3R/4T6NuPBpXD3F5CLOPsdReUA5zju4Om74duL59ZAjAnxQYpqj6v
 tmL4C1IUi1gSWZSXSiNqjKMO3a4TmdX9HrODY6bX4LOzDjdDC+EJItADeOABY2peu65D6cyqZ+y
 SdP53ak80adhfGV7PcpfDryo5xYashNSo8ZEuH40sIjffpJg4HzJizggj2+xRoCwG0aLop+Hw=
X-Received: by 2002:a05:690c:c190:b0:7b1:b27d:2d4b with SMTP id
 00721157ae682-7bd5284ab47mr32691577b3.12.1777562512101; 
 Thu, 30 Apr 2026 08:21:52 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com
 (address-144-49-247-16.dlp.protect.broadcom.com. [144.49.247.16])
 by smtp-relay.gmail.com with ESMTPS id
 00721157ae682-7bd54b151e9sm1270827b3.7.2026.04.30.08.21.51
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 Apr 2026 08:21:52 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-oi1-f198.google.com with SMTP id
 5614622812f47-479d74f0d95so1435088b6e.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 08:21:51 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AFNElJ/8ICv4P6tCVHPYh1+u+eEU4i4Dc990V6stp+U/MXrVWodzDsB1Z6IQKeqP1gsGwCnoVP+Xe1aIuTu7fAPXSyg=@lists.osuosl.org
X-Received: by 2002:a05:7300:fd03:b0:2d9:7bc4:9578 with SMTP id
 5a478bee46e88-2ed3e386a41mr1602838eec.28.1777562094284; 
 Thu, 30 Apr 2026 08:14:54 -0700 (PDT)
X-Received: by 2002:a05:7300:fd03:b0:2d9:7bc4:9578 with SMTP id
 5a478bee46e88-2ed3e386a41mr1602745eec.28.1777562093564; 
 Thu, 30 Apr 2026 08:14:53 -0700 (PDT)
Received: from [192.168.178.26] (f215227.upc-f.chello.nl. [80.56.215.227])
 by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2ee38e71ccesm286774eec.10.2026.04.30.08.14.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2026 08:14:52 -0700 (PDT)
Message-ID: <f817f781-43d5-40d0-9352-20769d9a6601@broadcom.com>
Date: Thu, 30 Apr 2026 17:14:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig_=28The_Capable_Hub=29?=
 <u.kleine-koenig@baylibre.com>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol
 <mailhol@kernel.org>, Krzysztof Halasa <khc@pm.waw.pl>,
 Johannes Berg <johannes@sipsolutions.net>
References: <20260428171845.2288395-2-u.kleine-koenig@baylibre.com>
Content-Language: en-US
In-Reply-To: <20260428171845.2288395-2-u.kleine-koenig@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=broadcom.com; s=google; t=1777562511; x=1778167311; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=j6W7N3TF0u0m9VhuQZcYonFJHVZpaP1eZOWODDM2/uM=;
 b=S6GtEXQ1uol03mj3jir1hjiaopC8tSJeuyo/RWI2l90EaEMMedtJg1VnHeEjpqrJcG
 7umDVGdsm6KJn8dFX2QjR/ESCWZE0g2hPF+AYNXADydf9p2MdBaFnxeY4r9GACbXNGpQ
 rT1EeWNJce1/YhIobhO4OGGIU/Kd3hEVqVOhs=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=broadcom.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256
 header.s=google header.b=S6GtEXQ1
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: Consistently define
 pci_device_ids using named initializers
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
From: Arend van Spriel via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Arend van Spriel <arend.vanspriel@broadcom.com>
Cc: Richard Cochran <richardcochran@gmail.com>,
 Yonglong Liu <liuyonglong@huawei.com>, Kees Cook <kees@kernel.org>,
 linux-wireless@vger.kernel.org, Larysa Zaremba <larysa.zaremba@intel.com>,
 brcm80211@lists.linux.dev, Daniele Venzano <venza@brownhat.org>,
 oss-drivers@corigine.com, Tony Nguyen <anthony.l.nguyen@intel.com>,
 MD Danish Anwar <danishanwar@ti.com>, Samuel Chessman <chessman@tux.org>,
 Fan Gong <gongfan1@huawei.com>, Marco Crivellari <marco.crivellari@suse.com>,
 Kevin Curtis <kevin.curtis@farsite.co.uk>, Ingo Molnar <mingo@kernel.org>,
 Ion Badulescu <ionut@badula.org>,
 Andy Shevchenko <andriy.shevchenko@intel.com>,
 Leon Romanovsky <leon@kernel.org>, Colin Ian King <colin.i.king@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Peiyang Wang <wangpeiyang1@huawei.com>,
 Thomas Fourier <fourier.thomas@gmail.com>,
 Sai Krishna <saikrishnag@marvell.com>, Denis Kirjanov <kirjanov@gmail.com>,
 intel-wired-lan@lists.osuosl.org, linux-parisc@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>,
 Mengyuan Lou <mengyuanlou@net-swift.com>,
 Steffen Klassert <klassert@kernel.org>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, linux-rdma@vger.kernel.org,
 Chi-hsien Lin <chi-hsien.lin@cypress.com>, nic_swsd@realtek.com,
 Jiri Pirko <jiri@resnulli.us>, Philipp Stanner <phasta@kernel.org>,
 Ido Schimmel <idosch@nvidia.com>, Potnuri Bharat Teja <bharat@chelsio.com>,
 Double Lo <double.lo@cypress.com>,
 Markus Schneider-Pargmann <msp@baylibre.com>,
 Nathan Chancellor <nathan@kernel.org>, Jiawen Wu <jiawenwu@trustnetic.com>,
 Cai Huoqing <cai.huoqing@linux.dev>, Bjorn Helgaas <bhelgaas@google.com>,
 Zilin Guan <zilin@seu.edu.cn>, linux-can@vger.kernel.org,
 Yibo Dong <dong100@mucse.com>, Joe Damato <joe@dama.to>,
 Petr Machata <petrm@nvidia.com>, Kory Maincent <kory.maincent@bootlin.com>,
 brcm80211-dev-list.pdl@broadcom.com, GR-Linux-NIC-Dev@marvell.com,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Manish Chopra <manishc@marvell.com>, Denis Benato <benato.denis96@gmail.com>,
 Rasesh Mody <rmody@marvell.com>, netdev@vger.kernel.org,
 Randy Dunlap <rdunlap@infradead.org>, Mark Bloch <mbloch@nvidia.com>,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 Jian Shen <shenjian15@huawei.com>, Jijie Shao <shaojijie@huawei.com>,
 Yeounsu Moon <yyyynoom@gmail.com>, Thomas Gleixner <tglx@kernel.org>,
 Simon Horman <horms@kernel.org>, Yicong Hui <yiconghui@gmail.com>,
 Mark Einon <mark.einon@gmail.com>, Ethan Nelson-Moore <enelsonmoore@gmail.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Sudarsana Kalluru <skalluru@marvell.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: A342A4A4A21
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,broadcom.com:email,broadcom.com:replyto,broadcom.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:u.kleine-koenig@baylibre.com,m:m.grzeschik@pengutronix.de,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:mkl@pengutronix.de,m:mailhol@kernel.org,m:khc@pm.waw.pl,m:johannes@sipsolutions.net,m:richardcochran@gmail.com,m:liuyonglong@huawei.com,m:kees@kernel.org,m:linux-wireless@vger.kernel.org,m:larysa.zaremba@intel.com,m:brcm80211@lists.linux.dev,m:venza@brownhat.org,m:oss-drivers@corigine.com,m:anthony.l.nguyen@intel.com,m:danishanwar@ti.com,m:chessman@tux.org,m:gongfan1@huawei.com,m:marco.crivellari@suse.com,m:kevin.curtis@farsite.co.uk,m:mingo@kernel.org,m:ionut@badula.org,m:andriy.shevchenko@intel.com,m:leon@kernel.org,m:colin.i.king@gmail.com,m:przemyslaw.kitszel@intel.com,m:wangpeiyang1@huawei.com,m:fourier.thomas@gmail.com,m:saikrishnag@marvell.com,m:kirjanov@gmail.com,m:linux-parisc@vger.kernel.org,m:jacob.e.keller@intel.com,m:mengyuanlou@net-swift.com,m:klassert@kernel.org,m:stas.yakovlev@g
 mail.com,m:linux-rdma@vger.kernel.org,m:chi-hsien.lin@cypress.com,m:nic_swsd@realtek.com,m:jiri@resnulli.us,m:phasta@kernel.org,m:idosch@nvidia.com,m:bharat@chelsio.com,m:double.lo@cypress.com,m:msp@baylibre.com,m:nathan@kernel.org,m:jiawenwu@trustnetic.com,m:cai.huoqing@linux.dev,m:bhelgaas@google.com,m:zilin@seu.edu.cn,m:linux-can@vger.kernel.org,m:dong100@mucse.com,m:joe@dama.to,m:petrm@nvidia.com,m:kory.maincent@bootlin.com,m:brcm80211-dev-list.pdl@broadcom.com,m:GR-Linux-NIC-Dev@marvell.com,m:vadim.fedorenko@linux.dev,m:manishc@marvell.com,m:benato.denis96@gmail.com,m:rmody@marvell.com,m:netdev@vger.kernel.org,m:rdunlap@infradead.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:shenjian15@huawei.com,m:shaojijie@huawei.com,m:yyyynoom@gmail.com,m:tglx@kernel.org,m:horms@kernel.org,m:yiconghui@gmail.com,m:mark.einon@gmail.com,m:enelsonmoore@gmail.com,m:saeedm@nvidia.com,m:skalluru@marvell.com,m:hkallweit1@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,huawei.com,kernel.org,vger.kernel.org,intel.com,lists.linux.dev,brownhat.org,corigine.com,ti.com,tux.org,suse.com,farsite.co.uk,badula.org,marvell.com,lists.osuosl.org,net-swift.com,cypress.com,realtek.com,resnulli.us,nvidia.com,chelsio.com,baylibre.com,trustnetic.com,linux.dev,google.com,seu.edu.cn,mucse.com,dama.to,bootlin.com,broadcom.com,infradead.org];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[arend.vanspriel@broadcom.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_GT_50(0.00)[82];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[11]

On 28/04/2026 19:18, Uwe Kleine-König (The Capable Hub) wrote:
> ... and PCI device helpers.
> 
> The various struct pci_device_id arrays were initialized mostly by one
> the PCI_DEVICE macros and then list expressions. The latter isn't easily
> readable if you're not into PCI. Using named initializers is more
> explicit and thus easier to parse.
> 
> Also use PCI_DEVICE* helper macros to assign .vendor, .device,
> .subvendor and .subdevice where appropriate and skip explicit
> assignments of 0 (which the compiler takes care of).
> 
> The secret plan is to make struct pci_device_id::driver_data an
> anonymous union (similar to
> https://lore.kernel.org/all/cover.1776579304.git.u.kleine-koenig@baylibre.com/)
> and that requires named initializers. But it's also a nice cleanup on
> its own.
> 
> This change doesn't introduce changes to the compiled pci_device_id
> arrays. Tested on x86 and arm64.

for brcmfmac change...

Acked-by: Arend van Spriel <arend.vanspriel@broadcom.com>

> Signed-off-by: Uwe Kleine-König (The Capable Hub) <u.kleine-koenig@baylibre.com>
> ---
[...]

>   .../broadcom/brcm80211/brcmfmac/pcie.c        |  17 +-
>   drivers/net/wireless/intel/ipw2x00/ipw2200.c  |  52 +-
>   69 files changed, 1308 insertions(+), 1101 deletions(-)
