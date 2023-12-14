Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 716F4812566
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 03:45:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0B0361AE5;
	Thu, 14 Dec 2023 02:45:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0B0361AE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702521911;
	bh=6jdBf/wmpw9dGBlXznCCYCopBWIBM5j6NwmAl3xAqgU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L02aSL/Vnq6xZ6/uyIn0KZFwe8z/xQqcGkja1R7h10bAhRC36WSO8hnh8wp4VvirS
	 HMwdfvFJaWLfhmXLllvzoF87offDnz+SoA9ns0d/y8OI779cyYdSvxy5fK6MTPxW0u
	 8yyngORMA9oSClLR0XT+Yk/Vwg+rP0afCMaPnZ5ZNDAC66Ua4/Pp1UQIxMpVCmYJmR
	 CqBh3ZrILkwup5iUV036ja0ART+PPNGz+Oh2BrThODWPzB1q6hFNTviJSFGjAEqzEw
	 KHtcO7JUjG4aIZs6u+JR0HEXFumemVXl1O+nF8BE6mKzGAqW4lxD/Th+ZvBseSQuir
	 0tY5Va5pMiCOg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fT4Y8343Jvar; Thu, 14 Dec 2023 02:45:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCE9F61AD5;
	Thu, 14 Dec 2023 02:45:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CCE9F61AD5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B15621BF47F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 02:45:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 95CDC83A82
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 02:45:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95CDC83A82
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rJKW8vllGfJW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 02:45:03 +0000 (UTC)
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn [124.126.103.232])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 88AB1839C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 02:45:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88AB1839C0
X-UUID: 5c39719a134f4eef9e0ffa98abcdc5f6-20231214
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.33, REQID:6d9f5f62-07da-4d5b-a2a1-77fc2a26c4b6, IP:5,
 U
 RL:0,TC:0,Content:0,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
 N:release,TS:-10
X-CID-INFO: VERSION:1.1.33, REQID:6d9f5f62-07da-4d5b-a2a1-77fc2a26c4b6, IP:5,
 URL
 :0,TC:0,Content:0,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
 release,TS:-10
X-CID-META: VersionHash:364b77b, CLOUDID:91082d61-c89d-4129-91cb-8ebfae4653fc,
 B
 ulkID:231214104438TKVN4X1A,BulkQuantity:0,Recheck:0,SF:17|19|44|64|66|24|1
 02,TC:nil,Content:0,EDM:-3,IP:-2,URL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,CO
 L:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_FSD,TF_CID_SPAM_FSI,TF_CID_SPAM_SNR,TF_CID_SPAM_FAS
X-UUID: 5c39719a134f4eef9e0ffa98abcdc5f6-20231214
X-User: chentao@kylinos.cn
Received: from [172.20.15.254] [(116.128.244.169)] by mailgw
 (envelope-from <chentao@kylinos.cn>) (Generic MTA)
 with ESMTP id 238258755; Thu, 14 Dec 2023 10:44:37 +0800
Message-ID: <9250b0e9-360d-447d-b4bf-30e4bc4f697c@kylinos.cn>
Date: Thu, 14 Dec 2023 10:44:35 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20231211031336.235634-1-chentao@kylinos.cn>
 <20231212132637.1b0fb8aa@kernel.org>
Content-Language: en-US
From: Kunwu Chan <chentao@kylinos.cn>
In-Reply-To: <20231212132637.1b0fb8aa@kernel.org>
Subject: Re: [Intel-wired-lan] [PATCH] igb: Add null pointer check to
 igb_set_fw_version
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
Cc: Kunwu Chan <kunwu.chan@hotmail.com>, przemyslaw.kitszel@intel.com,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, jacob.e.keller@intel.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thanks for your reply.

I'll try to use snprintf in v2 patch.


On 2023/12/13 05:26, Jakub Kicinski wrote:
> On Mon, 11 Dec 2023 11:13:36 +0800 Kunwu Chan wrote:
>> kasprintf() returns a pointer to dynamically allocated memory
>> which can be NULL upon failure.
>>
>> Fixes: 1978d3ead82c ("intel: fix string truncation warnings")
>> Cc: Kunwu Chan <kunwu.chan@hotmail.com>
>> Signed-off-by: Kunwu Chan <chentao@kylinos.cn>
> 
> The allocation is rather pointless here.
> Can you convert this code to use snprintf() instead?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
