Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CEC0AE480D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jun 2025 17:12:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C4A060687;
	Mon, 23 Jun 2025 15:12:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4fQT8KCX1NmO; Mon, 23 Jun 2025 15:12:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B2A12605E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750691557;
	bh=rNhWZ+Un8BtRy15WffKHdtjL6RuIHZnJTuWBElSsyjM=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hImGKcV0uD6Dww3nxVI+iIOHYmS34rb3ek9rrFsiDPpbT+RXnOqKnIveCGLiWBifF
	 kkHttCq8rXxaCmzykVUrF5Ftkr/6sAVoNJYzQJHz8YnwQVYUljWrH1+iPM0iR/WZWp
	 W8XrTVeO95wQhh2/GxRAnheZGa/VtyYERtcQQIhRHd85qBVIWcFlFx9oBJGLDqAJJy
	 jeCO24uElGZoAqw/IF8GlgbtdBRuWRAQmm+QEc0z0H5+Na580sE9wSqmvknE0OOR+e
	 fmWayrFxbR9T3weQQMLu44EyTEGXSysQ3Q+nchB8VpqNsZqxsDtsvoOGAa2Zyny2CJ
	 z4OJ71N/jElbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2A12605E9;
	Mon, 23 Jun 2025 15:12:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id BD12BE2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 13:25:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A9410817AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 13:25:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IGt3zY5bwvHs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jun 2025 13:25:54 +0000 (UTC)
X-Greylist: delayed 909 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 19 Jun 2025 13:25:53 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org ACAA68139F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ACAA68139F
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=162.243.126.186;
 helo=mail-vip.corpemail.net; envelope-from=chuguangqing@inspur.com;
 receiver=<UNKNOWN> 
Received: from mail-vip.corpemail.net (mail-vip.corpemail.net
 [162.243.126.186])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ACAA68139F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 13:25:53 +0000 (UTC)
Received: from Jtjnmail201618.home.langchao.com
 by ssh247.corpemail.net ((D)) with ASMTP (SSL) id 202506192050167261;
 Thu, 19 Jun 2025 20:50:16 +0800
Received: from localhost.localdomain.com (10.94.7.47) by
 Jtjnmail201618.home.langchao.com (10.100.2.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.57; Thu, 19 Jun 2025 20:50:15 +0800
From: chuguangqing <chuguangqing@inspur.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>
Date: Thu, 19 Jun 2025 20:48:40 +0800
Message-ID: <20250619124921.44677-1-chuguangqing@inspur.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <9e82a899-7536-49a6-a4c5-c54fa96d8f50@redhat.com>
References: <9e82a899-7536-49a6-a4c5-c54fa96d8f50@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.94.7.47]
X-ClientProxiedBy: Jtjnmail201617.home.langchao.com (10.100.2.17) To
 Jtjnmail201618.home.langchao.com (10.100.2.18)
tUid: 20256192050162936b2d1b4759160269d87d83bf9d30a
X-Abuse-Reports-To: service@corp-email.com
Abuse-Reports-To: service@corp-email.com
X-Complaints-To: service@corp-email.com
X-Report-Abuse-To: service@corp-email.com
X-Mailman-Approved-At: Mon, 23 Jun 2025 15:12:36 +0000
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=inspur.com
Subject: Re: [Intel-wired-lan] [PATCH 1/1] check the ioremap return value
 first (supplementary CC)
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

 tks to pabeni. 
 cc the relevant ML in the email.

