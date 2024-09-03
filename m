Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAC796A183
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2024 17:02:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C17BE607C3;
	Tue,  3 Sep 2024 15:02:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DMeaOMYC-W-D; Tue,  3 Sep 2024 15:02:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24903606C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725375749;
	bh=D3pK/xIDd4gN73xR2IAKuIfQBHRY4tf7Zw38vyUW1ow=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4srgI001ZwRsRrdcvDXBZNjjGapu7gf+vmrR0w1R3+Q30HUuTVYO67rMDf212UoGo
	 /r7CiP1E3J4BpEE6trlTBk9QwAlCs60Lp2uZ+9HyBLrZOcK1Yg8qk4H1EAMn9xE77D
	 HZlId3NRZy7aHdPXBLuYZl0/IMZHkxO4eoz7SM3im9LpHXbRVnIbrd56Kzt9wdcCE7
	 c3kQhGA+02MWFrVmL8KRDg73NK4Ov4n/DjhLrIMOiHDNFDjLf1raHpiOG6v8KAEK2Z
	 04jpEEi5NJdjY9a5fB62kgmTCXzKVpHke3uUBjGYGKagbviZW62J91UF2Uf+AipxkX
	 hCk4T3yruRAPA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24903606C7;
	Tue,  3 Sep 2024 15:02:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 24CD31BF263
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 10:47:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 10D736065C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 10:47:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fkRdw2lyYxGv for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Sep 2024 10:47:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=99.78.197.219;
 helo=smtp-fw-80008.amazon.com;
 envelope-from=prvs=9695ab786=takamitz@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4B73F60658
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B73F60658
Received: from smtp-fw-80008.amazon.com (smtp-fw-80008.amazon.com
 [99.78.197.219])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4B73F60658
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 10:47:01 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.10,198,1719878400"; d="scan'208";a="121943980"
Received: from pdx4-co-svc-p1-lb2-vlan3.amazon.com (HELO
 smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.25.36.214])
 by smtp-border-fw-80008.pdx80.corp.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2024 10:46:54 +0000
Received: from EX19MTAUWA002.ant.amazon.com [10.0.7.35:14951]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.6.188:2525]
 with esmtp (Farcaster)
 id 3b7296b2-e8e6-4804-8ef1-7ed099bb915d; Tue, 3 Sep 2024 10:46:54 +0000 (UTC)
X-Farcaster-Flow-ID: 3b7296b2-e8e6-4804-8ef1-7ed099bb915d
Received: from EX19D005ANA004.ant.amazon.com (10.37.240.178) by
 EX19MTAUWA002.ant.amazon.com (10.250.64.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.34;
 Tue, 3 Sep 2024 10:46:54 +0000
Received: from 682f678c4465.ant.amazon.com.com (10.118.248.122) by
 EX19D005ANA004.ant.amazon.com (10.37.240.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.35;
 Tue, 3 Sep 2024 10:46:50 +0000
From: Takamitsu Iwai <takamitz@amazon.co.jp>
To: <andrew@lunn.ch>
Date: Tue, 3 Sep 2024 19:46:42 +0900
Message-ID: <20240903104642.75303-1-takamitz@amazon.co.jp>
X-Mailer: git-send-email 2.39.3 (Apple Git-145)
In-Reply-To: <87af1b9e-21c3-4c22-861a-b917b5cd82c2@lunn.ch>
References: <87af1b9e-21c3-4c22-861a-b917b5cd82c2@lunn.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.118.248.122]
X-ClientProxiedBy: EX19D045UWA003.ant.amazon.com (10.13.139.46) To
 EX19D005ANA004.ant.amazon.com (10.37.240.178)
X-Mailman-Approved-At: Tue, 03 Sep 2024 15:02:25 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.co.jp; i=@amazon.co.jp; q=dns/txt;
 s=amazon201209; t=1725360421; x=1756896421;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D3pK/xIDd4gN73xR2IAKuIfQBHRY4tf7Zw38vyUW1ow=;
 b=Mg2L1W60bslHWa++oWxJZ1j2b3AP7OB6mfrCyKzWW2H45DG+ScRdyA+6
 Ortt5Ur/gLw2pxZbfdTtARU1DxPJZWWoSlgztVvxiltrVTOCQowDNv2pS
 IdNRXjtZEfdrXbzlpXHT1He9QlXOZo+zO4cGnfNL/M40ozHmjDaMaAdQ9
 s=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.co.jp
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amazon.co.jp header.i=@amazon.co.jp header.a=rsa-sha256
 header.s=amazon201209 header.b=Mg2L1W60
Subject: Re: [Intel-wired-lan] [PATCH v1 net-next] e1000e: Remove duplicated
 writel() in e1000_configure_tx/rx()
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
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, takamitz@amazon.co.jp, kuba@kernel.org,
 anthony.l.nguyen@intel.com, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Did the same sequence of read/writes happen before 0845d45e900c? Or
> did 0845d45e900c add additional writes, not just move them around?

The sequence of read/writes happened before 0845d45e900c because the similar
writel() exists in ew32() above the writel() moved by 0845d45e900c.

The commit 0845d45e900c moved writel() in e1000_clean_tx/rx_ring() to
e1000_configure_tx/rx() to avoid null pointer dereference. But since the same
writel() exists in e1000_configure_tx/rx(), we just needed to remove writel()
from e1000_clean_rx/tx_ring().

