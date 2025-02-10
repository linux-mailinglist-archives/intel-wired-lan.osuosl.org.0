Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 616CBA2F9C8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 21:14:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10A104136D;
	Mon, 10 Feb 2025 20:14:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2yc5ISS1RMLy; Mon, 10 Feb 2025 20:14:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4CB3F41348
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739218490;
	bh=PHnXMs2aP1nRZ3kx4/ik8KOkWi00ecq8fsqcNsyvwCo=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vOOYCaqYfGpFsPXKlcBp8gM+yIivVLSXCSmfqq6aj5IR6LLdJlEaQ1hEuNz0JE+dT
	 YhEEdfyouMykBC7TNaGPGisbniDqSaE3E68+N8Ns14fUrtzJ520ryvN/Q4aSSW6Doa
	 RggbgGN7VDcldk6VUnnZQf1i7qSzfannGo47VNJ6H4v30pjNnR9aO/x1TTgQN4/aHj
	 mjIFhkK23dgoqv1y70DM4rTsbiVFrZMCx4Aeq6hJF+7t6FhBogmrrvnZW09elH0zeq
	 pcH5nN0LT1j2syampIbNkQVreDVFL2d071LcZkq8Ohaiv7njincTxXQJ07qeSn2CQQ
	 WdYNI/G174IXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4CB3F41348;
	Mon, 10 Feb 2025 20:14:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D29D5199
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 20:14:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C276D60B9A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 20:14:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n_YZbQ9bVht1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 20:14:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=81.19.149.117;
 helo=mx07lb.world4you.com; envelope-from=gerhard@engleder-embedded.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1A95060B8F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A95060B8F
Received: from mx07lb.world4you.com (mx07lb.world4you.com [81.19.149.117])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1A95060B8F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 20:14:47 +0000 (UTC)
Received: from [88.117.55.1] (helo=[10.0.0.160])
 by mx07lb.world4you.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.97.1)
 (envelope-from <gerhard@engleder-embedded.com>)
 id 1thaAt-000000000NS-1KUN; Mon, 10 Feb 2025 21:14:35 +0100
Message-ID: <b1b3e5e1-b1fe-4816-85eb-61ac7ea2d46d@engleder-embedded.com>
Date: Mon, 10 Feb 2025 21:14:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kurt Kanzenbach <kurt@linutronix.de>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Joe Damato <jdamato@fastly.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20250210-igb_irq-v1-0-bde078cdb9df@linutronix.de>
 <20250210-igb_irq-v1-3-bde078cdb9df@linutronix.de>
Content-Language: en-US
From: Gerhard Engleder <gerhard@engleder-embedded.com>
In-Reply-To: <20250210-igb_irq-v1-3-bde078cdb9df@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AV-Do-Run: Yes
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=engleder-embedded.com; s=dkim11; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PHnXMs2aP1nRZ3kx4/ik8KOkWi00ecq8fsqcNsyvwCo=; b=P1MkszLEP/MF1UfFLY2anAljxH
 jmfuZ/KTuW9qljoZFj8cF/rwd4fmDVJ83YnTjLWO+7etM1qwWU9qWw1bVFphshkdu4CmMubI/9R+i
 Bzbs9YcBdrgtPT2ee4RFxspBAnMda/NQ5q76Cx1xsH4t7Am69PnjXhkZYVIpC1U1SeL8=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=engleder-embedded.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=engleder-embedded.com header.i=@engleder-embedded.com
 header.a=rsa-sha256 header.s=dkim11 header.b=P1MkszLE
Subject: Re: [Intel-wired-lan] [PATCH 3/3] igb: Get rid of spurious
 interrupts
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

On 10.02.25 10:19, Kurt Kanzenbach wrote:
> When running the igc with XDP/ZC in busy polling mode with deferral of hard
> interrupts, interrupts still happen from time to time. That is caused by
> the igc task watchdog which triggers Rx interrupts periodically.

igc or igb?
