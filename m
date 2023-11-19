Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC84C7F186B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Nov 2023 17:18:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B274A40641;
	Mon, 20 Nov 2023 16:18:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B274A40641
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700497126;
	bh=+Df25T2A8AUw5VYVb81y9CPfeS+o60pslIcMyA3RnbM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HmDz7bAz+EWbvV+ISL3TbVknatJijpHi4xOszwbONU4R4sRcFvQky0wD+ocRjr2R2
	 dDPul6kNCThgbIE/fdGJuUW80Vp4+P+ot+NjMixMsAoPj9H8Gtuub3U33VMVzLMcdo
	 +MEI4zDcTMHt/dyJIJcnQPuX+grooa3mkeniCOPyz8iJboH8UAa6MaBUho9QoPpdCW
	 TAQpWZF5XcPwSvO7zuN7H35E6jLT55RfHFvDLBpDZdAu4dipRQBnlMF+6zDjaaTFvT
	 X/CfKWyDeuBLusy163W9UiReAbC8j6C4pSrkOYM27asmGyXqvtbvnmr0UCRSL8zPgy
	 80RGLC5UKu8mQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Iafn4hHPC36D; Mon, 20 Nov 2023 16:18:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5D33840146;
	Mon, 20 Nov 2023 16:18:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D33840146
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 094BB1BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Nov 2023 15:12:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C58DC414C0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Nov 2023 15:12:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C58DC414C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C_08Xdwx5AmQ for <intel-wired-lan@lists.osuosl.org>;
 Sun, 19 Nov 2023 15:12:37 +0000 (UTC)
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn [124.126.103.232])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F2A54148A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Nov 2023 15:12:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F2A54148A
X-UUID: 6c250ce1d55348c79c4c5818169f97d0-20231119
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32, REQID:d4da5ac2-ed14-4e38-acb0-0604abae64ca, IP:5,
 U
 RL:0,TC:0,Content:0,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
 N:release,TS:-10
X-CID-INFO: VERSION:1.1.32, REQID:d4da5ac2-ed14-4e38-acb0-0604abae64ca, IP:5,
 URL
 :0,TC:0,Content:0,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
 release,TS:-10
X-CID-META: VersionHash:5f78ec9, CLOUDID:1a5a3a60-c89d-4129-91cb-8ebfae4653fc,
 B
 ulkID:231119230408XYBZ5UP2,BulkQuantity:1,Recheck:0,SF:19|44|64|66|24|17|1
 02,TC:nil,Content:0,EDM:-3,IP:-2,URL:0,File:nil,Bulk:40,QS:nil,BEC:nil,COL
 :0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_FSI,TF_CID_SPAM_SNR,TF_CID_SPAM_FAS,TF_CID_SPAM_FSD
X-UUID: 6c250ce1d55348c79c4c5818169f97d0-20231119
X-User: chentao@kylinos.cn
Received: from [172.20.15.254] [(116.128.244.169)] by mailgw
 (envelope-from <chentao@kylinos.cn>) (Generic MTA)
 with ESMTP id 1611530766; Sun, 19 Nov 2023 23:12:10 +0800
Message-ID: <4b551600-f1a3-4efe-b3e9-99cb4536f487@kylinos.cn>
Date: Sun, 19 Nov 2023 23:12:09 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20231113093112.GL705326@kernel.org>
 <20231115031444.33381-1-chentao@kylinos.cn>
 <55e07c56-da57-41aa-bc96-e446fad24276@intel.com>
From: Kunwu Chan <chentao@kylinos.cn>
In-Reply-To: <55e07c56-da57-41aa-bc96-e446fad24276@intel.com>
X-Mailman-Approved-At: Mon, 20 Nov 2023 16:18:40 +0000
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: Use correct buffer size
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
Cc: kunwu.chan@hotmail.com, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com,
 horms@kernel.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net, shannon.nelson@amd.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Alexander,
Thank you so much for your reply, I looked at the modification you 
mentioned, it's really cool. I'll definitely try it next time.

But when using it, will it be easy to forget to free up memory?
Although 'kmalloc_track_caller' is used, according to my understanding, 
it is also necessary to release the memory at the end of use.

On 2023/11/15 23:39, Alexander Lobakin wrote:
> From: Kunwu Chan <chentao@kylinos.cn>
> Date: Wed, 15 Nov 2023 11:14:44 +0800
> 
>> The size of "i40e_dbg_command_buf" is 256, the size of "name"
>> depends on "IFNAMSIZ", plus a null character and format size,
>> the total size is more than 256, fix it.
>>
>> Signed-off-by: Kunwu Chan <chentao@kylinos.cn>
>> Suggested-by: Simon Horman <horms@kernel.org>
>> ---
>>   drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
>> index 999c9708def5..e3b939c67cfe 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
>> @@ -72,7 +72,7 @@ static ssize_t i40e_dbg_command_read(struct file *filp, char __user *buffer,
>>   {
>>   	struct i40e_pf *pf = filp->private_data;
>>   	int bytes_not_copied;
>> -	int buf_size = 256;
>> +	int buf_size = IFNAMSIZ + sizeof(i40e_dbg_command_buf) + 4;
> 
> Reverse Christmas Tree style? Should be the first one in the declaration
> list.
> 
>>   	char *buf;
>>   	int len;
> 
> You can fix it in a different way. Given that there's a kzalloc() either
> way, why not allocate the precise required amount of bytes by using
> kasprintf() instead of kzalloc() + snprintf()? You wouldn't need to
> calculate any buffer sizes etc. this way.
> 
> Thanks,
> Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
