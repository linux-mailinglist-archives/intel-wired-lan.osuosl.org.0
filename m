Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8793A9B695D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Oct 2024 17:38:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 000D780A97;
	Wed, 30 Oct 2024 16:38:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ApLxkm1t2KlA; Wed, 30 Oct 2024 16:38:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CFF380CFA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730306310;
	bh=BmnbITv36Uzj2VggHjjupndcn3nKKP8UJIrAOFwp3iU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VGvPhc6+kGGc++0RJccSbi4JJT1gQtm7PjjsQAKQzOTnku9AMn/7mz3jWYRXI7oD8
	 G7dFpSsAB0DSOipOS6hMGAu7/MwMvOgjK5owphcCfoCPw/GNUri12UzPayctci7odr
	 pjgOkC4Hqmg83ScZUCh7Gi0VSF+hpuZYKKc/OMY4JnIpD74Yirgev2PFdz3zUyU0lF
	 3zzCSG0cp8f3P9r71+EpO1/DyBsf25GnmSMFNDx3GEb7LxLfZlHqCn2JvcYaOhuMdM
	 kDwOMg0saoT3icUbPQXoFhfamU/RcTTrGcIkG21yivQINqFaivfiBLK5H+8PRNq4hu
	 FvpCXIF2RxGFw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2CFF380CFA;
	Wed, 30 Oct 2024 16:38:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 45E645E50
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 16:38:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 26252408C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 16:38:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 59RzxLETyTNH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Oct 2024 16:38:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C8C1D400CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C8C1D400CD
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C8C1D400CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 16:38:25 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C478F600AA69C;
 Wed, 30 Oct 2024 17:38:12 +0100 (CET)
Message-ID: <cf6dd743-759e-4db9-8811-fd1520262412@molgen.mpg.de>
Date: Wed, 30 Oct 2024 17:38:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: =?UTF-8?Q?Peter_Gro=C3=9Fe?= <pegro@friiks.de>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen
 <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20241030160643.9950-1-pegro@friiks.de>
 <fa6a5bf6-5401-48d9-bda6-08d17c0bad68@molgen.mpg.de>
Content-Language: en-US
In-Reply-To: <fa6a5bf6-5401-48d9-bda6-08d17c0bad68@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix handling changed
 priv flags
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

[Cc: -Jesse 550 #5.1.0 Address rejected.]

Am 30.10.24 um 17:34 schrieb Paul Menzel:
> [Cc: +Przemek who succeeded Jesse]
> 
> Dear Peter,
> 
> 
> Thank you very much for your patch. Some minor comments.
> 
> Am 30.10.24 um 17:06 schrieb pegro@friiks.de:
>> From: Peter Große <pegro@friiks.de>
>>
>> After assembling the new private flags on a PF, the operation to determine
>> the changed flags uses the wrong bitmaps. Instead of xor-ing orig_flags with
>> new_flags, it uses the still unchanged pf->flags, thus changed_flags is always 0.
> 
> It’d be great if you reflowed for 75 characters per line.
> 
>> Fix it by using the corrent bitmaps.
> 
> corre*c*t
> 
>> The issue was discovered while debugging why disabling source pruning
>> stopped working with release 6.7. Although the new flags will be copied to
>> pf->flags later on in that function, source pruning requires a reset of the PF,
>> which was skipped due to this bug.
> 
> If you have the actual commands handy to reproduce it, that’d be great 
> to have in the commit message.
> 
>> Fixes: 70756d0a4727 ("i40e: Use DECLARE_BITMAP for flags and hw_features fields in i40e_pf")
>> Signed-off-by: Peter Große <pegro@friiks.de>
>> ---
>>   drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/ 
>> net/ethernet/intel/i40e/i40e_ethtool.c
>> index c841779713f6..016c0ae6b36f 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
>> @@ -5306,7 +5306,7 @@ static int i40e_set_priv_flags(struct net_device *dev, u32 flags)
>>       }
>>   flags_complete:
>> -    bitmap_xor(changed_flags, pf->flags, orig_flags, I40E_PF_FLAGS_NBITS);
>> +    bitmap_xor(changed_flags, new_flags, orig_flags, I40E_PF_FLAGS_NBITS);
>>       if (test_bit(I40E_FLAG_FW_LLDP_DIS, changed_flags))
>>           reset_needed = I40E_PF_RESET_AND_REBUILD_FLAG;
> 
> With the style fixes above:
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> 
> 
> Kind regards,
> 
> Paul
