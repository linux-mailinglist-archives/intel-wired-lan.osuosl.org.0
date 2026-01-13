Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C33D1B982
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 23:31:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D722A4092A;
	Tue, 13 Jan 2026 22:31:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kQqVndfA3AYf; Tue, 13 Jan 2026 22:31:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E8C740975
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768343508;
	bh=k1cXDfjEXLzetXvl3pbgDGuc+BR5lmdu5IAcy3Mz+60=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=El2/surEvFR4r9kSjg7B4JSMghhlK80c3qyLb4e/d38E6j5TKwPvo3jGpXcTxgOLn
	 QC/Gsg10io98IZ154mGBI9XyFjWbAB8t9eVr0VNOP+7YmK3+hfyQia3uVQOVBWL7g7
	 hepOq2rvR9Vzekw1iKHs5lTUif1EOhphUvELWydjMAGzi6YUpHdcb6UZkKK18mxKwr
	 BLhmBJx0wsyBID+bMKuW7QPrVZIlrWHIwcn3O/0u0gUZl8MLiK13v7+ssQW46XMLEP
	 zz3zS+tHg7QUSOZ06wKc41TvZKBfF9rWhsp1LEim1TXy/zRYO9OJMB0EizYUnCNhHk
	 6doSDdAFirxjA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E8C740975;
	Tue, 13 Jan 2026 22:31:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7ECBD231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 22:31:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6F10A4029B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 22:31:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rJyuCPJAUrpq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 22:31:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D3AB9400D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D3AB9400D1
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D3AB9400D1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 22:31:44 +0000 (UTC)
Received: from [10.0.56.51] (unknown [62.214.191.67])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A1D142387DCFE;
 Tue, 13 Jan 2026 23:31:24 +0100 (CET)
Message-ID: <f0fee9dd-7236-464d-9e06-6adbeece81a8@molgen.mpg.de>
Date: Tue, 13 Jan 2026 23:31:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
References: <20260113193817.582-1-dawid.osuchowski@linux.intel.com>
 <20260113193817.582-2-dawid.osuchowski@linux.intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260113193817.582-2-dawid.osuchowski@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: reintroduce retry
 mechanism for indirect AQ
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
Cc: netdev@vger.kernel.org, stable@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Jakub Staniszewski <jakub.staniszewski@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[Cc: +Michal]

Dear Dawid, dear Jakub,


Am 13.01.26 um 20:38 schrieb Dawid Osuchowski:
> From: Jakub Staniszewski <jakub.staniszewski@linux.intel.com>
> 
> Add retry mechanism for indirect Admin Queue (AQ) commands. To do so we
> need to keep the command buffer.
> 
> This technically reverts commit 43a630e37e25
> ("ice: remove unused buffer copy code in ice_sq_send_cmd_retry()"),
> but combines it with a fix in the logic by using a kmemdup() call,
> making it more robust and less likely to break in the future due to
> programmer error.
> 
> Cc: Michal Schmidt <mschmidt@redhat.com>
> Cc: stable@vger.kernel.org
> Fixes: 3056df93f7a8 ("ice: Re-send some AQ commands, as result of EBUSY AQ error")
> Signed-off-by: Jakub Staniszewski <jakub.staniszewski@linux.intel.com>
> Co-developed-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> Ccing Michal, given they are the author of the "reverted" commit.

At least Michal was not in the (visible) Cc: list

>   drivers/net/ethernet/intel/ice/ice_common.c | 12 +++++++++---
>   1 file changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index a400bf4f239a..aab00c44e9b2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -1879,34 +1879,40 @@ ice_sq_send_cmd_retry(struct ice_hw *hw, struct ice_ctl_q_info *cq,
>   {
>   	struct libie_aq_desc desc_cpy;
>   	bool is_cmd_for_retry;
> +	u8 *buf_cpy = NULL;
>   	u8 idx = 0;
>   	u16 opcode;
>   	int status;
>   
>   	opcode = le16_to_cpu(desc->opcode);
>   	is_cmd_for_retry = ice_should_retry_sq_send_cmd(opcode);
>   	memset(&desc_cpy, 0, sizeof(desc_cpy));
>   
>   	if (is_cmd_for_retry) {
> -		/* All retryable cmds are direct, without buf. */
> -		WARN_ON(buf);
> +		if (buf) {
> +			buf_cpy = kmemdup(buf, buf_size, GFP_KERNEL);
> +			if (!buf_cpy)
> +				return -ENOMEM;
> +		}
>   
>   		memcpy(&desc_cpy, desc, sizeof(desc_cpy));
>   	}
>   
>   	do {
>   		status = ice_sq_send_cmd(hw, cq, desc, buf, buf_size, cd);
>   
>   		if (!is_cmd_for_retry || !status ||
>   		    hw->adminq.sq_last_status != LIBIE_AQ_RC_EBUSY)
>   			break;
>   
> +		if (buf_cpy)
> +			memcpy(buf, buf_cpy, buf_size);
>   		memcpy(desc, &desc_cpy, sizeof(desc_cpy));
> -

Unrelated change?

>   		msleep(ICE_SQ_SEND_DELAY_TIME_MS);
>   
>   	} while (++idx < ICE_SQ_SEND_MAX_EXECUTE);
>   
> +	kfree(buf_cpy);
>   	return status;
>   }

The diff looks good otherwise.

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
