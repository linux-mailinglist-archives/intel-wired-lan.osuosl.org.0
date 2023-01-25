Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF4167B702
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 17:38:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E9FF82270;
	Wed, 25 Jan 2023 16:38:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E9FF82270
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674664693;
	bh=mylwDfY52WwJKXN00F3wyCFg0qvFNOgJ36w2pqk+sis=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=dQB5DtL/v9t3t6Wzr3vYdEOfqlpBQTxbha2+x0KaTFXrEcwK6xahGGnc3WFyj3/5k
	 ctnvF54xPuO7AH3RlVkou85dIGi4iRotDCHucN7uUEdcyrbJ2JkdVRo/q1eAImaG66
	 4EXb0b/1rIlgZ7MxaaooWmIwRWKmNU+mqAXjfq09Z0V7017/eWjBXmK8QyY4XubPd0
	 L4GxyM0xs2UvO5QAORiUDNI3Z0y4Comzf7smnSla3A57ub6kYwtdfRIj/PNP9Qm7T9
	 jgyrVCu9RhaukpKCdS21xO5cMxQNbMEdJJYeF9ooiukPVRpJmmXbn4ySfTFnA+joWM
	 wLre1DwT1qc4w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I_pRmje1VAa2; Wed, 25 Jan 2023 16:38:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 979038224A;
	Wed, 25 Jan 2023 16:38:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 979038224A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C421F1BF841
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 14:19:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9C73781DF4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 14:19:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C73781DF4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qXRfeWWs6xO6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 14:19:10 +0000 (UTC)
X-Greylist: delayed 00:05:25 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 659CC81D5F
Received: from exchange.fintech.ru (exchange.fintech.ru [195.54.195.159])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 659CC81D5F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 14:19:10 +0000 (UTC)
Received: from Ex16-01.fintech.ru (10.0.10.18) by exchange.fintech.ru
 (195.54.195.169) with Microsoft SMTP Server (TLS) id 14.3.498.0; Wed, 25 Jan
 2023 17:13:32 +0300
Received: from KANASHIN1.fintech.ru (10.0.253.125) by Ex16-01.fintech.ru
 (10.0.10.18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4; Wed, 25 Jan
 2023 17:13:31 +0300
From: Natalia Petrova <n.petrova@fintech.ru>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Date: Wed, 25 Jan 2023 17:13:28 +0300
Message-ID: <20230125141328.8479-1-n.petrova@fintech.ru>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.0.253.125]
X-ClientProxiedBy: Ex16-01.fintech.ru (10.0.10.18) To Ex16-01.fintech.ru
 (10.0.10.18)
X-Mailman-Approved-At: Wed, 25 Jan 2023 16:38:08 +0000
Subject: [Intel-wired-lan] [PATCH] i40e: Add checking for null for
 nlmsg_find_attr()
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
Cc: lvc-project@linuxtesting.org, intel-wired-lan@lists.osuosl.org,
 Natalia Petrova <n.petrova@fintech.ru>, linux-kernel@vger.kernel.org, Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The result of nlmsg_find_attr() 'br_spec' is dereferenced in
nla_for_each_nested, but it can take null value in 'nla_find' finction,
which will result in an error.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Fixes: 51616018dd1b ("i40e: Add support for getlink, setlink ndo ops")
Signed-off-by: Natalia Petrova <n.petrova@fintech.ru>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index b36bf9c3e1e4..ed4be4ffeb09 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -13101,6 +13101,8 @@ static int i40e_ndo_bridge_setlink(struct net_device *dev,
 	}
 
 	br_spec = nlmsg_find_attr(nlh, sizeof(struct ifinfomsg), IFLA_AF_SPEC);
+	if (!br_spec)
+		return -ENOENT;
 
 	nla_for_each_nested(attr, br_spec, rem) {
 		__u16 mode;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
