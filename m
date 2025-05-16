Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E988AB9F9E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 17:15:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4AA583211;
	Fri, 16 May 2025 15:15:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TeVTqr2gN6pq; Fri, 16 May 2025 15:15:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28A92824F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747408525;
	bh=r9HPR2Umq66bOFDAt1v/K5AmzV1bsBJKAHkqRRyKngg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=q1s/IQWG0GKOq25aFjeXiUKI/ML/+qGliDHoAGjPoK4rwhSAIboJQFj0R027t3i+d
	 GWVSM6T1p6XBNajiySN9WLBswxrGXGFxadexi/WKkt7tMCljCptqR7qHMjoSO+gIY7
	 Eqi5XY8cRUgOXRwbu54qX8LH/hbLMdUbWlqXJ0O79N7aWHAYyC7PqL3h1d80GOJjhp
	 e1AokpcGciAVSJRwBk4CGPFvZkT8TrG99kJXGexGyoVZsMJ/OYrUXLL12hpqY6k34f
	 E0FTTeivXgqaOHhoIgXu3MVCDXQe5FrkZtidDJ64pWYCV5f5MWKppEYzjRpF8BEV9i
	 9jNjA+xQeOyWQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28A92824F4;
	Fri, 16 May 2025 15:15:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id CB006185
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 15:04:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B102961306
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 15:04:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2P4Lyf79NNH1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 15:04:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.254.49.198;
 helo=mail-m49198.qiye.163.com; envelope-from=zilin@seu.edu.cn;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 55CC9612D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55CC9612D8
Received: from mail-m49198.qiye.163.com (mail-m49198.qiye.163.com
 [45.254.49.198])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 55CC9612D8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 15:04:06 +0000 (UTC)
Received: from localhost.localdomain (unknown [202.119.23.198])
 by smtp.qiye.163.com (Hmail) with ESMTP id 1550f62fe;
 Fri, 16 May 2025 23:04:01 +0800 (GMT+08:00)
From: Zilin Guan <zilin@seu.edu.cn>
To: przemyslaw.kitszel@intel.com
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net,
 dawid.osuchowski@linux.intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, jianhao.xu@seu.edu.cn, kuba@kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, pabeni@redhat.com,
 zilin@seu.edu.cn
Date: Fri, 16 May 2025 15:04:00 +0000
Message-Id: <20250516150400.512375-1-zilin@seu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <9dd26263-54d9-4abb-bb46-d3cb089a9c21@intel.com>
References: <9dd26263-54d9-4abb-bb46-d3cb089a9c21@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDHx0dVhhDSB5KQk9PHh8aQ1YeHw5VEwETFhoSFy
 QUDg9ZV1kYEgtZQVlJS0lVSkpCVUlIVUpCQ1lXWRYaDxIVHRRZQVlPS0hVSktISk9ITFVKS0tVSk
 JLS1kG
X-HM-Tid: 0a96d99fa8d303a1kunm1550f62fe
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6KzI6Hjo5NDExKjQDCwwLSBYO
 Nz5PCxRVSlVKTE9MT0tMQ09JTkJLVTMWGhIXVQESFxIVOwgeDlUeHw5VGBVFWVdZEgtZQVlJS0lV
 SkpCVUlIVUpCQ1lXWQgBWUFKTENLNwY+
X-Mailman-Approved-At: Fri, 16 May 2025 15:15:23 +0000
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 b=Ph9zdwHyFdULmgbPsFBaM1pAyP74J747hMqTwy8oMW/QC5b708X9tmRcIcfwZS2i7XucFVBws578JC6CrXWsX96W85FN9i9WBewShXhiNyzUIHsBUC9L1RKZPabJRPR1csgwfAhVqnTBPya/SqPBjVRxPDg8EWEIw7eSJw+TlmY=;
 c=relaxed/relaxed; s=default; d=seu.edu.cn; v=1; 
 bh=r9HPR2Umq66bOFDAt1v/K5AmzV1bsBJKAHkqRRyKngg=;
 h=date:mime-version:subject:message-id:from;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=seu.edu.cn
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=seu.edu.cn header.i=@seu.edu.cn header.a=rsa-sha256
 header.s=default header.b=Ph9zdwHy
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

On Thu, May 15, 2025 at 11:27:22AM+0200, Przemek Kitszel wrote:
> the general rule is to memzero_explicit() memory that was holding secure
> content
> --
> to have full picture: it is fine to memset() such storage prior to use,
> it is also fine to combine related changes in one commit/one series
> 
> re stated purpose of the patch:
> I see @rsa cleaned in just one exit point of ixgbe_ipsec_add_sa(),
> instead of all of them, so v2 seems warranted

Hi Przemek,

Thank you for your detailed feedback and clarification.

As Dawid pointed out, while @rsa is cleared at one exit point in 
ixgbe_ipsec_add_sa(), another exit path, at which we fail to acquire the 
RX SA table, leaves rsa.key and rsa.salt zeroed. Does this imply there's
no sensitive data to clear in this case? If so, would using memset() on 
the symmetric error path in @tsa be redundant, or am I overlooking 
something?

I'd appreciate your thoughts on this.

Best regards,
Zilin Guan
