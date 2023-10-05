Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3B17B9DE8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Oct 2023 15:57:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1030283834;
	Thu,  5 Oct 2023 13:57:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1030283834
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696514256;
	bh=qgzMKO0bVlIDg+xqrWlBMbAIO69ACAOJAFE9IaKy6xA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Lz8XHP41oAzeeddkejLxRHXBoLLLpTR4bJMvDTk7Y+/oO0/A/rE6wxJxM4v6g9j74
	 QnmfrV/ef4epml/DsCkSYtddZQ08dHZn48u764ceG7gvk4tqv4ayKg2FejbDu8hhEC
	 fQojjVKdfU5yC/OYootSLrTO+JIS/pnjjvw0YjK5nmwFM95twKF2cKCMCoZaIMyvmP
	 K6IRVsNdK2TPwVOYiw/8GGeo1NDSiw9u9vXS8C00alWVCf/tQvb1wcXYBpM/PjcT/M
	 VUgfUGrxvWVDkgPWjz3NMJRDIPT5intgvQxzDsmN/47w2cHNKsgoFHKnnadv1nE7AO
	 QwlPK+UGa8l9Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id llv7v5PckUlj; Thu,  5 Oct 2023 13:57:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 20F2983AAD;
	Thu,  5 Oct 2023 13:57:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 20F2983AAD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D85981BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 13:57:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BE8C583834
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 13:57:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE8C583834
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RowmevxTHley for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Oct 2023 13:57:27 +0000 (UTC)
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CD42F8381F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 13:57:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD42F8381F
Received: by mail-wr1-x42f.google.com with SMTP id
 ffacd0b85a97d-32336a30d18so916258f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 Oct 2023 06:57:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696514245; x=1697119045;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=AooGTYUy452CMDPClrlTisOX8k1qSdGixxMstg0I9q0=;
 b=qu/Vnt3oI1oVDJuZvcxlie5nSEz36frAUtDKp44N6gkQjPMbFURMA9YMSdEAQ7Mh7t
 CDybf9cZE0rPfegDOiC5ZE8GlhyHXvHkINp6yMm4VT9CoKcju71ypwJxbNQHwtc/6at5
 cOIDrNDlW45oE2RFCb9LVn2SeC1VoXznH5JFJnSkqjiUxA2lM+1ltzJwHUHxywmF+xUh
 sHyJTGqgtH85wSriHRerr7bKc/ghr8o/t7kXswC5IDO0KgEPwyCtnonFnocRNb+z6XOL
 Aysn1rSX+Fl0gthqpRTMRiG25j/9jjkQm/HhpP0OzyM/JUboxyfouT1zdLWm26ZxW80l
 9j3Q==
X-Gm-Message-State: AOJu0YzlNYiTwEvRVRp9Fh8YKexP68aPeJZKVSokG8HL0+1XPfNUUx0b
 S7zukrIeu1QmbWHRb2LcFTI46g==
X-Google-Smtp-Source: AGHT+IGEGxGJ8wEps7sHxei6GOKIWpDvnRrTfQ/aBGCmZAYI2aBq2ytwW6bqUoWdRMnKb5xGjvnu4Q==
X-Received: by 2002:a5d:45c8:0:b0:317:dd94:ed38 with SMTP id
 b8-20020a5d45c8000000b00317dd94ed38mr4875974wrs.42.1696514244730; 
 Thu, 05 Oct 2023 06:57:24 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 q13-20020adff78d000000b0032415213a6fsm1861805wrp.87.2023.10.05.06.57.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Oct 2023 06:57:24 -0700 (PDT)
Date: Thu, 5 Oct 2023 16:57:21 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Jinjie Ruan <ruanjinjie@huawei.com>
Message-ID: <4d61f086-c7b4-4762-b025-0ba5df08968b@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1696514245; x=1697119045; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=AooGTYUy452CMDPClrlTisOX8k1qSdGixxMstg0I9q0=;
 b=ykL8A9sFxWoZLd4XT+C8KlfC1nxmlelq8IWD4PURR3qnfgsWOdMO/rOjDDbx81vJde
 Pp2vRd1eqtBkF2Xww/hi8FmveiS+8liaJRZYlufEKWcbFnuAazGJ1uq9QHPPMRT3NuT4
 mQODSNCDoxK0qzg0lQLGz59ZyIY4Sb01INiXtfjKRbOtkHA6Pj9gRZediHjEKS8YFBha
 1icPkR6Vn/DGxg+5M4jc91gTt44+KIszyQO/INe9LPbfyWRMJJ6Z88MmX3nHj0XQECSH
 eqDFSt8mS+1zdO4UhxAb0B9zd+vJW/QOtDWVA5qnLs9MBIdafJN1be3Qfof/TlPMGJJN
 sPrw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org
 header.a=rsa-sha256 header.s=google header.b=ykL8A9sF
Subject: [Intel-wired-lan] [PATCH net-next 1/2] igb: Fix an end of loop test
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
Cc: intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When we exit a list_for_each_entry() without hitting a break statement,
the list iterator isn't NULL, it just point to an offset off the
list_head.  In that situation, it wouldn't be too surprising for
entry->free to be true and we end up corrupting memory.

The way to test for these is to just set a flag.

Fixes: c1fec890458a ("ethernet/intel: Use list_for_each_entry() helper")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 2ac9dffd0bf8..c45b1e7cde58 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -7857,7 +7857,8 @@ static int igb_set_vf_mac_filter(struct igb_adapter *adapter, const int vf,
 {
 	struct pci_dev *pdev = adapter->pdev;
 	struct vf_data_storage *vf_data = &adapter->vf_data[vf];
-	struct vf_mac_filter *entry = NULL;
+	struct vf_mac_filter *entry;
+	bool found = false;
 	int ret = 0;
 
 	if ((vf_data->flags & IGB_VF_FLAG_PF_SET_MAC) &&
@@ -7888,11 +7889,13 @@ static int igb_set_vf_mac_filter(struct igb_adapter *adapter, const int vf,
 	case E1000_VF_MAC_FILTER_ADD:
 		/* try to find empty slot in the list */
 		list_for_each_entry(entry, &adapter->vf_macs.l, l) {
-			if (entry->free)
+			if (entry->free) {
+				found = true;
 				break;
+			}
 		}
 
-		if (entry && entry->free) {
+		if (found) {
 			entry->free = false;
 			entry->vf = vf;
 			ether_addr_copy(entry->vf_mac, addr);
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
