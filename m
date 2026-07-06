Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id x4kMDkZ9S2oISQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Jul 2026 12:02:46 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E7570EDCC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Jul 2026 12:02:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=1ExgYPYA;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86F9D608CE;
	Mon,  6 Jul 2026 10:02:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SOH3viL-G1Yg; Mon,  6 Jul 2026 10:02:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A822608D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783332162;
	bh=L3Jq0FfeffkUQzy5szPZvvw3VgtEVHTtS7CaQRHYrPQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1ExgYPYAHejZaYA8ZbaLwqQVGN8gLuLMISkmTjR3FC+cdWrz9338/uL9MD5R5Bh7e
	 /nx3tQvLX4SWMhYlNTty4ehW5hxBTJvmf8lVmpBIGorSbLrAk/ucabnmqDttvaa+YA
	 zG4lWhs2afcu2ZXcrCrhRBscjq+VWXUK8faT9deHDmy0kZU48UpGlkP+7Gfg7Pma5u
	 cnnwAccdJiSn3WPqS88rwjMNQt+DwhIP1jXwrmBb3OXHprjkQCCE+dYnczsoT6S+Jj
	 zf7j14obQlTn4udVoZL2BPtHmqUThxhrAkQpIak0QVNHfz0LXhkuU/QfSap9EdlsrQ
	 Oxtmbd3CXWMLQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A822608D1;
	Mon,  6 Jul 2026 10:02:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 265AF316
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 10:02:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 17FD5608CC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 10:02:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a0fcCY2fLVOx for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jul 2026 10:02:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0F372608AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F372608AE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0F372608AE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 10:02:38 +0000 (UTC)
X-CSE-ConnectionGUID: n5omv2kBQMKMNP0fKuiBxA==
X-CSE-MsgGUID: mMYExahdSpmBzarcWYNKXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="84055366"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="84055366"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 03:02:34 -0700
X-CSE-ConnectionGUID: Afkzqs84QcGnajqTOJ2OWQ==
X-CSE-MsgGUID: GcR4ICQ3T3eN2tYPofjV/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="283768848"
Received: from unknown (HELO [10.217.160.239]) ([10.217.160.239])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 03:02:31 -0700
Message-ID: <9750092f-264e-45a1-af11-2f574ab67fa4@linux.intel.com>
Date: Mon, 6 Jul 2026 12:02:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Pengpeng Hou <pengpeng@iscas.ac.cn>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260706092500.79044-1-pengpeng@iscas.ac.cn>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20260706092500.79044-1-pengpeng@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783332160; x=1814868160;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=9qm6US3OrG2rDjRIGBpWm7uNjbIkQkBQoEZAQyT/jcA=;
 b=XGuDcHErtSZxq709d4owrssM6GLmd9oNxNmY+JHzkjiFASekyY4ypEkH
 iEwCOLTHOIC/Y1SsM1OfYVjD42Sv+5k6xaLGHsssvx/TaFZItJise0PBO
 gXHy54K1VA8h5ee/4hkQoQf5qZj9XGSLsVNnBvTjATtExjdrK9BnHU0JT
 ij5sW1uiRYzJTi/w8xbdb0Vagi45YA8+4MHU6SsO/jvQ4fNM/GSJ4/eDa
 CeqF8kIzJBf0xG/3EKcusWkhHVnASRIEHhSQZr6RhTeLe2KH5q264GF3O
 acW5V+Zvyv0mQBW+WKG5t9FztvDgAMB706vhG/YFo2/YkYWnMb4/Cx72G
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XGuDcHEr
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: validate E610 PFA TLV bounds
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
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:pengpeng@iscas.ac.cn,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[iscas.ac.cn:email,osuosl.org:from_smtp,osuosl.org:dkim,linux.intel.com:mid,linux.intel.com:from_mime];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 92E7570EDCC



On 06/07/2026 11:25, Pengpeng Hou wrote:
> ixgbe_get_pfa_module_tlv() walks E610 PFA TLV records stored in
> EEPROM.
> 
> Stop parsing malformed TLVs whose header or declared value length would
> exceed the PFA boundary.
> 
> Signed-off-by: Pengpeng Hou <pengpeng@iscas.ac.cn>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> index 4d8ae5b56145..03e88bdf5a43 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -3895,6 +3895,9 @@ static int ixgbe_get_pfa_module_tlv(struct ixgbe_hw *hw, u16 *module_tlv,
>  	while (next_tlv < pfa_end_ptr) {
>  		u16 tlv_sub_module_type, tlv_len;
>  
> +		if (pfa_end_ptr - next_tlv < 2)
> +			break;

This check could go in the while condition above.

> +
>  		/* Read TLV type */
>  		err = ixgbe_read_ee_aci_e610(hw, next_tlv,
>  					     &tlv_sub_module_type);
> @@ -3917,6 +3920,9 @@ static int ixgbe_get_pfa_module_tlv(struct ixgbe_hw *hw, u16 *module_tlv,
>  		/* Check next TLV, i.e. current TLV pointer + length + 2 words
>  		 * (for current TLV's type and length).
>  		 */
> +		if (tlv_len > pfa_end_ptr - next_tlv - 2)
> +			break;
> +
>  		next_tlv = next_tlv + tlv_len + 2;

Would be nice to define the magic number (2), since we're reusing it now.

>  	}
>  	/* Module does not exist */

Thanks,
Marcin
