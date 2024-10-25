Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEB49AF82B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Oct 2024 05:30:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D543E608CC;
	Fri, 25 Oct 2024 03:30:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fpf06N8sj3qo; Fri, 25 Oct 2024 03:30:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33E9160844
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729827037;
	bh=fcUFP+LNg9j8UmFxMEt8RXpodrUaU+ioDNgHmKbZ8/k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QNjB5JcGc9w4YpD6w3Tp/bbUZ7l3Npp6cIZc/yQyazg9b5m34jof56NkV6MHhlij2
	 DdqoJKJPTsPJbhCXax3uJ1EwSImdNuGYngqWIrFYdaJ3BfUld9akjIeXEzCoAzBVjQ
	 jmAOQLB6o810MjXY3qVei4Xmes8IJEbPawXSR24G5zw4goh2lz/4T+YzZjBMk1NR/n
	 7N6e/s4qfJGhKOCwgDP782rxDJfAqp+S8pgy7ur/kyblQ8Hri6AoLShJOzHHyU6EHT
	 AxnLZMY7vpiljW0IjtZKHtzWJKT7hjlhLAiueAFYhpjs9a0F89/oCPoMvs1V41KBGB
	 5/iOhO57ZNF4w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33E9160844;
	Fri, 25 Oct 2024 03:30:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1E2C9497A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 03:30:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F33DB40112
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 03:30:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GeDjE6rd87RJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Oct 2024 03:30:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.191;
 helo=szxga05-in.huawei.com; envelope-from=yuehaibing@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5E789400D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E789400D0
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5E789400D0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 03:30:33 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.163.44])
 by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4XZStk3cX3z1jvrM;
 Fri, 25 Oct 2024 11:29:02 +0800 (CST)
Received: from dggpemf500002.china.huawei.com (unknown [7.185.36.57])
 by mail.maildlp.com (Postfix) with ESMTPS id A70941400DC;
 Fri, 25 Oct 2024 11:30:27 +0800 (CST)
Received: from [10.174.179.113] (10.174.179.113) by
 dggpemf500002.china.huawei.com (7.185.36.57) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Fri, 25 Oct 2024 11:30:26 +0800
Message-ID: <b4332982-2b57-9e54-8225-cd6bee7d2cf8@huawei.com>
Date: Fri, 25 Oct 2024 11:30:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>, Simon Horman <horms@kernel.org>
References: <20241022065623.1282224-1-yuehaibing@huawei.com>
 <20241022073225.GO402847@kernel.org>
 <584b87a4-4a69-4119-bcd8-d4561f41ed53@intel.com>
From: Yue Haibing <yuehaibing@huawei.com>
In-Reply-To: <584b87a4-4a69-4119-bcd8-d4561f41ed53@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.174.179.113]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpemf500002.china.huawei.com (7.185.36.57)
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: Re: [Intel-wired-lan] [PATCH v3 net 0/4] Fix passing 0 to ERR_PTR
 in intel ether drivers
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
Cc: alexander.h.duyck@intel.com, andre.guedes@intel.com,
 maciej.fijalkowski@intel.com, hawk@kernel.org, daniel@iogearbox.net,
 jithu.joseph@intel.com, przemyslaw.kitszel@intel.com, john.fastabend@gmail.com,
 ast@kernel.org, linux-kernel@vger.kernel.org, edumazet@google.com,
 netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, bpf@vger.kernel.org,
 pabeni@redhat.com, davem@davemloft.net, vedang.patel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2024/10/23 3:17, Jacob Keller wrote:
> 
> 
> On 10/22/2024 12:32 AM, Simon Horman wrote:
>> On Tue, Oct 22, 2024 at 02:56:19PM +0800, Yue Haibing wrote:
>>> Fixing sparse error in xdp run code by introducing new variable xdp_res
>>> instead of overloading this into the skb pointer as i40e drivers done
>>> in commit 12738ac4754e ("i40e: Fix sparse errors in i40e_txrx.c") and
>>> commit ae4393dfd472 ("i40e: fix broken XDP support").
>>>
>>> v3: Fix uninitialized 'xdp_res' in patch 3 and 4 which Reported-by
>>>     kernel test robot
>>> v2: Fix this as i40e drivers done instead of return NULL in xdp run code
>>
>> Hi Yue Haibing, all,
>>
>> I like these changes a lot. But I do wonder if it would
>> be more appropriate to target them at net-next (or iwl-next)
>> rather than net, without Fixes tags. This is because they
>> don't seem to be fixing (user-visible) bugs. Am I missing something?
>>
>> ...
> 
> Yea, these do seem like next candidates.

Should I resend this serial target to iwl-next?
> 
> .
