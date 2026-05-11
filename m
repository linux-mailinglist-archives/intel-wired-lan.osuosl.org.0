Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4I70KMOaAWpxfwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 11:00:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 530F250A7D3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 11:00:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4910E6085B;
	Mon, 11 May 2026 09:00:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5p41_BmL1-zF; Mon, 11 May 2026 09:00:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DBD8860860
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778490046;
	bh=zA2t05MaP/podHX+JpTZXPs7rW/q4RVQKoAjNccx6WY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Zqsq48ehGuH4alWYRcfiNuCoeWFurd7Z9TUBOe1xbVayVwcNRGA6ofItAlVJ3/2pk
	 pXxGoYFbDzq2XcnnfkerYwQycfan+I7/0iE6++LE0jSqibb5OD08zqnpnnIvr/+Sft
	 K0roy0kgkYH6NZY8uzECaJR7VkyUANxL57x3fkADNWtrm+orgPoChA1wBaOVBKj0qW
	 Xo/Iy1wPc7ce1iWyaH0Dk8VoeltWsqatSnfiC0F70ZyCpqXN9F5JKMETlgvgskExyQ
	 wDg4x7H5yZbr9MDfVxKO6Hy/w+xf3ioYgw+6ZC8JcgCrRzpNTHswNhc348d43ZgDiu
	 g199ZHqkcotZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DBD8860860;
	Mon, 11 May 2026 09:00:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6549B223
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 09:00:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 55CF440314
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 09:00:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sO52eAF7Bmje for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 09:00:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::432; helo=mail-wr1-x432.google.com;
 envelope-from=ukleinek@baylibre.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6FCF74021E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6FCF74021E
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6FCF74021E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 09:00:41 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id
 ffacd0b85a97d-44ccbd3290aso3191801f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 02:00:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778490039; x=1779094839;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zA2t05MaP/podHX+JpTZXPs7rW/q4RVQKoAjNccx6WY=;
 b=i6naWt0pcRRojpRGsAulySFCke0FHV4c/XrmicKsUwOXEXfOroHtPknahdf2rU9qbW
 T9SQ2kR4UWVmHGzdIfsGvqQhzici4/TrDm2sWNLXBLYdrz28HjAh/8aUwvuNZIiWG6HD
 q8F9KsC6lf/9TzOJ+I6bRhyFjkPKdXf61VCO9Z1HdYZNKsDHCf1N7cl4ccW1U5YrlCOI
 87A2xrRbNSVtLTfsigFepsCFGJd7j/bMo30q0chHXKb6gXLbzwNcX0BhB7Fe5WYtBKF4
 MhqiPZDcpVZPlxbI6XalUC/IMRlP7BZ1tMeNljTA0Qtl+wKISykbYU3bHNsZttL2Yrcr
 qnmA==
X-Forwarded-Encrypted: i=1;
 AFNElJ/FyA/2k9Wq9KbWo7zP5CvhNBViSCEzE5SCvb1veIopD9tQLRhO8JW2L8Q7ffyVP+C7pZve46JHHSsWiCBykwU=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx84pTaPewZACD9d5EAhYUG7LfFmZqw9lgqj07JI2puaq0Ze2v0
 /IXJ50MwZUNONkuSIwcI48PNHo/eHurqjV+Z9tMUkIUpcX73OJYB+eTJm7+rdgBdfrk=
X-Gm-Gg: Acq92OG8wxDdOR7FWqpsPxFf2tA7kt2eYdhBS4XXXU0JpErUK2x/SBEOnKbJWNIOPMK
 jy3cSz5o+GD0iAFvsnG+hdgX/iP1G/LZItzcVjI7CBawh9VzsBatkKndeSmxp+KCaKkEwSQi7Uk
 y95uPKE20nCCWdCYmi3X6zS9qXRBuV5QaYjB5ByuxZD0cEF3o7cJ+75JolLKpXKNvOaPahTsuFO
 fjoscF/MfYe3Lad7lKwDWpr0VRWE/pdfUGy4MCig1OkDANfx4+r0R7c6oWerHAO+RtbltnbqtoZ
 PNhd5VHN8cpm2rOPHfs3D/nGiJdkrCElWLp0A8+6ZaODE1zmpxELpre/AQoL+Y5TjA0cTYouOI9
 87jZDj5mHbPn/jcejuZ8DO5E85ODM9/IK5LF0M9lKmdeSwyRujgKQAH6SZnr3i57WWCoY+IzPNv
 ZHzd4ZuBItAwB0fFgu4DZxP7QxLRvDVBOC25F4jT6DhY58BQWf/vXtAVfdwNETqA1MZdKPl+xzb
 GGdvhi04wFyjRNL6hf41h4Xpg==
X-Received: by 2002:a5d:64e3:0:b0:449:cfea:ca91 with SMTP id
 ffacd0b85a97d-4515da96254mr34460937f8f.37.1778490037223; 
 Mon, 11 May 2026 02:00:37 -0700 (PDT)
Received: from localhost
 (p200300f65f114e0841c796eda31a14b3.dip0.t-ipconnect.de.
 [2003:f6:5f11:4e08:41c7:96ed:a31a:14b3])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-4548e6a5b65sm25209225f8f.8.2026.05.11.02.00.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2026 02:00:36 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig=20=28The=20Capable=20Hub=29?=
 <u.kleine-koenig@baylibre.com>
To: Michael Grzeschik <mgr@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Marc Kleine-Budde <mkl@pengutronix.de>,
 Vincent Mailhol <mailhol@kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>
Date: Mon, 11 May 2026 11:00:22 +0200
Message-ID: <20260511090023.1634387-4-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=4853;
 i=u.kleine-koenig@baylibre.com; h=from:subject;
 bh=ZYGinJLF1cDgGH/aGo4d1Hy0fwsOtdFNgDp8EWspf48=;
 b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBqAZqnnelkHiCtzmBC4y0fb7vJdPOE1eZ7YhPdE
 2SrLv8jYlGJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCagGapwAKCRCPgPtYfRL+
 TjAaB/4oo4PlfsIbeG6MCk6KG/Z4+gxMxrSewie9L+e4GgVdrB4TOBKkquVHmIZGwKjcVZ4TTHb
 NefjSqaVMX4GAGFyvubu+IYDalSlSnAzan/1cuw698pTu8HJAZcUiXsULIZGAzyccgEjFzFRtOG
 9zcX6kiJPNLHyc4KCm8r2nVxLqV6bD0Ra/lsh4CIqsXdKbNgT8R/zlx5qsBD4jv6XuZojWf/47T
 BGjl0kKv9jdWqI2IyZT+iFIbeMxYEcWSMZLzC6lnFeTSGLW7f1AVp8qVTep3xLTu5Qrh0AUeJ60
 G6q8VibpIILN8q4yuUlgLX0vBjjeLn9Q8sKtPvNkz+TLgLBC
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp;
 fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20251104.gappssmtp.com; s=20251104; t=1778490039; x=1779094839;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=zA2t05MaP/podHX+JpTZXPs7rW/q4RVQKoAjNccx6WY=;
 b=fjh7Jpt4qAeheFnXA9gHnvHChLSncrm7ObCBCJnPOTE/+cqR5rg92BAgJDHULa2H8+
 0pP4D3u1OV+6NlFfn8bEh726JkPVFaLhjRvUIgJCOs5Xw5dor+5yV/WkNxepSPnd6GGB
 kQ/euCvzIxD5HcbiwqlEgDfvu7VH6zzuTVhYHJA0s19x30Z/KnOgJbIO7VLa3UMvySA1
 julTiVu8rR/+gYy/2c/jLKtkuFylZcMq4HxQvjXJ6291AOqMzAusawtn4NLr5Vy9AdVY
 j/IEGu3/CKmKHmt1sPbsAnoak+UXJNk4TUEhhx+PSKKEsu+KdtF3TN8M/KEFrth5eHS+
 wF1Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=baylibre.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=baylibre-com.20251104.gappssmtp.com
 header.i=@baylibre-com.20251104.gappssmtp.com header.a=rsa-sha256
 header.s=20251104 header.b=fjh7Jpt4
Subject: [Intel-wired-lan] [PATCH net-next v3 0/2] Rework pci_device_id
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
Cc: Richard Cochran <richardcochran@gmail.com>,
 Yonglong Liu <liuyonglong@huawei.com>, Kees Cook <kees@kernel.org>,
 linux-wireless@vger.kernel.org, Ian Lin <ian.lin@infineon.com>,
 brcm80211@lists.linux.dev, Daniele Venzano <venza@brownhat.org>,
 oss-drivers@corigine.com, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, MD Danish Anwar <danishanwar@ti.com>,
 Samuel Chessman <chessman@tux.org>, Fan Gong <gongfan1@huawei.com>,
 Marco Crivellari <marco.crivellari@suse.com>,
 Kevin Curtis <kevin.curtis@farsite.co.uk>, Ingo Molnar <mingo@kernel.org>,
 Ion Badulescu <ionut@badula.org>,
 Andy Shevchenko <andriy.shevchenko@intel.com>,
 Leon Romanovsky <leon@kernel.org>, Colin Ian King <colin.i.king@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Denis Kirjanov <kirjanov@gmail.com>, intel-wired-lan@lists.osuosl.org,
 linux-parisc@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Mengyuan Lou <mengyuanlou@net-swift.com>,
 Steffen Klassert <klassert@kernel.org>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, linux-rdma@vger.kernel.org,
 Arend van Spriel <arend.vanspriel@broadcom.com>, nic_swsd@realtek.com,
 Jiri Pirko <jiri@resnulli.us>, Larysa Zaremba <larysa.zaremba@intel.com>,
 Ido Schimmel <idosch@nvidia.com>, Potnuri Bharat Teja <bharat@chelsio.com>,
 Double Lo <double.lo@cypress.com>,
 Markus Schneider-Pargmann <msp@baylibre.com>,
 Nathan Chancellor <nathan@kernel.org>, Jiawen Wu <jiawenwu@trustnetic.com>,
 Cai Huoqing <cai.huoqing@linux.dev>, Bjorn Helgaas <bhelgaas@google.com>,
 Zilin Guan <zilin@seu.edu.cn>, linux-can@vger.kernel.org,
 Yibo Dong <dong100@mucse.com>, Petr Machata <petrm@nvidia.com>,
 Kory Maincent <kory.maincent@bootlin.com>, brcm80211-dev-list.pdl@broadcom.com,
 GR-Linux-NIC-Dev@marvell.com, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Manish Chopra <manishc@marvell.com>, Denis Benato <benato.denis96@gmail.com>,
 Rasesh Mody <rmody@marvell.com>, David Arinzon <darinzon@amazon.com>,
 Randy Dunlap <rdunlap@infradead.org>, Mark Bloch <mbloch@nvidia.com>,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 Jian Shen <shenjian15@huawei.com>, Jijie Shao <shaojijie@huawei.com>,
 Yeounsu Moon <yyyynoom@gmail.com>, Thomas Gleixner <tglx@kernel.org>,
 Simon Horman <horms@kernel.org>, Yicong Hui <yiconghui@gmail.com>,
 Mark Einon <mark.einon@gmail.com>, Ethan Nelson-Moore <enelsonmoore@gmail.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Thomas Fourier <fourier.thomas@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 530F250A7D3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mgr@kernel.org,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:mkl@pengutronix.de,m:mailhol@kernel.org,m:johannes@sipsolutions.net,m:richardcochran@gmail.com,m:liuyonglong@huawei.com,m:kees@kernel.org,m:linux-wireless@vger.kernel.org,m:ian.lin@infineon.com,m:brcm80211@lists.linux.dev,m:venza@brownhat.org,m:oss-drivers@corigine.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:danishanwar@ti.com,m:chessman@tux.org,m:gongfan1@huawei.com,m:marco.crivellari@suse.com,m:kevin.curtis@farsite.co.uk,m:mingo@kernel.org,m:ionut@badula.org,m:andriy.shevchenko@intel.com,m:leon@kernel.org,m:colin.i.king@gmail.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:kirjanov@gmail.com,m:linux-parisc@vger.kernel.org,m:jacob.e.keller@intel.com,m:mengyuanlou@net-swift.com,m:klassert@kernel.org,m:stas.yakovlev@gmail.com,m:linux-rdma@vger.kernel.org,m:arend.vanspriel@broadcom.com,m:nic_swsd@realt
 ek.com,m:jiri@resnulli.us,m:larysa.zaremba@intel.com,m:idosch@nvidia.com,m:bharat@chelsio.com,m:double.lo@cypress.com,m:msp@baylibre.com,m:nathan@kernel.org,m:jiawenwu@trustnetic.com,m:cai.huoqing@linux.dev,m:bhelgaas@google.com,m:zilin@seu.edu.cn,m:linux-can@vger.kernel.org,m:dong100@mucse.com,m:petrm@nvidia.com,m:kory.maincent@bootlin.com,m:brcm80211-dev-list.pdl@broadcom.com,m:GR-Linux-NIC-Dev@marvell.com,m:vadim.fedorenko@linux.dev,m:manishc@marvell.com,m:benato.denis96@gmail.com,m:rmody@marvell.com,m:darinzon@amazon.com,m:rdunlap@infradead.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:shenjian15@huawei.com,m:shaojijie@huawei.com,m:yyyynoom@gmail.com,m:tglx@kernel.org,m:horms@kernel.org,m:yiconghui@gmail.com,m:mark.einon@gmail.com,m:enelsonmoore@gmail.com,m:saeedm@nvidia.com,m:fourier.thomas@gmail.com,m:hkallweit1@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_SENDER(0.00)[u.kleine-koenig@baylibre.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[gmail.com,huawei.com,kernel.org,vger.kernel.org,infineon.com,lists.linux.dev,brownhat.org,corigine.com,intel.com,ti.com,tux.org,suse.com,farsite.co.uk,badula.org,lists.osuosl.org,net-swift.com,broadcom.com,realtek.com,resnulli.us,nvidia.com,chelsio.com,cypress.com,baylibre.com,trustnetic.com,linux.dev,google.com,seu.edu.cn,mucse.com,bootlin.com,marvell.com,amazon.com,infradead.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[u.kleine-koenig@baylibre.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[78];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Hello,

the previous iteration of this series (v2) is available at
https://lore.kernel.org/netdev/cover.1778149923.git.u.kleine-koenig@baylibre.com

Changes since v2:

 - swap patch order as Jakub Kicinski reported a build failure (that I
   couldn't reproduce though)
 - drop the change to drivers/net/can/m_can/m_can_pci.c on Markus
   Schneider-Pargmann's (non-public) request as this patch conflicts
   with a cleanup he has in his queue that will prepare this driver
   for my quest to add a union to pci_device_id in a differnt way.
 - drop a recipent from Cc: that bounced before (khc@pm.waw.pl).

Best regards
Uwe

Uwe Kleine-König (The Capable Hub) (2):
  net: nfp: Drop PCI class entries with .class_mask = 0
  net: Consistently define pci_device_ids using named initializers

 drivers/net/arcnet/com20020-pci.c             | 242 +++------
 drivers/net/can/sja1000/plx_pci.c             | 167 +++----
 drivers/net/ethernet/3com/3c59x.c             |  80 +--
 drivers/net/ethernet/3com/typhoon.c           |  75 ++-
 drivers/net/ethernet/8390/ne2k-pci.c          |  24 +-
 drivers/net/ethernet/adaptec/starfire.c       |   4 +-
 drivers/net/ethernet/agere/et131x.c           |   6 +-
 drivers/net/ethernet/broadcom/bnx2.c          |  62 ++-
 .../net/ethernet/broadcom/bnx2x/bnx2x_main.c  |  50 +-
 .../net/ethernet/cavium/liquidio/lio_main.c   |  10 +-
 .../ethernet/cavium/liquidio/lio_vf_main.c    |   7 +-
 drivers/net/ethernet/chelsio/cxgb/common.h    |   2 +-
 drivers/net/ethernet/chelsio/cxgb/subr.c      |   2 +-
 .../net/ethernet/chelsio/cxgb3/cxgb3_main.c   |   4 +-
 .../net/ethernet/chelsio/cxgb4/cxgb4_main.c   |   4 +-
 .../ethernet/chelsio/cxgb4vf/cxgb4vf_main.c   |   4 +-
 drivers/net/ethernet/dec/tulip/de2104x.c      |   6 +-
 drivers/net/ethernet/dec/tulip/dmfe.c         |  12 +-
 drivers/net/ethernet/dec/tulip/tulip_core.c   |  78 +--
 drivers/net/ethernet/dec/tulip/uli526x.c      |   6 +-
 drivers/net/ethernet/dec/tulip/winbond-840.c  |  13 +-
 drivers/net/ethernet/dlink/dl2k.h             |  12 +-
 drivers/net/ethernet/dlink/sundance.c         |  14 +-
 drivers/net/ethernet/fealnx.c                 |   8 +-
 .../net/ethernet/hisilicon/hibmcge/hbg_main.c |   2 +-
 .../net/ethernet/hisilicon/hns3/hns3_enet.c   |  50 +-
 .../hisilicon/hns3/hns3pf/hclge_main.c        |  18 +-
 .../hisilicon/hns3/hns3vf/hclgevf_main.c      |  12 +-
 .../net/ethernet/huawei/hinic/hinic_main.c    |  12 +-
 .../net/ethernet/huawei/hinic3/hinic3_lld.c   |   7 +-
 drivers/net/ethernet/intel/e100.c             |   9 +-
 drivers/net/ethernet/intel/e1000e/netdev.c    | 471 +++++++++++++-----
 drivers/net/ethernet/intel/fm10k/fm10k_pci.c  |  10 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  59 +--
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  10 +-
 drivers/net/ethernet/intel/igb/igb_main.c     |  66 +--
 drivers/net/ethernet/intel/igbvf/netdev.c     |   4 +-
 drivers/net/ethernet/intel/igc/igc_main.c     |  34 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 106 ++--
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |  49 +-
 drivers/net/ethernet/mellanox/mlx4/main.c     |   6 +-
 .../net/ethernet/mellanox/mlx5/core/main.c    |  26 +-
 .../net/ethernet/mellanox/mlxsw/spectrum.c    |  16 +-
 drivers/net/ethernet/micrel/ksz884x.c         |   8 +-
 .../net/ethernet/mucse/rnpgbe/rnpgbe_main.c   |  10 +-
 drivers/net/ethernet/natsemi/natsemi.c        |   4 +-
 drivers/net/ethernet/netronome/nfp/nfp_main.c |  65 +--
 .../ethernet/netronome/nfp/nfp_netvf_main.c   |  33 +-
 drivers/net/ethernet/qlogic/qede/qede_main.c  |  20 +-
 drivers/net/ethernet/realtek/8139too.c        |  52 +-
 drivers/net/ethernet/realtek/r8169_main.c     |   8 +-
 drivers/net/ethernet/rocker/rocker_main.c     |   4 +-
 drivers/net/ethernet/sis/sis190.c             |   6 +-
 drivers/net/ethernet/sis/sis900.c             |  10 +-
 drivers/net/ethernet/smsc/epic100.c           |  18 +-
 drivers/net/ethernet/sun/cassini.c            |   8 +-
 drivers/net/ethernet/sun/sungem.c             |  26 +-
 drivers/net/ethernet/ti/tlan.c                |  41 +-
 drivers/net/ethernet/wangxun/ngbe/ngbe_main.c |  26 +-
 .../net/ethernet/wangxun/ngbevf/ngbevf_main.c |  26 +-
 .../net/ethernet/wangxun/txgbe/txgbe_main.c   |  18 +-
 .../ethernet/wangxun/txgbevf/txgbevf_main.c   |  18 +-
 drivers/net/wan/farsync.c                     |  24 +-
 drivers/net/wan/pc300too.c                    |  14 +-
 drivers/net/wan/pci200syn.c                   |   6 +-
 drivers/net/wan/wanxl.c                       |  11 +-
 .../broadcom/brcm80211/brcmfmac/pcie.c        |  17 +-
 drivers/net/wireless/intel/ipw2x00/ipw2200.c  |  52 +-
 68 files changed, 1285 insertions(+), 1099 deletions(-)


base-commit: 254f49634ee16a731174d2ae34bc50bd5f45e731
-- 
2.47.3

