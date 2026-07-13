Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6ZHyLfmsVGoJpQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2026 11:16:41 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D094B74931D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2026 11:16:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=dpV9qQHV;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC45260738;
	Mon, 13 Jul 2026 09:16:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V0tHaWxF7AUh; Mon, 13 Jul 2026 09:16:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 390AD60744
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783934197;
	bh=5siJLG0LOwXZuo10jBFt4fMZPIUJHqjzh+luwyjmAXI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dpV9qQHV+WB2zjRUcWFefW0PWzdshA4OPD7KIGHWUtViVDp5cHV6LRfpVta4xmCoq
	 O1FRHzf+CPqRzGJIAmyZbxPifHnQfLrqmlZHaabgI09lI9YR7IcCvle8dCU/yI/dOc
	 XerN7/yiVaAxoDMzbT2LctGGj65eZrsQmc7EOAozGrKIuT6ZItJ+iD3I8VkBhTpuHQ
	 disdDO/DyWPyEPJNw9OaWrjzKItxM40CGbjftZxq0JsUkAePTrg/mgEQZK0oETcHPy
	 A8rnvsnQxjrgHXn/D94mimOF4wjOo6uNlTRwR2gqTogxPvlG8XkmkiKnDU+EFAIyr/
	 eBWZxlfZSk5Lg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 390AD60744;
	Mon, 13 Jul 2026 09:16:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3E13F128
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 09:16:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2404340817
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 09:16:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1Bb272EpawAp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jul 2026 09:16:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 65A3340806
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65A3340806
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 65A3340806
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 09:16:34 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id B27D340A74;
 Mon, 13 Jul 2026 09:16:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48A721F000E9;
 Mon, 13 Jul 2026 09:16:30 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: pengpeng@iscas.ac.cn
Cc: Simon Horman <horms@kernel.org>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jedrzej.jagielski@intel.com,
 aleksandr.loktionov@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 richardcochran@gmail.com, jacob.e.keller@intel.com,
 arkadiusz.kubalewski@intel.com, karol.kolacinski@intel.com,
 sergey.temerkhanov@intel.com, michal.michalik@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Mon, 13 Jul 2026 10:16:06 +0100
Message-ID: <20260713091605.1756659-2-horms@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260706144325.91320-1-pengpeng@iscas.ac.cn>
References: <20260706144325.91320-1-pengpeng@iscas.ac.cn>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1783934193;
 bh=5siJLG0LOwXZuo10jBFt4fMZPIUJHqjzh+luwyjmAXI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=l28QzEYuqIxm8425yFC4+/OlfyHCjpMbHkVM4n55jZRRNGraF61E6PUfOfjMvqNPg
 1PRV8ZsrPmGGWCkKBfzGi8f+WGh9hFpAk2CWiHQFs+MojCfDBavqzPRn5GEKtIzhKK
 cdXTO51kUqUWY0Q++mhZVX8qtwMjBV6olzEXrvXL5kOsJrPAXb4qB12rViEdtgkbxW
 /+OAjpUoW0E36npC8mWza+l8SpD+l/1Aw2WObkjoSuvrr+HMxCjnec1fghFzPJRwjC
 g9gQSByClPjI/7FS6jGUzP7MJ6kOnJkReQG/JF/gJ52hYLheFM6/F1zcrgMLDlXPBx
 zkxOiTwRjE0Vg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20260515 header.b=l28QzEYu
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: propagate ETH56G deskew
 read errors
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:pengpeng@iscas.ac.cn,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:jedrzej.jagielski@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:richardcochran@gmail.com,m:jacob.e.keller@intel.com,m:arkadiusz.kubalewski@intel.com,m:karol.kolacinski@intel.com,m:sergey.temerkhanov@intel.com,m:michal.michalik@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[kernel.org,intel.com,lunn.ch,davemloft.net,google.com,redhat.com,gmail.com,lists.osuosl.org,vger.kernel.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ALIAS_RESOLVED(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D094B74931D

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
ice: propagate ETH56G deskew read errors

ice_ptp_calc_deskew_eth56g() returns a u32 deskew value, but it also
returns the negative read_poll_timeout() error when the DESKEW valid bit
never appears. That converts the negative error into a large unsigned
deskew contribution, which can then be folded into the RX timestamp
offset and programmed into hardware.

Return the deskew value through an output parameter and propagate the
read error from ice_phy_set_offsets_eth56g() instead of using it as
offset data.

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 8e5f97835954c..cc424518a2a67 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c

[ ... ]

> @@ -1736,17 +1736,21 @@ static u32 ice_ptp_calc_bitslip_eth56g(struct ice_hw *hw, u8 port, u32 bs,
>   * @ds: deskew multiplier
>   * @rs: RS-FEC enabled
>   * @spd: link speed
> + * @deskew: output parameter for the calculated deskew value
>   *
> - * Return: calculated deskew value
> + * Return: 0 on success, negative error code otherwise
>   */
> -static u32 ice_ptp_calc_deskew_eth56g(struct ice_hw *hw, u8 port, u32 ds,
> -				      bool rs, enum ice_eth56g_link_spd spd)
> +static int ice_ptp_calc_deskew_eth56g(struct ice_hw *hw, u8 port, u32 ds,
> +				      bool rs, enum ice_eth56g_link_spd spd,
> +				      u32 *deskew)
>  {
>  	u32 deskew_i, deskew_f;
>  	int err;
>  
> -	if (!ds)
> +	if (!ds) {
> +		*deskew = 0;
>  		return 0;
> +	}
>  
>  	read_poll_timeout(ice_read_ptp_reg_eth56g, err,
>  			  FIELD_GET(PHY_REG_DESKEW_0_VALID, deskew_i), 500,
>  			  50 * USEC_PER_MSEC, false, hw, port, PHY_REG_DESKEW_0,
>  			  &deskew_i);

[Severity: High]
This is a pre-existing issue, but is the return value of read_poll_timeout()
supposed to be checked here?

The read_poll_timeout() macro returns -ETIMEDOUT if the condition is never
met, but this return value doesn't appear to be assigned to any variable.

The err variable will only hold the result of the inner function
ice_read_ptp_reg_eth56g(), which might be 0 if the read succeeds but the
VALID bit is not set.

Will this cause the function to proceed as if successful, ignoring the timeout?

[Severity: Medium]
This is a pre-existing issue, but could deskew_i be read uninitialized if
ice_read_ptp_reg_eth56g() fails?

If the read fails, err receives the error code, but deskew_i may remain
uninitialized. The loop condition in read_poll_timeout():

    FIELD_GET(PHY_REG_DESKEW_0_VALID, deskew_i)

will evaluate this uninitialized memory.

Additionally, since the loop condition doesn't check if err == 0, won't
this pointlessly spin for 50ms on hard read failures instead of aborting
early?

>  	if (err)
>  		return err;
