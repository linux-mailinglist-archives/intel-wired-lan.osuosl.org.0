Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 13EB0B45601
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 13:15:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 911624054C;
	Fri,  5 Sep 2025 11:15:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jwk_Xx9QOY5b; Fri,  5 Sep 2025 11:15:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2A3D40B58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757070948;
	bh=AF9gFR2zK7nqPmPGZbQ7+wR7nIheXqCxAD22pBtaPAU=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NDQYeIrl/1HLOJ0Yx84yLfQnxrXrTyq/TAGK5f89mzwUCcHCDcMCBJJnXwXHjdpW1
	 nyp3LojrpSp0Kuv62EeLXQ6b68Nt2gwfHR0idZ3tzRbrJhpeCWneAKCS9Ogloa2ehu
	 FEgiuRk+J4ruFekTitXMfolCXjzX02urMnH4mlhyHnb5qM8ry5w0djIJozcUZPl3XM
	 RoJuCtgNT8aWEhsIS2YEq5uhIdO6aIxUAChC6gmfbGll9f4m/e/N7Cf/CkLWFgCsow
	 3MOqdKCBizMUacsJKXfL4jhxjINpNab56G5o1VAA+NbR9o+ehRcv8aD5HiTNwlacHN
	 iKohOkiygEkQg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2A3D40B58;
	Fri,  5 Sep 2025 11:15:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B87C11E04
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 11:15:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9F1EA60D91
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 11:15:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z5JBJGsS_Ogt for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Sep 2025 11:15:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=91.218.175.180;
 helo=out-180.mta0.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F263560D8D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F263560D8D
Received: from out-180.mta0.migadu.com (out-180.mta0.migadu.com
 [91.218.175.180])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F263560D8D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 11:15:45 +0000 (UTC)
Message-ID: <07eafea5-294d-42b4-bfd8-27ca32e642a2@linux.dev>
Date: Fri, 5 Sep 2025 12:15:38 +0100
MIME-Version: 1.0
To: liuqiangneo@163.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Qiang Liu <liuqiang@kylinos.cn>
References: <20250905025519.58196-1-liuqiangneo@163.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20250905025519.58196-1-liuqiangneo@163.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1757070942;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AF9gFR2zK7nqPmPGZbQ7+wR7nIheXqCxAD22pBtaPAU=;
 b=r3Hy9cxi+YGkWc7YSaX28SpnTIWSFSd2L++Hi2JSLVC9H3c9voA6G7tXFKcEKJq4tw5ndr
 cxgebicU86lx9KIOLpFrVnbF+e/z/swHOPzpJDqcQoNZki2REkiPASChj7dpPHh2ufL/IS
 C5RY+7G2CbTVJ3X4pSvvzcmyria1sYM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=r3Hy9cxi
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Remove self-assignment code
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

On 05/09/2025 03:55, liuqiangneo@163.com wrote:
> From: Qiang Liu <liuqiang@kylinos.cn>
> 
> After obtaining the register value via raw_desc,
> redundant self-assignment operations can be removed.
> 
> Signed-off-by: Qiang Liu <liuqiang@kylinos.cn>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 8 ++------
>   1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> index bfeef5b0b99d..6efedf04a963 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -143,18 +143,14 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
>   
>   	/* Read sync Admin Command response */
>   	if ((hicr & IXGBE_PF_HICR_SV)) {
> -		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
> +		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
>   			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
> -			raw_desc[i] = raw_desc[i];
> -		}
>   	}
>   
>   	/* Read async Admin Command response */
>   	if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
> -		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
> +		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
>   			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));
> -			raw_desc[i] = raw_desc[i];
> -		}
>   	}
>   
>   	/* Handle timeout and invalid state of HICR register */

LGTM,
Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
