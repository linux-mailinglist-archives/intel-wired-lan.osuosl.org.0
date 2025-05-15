Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 25389AB8821
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 May 2025 15:35:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46CC760909;
	Thu, 15 May 2025 13:35:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MpUfzc0yUvVv; Thu, 15 May 2025 13:35:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B499A6111F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747316155;
	bh=/DPsrwmF974vCBzbWVGcNP7I9w/35MqrbcKI8oMydv0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1a3cair6oRBCyPB9b6ffGaEWBHpVescu4B5MNKgaVnskkWxaHBorUD26hrxSzqnvP
	 AVdwN3s55EYc89m8iIPbEA4Fi4XF44GBOHITlk2rMd6so6Z+WBxSYXLHMmHcjZA6QX
	 A/xBVhgj93ozvyqz5V8pa19Z2vBY3Soq7pOCTGvZZZrQhy2JA1UKyLPY/8UuS7JiU/
	 nd78X6Y91cXuEvJEqUvJgqo/R6eKh0Kiklui2n6RQ6JcmlxZvxuWFS//37WItOkt05
	 wub75E7tBGehxH6OXiJkX07QWaImZ0PdN9RkeHQfTIVyDhktKO1tKuw3kgHTPg6sLn
	 yWmFQLVU8JjPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B499A6111F;
	Thu, 15 May 2025 13:35:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2BDB813D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 13:35:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2821B40962
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 13:35:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bBKMApHCRd9o for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 May 2025 13:35:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 70DBF40237
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 70DBF40237
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 70DBF40237
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 13:35:53 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id BBE8861126;
 Thu, 15 May 2025 13:35:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7600C4CEE7;
 Thu, 15 May 2025 13:35:50 +0000 (UTC)
Date: Thu, 15 May 2025 06:35:49 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: <long.yunjian@zte.com.cn>
Cc: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <fang.yumeng@zte.com.cn>, <xu.lifeng1@zte.com.cn>,
 <ouyang.maochun@zte.com.cn>, <mou.yi@zte.com.cn>
Message-ID: <20250515063549.0f7c0a34@kernel.org>
In-Reply-To: <20250515204414844_YQsk90Odo5a3bx9qvo8g@zte.com.cn>
References: <20250515204414844_YQsk90Odo5a3bx9qvo8g@zte.com.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747316151;
 bh=3mpHCNTdw83e6Xd1/Q/RuiqfzIT6w2eWI6KqpTfF1x0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=N5xPPuIIRv1L5ax5/TiPgkKU6kHc0WesdMdEwwtk8AxN2Q7DG6Fh63Nc+9PHiQP4z
 Pu8RxK6WZgQVre3aFVAPL9jxrWWfn4+8xnL6reOVyN+Sy/3LD9P1E++WrqxHgNmYhx
 10DxmTtdfm9B6OmXi/CwFgMldi4ilG3YVT+vk1/1EE6j/XlI2VOBke3Y0uja7R4Ah5
 ghERYicesxT5rWmr8yuOU0/n5zNQsE3Qip+mjB/6XwvWLlPW3eIVbrmllO4iCLq0mg
 vbT8hnVnZ4gxnzDsGgh27kW5ZEEFCB1f+kss5O33niU4wETfippNLxC0UjttwlnR1L
 B0YwDbG25UYWA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=N5xPPuII
Subject: Re: [Intel-wired-lan] [PATCH linux-next] net: e100: Use
 str_read_write() helper
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

On Thu, 15 May 2025 20:44:14 +0800 (CST) long.yunjian@zte.com.cn wrote:
> From: Yumeng Fang <fang.yumeng@zte.com.cn>
> 
> Remove hard-coded strings by using the str_read_write() helper.

Please don't send "string_choices" conversions to netdev.
This is pointless churn.
