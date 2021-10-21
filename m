Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC104358C5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Oct 2021 05:02:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6201A40775;
	Thu, 21 Oct 2021 03:02:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bPFEHRZuT3W9; Thu, 21 Oct 2021 03:02:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 468FF40770;
	Thu, 21 Oct 2021 03:02:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 49A221BF35B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 03:02:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 362FC83A89
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 03:02:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linux.dev
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6JnxDBkIkB0F for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Oct 2021 03:02:27 +0000 (UTC)
X-Greylist: delayed 00:08:52 by SQLgrey-1.8.0
Received: from out10.migadu.com (out10.migadu.com [46.105.121.227])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 29E6483A51
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 03:02:26 +0000 (UTC)
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1634784811;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FZI/suxCWksYSV2TZOx89MblgpL1R04FJyLzdqHA0Jg=;
 b=A356h4EjFqpCrBOSKPvVYmpjZXFibzy2J9HwZk0d8AcRiSxPit3P7M4s4r1WljZGw11CZ6
 ajSHGXyaR2fd37pNX9/AiF81qUOR0dAR4HjfJ5I6VaaGYuhVFeD+DfrsOnyPInKXhdsuk6
 ieDTrNxCJI9GWL3IH64NYpoET7cK5VY=
Date: Thu, 21 Oct 2021 02:53:30 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: yanjun.zhu@linux.dev
Message-ID: <a3770ad64d2232cbdc19f86bc4e42a16@linux.dev>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, netdev@vger.kernel.org, davem@davemloft.net,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org
In-Reply-To: <adf52e0ca3fbe0c9726f283a9690bd335afbf3a6.camel@intel.com>
References: <adf52e0ca3fbe0c9726f283a9690bd335afbf3a6.camel@intel.com>
 <20211019091743.12046-1-yanjun.zhu@linux.dev>
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: yanjun.zhu@linux.dev
Subject: Re: [Intel-wired-lan] [PATCH 1/1] ice: remove the unused function
 ice_aq_nvm_update_empr
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

October 21, 2021 2:49 AM, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com> wrote:

> On Tue, 2021-10-19 at 05:17 -0400, yanjun.zhu@linux.dev wrote:
> 
>> From: Zhu Yanjun <yanjun.zhu@linux.dev>
>> 
>> The function ice_aq_nvm_update_empr is not used, so remove it.
> 
> Thanks for the patch, but there is another one coming soon that will be
> using this function[1]. I'd prefer to keep this to save us from another
> patch reintroducing it in the near future.

Got it.

Zhu Yanjun

> 
> Thanks,
> Tony
> 
> [1] https://patchwork.ozlabs.org/project/intel-wired-
> lan/patch/20211019215423.3383750-1-jacob.e.keller@intel.com/
> 
>> Signed-off-by: Zhu Yanjun <yanjun.zhu@linux.dev>
>> ---
>> drivers/net/ethernet/intel/ice/ice_nvm.c | 16 ----------------
>> drivers/net/ethernet/intel/ice/ice_nvm.h |  1 -
>> 2 files changed, 17 deletions(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c
>> b/drivers/net/ethernet/intel/ice/ice_nvm.c
>> index fee37a5844cf..bad374bd7ab3 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_nvm.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
>> @@ -1106,22 +1106,6 @@ enum ice_status ice_nvm_write_activate(struct
>> ice_hw *hw, u8 cmd_flags)
>> return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
>> }
>> 
>> -/**
>> - * ice_aq_nvm_update_empr
>> - * @hw: pointer to the HW struct
>> - *
>> - * Update empr (0x0709). This command allows SW to
>> - * request an EMPR to activate new FW.
>> - */
>> -enum ice_status ice_aq_nvm_update_empr(struct ice_hw *hw)
>> -{
>> -       struct ice_aq_desc desc;
>> -
>> -       ice_fill_dflt_direct_cmd_desc(&desc,
>> ice_aqc_opc_nvm_update_empr);
>> -
>> -       return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
>> -}
>> -
>> /* ice_nvm_set_pkg_data
>> * @hw: pointer to the HW struct
>> * @del_pkg_data_flag: If is set then the current pkg_data store by
>> FW
>> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h
>> b/drivers/net/ethernet/intel/ice/ice_nvm.h
>> index c6f05f43d593..925225905491 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_nvm.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
>> @@ -39,7 +39,6 @@ enum ice_status
>> ice_aq_erase_nvm(struct ice_hw *hw, u16 module_typeid, struct
>> ice_sq_cd *cd);
>> enum ice_status ice_nvm_validate_checksum(struct ice_hw *hw);
>> enum ice_status ice_nvm_write_activate(struct ice_hw *hw, u8
>> cmd_flags);
>> -enum ice_status ice_aq_nvm_update_empr(struct ice_hw *hw);
>> enum ice_status
>> ice_nvm_set_pkg_data(struct ice_hw *hw, bool del_pkg_data_flag, u8
>> *data,
>> u16 length, struct ice_sq_cd *cd);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
