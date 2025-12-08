Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E38CAE540
	for <lists+intel-wired-lan@lfdr.de>; Mon, 08 Dec 2025 23:34:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 090E683CB4;
	Mon,  8 Dec 2025 22:34:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iUNkmspodq7i; Mon,  8 Dec 2025 22:34:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8297783CB9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765233240;
	bh=j2GyTN3bLti7pkRZ/Ga9RrRGxNgmeYD29sm9qPLWLQQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Mryi0NPb0TxPQoXiBKAUVfW0rdRAGPeIAVoA5qeYo1mjR3R97TZf2IfLUnNa8gtra
	 2ViNHygHKzUUy1X3fwMRHFfV1pORiUD8R43AU6k+iq6XlWp7vpoY4zfxIDqAqiPNZd
	 Vi+bX6cx9b2Nvc9dMlnAvUaeWJMeZU6uxUJ9uW1rtQtV0HDXwJA0UfV4whFTrLf0u1
	 1DSpNz/a7tcWx2P5WD5bBgIs1hld0DaSo82YA+ZmvryMIg42AlF8OQPWKYgxSGx98t
	 /bzFhEswyTY0HZleYIns9zZbypihI/VPrWj/a/iYCYiuGVb82+iCQ1myYaJgChfyyO
	 FpSRtLMBMXRJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8297783CB9;
	Mon,  8 Dec 2025 22:34:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id DE3EE151
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Dec 2025 22:33:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CFD5240058
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Dec 2025 22:33:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TBIfRjlHcNQ9 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Dec 2025 22:33:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3C01740028
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3C01740028
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3C01740028
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Dec 2025 22:33:56 +0000 (UTC)
Received: from [192.168.0.5] (ip5f5af741.dynamic.kabel-deutschland.de
 [95.90.247.65])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 8F76661CC3FE3;
 Mon, 08 Dec 2025 23:33:22 +0100 (CET)
Message-ID: <d360b246-b3cc-4ee6-81b3-b9a6eaa5a015@molgen.mpg.de>
Date: Mon, 8 Dec 2025 23:33:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ding Hui <dinghui@sangfor.com.cn>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, jacob.e.keller@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251206134609.10565-1-dinghui@sangfor.com.cn>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20251206134609.10565-1-dinghui@sangfor.com.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [Patch net v2] ice: Fix incorrect timeout
 ice_release_res()
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

Dear Hui,


Thank you for your patch. One minor comments, should you resend.

Am 06.12.25 um 14:46 schrieb Ding Hui:
> The commit 5f6df173f92e ("ice: implement and use rd32_poll_timeout for

Without article: Commit 5f6df173f92e ("…") …

> ice_sq_done timeout") converted ICE_CTL_Q_SQ_CMD_TIMEOUT from jiffies
> to microseconds.
> 
> But the ice_release_res() function was missed, and its logic still
> treats ICE_CTL_Q_SQ_CMD_TIMEOUT as a jiffies value.
> 
> So correct the issue by usecs_to_jiffies().
> 
> Found by inspection of the DDP downloading process.
> Compile and modprobe tested only.
> 
> Fixes: 5f6df173f92e ("ice: implement and use rd32_poll_timeout for ice_sq_done timeout")
> Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> ---
> v1->v2: rebase to net branch and add commit log.
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 046bc9c65c51..785bf5cc1b25 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -2251,7 +2251,7 @@ void ice_release_res(struct ice_hw *hw, enum ice_aq_res_ids res)
>   	/* there are some rare cases when trying to release the resource
>   	 * results in an admin queue timeout, so handle them correctly
>   	 */
> -	timeout = jiffies + 10 * ICE_CTL_Q_SQ_CMD_TIMEOUT;
> +	timeout = jiffies + 10 * usecs_to_jiffies(ICE_CTL_Q_SQ_CMD_TIMEOUT);
>   	do {
>   		status = ice_aq_release_res(hw, res, 0, NULL);
>   		if (status != -EIO)

With or without amending the commit message, feel free to add:

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
