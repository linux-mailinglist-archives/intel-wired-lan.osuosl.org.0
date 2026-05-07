Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2E6qH4Ju/GknQAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 12:50:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A14D4E706B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 12:50:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25E8A83B90;
	Thu,  7 May 2026 10:50:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hdlbtmXL6Whz; Thu,  7 May 2026 10:50:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4578283B8D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778151038;
	bh=MEhC5xMmaOs+y5n/VqJ8Hh4e41dVt9Y1cZDrJx+29QQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=nJTgQBjzexqwUp2SNoORAbtgpdxyH/Jt6JPSiTfNggau095aFPSAorRMcm9sZXBUT
	 IgutuVV7etbKxwNqafFZG1LovlF1R7elZFYmg1lkDHMA3AHOvJcZ6He4vQx7YNEqm6
	 tbv+gg/xwjQAjoG9Zkq/eRkbsWUFgd8s1ab0hFYjgA9C4CddMFpRHweqmblOOzoTNc
	 DGbDZqC70JHgl6dJ7F7MZQzJWsMtNhxe3oITYC7tYjWmWzIjS+viOHw6DwFrQvjPwB
	 0/FChc0i+xhcic5IPZyHSCbpQcaAAtcyBfne/9KR+pkPHah6NqHdxMQmyD/kQtorHG
	 jEpaMrXyzrGsw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4578283B8D;
	Thu,  7 May 2026 10:50:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9042811B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 10:50:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7667741071
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 10:50:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FPt3bijIQHhR for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2026 10:50:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::334; helo=mail-wm1-x334.google.com;
 envelope-from=ukleinek@baylibre.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EF1C44106C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF1C44106C
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EF1C44106C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 10:50:33 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-48d146705b4so8666725e9.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 07 May 2026 03:50:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778151031; x=1778755831;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=MEhC5xMmaOs+y5n/VqJ8Hh4e41dVt9Y1cZDrJx+29QQ=;
 b=KcMmz3LGIr1MEQ1n+zkQVmcFx5Evl5i1u5rjlczZ2oOAEooEqjrhYX5uQDqMZzdi6Q
 x+KBDLnS52Q53eHU28sAo2r5YSIGk0I9MjlsMovg4x6/89d3k/8hSMLd0qS5uzMvXwCz
 r4jkD1x26vWcTTQAoturGZxyV4KXYJPyuf9Mvp6VL30aBPSSpFvq8YAuE3p3YCUuMMm8
 ifeaF93mePr8ijp9UA17lZVqsygaajIXOZTPOPPv9izXIJqqqKXdOnR61aIbzRSTzYpp
 cxorVrJd9iuJCYqOyoD28RH+/q26aY0Rjh311C9g7Y2UYqXGYcAPJ9o8WAtP/ACNjS4d
 6Nsg==
X-Forwarded-Encrypted: i=1;
 AFNElJ/EQqZ4zzdNJaloAm4QqywnQFGsYFQn4LirBZo4Zvg0k627GcWDjqvjhx4xsRbi8QEnUjeQfN4unshmmKo84dU=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw93gq+MyhxvPnkXhx/hibXq/8MZeWRlqa74PHVLWKfwOWSLos/
 QDOaeBBJ7ROuna4Yk9xgXVFnxYnwVmFsprzZpUJNUN9QDxqojg4eowEZavWPwjnpNeE=
X-Gm-Gg: AeBDietaKoSGaz4LsYBAnhD9+hAGt3b4TZC9iAx+hIXKvzKJ2iQUyzhaPq5DRH25Mgg
 VgGJdeqOizzWITswe0kteuMjq8eYgtTNOUKycpQLIiL7E62HPFLh0APyUTFXddAw8c2Ulzy7EkS
 d9LxmvBBOTQFx5hBQuQZN6XdJg+iDM7zqLmCL3AORxemzFS/NZsQNXHmoWN20vOuCQP3UrUsDVB
 5cGDaSlSAndr1ftJ48Is/41tyS67JQjvlbI3gkZguuDMzPkxmOaHqC1yFn1XzeE1W3DbxPxr+sJ
 5ywcrlOvTqj8rjY6wq18+sZWGzLlAQj5yUlP+pafRFqeErTxz1JrA8DqvN78hvjET8YKZ0/kRy6
 LXbmCu7yi9G5Ri1yhJAm/89PC8LRJHcUpC1qEzSvohfjA3EYoivtyV5mLR/7xD+/qTjcNh6tZ68
 7ti0KNsUtLH4NJUMxbVMC8Gnx+OiQFMeRi/Hr7AGriyB4v/tQu/Cy2IYzka2xIcFVxMXZXC2KgP
 HDRsgkMNs75h9fsdGecoNoXSA==
X-Received: by 2002:a05:600c:8485:b0:489:1f3e:5f6f with SMTP id
 5b1f17b1804b1-48e51f327f0mr123646755e9.12.1778151031239; 
 Thu, 07 May 2026 03:50:31 -0700 (PDT)
Received: from localhost
 (p200300f65f114e08ac341e0bb79e5496.dip0.t-ipconnect.de.
 [2003:f6:5f11:4e08:ac34:1e0b:b79e:5496])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-48e52f5c1cfsm74709765e9.0.2026.05.07.03.50.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2026 03:50:30 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig=20=28The=20Capable=20Hub=29?=
 <u.kleine-koenig@baylibre.com>
To: Michael Grzeschik <mgr@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Marc Kleine-Budde <mkl@pengutronix.de>,
 Vincent Mailhol <mailhol@kernel.org>, Krzysztof Halasa <khc@pm.waw.pl>,
 Johannes Berg <johannes@sipsolutions.net>
Date: Thu,  7 May 2026 12:50:18 +0200
Message-ID: <cover.1778149923.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=4997;
 i=u.kleine-koenig@baylibre.com; h=from:subject:message-id;
 bh=F0wkHe4/N6VROpz2ZLwqmJpO+q0ZH2sv57Ij/hqtPPo=;
 b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBp/G5qFf+kwY1/C2tNsDu68NrEVCGT2LoojUm6u
 vB+DhdxBCOJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCafxuagAKCRCPgPtYfRL+
 ThFhB/9Ez2Dcmcpa/NhWkEdoeFtCQpUSu198LS4+VzPV9EdL+/XzefS25l1M0IrceOE5nZvPQin
 8PPeETGae282bLzXMlNHBjdiUzvMDpqRdzOGC58be7Gz/ifz4P9bWwvku+LAARTI4BqWD5itQdY
 lW6g7KjElH6oo6lmYarLW+mG55TSQQw5saxghG2zuvdG2pInp5obAmIWhCWdT0lDnNwXx0JDRCx
 IpeXpWeh5zmLqMCkWlOv0R22LTIdhKikJeJIFiKlpiOJ6cqZfn2tPQFUgRBIo5RnBBsyh99aLwX
 xcivYIzJoLo/aGXX+8avDoPmzCKP5DN4BCd3+qrRJR1skzlP
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp;
 fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20251104.gappssmtp.com; s=20251104; t=1778151031; x=1778755831;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=MEhC5xMmaOs+y5n/VqJ8Hh4e41dVt9Y1cZDrJx+29QQ=;
 b=F1J6cY8bpCZp0ZHP0fAZdYEb5zNJIjDlAASqKKoYql6Pfozi0ZWV4WXx6W1ABgxrmV
 aSpLpkL126SeapdhOvRN8WrVYIqJPeR/DinOydCwvD6gGKhrSEdjemr8nS5+694Hn5Mi
 1LhbQWyAez2dZFjdrlmuiG2yQ4EW+3WZxpkJKY37TZX+5lc2ZilMsarA68Q5YjjTREmR
 Sj+9idjkMxNKVMXVa5JI4y5bqRKGKskrYsbp2AdkK/vvGrBih/M9cwhw/DUCjSi2TqYQ
 eqaGQv/ox8vlsDQi0/2jAoHGTr0MASabIfcfhYrpIuLBEerhKyuzP9l3WJmoSb8X7mD6
 8dFg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=baylibre.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=baylibre-com.20251104.gappssmtp.com
 header.i=@baylibre-com.20251104.gappssmtp.com header.a=rsa-sha256
 header.s=20251104 header.b=F1J6cY8b
Subject: [Intel-wired-lan] [PATCH net-next v2 0/2] Rework pci_device_id
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
X-Rspamd-Queue-Id: 3A14D4E706B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:mgr@kernel.org,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:mkl@pengutronix.de,m:mailhol@kernel.org,m:khc@pm.waw.pl,m:johannes@sipsolutions.net,m:richardcochran@gmail.com,m:liuyonglong@huawei.com,m:kees@kernel.org,m:linux-wireless@vger.kernel.org,m:ian.lin@infineon.com,m:brcm80211@lists.linux.dev,m:venza@brownhat.org,m:oss-drivers@corigine.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:danishanwar@ti.com,m:chessman@tux.org,m:gongfan1@huawei.com,m:marco.crivellari@suse.com,m:kevin.curtis@farsite.co.uk,m:mingo@kernel.org,m:ionut@badula.org,m:andriy.shevchenko@intel.com,m:leon@kernel.org,m:colin.i.king@gmail.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:kirjanov@gmail.com,m:linux-parisc@vger.kernel.org,m:jacob.e.keller@intel.com,m:mengyuanlou@net-swift.com,m:klassert@kernel.org,m:stas.yakovlev@gmail.com,m:linux-rdma@vger.kernel.org,m:arend.vanspriel@broadcom.com,
 m:nic_swsd@realtek.com,m:jiri@resnulli.us,m:larysa.zaremba@intel.com,m:idosch@nvidia.com,m:bharat@chelsio.com,m:double.lo@cypress.com,m:msp@baylibre.com,m:nathan@kernel.org,m:jiawenwu@trustnetic.com,m:cai.huoqing@linux.dev,m:bhelgaas@google.com,m:zilin@seu.edu.cn,m:linux-can@vger.kernel.org,m:dong100@mucse.com,m:petrm@nvidia.com,m:kory.maincent@bootlin.com,m:brcm80211-dev-list.pdl@broadcom.com,m:GR-Linux-NIC-Dev@marvell.com,m:vadim.fedorenko@linux.dev,m:manishc@marvell.com,m:benato.denis96@gmail.com,m:rmody@marvell.com,m:darinzon@amazon.com,m:rdunlap@infradead.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:shenjian15@huawei.com,m:shaojijie@huawei.com,m:yyyynoom@gmail.com,m:tglx@kernel.org,m:horms@kernel.org,m:yiconghui@gmail.com,m:mark.einon@gmail.com,m:enelsonmoore@gmail.com,m:saeedm@nvidia.com,m:fourier.thomas@gmail.com,m:hkallweit1@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER(0.00)[u.kleine-koenig@baylibre.com,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[u.kleine-koenig@baylibre.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,huawei.com,kernel.org,vger.kernel.org,infineon.com,lists.linux.dev,brownhat.org,corigine.com,intel.com,ti.com,tux.org,suse.com,farsite.co.uk,badula.org,lists.osuosl.org,net-swift.com,broadcom.com,realtek.com,resnulli.us,nvidia.com,chelsio.com,cypress.com,baylibre.com,trustnetic.com,linux.dev,google.com,seu.edu.cn,mucse.com,bootlin.com,marvell.com,amazon.com,infradead.org];
	RCPT_COUNT_GT_50(0.00)[79];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.984];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Hello,

(implicit) v1 is available at
https://lore.kernel.org/netdev/20260428171845.2288395-2-u.kleine-koenig@baylibre.com/.

Changes since then is mostly addressing feedback by Andy Shevchenko
about trailing commas, 4-digit PCI device ids. I did some more minor
reformatting.

Patch #2 is new. I considered putting that one first because the
conversion for the affected driver introduces the ambiguity that I
mentioned in the commit log, but decided to keep it after the rework
because only with the rework you can properly see the issue that .class
and .class_mask hold strange values.

I consider the changes to patch #1 minor enough to carry over all the
tags given to v1 to this v2.

Best regards
Uwe

Uwe Kleine-König (The Capable Hub) (2):
  net: Consistently define pci_device_ids using named initializers
  net: nfp: Drop PCI class entries with .class_mask = 0

 drivers/net/arcnet/com20020-pci.c             | 242 +++------
 drivers/net/can/m_can/m_can_pci.c             |   6 +-
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
 69 files changed, 1288 insertions(+), 1102 deletions(-)


base-commit: 254f49634ee16a731174d2ae34bc50bd5f45e731
-- 
2.47.3

