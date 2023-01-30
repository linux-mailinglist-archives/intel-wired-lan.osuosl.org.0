Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5312B681DD5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jan 2023 23:12:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D99868175E;
	Mon, 30 Jan 2023 22:12:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D99868175E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675116769;
	bh=6Gzag8zNJfMvS5+mTnGA2MeOx0eTFl/Qej6lr4u9YxA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5KTyPwU+lfxDrg43oQ0fnavYv3/JgGL3KOGQ+0aoLnP4sSJ008fbGwHgknCLJhf7z
	 69G80NopVgHiB+0iNsE/7icu4/gC/JStUbVw0ib7hXf4h5/MgI1EPdPLzB7QICU1H8
	 Sf7s62GkgWQoMPuvSkDqmdJE5GJ/Ygw2BTFAGtsEaX4MvLlKEItZq9p3ToeD6yzJph
	 jlGdcnLpD2DkGhLWPWclvU3hCDiPs3Rxuk60LVxOR/be1620vGBo8T3b6qrpXmP1vW
	 +aqdA/VJtwUYVRqje/3bLgcO/vq7tF0BKs1Goz2EAQNvwysGcPs5K+fCN0nMsR50uP
	 16K6o4VXHgoPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CbacBSjw5px7; Mon, 30 Jan 2023 22:12:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CAED38138C;
	Mon, 30 Jan 2023 22:12:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CAED38138C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 49EB81BF41F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 22:11:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1BC5A40BD0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 22:11:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1BC5A40BD0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6XNoDe1Yi_Yh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jan 2023 22:11:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CE8F40BAD
Received: from exchange.fintech.ru (exchange.fintech.ru [195.54.195.159])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9CE8F40BAD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 22:11:18 +0000 (UTC)
Received: from Ex16-01.fintech.ru (10.0.10.18) by exchange.fintech.ru
 (195.54.195.169) with Microsoft SMTP Server (TLS) id 14.3.498.0; Tue, 31 Jan
 2023 01:11:09 +0300
Received: from KANASHIN1.fintech.ru (10.0.253.125) by Ex16-01.fintech.ru
 (10.0.10.18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4; Tue, 31 Jan
 2023 01:11:09 +0300
From: Natalia Petrova <n.petrova@fintech.ru>
To: <stable@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Tue, 31 Jan 2023 01:11:06 +0300
Message-ID: <20230130221106.19267-1-n.petrova@fintech.ru>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230125141328.8479-1-n.petrova@fintech.ru>
References: 
MIME-Version: 1.0
X-Originating-IP: [10.0.253.125]
X-ClientProxiedBy: Ex16-01.fintech.ru (10.0.10.18) To Ex16-01.fintech.ru
 (10.0.10.18)
X-Mailman-Approved-At: Mon, 30 Jan 2023 22:12:44 +0000
Subject: [Intel-wired-lan] [PATCH v2] i40e: Add checking for null for
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
 Natalia Petrova <n.petrova@fintech.ru>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The result of nlmsg_find_attr() 'br_spec' is dereferenced in
nla_for_each_nested(), but it can take null value in nla_find() function,
which will result in an error.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Fixes: 51616018dd1b ("i40e: Add support for getlink, setlink ndo ops")
Signed-off-by: Natalia Petrova <n.petrova@fintech.ru>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
v2: The remark about the error code by Simon Horman <simon.horman@corigine.com> 
was taken into account; return value -ENOENT was changed to -EINVAL.
 drivers/net/ethernet/intel/i40e/i40e_main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 53d0083e35da..4626d2a1af91 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -13167,6 +13167,8 @@ static int i40e_ndo_bridge_setlink(struct net_device *dev,
 	}
 
 	br_spec = nlmsg_find_attr(nlh, sizeof(struct ifinfomsg), IFLA_AF_SPEC);
+	if (!br_spec)
+		return -EINVAL;
 
 	nla_for_each_nested(attr, br_spec, rem) {
 		__u16 mode;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
