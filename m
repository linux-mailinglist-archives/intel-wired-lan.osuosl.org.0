Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C4024AB7734
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 May 2025 22:41:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D04180B1B;
	Wed, 14 May 2025 20:41:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CgcpIXW-ycPD; Wed, 14 May 2025 20:41:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C17AC80A60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747255299;
	bh=l8Yr1CSkPkOtqf6fgw4DQxke/6uqpIqLiUd46wrdXKo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oA0lLgyo8BYkot2QvL6pVjEZXAQoMHYfm4nwD+BXA7G+I6W9j5lV10L2Nrez+Itvn
	 iShfloy1luVJp9eMsaws9QwFeU06avfjScr8bYrrtO3iqjODW9u/2mNd4cVx1yvBkd
	 zRrb69+ib3SnTXvBgn2An0mk5vY7l8mQZrKff/BvYrqFDu/xNOd3/0uhwt8v2WWvEg
	 5UPTR3TbPMrkLqKdmlRrvpPuPqeI9qXNl4arbZNSUtoSmULvYeCrn/weZ0XztwzMYF
	 5xYtqRwBbanQPwG6pAZJMTFwuT8F6EEK7F7TvsZ3SYKsrWXDVR91qOtyxSFgUvjSeK
	 +uvEnUza1LAgA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C17AC80A60;
	Wed, 14 May 2025 20:41:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4B05912A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 13:32:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3B87D40D81
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 13:32:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Eo8_tUIEX43b for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 May 2025 13:32:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=101.71.155.101;
 helo=mail-m155101.qiye.163.com; envelope-from=zilin@seu.edu.cn;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CD13A40C21
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD13A40C21
Received: from mail-m155101.qiye.163.com (mail-m155101.qiye.163.com
 [101.71.155.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CD13A40C21
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 13:32:00 +0000 (UTC)
Received: from localhost.localdomain (unknown [202.119.23.198])
 by smtp.qiye.163.com (Hmail) with ESMTP id 14e429d87;
 Tue, 13 May 2025 21:31:53 +0800 (GMT+08:00)
From: Zilin Guan <zilin@seu.edu.cn>
To: dawid.osuchowski@linux.intel.com
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 jianhao.xu@seu.edu.cn, kuba@kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, pabeni@redhat.com, przemyslaw.kitszel@intel.com,
 zilin@seu.edu.cn
Date: Tue, 13 May 2025 13:31:52 +0000
Message-Id: <20250513133152.4071482-1-zilin@seu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <170f287e-23b1-468b-9b59-08680de1ecf1@linux.intel.com>
References: <170f287e-23b1-468b-9b59-08680de1ecf1@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCT01DVk0eSEsfTktKQxhNTVYeHw5VEwETFhoSFy
 QUDg9ZV1kYEgtZQVlJS0lVSkpCVUlIVUpCQ1lXWRYaDxIVHRRZQVlPS0hVSktISk9ITFVKS0tVSk
 JLS1kG
X-HM-Tid: 0a96c9d83ba403a1kunm14e429d87
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NRg6Djo5CTE9UToUMzEhHyIT
 CSMwCktVSlVKTE9MSk9ISkpPQktMVTMWGhIXVQESFxIVOwgeDlUeHw5VGBVFWVdZEgtZQVlJS0lV
 SkpCVUlIVUpCQ1lXWQgBWUFKSU5INwY+
X-Mailman-Approved-At: Wed, 14 May 2025 20:41:36 +0000
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 b=fH+YppnTV23L9Mdg8mnyZ3T6Y6/o30N+4dgO+bUS8CZP/+3Kp6jRymt7IwrA0ZPYFKwIBJuDr0hGwW8CgxD8RDsk0pZidqIGCoIH97c0uhPxxWv+jPbYzFY7Z2BkDudLBPpR0aPtu+FrngPUX9oF7DACN+xu+bj9N2vKUpEmUwU=;
 c=relaxed/relaxed; s=default; d=seu.edu.cn; v=1; 
 bh=l8Yr1CSkPkOtqf6fgw4DQxke/6uqpIqLiUd46wrdXKo=;
 h=date:mime-version:subject:message-id:from;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=seu.edu.cn
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=seu.edu.cn header.i=@seu.edu.cn header.a=rsa-sha256
 header.s=default header.b=fH+YppnT
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

On Tue, May 13, 2025 at 12:24:41PM+0000, Zilin Guan wrote:
> Both paths return immediately on key-parsing failure, should I add a 
> memzero_explicit(&rsa, sizeof(rsa)) before Rx-SA's return or remove the 
> memset(&tsa, ...) in the Tx-SA path to keep them consistent?
> 
> Best Regards,
> Zilin Guan

If this change is required, should I submit it as a new standalone patch, 
or include it in a v2 of the existing patch series?
