Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 709ED67D1E9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jan 2023 17:40:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BEA48822C4;
	Thu, 26 Jan 2023 16:40:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BEA48822C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674751246;
	bh=z4nbGRVujCoXWgSLtZ9a/naWZ2rW/pTlLkYiiIVcbbM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=jdq/FaSFDAmfh6Bvg0DuEhKrorr25jAvippeY/hF4ncOXrtG6p32W0gaDGEbM+ost
	 UcbHDl8o1mPQq5nAt7l5Xfc/RzZ8Pr4BILoTOASYJJUYRFzRN2dE0VwyX82qL2jfXb
	 T3/4ZiGZp5CfvSx/cqYNz24ppSiF1HV1tred3hwQQu0sNBE03lZ1fF/NIrhtQM3vk6
	 qFzRK77ZPF3DW8q4FR5YP1hIPtJ7iyTSMMk29PI4rnk7ARl0rDla0tvLr/9OsEM+jW
	 p8C78llsHQAOzqV1P+uJ8RsZgNbfqC8MW+EBSTNMjojSwYU1WJvLh8wddXskwtz9KF
	 hQ4BPTZuwKd6A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6zctvOoNVLmQ; Thu, 26 Jan 2023 16:40:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C357B81EC0;
	Thu, 26 Jan 2023 16:40:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C357B81EC0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E49091BF48D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 13:56:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C6FA060DB7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 13:56:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6FA060DB7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i7oQ08F2vCY4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jan 2023 13:56:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D380360E34
Received: from exchange.fintech.ru (exchange.fintech.ru [195.54.195.159])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D380360E34
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 13:56:04 +0000 (UTC)
Received: from Ex16-01.fintech.ru (10.0.10.18) by exchange.fintech.ru
 (195.54.195.169) with Microsoft SMTP Server (TLS) id 14.3.498.0; Thu, 26 Jan
 2023 16:55:58 +0300
Received: from KANASHIN1.fintech.ru (10.0.253.125) by Ex16-01.fintech.ru
 (10.0.10.18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4; Thu, 26 Jan
 2023 16:55:57 +0300
From: Natalia Petrova <n.petrova@fintech.ru>
To: <stable@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Thu, 26 Jan 2023 16:55:54 +0300
Message-ID: <20230126135555.11407-1-n.petrova@fintech.ru>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.0.253.125]
X-ClientProxiedBy: Ex16-01.fintech.ru (10.0.10.18) To Ex16-01.fintech.ru
 (10.0.10.18)
X-Mailman-Approved-At: Thu, 26 Jan 2023 16:40:41 +0000
Subject: [Intel-wired-lan] [PATCH 5.10 0/1] i40e: Add checking for null for
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

The remark about the error code by Simon Horman <simon.horman@corigine.com> was taken into account.
Return value -ENOENT was changed to -EINVAL.

Found by Linux Verification Center (linuxtesting.org) with SVACE.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
