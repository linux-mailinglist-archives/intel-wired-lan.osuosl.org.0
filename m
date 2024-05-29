Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4378D3F76
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2024 22:19:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2DC91412FC;
	Wed, 29 May 2024 20:19:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fluAxcObzAF7; Wed, 29 May 2024 20:19:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2145441368
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717013986;
	bh=GxJs1WVoJSd7+sht3bBoDE5qCRP/4E9CoNsSS/M0J+M=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jmf3XxdkfW7cDI3fjNTot8gY/gQdIyIq/FR9c6v/3jdjXIZ7/nFTs3KRY/XliaDEx
	 grbpo9M/GdIIINVVz8u83+D+JsvpwTdG+DRPfrpKYO1CQEaIXk9UBZ1FtL6CsyqYOq
	 tgp+5ghmWf4B5u7hCe6+p4bXeXYL8y4ohDYWrLutLFfeKNLYccPBtoswLdjgxURJFA
	 4G7L5CvAa5DH0Jjf35X5v0OabYoEHsIAbXzp8viCAP19xIdWyeD+uYHJ6NNsdAIPEY
	 Z5rm+Nxdv2wN5bv6nbfk1dbxBNe+Btkip/uFimliIuMH1YOkPFwoyAutJ5hF/DYz48
	 RcDzscZ7Deodw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2145441368;
	Wed, 29 May 2024 20:19:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DB5BF1BF359
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 20:19:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C67D0821F1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 20:19:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5Zguxkbtfos6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 May 2024 20:19:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8DEBB821EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DEBB821EC
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8DEBB821EC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 20:19:40 +0000 (UTC)
Received: from [10.0.45.140] (unknown [62.214.191.67])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id E9D9E61E5FE3E;
 Wed, 29 May 2024 22:19:00 +0200 (CEST)
Message-ID: <971a2c3b-1cd9-48c5-aa50-e3c441277f0a@molgen.mpg.de>
Date: Wed, 29 May 2024 22:18:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: En-Wei WU <en-wei.wu@canonical.com>
References: <20240528100315.24290-1-en-wei.wu@canonical.com>
 <88c6a5ee-1872-4c15-bef2-dcf3bc0b39fb@molgen.mpg.de>
 <CAMqyJG0uUgjN90BqjXSfgq7HD3ACdLwOM8P2B+wjiP1Zn1gjAQ@mail.gmail.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <CAMqyJG0uUgjN90BqjXSfgq7HD3ACdLwOM8P2B+wjiP1Zn1gjAQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH] ice: irdma hardware init failed after
 suspend/resume
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
Cc: netdev@vger.kernel.org, rickywu0421@gmail.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear En-Wei,


Thank you for responding so quickly.

Am 29.05.24 um 05:17 schrieb En-Wei WU:

[…]

>> What effect does this have on resume time?
> 
> When we call ice_init_rdma() at resume time, it will allocate entries
> at pf->irq_tracker.entries and update pf->msix_entries for later use
> (request_irq) by irdma.

Sorry for being unclear. I meant, does resuming the system take longer 
now? (initcall_debug might give a clue.)


Kind regards,

Paul
