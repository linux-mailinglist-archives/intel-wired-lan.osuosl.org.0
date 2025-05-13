Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EAF0AB7735
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 May 2025 22:41:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E84241560;
	Wed, 14 May 2025 20:41:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DzeLhS7KMrCb; Wed, 14 May 2025 20:41:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEAAB41548
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747255299;
	bh=6tUASdzJci1Yz0hXdfUtvYYXTCY4KP/E4lVG3TUYqMA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ops9XG2tb7BjvMw5UP+2D1BrqN+O7H/2DbMUuzRk2J7ddX+n87ncgINs4oHEpt6E/
	 b5zKuWmGY2y2P1y4wd+sd+5ZiZx3iIet9DMMZ9j4EQicSb9B1WAGVKc3YRx2yI8mD8
	 jL/Sc978Rco7MLBNaMVHdBsefrLzwy/2H1p08lt3Kc5q9MCcGXxWbjx5Wg9aR+k2Vg
	 roNuWQqKt7r42Wk4v262UDlHOZSqlai8iyXU4c4kSy3lm1TjwDYEULILEon+KaJEKw
	 fEYAMbntgikCTNurumDOtGSFcoiHgvZ0n1o/iFIBiqhkC1gBZEIwL0JNOQkKslhUku
	 WIoShOWbgtWmQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEAAB41548;
	Wed, 14 May 2025 20:41:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C5FA2150
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 12:29:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A8B8B60F34
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 12:29:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fz46DbRK-hBn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 May 2025 12:29:55 +0000 (UTC)
X-Greylist: delayed 306 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 13 May 2025 12:29:54 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B0F8860F3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0F8860F3E
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=101.71.155.101;
 helo=mail-m155101.qiye.163.com; envelope-from=zilin@seu.edu.cn;
 receiver=<UNKNOWN> 
Received: from mail-m155101.qiye.163.com (mail-m155101.qiye.163.com
 [101.71.155.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B0F8860F3E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 12:29:53 +0000 (UTC)
Received: from localhost.localdomain (unknown [202.119.23.198])
 by smtp.qiye.163.com (Hmail) with ESMTP id 14e302593;
 Tue, 13 May 2025 20:24:42 +0800 (GMT+08:00)
From: Zilin Guan <zilin@seu.edu.cn>
To: dawid.osuchowski@linux.intel.com
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 jianhao.xu@seu.edu.cn, kuba@kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, pabeni@redhat.com, przemyslaw.kitszel@intel.com,
 zilin@seu.edu.cn
Date: Tue, 13 May 2025 12:24:41 +0000
Message-Id: <20250513122441.4065314-1-zilin@seu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <170f287e-23b1-468b-9b59-08680de1ecf1@linux.intel.com>
References: <170f287e-23b1-468b-9b59-08680de1ecf1@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCSx5PVklDSEoaT05MSENMHlYeHw5VEwETFhoSFy
 QUDg9ZV1kYEgtZQVlJS0lVSkpCVUlIVUpCQ1lXWRYaDxIVHRRZQVlPS0hVSktJQkxNTFVKS0tVS1
 kG
X-HM-Tid: 0a96c99ab94303a1kunm14e302593
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ODY6SCo4AjE0NjoKPygULDEB
 GhlPCxdVSlVKTE9MSkhCS0NITU5PVTMWGhIXVQESFxIVOwgeDlUeHw5VGBVFWVdZEgtZQVlJS0lV
 SkpCVUlIVUpCQ1lXWQgBWUFJSE5NNwY+
X-Mailman-Approved-At: Wed, 14 May 2025 20:41:36 +0000
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 b=mjEXS3eTpXS+FDtgFSehxjOzXHe3QpO1wPmQbjgdlqYXAgB+cDCIENq9X4jYKK5VbN44pdMbV2TpRcLHMmnylKvRAkxrllmuj7nD5djWfCdFm/juAZQPW33OtTkAue0TPhCymzpFFChWcDEFwScErynzIv6GWxiwnBn4dd8UdUA=;
 c=relaxed/relaxed; s=default; d=seu.edu.cn; v=1; 
 bh=6tUASdzJci1Yz0hXdfUtvYYXTCY4KP/E4lVG3TUYqMA=;
 h=date:mime-version:subject:message-id:from;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=seu.edu.cn
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=seu.edu.cn header.i=@seu.edu.cn header.a=rsa-sha256
 header.s=default header.b=mjEXS3eT
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe/ipsec: use memzero_explicit()
 for stack SA structs
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

On Mon, May 12, 2025 at 02:53:12PM+0200, Dawid Osuchowski wrote:
> Thanks for your patch.
> 
> Please use the correct target iwl-net for fixes, iwl-next for features 
> and others.
> 
> Maybe add a tag? Fixes: 63a67fe229ea ("ixgbe: add ipsec offload add and 
> remove SA")
> 
> In the future when sending patches against Intel networking drivers 
> please send them directly To: intel-wired-lan@lists.osuosl.org and Cc: 
> netdev@vger.kernel.org.
> 
OK, I will resend the patch to the iwl-net branch and include the Fixes 
tag. Before I do that, I noticed that in ixgbe_ipsec_add_sa() we clear 
the Tx SA struct with memset 0 on key-parsing failure but do not clear 
the Rx SA struct in the corresponding error path:

617     /* get the key and salt */
618     ret = ixgbe_ipsec_parse_proto_keys(xs, rsa.key, &rsa.salt);
619     if (ret) {
620         NL_SET_ERR_MSG_MOD(extack,
                              "Failed to get key data for Rx SA table");
621         return ret;      /* <- no memzero_explicit() here */
622     }
...
728     if (ret) {
729         NL_SET_ERR_MSG_MOD(extack,
                              "Failed to get key data for Tx SA table");
730         memset(&tsa, 0, sizeof(tsa));
731         return ret;      /* <- clears tsa on error */
732     }

Both paths return immediately on key-parsing failure, should I add a 
memzero_explicit(&rsa, sizeof(rsa)) before Rx-SA's return or remove the 
memset(&tsa, ...) in the Tx-SA path to keep them consistent?

Best Regards,
Zilin Guan
