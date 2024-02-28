Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8434C86B61A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 18:34:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3BA994176F;
	Wed, 28 Feb 2024 17:34:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CafFw6aBz0ft; Wed, 28 Feb 2024 17:34:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F4DD41763
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709141676;
	bh=VVqsHTIKlK3yfxqB0xckXu9MGAAYJmXt82wUPNKCQPU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dXh2/H7XxMhEWESKivWnl26iOsfGPi0hr4QAt2aEh2ZHEO3dW8CJj9YVRrjlv9uVj
	 qKj7XBSS2FrLrC2tPxEQWIk6CnjJrilJPZKQ77QcM1I1YIxk4PwrX3zGhxmapNi/kv
	 aPitSnZtIhcHzonnVKwV9sC9voecT6fRK+Aj/Z9o3/mtAVkZ++Eb+yYWG8xJhn1VLO
	 KJHLbrcS9kKa1Ennx9HFvfeyOFI8QQ8spEPCGEdrUFeILSShXzenioQVLx35T84yit
	 8akvb3xvJVzElUP+Ee/VQiN6jRTAauCopHr/vF2MbC6AQ4SkezPlYf6zvoAAvPo6yj
	 jR7Dyao12xPpg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F4DD41763;
	Wed, 28 Feb 2024 17:34:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 192981BF841
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 17:34:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 125E060E34
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 17:34:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zwBDcNuWFDc7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 17:34:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B94E760A79
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B94E760A79
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B94E760A79
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 17:34:30 +0000 (UTC)
Received: from [192.168.0.53] (ip5f5aedb1.dynamic.kabel-deutschland.de
 [95.90.237.177])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 00DCC61E5FE04;
 Wed, 28 Feb 2024 18:33:58 +0100 (CET)
Message-ID: <e0c35b34-a845-4221-b9d3-867d2f339f8d@molgen.mpg.de>
Date: Wed, 28 Feb 2024 18:33:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ivan Vecera <ivecera@redhat.com>
References: <20240228172603.29177-1-ivecera@redhat.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240228172603.29177-1-ivecera@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Fix firmware version
 comparison function
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Ivan,


Thank you for your patch.

Am 28.02.24 um 18:26 schrieb Ivan Vecera:
> Helper i40e_is_fw_ver_eq() compares incorrectly given firmware version
> as it returns true when the major version of running firmware is
> greater than the given major version that is wrong and results in

… version. That …

> failure during getting of DCB configuration where this helper is used.
> Fix the check and return true only if the running FW version is exactly
> equals to the given version.

is … equal

> Reproducer:
> 1. Load i40e driver
> 2. Check dmesg output
> 
> [root@host ~]# modprobe i40e
> [root@host ~]# dmesg | grep 'i40e.*DCB'
> [   74.750642] i40e 0000:02:00.0: Query for DCB configuration failed, err -EIO aq_err I40E_AQ_RC_EINVAL
> [   74.759770] i40e 0000:02:00.0: DCB init failed -5, disabled
> [   74.966550] i40e 0000:02:00.1: Query for DCB configuration failed, err -EIO aq_err I40E_AQ_RC_EINVAL
> [   74.975683] i40e 0000:02:00.1: DCB init failed -5, disabled
> 
> Fixes: cf488e13221f ("i40e: Add other helpers to check version of running firmware and AQ API")
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_prototype.h | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
> index af4269330581..ce1f11b8ad65 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
> @@ -567,8 +567,7 @@ static inline bool i40e_is_fw_ver_lt(struct i40e_hw *hw, u16 maj, u16 min)
>    **/
>   static inline bool i40e_is_fw_ver_eq(struct i40e_hw *hw, u16 maj, u16 min)
>   {
> -	return (hw->aq.fw_maj_ver > maj ||
> -		(hw->aq.fw_maj_ver == maj && hw->aq.fw_min_ver == min));
> +	return (hw->aq.fw_maj_ver == maj && hw->aq.fw_min_ver == min);
>   }
>   
>   #endif /* _I40E_PROTOTYPE_H_ */

With the nits in the commit message addressed, this is

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
