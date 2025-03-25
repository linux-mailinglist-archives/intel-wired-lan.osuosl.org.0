Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 99057A704B0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Mar 2025 16:14:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 266AB606F1;
	Tue, 25 Mar 2025 15:14:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a_LPa4tiXEZD; Tue, 25 Mar 2025 15:14:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9722060701
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742915677;
	bh=PEt2p5iUZP8HLfRK3m+jUCk7CG3FI3QMG6/eweTSjuM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=m4Af35AShaR9PbArM6vj7z8BpDgrdSTpuz1aZ9RbmAv0Dk6bMQCmpzBGr6WD/Tdp5
	 TAs79Wt1c/j6GF/By2E0tp5uodZfNBSUxmRmiMOqT4e04Ty9lFEXDWbKJF6cI+0DoL
	 SKsHLVGTZV8zhMAq3EXpkeH/dXE3isOXaY+iUt948fm6F1EWAA9hOxxr9guWdFq4W0
	 7wtXylrYpDEhz7NgVhcMi+CIMgfiIx1tAxrLuyZVTRF/NMey6DmPsirdh7rpgoIGRO
	 OCTBDiejveh23HdQ+zsmwGM0DIhswAnAwp9sPm6fFJzzd6K2hu+VVcV0PHoCJf4BtM
	 JFN7u0eYksTMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9722060701;
	Tue, 25 Mar 2025 15:14:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C7DE51B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Mar 2025 02:11:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B9B9A4121E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Mar 2025 02:11:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xuMlLPpCccyB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Mar 2025 02:11:02 +0000 (UTC)
X-Greylist: delayed 383 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 25 Mar 2025 02:11:01 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F2C9140D31
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F2C9140D31
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=91.218.175.184;
 helo=out-184.mta0.migadu.com; envelope-from=xuanqiang.luo@linux.dev;
 receiver=<UNKNOWN> 
Received: from out-184.mta0.migadu.com (out-184.mta0.migadu.com
 [91.218.175.184])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F2C9140D31
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Mar 2025 02:11:01 +0000 (UTC)
Message-ID: <3e368ba8-f306-449c-b05a-0c5bd9258190@linux.dev>
Date: Tue, 25 Mar 2025 10:03:44 +0800
MIME-Version: 1.0
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, anthony.l.nguyen@intel.com
Cc: davem@davemloft.net, edumazet@google.com, netdev@vger.kernel.org,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 "Czapnik, Lukasz" <lukasz.czapnik@intel.com>
References: <20250321095200.1501370-1-xuanqiang.luo@linux.dev>
 <61e8fbbd-83d3-4838-9138-1ed6dfbb4b61@intel.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: luoxuanqiang <xuanqiang.luo@linux.dev>
In-Reply-To: <61e8fbbd-83d3-4838-9138-1ed6dfbb4b61@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Approved-At: Tue, 25 Mar 2025 15:14:35 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1742868274;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PEt2p5iUZP8HLfRK3m+jUCk7CG3FI3QMG6/eweTSjuM=;
 b=HXtpaM6zR1S3KqOvN6kp4ybgvP/HfmBdPEbXVC0jN8nCPeyf7YID9M6sJOPPd0oumaJY1X
 d/orciLRWF594ZC3I6qPBNvPGgcdmFTrtepjFpe6pQTOHwPXcwZfvVK3AM8u5EGxFN4U9w
 6r78ssGVcah+82G4H0li7Zt1uOBlJuA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=HXtpaM6z
Subject: Re: [Intel-wired-lan] [PATCH] ice: Check VF VSI Pointer Value in
 ice_vc_add_fdir_fltr()
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


在 2025/3/24 18:54, Przemek Kitszel 写道:
> On 3/21/25 10:52, luoxuanqiang wrote:
>> From: luoxuanqiang <luoxuanqiang@kylinos.cn>
>>
>> As mentioned in the commit baeb705fd6a7 ("ice: always check VF VSI
>> pointer values"), we need to perform a null pointer check on the return
>> value of ice_get_vf_vsi() before using it.
>>
>> Fixes: 6ebbe97a4881 ("ice: Add a per-VF limit on number of FDIR 
>> filters")
>> Signed-off-by: luoxuanqiang <xuanqiang.luo@linux.dev>
>
> Thank you for your patch, it looks good.
> To apply it you have to provide us your name in the format:
> Firstname Surname
> (or similar, could include more than 2 words)
>
> please also CC IWL mailing list (CC'd by me) to have faster feedback :)
> would be best if you put [PATCH iwl-net v2] in the subject
>
Thank you for your detailed suggestions. I've already sent out the v2. :)
>> ---
>>   drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c 
>> b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
>> index 14e3f0f89c78..53bad68e3f38 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
>> @@ -2092,6 +2092,12 @@ int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8 
>> *msg)
>>       dev = ice_pf_to_dev(pf);
>>       vf_vsi = ice_get_vf_vsi(vf);
>>   +    if (!vf_vsi) {
>> +        dev_err(dev, "Can not get FDIR vf_vsi for VF %u\n", vf->vf_id);
>> +        v_ret = VIRTCHNL_STATUS_ERR_PARAM;
>> +        goto err_exit;
>> +    }
>> +
>>   #define ICE_VF_MAX_FDIR_FILTERS    128
>>       if (!ice_fdir_num_avail_fltr(&pf->hw, vf_vsi) ||
>>           vf->fdir.fdir_fltr_cnt_total >= ICE_VF_MAX_FDIR_FILTERS) {
>
