Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4893536900E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 12:05:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DFDFA400C4;
	Fri, 23 Apr 2021 10:05:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G2rurX6GmVVq; Fri, 23 Apr 2021 10:05:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 50A4A40618;
	Fri, 23 Apr 2021 10:05:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8A6FD1BF281
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 10:05:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 79EBB843ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 10:05:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ADby62x9E3kB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Apr 2021 10:05:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 64A3B842A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 10:05:10 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id c15so38830892wro.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 03:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WOEa3H9ikuixMJBnj2BWjU2Lt8l1O0JIiIqWbM9kpD8=;
 b=pizEhOxllejzw/8cviEnPDfzzWXgysABi96iBqVvHDG1iXJK/pYLRhoNySP4d9eP9q
 PKW1r2ou2j1/7Ceb/oT7pI763fbyqD7s5xEn85KWeF0IJuRUY12G9/rMJCwl99+qNPeJ
 zXepmL5egnTXebZVP7TqRZfuMdMDITBqflQCMA/7cCgbPEuj5dEb08M8Hd/jlpVn2QvU
 7NSjQ+BwO7QADLzz0kiD+dQHjKDRAGZapHbWzZhFqzZf8BVN8OJ6UxmAFoAKlTQB12y+
 2+8GCPhrqvp7YFme5icmLl9NbvPW7n+qOvn6s+VY4RG8obwz+WHRDG2vfSsHO8z+6K/U
 FJjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WOEa3H9ikuixMJBnj2BWjU2Lt8l1O0JIiIqWbM9kpD8=;
 b=XglqCoktwhEyRey/JZ1qVlGnz8eTNHSYgXgpodNor45auL+sA4ksVjmeNZXoWPTNET
 iXZADq8MBmWLLscfLE7n5004O/UrvZhONoJ2/8dx/gG80H75gQiN/fSe1dyVKtd5o7RJ
 DyVc6O3FhhLhgKQao1OgeQ/jNhhvXsjwIkDzZE7KLxS5IbpvakZwn7LtvA/4vpwrvkUh
 Cv6qv9gwp/BdKikSQsWzW9T0kOt8ioCMUn/FrFQflUrJStkfBsIM2MAXoLoAGnkjSVdk
 e6Oj/n3IIXR917NrGP77/Do+n/ED6R3iW5+QmQEBzR/E6PKqhOJPZDy9HMjjYCe2mAUa
 jtnQ==
X-Gm-Message-State: AOAM533WwnOAcq4MI13ff5SGeqkIZatj4FUTZySEF3cCE2h218cptu28
 zBEuALpn3jIMvRAUZZdPWaIlHmWL1zNi7V9+NNY=
X-Google-Smtp-Source: ABdhPJwsnMZlDbqV2YXuKVj/0Ix/n/fmzLvCeqQlH158jIuHWh0Betz0dYC2WcyeJPHt2CvixCpEiA==
X-Received: by 2002:a5d:69d0:: with SMTP id s16mr3705364wrw.102.1619172308621; 
 Fri, 23 Apr 2021 03:05:08 -0700 (PDT)
Received: from localhost.localdomain ([188.149.128.194])
 by smtp.gmail.com with ESMTPSA id t12sm8599481wrs.42.2021.04.23.03.05.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 23 Apr 2021 03:05:08 -0700 (PDT)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, maciej.fijalkowski@intel.com
Date: Fri, 23 Apr 2021 12:04:45 +0200
Message-Id: <20210423100446.15412-5-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210423100446.15412-1-magnus.karlsson@gmail.com>
References: <20210423100446.15412-1-magnus.karlsson@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net 4/5] igb add correct exception
 tracing for XDP
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
Cc: netdev@vger.kernel.org, brouer@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Magnus Karlsson <magnus.karlsson@intel.com>

Add missing exception tracing to XDP when a number of different
errors can occur. The support was only partial. Several errors
where not logged which would confuse the user quite a lot not
knowing where and why the packets disappeared.

Fixes: 9cbc948b5a20 ("igb: add XDP support")
Reported-by: Jesper Dangaard Brouer <brouer@redhat.com>
Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index a45cd2b416c8..45fcfc536b38 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -8402,18 +8402,20 @@ static struct sk_buff *igb_run_xdp(struct igb_adapter *adapter,
 		break;
 	case XDP_TX:
 		result = igb_xdp_xmit_back(adapter, xdp);
+		if (result == IGB_XDP_CONSUMED)
+			goto out_failure;
 		break;
 	case XDP_REDIRECT:
 		err = xdp_do_redirect(adapter->netdev, xdp, xdp_prog);
-		if (!err)
-			result = IGB_XDP_REDIR;
-		else
-			result = IGB_XDP_CONSUMED;
+		if (err)
+			goto out_failure;
+		result = IGB_XDP_REDIR;
 		break;
 	default:
 		bpf_warn_invalid_xdp_action(act);
 		fallthrough;
 	case XDP_ABORTED:
+out_failure:
 		trace_xdp_exception(rx_ring->netdev, xdp_prog, act);
 		fallthrough;
 	case XDP_DROP:
-- 
2.29.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
