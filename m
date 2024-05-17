Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 690CB8C810D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 May 2024 08:52:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9D34E41BF8;
	Fri, 17 May 2024 06:52:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JQkyhh00XVJS; Fri, 17 May 2024 06:52:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D8BB841BCD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715928769;
	bh=nNkBuq3sJE/tUht0XrA/S5bjhAEf/5RFPRa3asZcO9k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8EFRrZRBRsAMjExRRnMySyU2JWyxD9jQnm6bMB4Zu9M42bOlbm6d7uCn2GIX1ZB1e
	 9OS8A3/g5wVR3KpqGhB4CQQkr9Wl49wDGC28KMdGqWLNdd4BlH4ecc5xfHRO7h93ws
	 PRyolttflnGNn3DvnTQd40PjuozccX7lKTUT0oxBGH5lg8K3WjQcYB4/UGbe8ENeWq
	 jBeSBl6wjiK0V1jf+hAyER74dPsBti6IHcgoUJ5A4H1W4ZBI/ovFeF5X2Tdw73srax
	 FSHcp17AA/keuup4h/8h7G8nvjklaGwXE075+mYmhf0HgE5DzQvZuW4bQxLllT65l4
	 fBdAfwYlQtyTw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D8BB841BCD;
	Fri, 17 May 2024 06:52:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 070631BF846
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 06:52:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E7CE260BF1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 06:52:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ey5i4QA6lifF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2024 06:52:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A3BF360A6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3BF360A6A
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A3BF360A6A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 06:52:43 +0000 (UTC)
Received: from [192.168.0.224] (ip5f5aef9a.dynamic.kabel-deutschland.de
 [95.90.239.154])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 342ED61E5FE01;
 Fri, 17 May 2024 08:52:28 +0200 (CEST)
Message-ID: <2328f1fd-8967-4fa1-ac0f-8c800c4b8f48@molgen.mpg.de>
Date: Fri, 17 May 2024 08:52:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>
References: <20240516-iwl-net-2024-05-16-fix-nvm-tlv-issue-v1-1-ecbb6a75961e@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240516-iwl-net-2024-05-16-fix-nvm-tlv-issue-v1-1-ecbb6a75961e@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix integer overflow in
 ice_get_pfa_module_tlv
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
Cc: intel-wired-lan@lists.osuosl.org, Paul Greenwalt <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Paul, dear Jacob,


Am 16.05.24 um 23:18 schrieb Jacob Keller:
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> It's possible that an NVM with an invalid tlv_len could cause an integer
> overflow of next_tlv which can result an infinite loop.
> 
> Fix this issue by changing next_tlv from u16 to u32 to prevent overflow.

Why is 32-bit enough?

> Also check that tlv_len is valid and less than pfa_len.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_nvm.c | 8 ++++++--
>   1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
> index 84eab92dc03c..9e58d319355f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_nvm.c
> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
> @@ -441,7 +441,7 @@ ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
>   		       u16 module_type)
>   {
>   	u16 pfa_len, pfa_ptr;

By the way, is pfa_ptr an actual pointer address?

> -	u16 next_tlv;
> +	u32 next_tlv;
>   	int status;
>   
>   	status = ice_read_sr_word(hw, ICE_SR_PFA_PTR, &pfa_ptr);
> @@ -458,7 +458,7 @@ ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
>   	 * of TLVs to find the requested one.
>   	 */
>   	next_tlv = pfa_ptr + 1;
> -	while (next_tlv < pfa_ptr + pfa_len) {
> +	while (next_tlv < ((u32)pfa_ptr + pfa_len)) {
>   		u16 tlv_sub_module_type;
>   		u16 tlv_len;
>   
> @@ -474,6 +474,10 @@ ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
>   			ice_debug(hw, ICE_DBG_INIT, "Failed to read TLV length.\n");
>   			break;
>   		}
> +		if (tlv_len > pfa_len) {
> +			ice_debug(hw, ICE_DBG_INIT, "Invalid TLV length.\n");

Please print both values. Should this be at least a warning, if it’s not 
an expected situation?

> +			return -EINVAL;
> +		}
>   		if (tlv_sub_module_type == module_type) {
>   			if (tlv_len) {
>   				*module_tlv = next_tlv;


Kind regards,

Paul
