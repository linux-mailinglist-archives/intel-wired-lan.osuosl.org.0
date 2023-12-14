Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F30812898
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 07:52:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F033402CA;
	Thu, 14 Dec 2023 06:52:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F033402CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702536777;
	bh=Bc3iQ4HUuKDeeU0rinuB3yBo8cYPiCAIrBAoVQr4Zig=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mX0zbsYs7hUipMEYHsMQApWoG+jMq0RRb9na6M0vXKso+72sz2H5Pcx4fOkV4NCDT
	 XHfzPu87h4+91/MB1G3NCIBWIbiJYUlR/Ycx/jpnPdOefVrJYk915Va5ib5k8pzMVl
	 G9r1zM8wM8CQi0EFevc9GRLD2v/5Fs9JG5CnF+9/AQDWWpEU/ld2bqtp8NBnFfrT92
	 fLtfdXZgVKmARlPvMR8RNfwkECdF9mqimw7NkzDwLN/494tpFJnfZhDXxbFZe7byJD
	 3i4rnCuTWN4M13dcVX3lR571TxbxLsHjdzs7x9htZKkpIrJa4TKaMFsuVsQkLYTDJ9
	 lIvyXU6BFPmgA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oY2wHLfTzhF9; Thu, 14 Dec 2023 06:52:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF10340284;
	Thu, 14 Dec 2023 06:52:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF10340284
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B4AF31BF335
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 06:52:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 87BD083B67
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 06:52:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 87BD083B67
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LRpDyYy95thi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 06:52:49 +0000 (UTC)
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn [124.126.103.232])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4DE4383BC7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 06:52:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DE4383BC7
X-UUID: a8a7e8588f3945dca372922d586ad599-20231214
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.33, REQID:3e35a9ac-60c8-4a01-8c7d-96e47a71c586, IP:5,
 U
 RL:0,TC:0,Content:0,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
 N:release,TS:-10
X-CID-INFO: VERSION:1.1.33, REQID:3e35a9ac-60c8-4a01-8c7d-96e47a71c586, IP:5,
 URL
 :0,TC:0,Content:0,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
 release,TS:-10
X-CID-META: VersionHash:364b77b, CLOUDID:308d2f61-c89d-4129-91cb-8ebfae4653fc,
 B
 ulkID:231214144607IFAQKYW0,BulkQuantity:0,Recheck:0,SF:19|44|64|66|24|17|1
 02,TC:nil,Content:0,EDM:-3,IP:-2,URL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,CO
 L:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_FAS,TF_CID_SPAM_FSD,TF_CID_SPAM_FSI
X-UUID: a8a7e8588f3945dca372922d586ad599-20231214
X-User: chentao@kylinos.cn
Received: from [172.20.15.254] [(116.128.244.169)] by mailgw
 (envelope-from <chentao@kylinos.cn>) (Generic MTA)
 with ESMTP id 1396760837; Thu, 14 Dec 2023 14:46:07 +0800
Message-ID: <ae686e04-b65c-4a4d-b208-076136bae070@kylinos.cn>
Date: Thu, 14 Dec 2023 14:46:06 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20231211025927.233449-1-chentao@kylinos.cn>
 <20231212132851.59054654@kernel.org>
From: Kunwu Chan <chentao@kylinos.cn>
In-Reply-To: <20231212132851.59054654@kernel.org>
Subject: Re: [Intel-wired-lan] [PATCH] iavf: Fix null pointer dereference in
 iavf_print_link_message
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
Sure, the only thing 'iavf_print_link_message' do is to print a msg by 
netdev_info.

The 'iavf_virtchnl_completion' assume that no errors will be returned.
Whether we could just execute 'netdev_info(netdev, "NIC Link is Up Speed 
is %s Full Duplex\n", speed? speed :"");' when 'speed' is null.


Before commit '1978d3ead82c8', the buffer size is '#define 
IAVF_MAX_SPEED_STRLEN  13', whether we could use a bigger buffer
size to avoid a null pointer.

Such as '#define IAVF_MAX_SPEED_STRLEN 48'.


On 2023/12/13 05:28, Jakub Kicinski wrote:
> On Mon, 11 Dec 2023 10:59:27 +0800 Kunwu Chan wrote:
>> kasprintf() returns a pointer to dynamically allocated memory
>> which can be NULL upon failure.
>>
>> Fixes: 1978d3ead82c ("intel: fix string truncation warnings")
> 
> No need for the allocation here, print to a buffer on the stack.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
